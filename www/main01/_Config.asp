<!-- #include file="../avanplus/inc/incCharset.asp" -->
<%
sub MycolNavi(byval cateStep)	
	dim sql2, rs2, rs3, i, bb, bb2, navicount
	
	'// 2015-12-10 추가. 이덕권
	'response.Write CateCode()
	
	dim requestAvan	'쇼핑몰등은 카테코드 avan 이 없어서 카테코드를 자동으로 받아야 하기 때문에 변수 설정함.
	if len(request.QueryString("avan")) = 10 then
		requestAvan = CateCode()
	else
		requestAvan = 1000000000	'//현 폴더에서 구동하는 해당 홈페이지의 최상위 10자리 코드를 넣어야 한다.
	end if
	'// 2015-12-10 추가. 이덕권 끝
	
	if len(cateStep) = 0 then
		i = getCateStep(requestAvan) - 1
	else
		i = cateStep - 2
	end if

	sql2 = "select * from "& tablename &" where "& CateThisWhere(i+1,requestAvan) &"and c_use = '1' order by c_sunse asc "
		set rs2 = dbconn.execute(sql2)

			if rs2.eof then

			else
				navicount = 0 '메뉴처음에 css 적용
				Do while not rs2.eof
	
					response.Write "<li style='width:20%'"
					Response.write "><a href=""sub.asp?avan="&rs2("c_code")&""">" & bb & rs2("c_name") & "</a></li>"
					'// 하위 상품 갯수 나타내는 식	
					'response.Write "["& getGoodsCount(rs2("c_code")) &"]"
					'//-- 하위 갯수 끝
'					response.Write bb2 & "</font></a></td>"
				navicount = navicount + 1
				rs2.movenext
				loop

			end if
		
		rs2.close
		set rs2 = nothing

End Sub



sub MyRowNavi(byval cateStep)	
	dim sql2, rs2, rs3, i, bb, bb2
	
	if len(cateStep) = 0 then
		i = getCateStep(CateCode()) - 1
	else
		i = cateStep - 2
	end if
	
	sql2 = "select * from "& tablename &" where "& CateThisWhere(i+1,CateCode()) &" and c_use = '1' order by c_sunse  "
		set rs2 = dbconn.execute(sql2)
		'response.Write(CateCode())
		'response.Write(sql2)
		response.Write("<table width=100% border=0 cellspacing=0 cellpadding=0>")
			if rs2.eof then

			else
		
				Do while not rs2.eof
					
					bb = ""
					bb2= ""
					
					
					if upCodeReturn(cateStep,CateCode) = upCodeReturn(cateStep,rs2("c_code")) then bb = "<b>"
					if upCodeReturn(cateStep,CateCode) = upCodeReturn(cateStep,rs2("c_code")) then bb2 = "</b>"
					
					'response.Write "<a href=?"& getString("HOMEPCATE="&rs2("c_code")) & ">"& bb & rs2("c_name")
					response.Write "<tr><td height=25><img src=icon3.gif /> <a href=?avan="&rs2("c_code") & ">"& bb & rs2("c_name") 			 			
					'// 하위 상품 갯수 나타내는 식	
					'response.Write "["& getGoodsCount(rs2("c_code")) &"]"
					'//-- 하위 갯수 끝
					response.Write bb2 & "</a></td></tr>"' <font color=#D9D9D9>|</font> "
					response.Write "<tr><td background=dotline.gif height=1></td></tr>"
					'// 이하 메뉴가 있으면
					if upCodeReturn(cateStep,CateCode) = upCodeReturn(cateStep,rs2("c_code")) then
						'response.Write "<table width='100%' boder=1><tr><td width='20'></td><td>"
						response.Write "<tr><td style='padding-left:15px;'>"
						call rowNavi(cateStep + 1)
						
						response.Write "</td></tr>"
						'response.Write "</td width='100%'></tr></table>"
					end if	
					
				rs2.movenext
				loop

			end if
		response.Write("</table>")
		
		rs2.close
		set rs2 = nothing

End Sub



Sub MainList(byval b_part, byval list_num, byval b_strnum, byval path)
	
				'// 파트    리스트 갯수     글자수      루트에서부터 경로


	
	
	dim sql, rs
	'sql = "select top " & list_num & " b_part,b_idx,b_title,b_writeday from " & tb_name & " where re_level=0 order by b_idx desc"
	sql = "select top " & list_num & " bs_name,b_part,b_idx,b_title,b_writeday from board_v1, boardset_v2 where re_level=0 and board_v1.b_part = '"& b_part &"' and board_v1.b_part=boardset_v2.bs_code order by b_idx desc"
'	response.write sql
	set rs = DBconn.execute(sql)
	dim tempcode 
	dim userfolder
	
	response.Write("<table width=100% border=0 cellpadding=0 cellspacing=0 align=center>")

	if rs.eof then
		response.write("<tr><td height='20' style='padding-top:0px;'> + 내용이 없습니다.</td></tr>")
	else
		do while not rs.eof


		'//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`
			
			tempcode = rs("b_part")
			userfolder = path
			
			
		'//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
			
			
			if len(rs("b_title"))>b_strnum then
				dim b_title : b_title = left(rs("b_title"),b_strnum) & "..."
			else
				b_title = rs("b_title")
			end if

			if datediff ("n",rs("b_writeday"),Now()) < 1440 then 
				dim strnewarticle : strnewarticle = " <img src='new.gif' align='top' border='0'>&nbsp;"
			else
				strnewarticle = ""
			end if	
			
			'response.Write("<tr><td width='100'><a href=?code=" & tempcode & ">"& rs("bs_name") &"</a></td>")
			'response.Write("<td style='padding-top:1px;'> + <a href='" & userfolder & "&code=" & tempcode & "&b_idx="&rs("b_idx")&"&vmode=view' class='global'>" & b_title & strnewarticle & "</a></td style='width:12px'><td>[" & rs("b_writeday") & "] </td></tr>")
'			
'			response.Write("<tr><td height='1' background='/img/btn_vline.gif'></td></tr>")
			
			dim contect : contect = ""

				contect = contect &" <tr>"
				contect = contect &"    <td height=20 style=padding-left:5px; > <img src=icon.gif align=absmiddle> <a href='" & userfolder & "&b_idx="&rs("b_idx")&"&vmode=view' class='global'>" & b_title & strnewarticle & "</a></td>"
				contect = contect &"    <td width=70><font color=#999999>"& rs("b_writeday") &"</font></td>"
				contect = contect &" </tr>"
				contect = contect &" <tr>"
				contect = contect &"    <td height=1 background='dotline.gif'> </td>"
				contect = contect &"    <td height=1 background='dotline.gif'> </td>"
				contect = contect &" </tr>"
			
			response.Write(contect)

			rs.movenext
		loop
	end if

	response.Write("</table>")

	rs.close
	set rs = nothing



end Sub




Sub photoList(byval b_part, byval list_num, byval path)
	
				'// 파트    리스트 갯수    루트에서부터 경로
	
	

	
	
	dim sql, rs
	'sql = "select top " & list_num & " b_part,b_idx,b_title,b_writeday from " & tb_name & " where re_level=0 order by b_idx desc"
	sql = "select top " & list_num & " bs_name,b_part,b_idx,b_title,b_writeday,file_1 from board_v1, boardset_v2 where re_level=0 and board_v1.b_part = '"& b_part &"' and board_v1.b_part=boardset_v2.bs_code order by b_idx desc"
'	response.write sql
	set rs = DBconn.execute(sql)
	dim tempcode 
	dim userfolder
	
	response.Write("<table width=100% border=0 cellpadding=5 cellspacing=0 align=center><tr height='100'>")

	if rs.eof then
		response.write("<td height='20' style='padding-top:0px;'> + 내용이 없습니다.</td>")
	else
		do while not rs.eof


		'//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`
			
			tempcode = rs("b_part")
			userfolder = path
			
			
		'//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
			
			
			
			
			dim contect : contect = ""

				contect = contect &" <td align='center'><table width='100' height='80' border='0' cellpadding='0' cellspacing='1' bgcolor='#666666'><tr>"
				
			
			
			if rs("file_1") <> "" then
						
						
						'//파일 존재 여부 체크
						dim ExisteFile
						dim uploadform , TempFilePath 
						Set uploadform = Server.CreateObject("DEXT.FileUpload") 
							TempFilePath = Server.MapPath("/upload/avanboard_v3/") & "\" & rs("file_1")

							If uploadform.FileExists(TempFilePath) Then
   								ExisteFile = true
							Else
   								ExisteFile = false
							End If
						Set uploadform = Nothing 

						if ExisteFile = false then '//파일이 없으면
							contect = contect &" <td bgcolor='#FFFFFF'><center>No img</center></a></td>"
						else
							dim upfiletype
							upfiletype = split(rs("file_1"),".")(1)
						
							if ucase(upfiletype) = "JPG" or ucase(upfiletype) = "GIF"  then
								contect = contect &" <td bgcolor='#FFFFFF'><a href='" & userfolder & "&b_idx="&rs("b_idx")&"&vmode=view'><img src='/Upload/avanboard_v3/"& rs("file_1") &"' width='100' height='80' border=0></a></td>"
							else
								
							
							end if
					
						end if


					end if
					
					
			
				contect = contect &" </tr></table></td>"
			
			response.Write(contect)

			rs.movenext
		loop
	end if

	response.Write("</tr></table>")

	rs.close
	set rs = nothing

	

end Sub


%>

