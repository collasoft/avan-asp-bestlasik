<div class="staff">
  <div class="inner" id="info-0">
    <ul class="staff_list">
<%
	dim intTotalCount, intTotalPage

	dim intNowPage			: intNowPage 		= Request.QueryString("page")
	dim intPageSize			: intPageSize 		= 10
	dim intBlockPage		: intBlockPage 		= 10

	dim query_filde			: query_filde		= "*"
	dim query_Tablename		: query_Tablename	= "staff"
	dim query_where			: query_where		= " intSeq > 0 "
	dim query_orderby		: query_orderby		= " order by sunseo asc "

	call intTotal

	'##
	'## 1. intTotal : call intTotal
	'## 2. TopCount 를 불러오는 쿼리문 에 삽입한다.
	'## 3. MoveCount 를 Do while문 상단에 rs.move MoveCount 형식으로 삽입한다.
	'## 4. NavCount 현재페이지의 정보를 보여주는 함수 response.Write(NavCount) 형식으로 삽입
	'## 5. Paging(byval plusString) 하단의 네비게이션 바 call Paging(추가스트링)
	'## 
	'## 
	'#############################################################################

	dim sql2, rs2, i
	sql2 = GetQuery()
	call dbopen
	set rs2 = dbconn.execute(sql2)

	  dim pagei : pagei = (intTotalCount-MoveCount)

	  if  rs2.eof then
	%>
	  <tr><td colspan="5">No Data.</td></tr>
	<%
	  Else
	    i = 1
		rs2.move MoveCount
		Do while not rs2.eof
	
		'	if datediff ("n",strInsertDate,Now()) < 1440 then 
		'		dim strnewarticle : strnewarticle = " <img src='../images/main/b_new.gif' align='absmiddle' border='0'>&nbsp;"
		'	else
		'		strnewarticle = ""
		'	end if
	%>
	  <li id="stafflist<%=i%>">
		<a href="javascript:lasik('<%=i%>');">
		  <div class="img">
			<%If Len(rs2("img2")) > 0 then%><img src="/upload/staff/<%=Split(rs2("img2"),":")(0)%>" alt=""/><%End if%>
		  </div>
		  <div class="txt_wrap"> 
			<div class="txt">
			  <p class="title"><%=rs2("s_title")%></p>
			  <p class="name"><span><%=rs2("s_name")%></span> <%=rs2("s_jik")%></p>
			</div>
			<p class="more">자세히 보기</p>
		  </div>
		</a>
	  </li>
	<%	pagei = pagei-1
		rs2.movenext
		i = i + 1
		loop
		rs2.close(): set rs2 = nothing
	  End If
	%>
    </ul>					
  </div>

<script language="JavaScript" type="text/JavaScript">
<!--
<%if Request.QueryString("staff") <> "" then%>
window.onload = function(){

  lasik('<%=Request.QueryString("staff")%>');
  
}
<%end if%>
var stapnum = "";
function lasik(no){
	stapnum = no;
  for( i=0 ; i<=<%=intTotalCount%> ; i++ ){
    if(i==no){
	  document.getElementById("info-"+i).style.display="block";
	  document.getElementById("info-100").style.display="block";
	}else{
      document.getElementById("info-"+i).style.display="none";
	  jQuery( 'html, body #staff_view' ).animate( { scrollTop : 0 }, 10 );
	}
  }
}

