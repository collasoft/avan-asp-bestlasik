<%
	intNowPage 		= Request.QueryString("page")    
	intPageSize 	= 500
	intBlockPage 	= 5

	query_filde		= "*"
	query_Tablename	= "client"
	query_where		= " intSeq > 0 "
	query_orderby	= " order by intSeq DESC"

	gum1 		= request("gum1")
	gum2 		= request("gum2")
	
	If isValue(gum2) Then
		query_where = query_where & " and "&gum1&" like '%"&gum2&"%'"
	Else
		gum1 = ""
		gum2 = ""
	End If

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

	sql2 = GetQuery()
	call dbopen
	set rs2 = dbconn.execute(sql2)
%>
<div class="partner"> 
  <div class="inner">
	<ul>
	  <%
	    pagei = (intTotalCount-MoveCount)
	    if rs2.eof Then
	  %>
	  <li style="width:100%;height:100px;text-align:center;">No Data.</li>
	  <%
	    else
		  rs2.move MoveCount
		  Do while not rs2.eof
	  %>
	  <li>
	    <%If Len(rs2("c_url")) > 5 then%>
	    <!-- <a href="<%=rs2("c_url")%>" target="blank"> -->
		<%else%>
		<!-- <a href="javascript:alert('연결 홈페이지가 없습니다.');"> -->
		<%End if%>
		  <%If Len(rs2("img1")) > 0 Then%>
		  <img src="/upload/client/<%=Split(rs2("img1"),":")(0)%>" style="height:98px;" />
		  <%End if%>
		  <span class="bg"><p>사이트 보러가기 <img src="image/sub/plus.png" alt=""/></p></span>
	    <!-- </a> -->
	  </li>
	  <%
	      pagei = pagei-1
		  rs2.movenext
		  loop
		  rs2.close
		  set rs2 = nothing
		End If
	  %>
	</ul>
</div>
</div>
<script type="text/javascript"> 
	$(document).ready(function(){
		$('.partner ul li').mouseenter(function(){
			$(this).children().children('.bg').stop().fadeIn(); 
		})
		$('.partner ul li').mouseleave(function(){
			$(this).children().children('.bg').stop().fadeOut(); 
		})
	})
</script>
<%
call dbclose
%>