<%
Call DbOpen()

dbconn.execute("update notice set n_hit = n_hit + 1 WHERE intSeq = '"&request.QueryString("intSeq")&"'")

sql = "SELECT * FROM notice WHERE intSeq = '"&request.QueryString("intSeq")&"'"
set rs = dbconn.execute(sql)

if not rs.eof Then

dim sqln, rsn, max_id, sqlb, rsb, min_id

If isValue(request("gum2")) Then
	query_where = query_where & " and "&request("gum1")&" like '%"&request("gum2")&"%'"
End If


sqln = "select max(intSeq) from notice where intSeq < "&request.QueryString("intSeq")&" "& query_where &""
set rsn = dbconn.Execute(sqln)

  if isnull(rsn(0)) then
    max_id = ""
  else
    max_id = rsn(0)
  end If

rsn.close
Set rsn=nothing

sqlb = "select min(intSeq) from notice where intSeq > "&request.QueryString("intSeq")&" "& query_where &""
set rsb = dbconn.Execute(sqlb)

  if isnull(rsb(0)) then
    min_id = ""
  else  
    min_id = rsb(0)
  end If
  
rsb.close
Set rsb=nothing
%>
<div class="consulting"> 
  <div class="inner">
    <div class="input_form">
      <div class="view_wrap"> 
	    <div class="title_box"> 
		  <p class="title"><%=rs("n_title")%></p>
		  <span class="data">
		    <%If Len(rs("img1")) > 0 then%>
		    <span class="day">첨부파일 : <a href="/avanplus/download.asp?o_file=<%=Split(rs("img1"),":")(0)%>&u_file=<%=Split(rs("img1"),":")(1)%>&o_folder=notice"><%=Split(rs("img1"),":")(1)%></a> &nbsp;&nbsp;</span>
			<%End if%>
			<span class="day"><%=Left(rs("n_inputtime"),10)%></span>
			<span class="name"><%=rs("n_writer")%></span>
			<span class="hit"><%=rs("n_hit")%></span>
		  </span>
	    </div>
	    <div class="content_box" id="contop">
		  <%If Len(rs("img1")) > 0 Then
		      If Right(Split(rs("img1"),":")(0),4) = ".jpg" Or Right(Split(rs("img1"),":")(0),4) = ".gif" Or Right(Split(rs("img1"),":")(0),4) = ".png" Or Right(Split(rs("img1"),":")(0),4) = "jpeg" then
		  %>
		  <img src="/upload/notice/<%=Split(rs("img1"),":")(0)%>" />
		  <%
		      End if
		    End if%>
		  
		  <%=rs("n_contents")%>
	    </div>

	    <ul class="list_box">
		  <%if max_id <> "" then
            Dim sql7, rs7                   
		    sql7 = "select * from notice where intSeq = "&max_id&""
		    set rs7 = dbconn.Execute(sql7)
		  %>
		  <li><a href="?lasik=G104&intSeq=<%=rs7("intSeq")%>&gum1=<%=request("gum1")%>&gum2=<%=request("gum2")%>&page=<%=request.querystring("page")%>"><span>이전</span></a></li>
		  <%rs7.close
			Set rs7=Nothing
			Else
		  %>
		  <li><span><!-- 이전 --></span><!-- <a href="#" style="cursor:default;">No Data.</a> --></li>
		  <%end if%>

		  <%if min_id <> "" Then
		    Dim sql8, rs8
		    sql8 = "select * from notice where intSeq = "&min_id&""
		    set rs8 = dbconn.Execute(sql8)
		  %>
		  <li><a href="?lasik=G104&intSeq=<%=rs8("intSeq")%>&gum1=<%=request("gum1")%>&gum2=<%=request("gum2")%>&page=<%=request.querystring("page")%>"><span>다음</span></a></li>
		  <%rs8.close
			Set rs8=Nothing
			Else
		  %>
		  <li><!-- <a href="#" style="cursor:default;">No Data.</a> --><span><!-- 다음 --></span></li>
		  <%end if%>
	    </ul>

      </div>
      <div class="viewbtn_wrap">
	    <!--span class="btn_left">
		<input type="button" value="삭제" class="btn01"/><input type="button" value="수정" class="btn01"/>
	    </span-->
	    <input type="button" value="목록" class="btn02" onclick="self.location.href = '?lasik=G103&page=<%=request.querystring("page")%>&gum1=<%=request("gum1")%>&gum2=<%=request("gum2")%>';" />
	    <!--span class="btn_right">
		<input type="button" value="답변" class="btn01"/>
	    </span-->
      </div>
    </div>
  </div>
</div>
<%
  end if
  rs.close
  set rs = nothing
  call dbclose
%>