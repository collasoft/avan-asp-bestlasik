<div class="staff">
  <div class="inner" id="info-0">
    <ul class="staff_list">
<%
	dim intTotalCount, intTotalPage

	dim intNowPage			: intNowPage 		= Request.QueryString("page")
	dim intPageSize			: intPageSize 		= 100
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
		<a href="?lasik=A106&staff=<%=rs2("intSeq")%>#info">
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
</div>
<%
call dbclose
%>