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
<%
	intNowPage 		= Request.QueryString("page")
	intPageSize 	= 5
	intBlockPage 	= 5

	query_filde		= "*"
	query_Tablename	= "notice"
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
<div class="consulting">
  <div class="inner">
	<p class="list_txt">
      총 <span><%=intTotalCount%></span>건
      <div class="search_wrap">
		<form name="list_search" id="list_search" method="post" action="?lasik=G103">
	    <select name="gum1" id="gum1">
		  <option value="n_title">제목</option>
		  <option value="n_contents">내용</option>
	    </select><input type="text" name="gum2" id="gum2" value="">
	    <input type="image" src="image/sub/search.png" id="BtnSearch" onClick="return false" style="cursor:pointer;" />
		</form>
      </div>
    </p>
    <table class="basic_list">
	  <colgroup>
		<col style="width:10%;"/>
		<col style="width:50%;"/>
		<col style="width:22%;"/>
		<col style="width:13%;"/>
	  </colgroup>
	  <tr>
		<th>번호</th>
		<th>제목</th>
		<th>작성일</th>
		<th>조회수</th>
	  </tr>
	  <%
	    pagei = (intTotalCount-MoveCount)
	    if rs2.eof Then
	  %>
	  <tr><td style="width:100%;height:100px;" colspan="4">No Data.</td></tr>
	  <%
	    else
		  rs2.move MoveCount
		  Do while not rs2.eof
	  %>
	  <tr>
		<td><%=pagei%></td>
		<td><a href="?lasik=G104&intSeq=<%=rs2("intSeq")%>&page=<%=request("page")%>&gum1=<%=request("gum1")%>&gum2=<%=request("gum2")%>"><%=rs2("n_title")%></a></td>
		<td><%=Left(rs2("n_inputtime"),10)%></td>
		<td><%=rs2("n_hit")%></td>
	  </tr>
	  <%
	      pagei = pagei-1
		  rs2.movenext
		  loop
		  rs2.close
		  set rs2 = nothing
		End If
	  %>
    </table>
    <div class="list_page">
	  <%call Paging_list("&gum1="&request("gum1")&"&gum2="&request("gum2")&"")%>
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
