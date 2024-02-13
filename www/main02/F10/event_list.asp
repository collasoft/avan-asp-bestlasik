<script type="text/javascript">
<!--
$(document).ready(function(){
  //전체 저장하기
  $("#BtnSearch").click(function(e){

      var f=document.list_search
	  if ($('#gum2').val() == ""){
		  alert("검색어를 입력해 주세요");
		  $('#gum2').focus();
		  return false;
	  }
	  f.submit();
  });
})

//-->
</script>
<div class="top_tabwrap02"> 
  <div class="inner">
    <ul> 
	  <li <%If request.querystring("sunseo") = "" Or request.querystring("sunseo") = "a" Then%>class="on"<%End if%>><a href="?eye=F101&sunseo=a">최신순</a></li>
	  <li <%If request.querystring("sunseo") = "b" Then%>class="on"<%End if%>><a href="?eye=F101&sunseo=b">마감임박순</a></li>
    </ul>
    <div class="search_wrap">
	  <form name="list_search" id="list_search" method="post" action="?eye=F101">
	  <select name="gum1" id="gum1">
		<option value="e_title">제목</option>
		<option value="e_contents">내용</option>
	  </select><input type="text" name="gum2" id="gum2" value="">
	  <input type="image" src="image/sub/search.png" id="BtnSearch" onClick="return false" style="cursor:pointer;" />
	  </form>
    </div>
  </div>
</div>
<%
	intNowPage 		= Request.QueryString("page")    
	intPageSize 		= 2
	intBlockPage 		= 5

	query_filde		= "*"
	query_Tablename	= "event"
	query_where		= " intSeq > 0 "
	If request.querystring("sunseo") = "" Or request.querystring("sunseo") = "a" Then
	query_orderby	= " order by intSeq DESC"  
	Else
	query_orderby	= " order by e_gigan2 asc"
	query_where = query_where & " and e_ing = 'Y'"
	End if
	
	Dim gum1, gum2
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
<div class="event"> 
  <div class="inner">
	<ul class="event_list">
	  <%
	    pagei = (intTotalCount-MoveCount)
	    if  rs2.eof then
	  %>
	  <li style="width:100%;height:100px;">No Data.</li>
	  <%
	    else
		  rs2.move MoveCount
		  Do while not rs2.eof
	  %>
	  <li>
	    <a href="?eye=F102&intSeq=<%=rs2("intSeq")%>&page=<%=request("page")%>&gum1=<%=request("gum1")%>&gum2=<%=request("gum2")%>">
		  <%If rs2("e_ing") = "Y" then%>
		  <span class="cate_tab">진행중</span>
		  <%End if%>
		  <div class="img">
		    <%If rs2("e_ing") = "N" then%>
		    <span class="end_bg"><p>마감</p></span>
			<%End if%>
			<%If Len(rs2("img1")) > 0 then%><img src="/upload/event/<%=Split(rs2("img1"),":")(0)%>" style="height:342px;" alt=""/><%End if%>
		  </div>
		  <p class="txt01"><%=rs2("e_title")%></p>
		  <p class="txt02">이벤트 기간 : <%If rs2("e_sangsi") = "Y" then%>상시진행<%else%><%=rs2("e_gigan1")%> ~ <%=rs2("e_gigan2")%><%End if%></p>
		</a>
	  </li>
      <%
	      pagei = pagei-1
		  rs2.movenext
		  loop
		  rs2.close(): set rs2 = nothing
		End If
	  %>
	  <!--<li>
	    <a href="">
		  <div class="img">
		    <span class="end_bg"><p>마감</p></span>
			<img src="image/sub/event_img02.png" alt=""/>
		  </div>
		  <p class="txt01">제목이 출력됩니다</p>
		  <p class="txt02">이벤트 기간 : YYYY-MM-DD ~ YYYY-MM-DD</p>
		</a>
	  </li>-->
	</ul>
	<div class="list_page">
	  <%call Paging_list("")%>

	  <!--<a class="first_btn" href="#">맨처음</a><a class="first2_btn" href="#">처음</a>
		<ul>
		  <li><a class="on" href="#">1</a></li>
		  <li><a href="#">2</a></li>
		  <li><a href="#">3</a></li>
		  <li><a href="#">4</a></li>
		  <li><a href="#">5</a></li>
		</ul>
 	  <a class="last2_btn" href="#">뒤로</a><a class="last_btn" href="#">맨뒤로</a>-->
    </div>
  </div>
</div>
<%
call dbclose
%>