function lasik2(no){
  for( i=0 ; i<=<%=intTotalCount%> ; i++ ){
    if(i==no){
	  document.getElementById("info-"+i).style.display="block";
	}else{
      document.getElementById("info-"+i).style.display="none";
	  document.getElementById("info-100").style.display="none";
	}
  }

	var position = jQuery("div.staff li#stafflist" + stapnum + "").offset().top - 128;
	  jQuery( "html, body" ).animate( { scrollTop : position }, 600 );
}
//-->
</script>
  <%Dim a
    sql2 = "SELECT * FROM staff order by sunseo asc"
    set rs2 = dbconn.execute(sql2)
    if rs2.eof Then
          
	Else
	  a=1
  	  Do Until rs2.EOF
  %>
  <div class="inner" id="info-<%=a%>" style="display:none;">
    <ul class="staff_view">
	  <li><%If Len(rs2("img1")) > 0 then%><img src="/upload/staff/<%=Split(rs2("img1"),":")(0)%>" alt=""/><%End if%></li>
	  <li>
		<div class="title_wrap">
		  <p class="title"><%=rs2("s_title")%></p>
		  <p class="name"><span><%=rs2("s_name")%></span> <%=rs2("s_jik")%></p>
		</div>
		<div class="field">
		  <p class="sub_title">진료과목</p>
		  <ul>
		    <%
			Dim s_bunya, j
			s_bunya = split(rs2("s_bunya"),",")

			for j=0 to UBound(s_bunya) step 1
			%>
			<li><%=s_bunya(j)%></li>
			<% 
			next
			%>
		  </ul>
		</div>
		<div class="intro">
		  <p class="sub_title">약력</p>
		  <ul>
		    <%
			  Dim sql3, rs3
		      sql3 = "SELECT * FROM staff_history WHERE intSeq_staff = "&rs2("intSeq")&" order by intSeq asc"
		      set rs3 = dbconn.execute(sql3)
		      if rs3.eof Then
          
		      Else
  			    Do Until rs3.EOF
		    %>
			<li><%=rs3("title")%></li>
		    <%
			    rs3.MoveNext
		        Loop
		  
		      End If
		      rs3.close
		      set rs3 = Nothing
		    %>
		  </ul>
		</div>
	  </li>
    </ul>
	<%If rs2("care_yn") = "Y" then%>
    <table>
	  <colgroup>
		<col style="width:14%" />
		<col style="width:14%" />
		<col style="width:14%" />
		<col style="width:14%" />
		<col style="width:14%" />
		<col style="width:14%" />
		<col style="width:14%" />
	  </colgroup>
	  <thead> 
		<tr> 
		  <th>구분</th>
		  <th>월</th>
		  <th>화</th>
		  <th>수</th>
		  <th>목</th>
		  <th>금</th>
		  <th>토</th>
		</tr>
	  </thead>
	  <tbody> 
		<tr> 
		  <th>오전</th>
		  <td><%If Len(rs2("care_am1")) > 0 then%><%=rs2("care_am1")%><%else%><img src="image/sub/none.png" alt=""/><%End if%></td>
		  <td><%If Len(rs2("care_am2")) > 0 then%><%=rs2("care_am2")%><%else%><img src="image/sub/none.png" alt=""/><%End if%></td>
		  <td><%If Len(rs2("care_am3")) > 0 then%><%=rs2("care_am3")%><%else%><img src="image/sub/none.png" alt=""/><%End if%></td>
		  <td><%If Len(rs2("care_am4")) > 0 then%><%=rs2("care_am4")%><%else%><img src="image/sub/none.png" alt=""/><%End if%></td>
		  <td><%If Len(rs2("care_am5")) > 0 then%><%=rs2("care_am5")%><%else%><img src="image/sub/none.png" alt=""/><%End if%></td>
		  <td><%If Len(rs2("care_am6")) > 0 then%><%=rs2("care_am6")%><%else%><img src="image/sub/none.png" alt=""/><%End if%></td>
		</tr>
		<tr>
		  <th>오후</th>
		  <td><%If Len(rs2("care_pm1")) > 0 then%><%=rs2("care_pm1")%><%else%><img src="image/sub/none.png" alt=""/><%End if%></td>
		  <td><%If Len(rs2("care_pm2")) > 0 then%><%=rs2("care_pm2")%><%else%><img src="image/sub/none.png" alt=""/><%End if%></td>
		  <td><%If Len(rs2("care_pm3")) > 0 then%><%=rs2("care_pm3")%><%else%><img src="image/sub/none.png" alt=""/><%End if%></td>
		  <td><%If Len(rs2("care_pm4")) > 0 then%><%=rs2("care_pm4")%><%else%><img src="image/sub/none.png" alt=""/><%End if%></td>
		  <td><%If Len(rs2("care_pm5")) > 0 then%><%=rs2("care_pm5")%><%else%><img src="image/sub/none.png" alt=""/><%End if%></td>
		  <td><%If Len(rs2("care_pm6")) > 0 then%><%=rs2("care_pm6")%><%else%><img src="image/sub/none.png" alt=""/><%End if%></td>
		</tr>
	  </tbody>
    </table>
	<%End if%>
  </div>
  <%
	  rs2.MoveNext
	  a=a+1
	  Loop
  
    End If
    rs2.close
    set rs2 = Nothing
  %>

  <div class="viewbtn_wrap" style="display:none;" id="info-100">
	<input type="button" value="목록" class="btn02" onclick="lasik2('0')" />
  </div>

</div>
<%
call dbclose
%>