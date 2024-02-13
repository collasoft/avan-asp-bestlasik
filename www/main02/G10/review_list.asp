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
  // &nbsp 제거
  $(".image_list .txt_box .txt02").html(function (i, html) {
	    return html.replace(/&nbsp;/g, '');
	});
});

//-->
</script>
<%
	intNowPage 		= Request.QueryString("page")
	intPageSize 	= 8
	intBlockPage 	= 8

	query_filde		= "*"
	query_Tablename	= "review2"
	query_where		= " intSeq > 0 and gubun = '"& Request.QueryString("gubun") &"' "
	query_orderby	= " order by left(r_inputtime,10) DESC, intSeq DESC"

	gum1 = request("gum1")
	gum2 = request("gum2")

	If isValue(gum2) Then
		query_where = query_where & " and "&gum1&" like '%"&gum2&"%'"
	Else
		gum1 = ""
		gum2 = ""
	End If

	If Request.QueryString("bunryu") <> "" And Request.QueryString("bunryu") <> "Y" And Request.QueryString("bunryu") <> "V" Then
	    query_where = query_where & " and r_bunryu = '"&Request.QueryString("bunryu")&"'"
	ElseIf Request.QueryString("bunryu") = "Y" Then
	    query_where = query_where & " and best = '"&Request.QueryString("bunryu")&"' and movie_yn <> 'Y'"
	ElseIf Request.QueryString("bunryu") = "V" Then
	    query_where = query_where & " and movie_yn = 'Y'"
	End if

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
	'Response.write sql2
	call dbopen
	set rs2 = dbconn.execute(sql2)
%>
<div class="consulting">
  <div class="inner">
	<!--<ul class="top_question02">
	  <li>
		신세계안과의원에서 수술하신 고객님들이 직접 남겨주신 후기입니다.
	  </li>
	  <li>
		<a href="review_write.asp">
		  <p>후기작성</p>
		</a>
	  </li>
	</ul>-->
	<ul class="sub_tab mb50">
	  <li <%If Request.QueryString("bunryu") = "" Then%>class="on"<%End if%>><a href="?eye=<%=Request("eye")%>&gubun=<%=Request.QueryString("gubun")%>">전체</a></li>
	  <li <%If Request.QueryString("bunryu") = "b" Then%>class="on"<%End if%>><a href="?eye=<%=Request("eye")%>&gubun=<%=Request.QueryString("gubun")%>&bunryu=b">노안 ∙ 백내장</a></li>
	  <li <%If Request.QueryString("bunryu") = "c" Then%>class="on"<%End if%>><a href="?eye=<%=Request("eye")%>&gubun=<%=Request.QueryString("gubun")%>&bunryu=c">안성형</a></li>
	  <li <%If Request.QueryString("bunryu") = "Y" Then%>class="on"<%End if%>><a href="?eye=<%=Request("eye")%>&gubun=<%=Request.QueryString("gubun")%>&bunryu=Y">베스트후기</a></li>
	  <li <%If Request.QueryString("bunryu") = "V" Then%>class="on"<%End if%>><a href="?eye=<%=Request("eye")%>&gubun=<%=Request.QueryString("gubun")%>&bunryu=V">영상후기</a></li>
	  <!--<li <%If Request.QueryString("bunryu") = "d" Then%>class="on"<%End if%>><a href="?eye=<%=Request("eye")%>&gubun=<%=Request.QueryString("gubun")%>&bunryu=d">안구종합질환</a></li>-->
	</ul>
	<div class="btn_box01">


		<button type="button" class="btn_right btn_write" onclick="location.href='?eye=G103&gubun=a';"><i></i>글쓰기</button>

	<div class="search_wrap">
	  <form name="list_search" id="list_search" method="post" action="?eye=<%=Request("eye")%>&gubun=<%=Request.QueryString("gubun")%>&bunryu=<%=Request.QueryString("bunryu")%>">
	  <select name="gum1" id="gum1">
	    <option value="r_title">제목</option>
		<option value="r_contents">내용</option>
	  </select><input type="text" name="gum2" id="gum2" value="">
	  <input type="image" src="image/sub/search.png" id="BtnSearch" onClick="return false" style="cursor:pointer;" />
	  </form>
	</div>
</div>
<div class="review_imglist">

	<%
	  pagei = (intTotalCount-MoveCount)
	  if rs2.eof Then
    %>
    <div class="image_list" style="width:100%;height:100px;text-align:center;">No Data.</div>
    <%
	  else
	    rs2.move MoveCount
	    Do while not rs2.eof
    %>
	<div class="image_list">
	  <a href="?eye=<%If Request.querystring("eye") = "G101" Then%>G102<%else%>G105<%End if%>&intSeq=<%=rs2("intSeq")%>&page=<%=request("page")%>&gum1=<%=request("gum1")%>&gum2=<%=request("gum2")%>&gubun=<%=Request.QueryString("gubun")%>&bunryu=<%=Request.QueryString("bunryu")%>">

        <%If rs2("movie_yn") = "Y" Then%>

		<!--동영상이 있는 경우-->
	    <div class="image video_img">
		  <%If Len(rs2("img1")) > 0 Then%>
		  <img src="/upload/review/<%=Split(rs2("img1"),":")(0)%>" />
		  <%ElseIf Len(rs2("img2")) > 0 Then%>
		  <img src="/upload/review/<%=Split(rs2("img2"),":")(0)%>" />
		  <%else%>
		  <img src="/upload/logologo10.jpg" />
		  <%End if%>
	    </div>

		<%else%>

		<!--동영상이 없는 경우-->
		<div class="image">
		  <%If Len(rs2("img1")) > 0 Then%>
		  <img src="/upload/review/<%=Split(rs2("img1"),":")(0)%>" />
		  <%ElseIf Len(rs2("img2")) > 0 Then%>
		  <img src="/upload/review/<%=Split(rs2("img2"),":")(0)%>" />
		  <%else%>
		  <img src="/upload/logologo10.jpg" />
		  <%End if%>
	    </div>

		<%End if%>

	    <div class="txt_box">
		  <p class="txt01"><%=review_gubun2(rs2("r_bunryu"))%> </p>
		  <p class="title"><%=rs2("r_title")%></p>
			<p class="txt02"><%=Left(RemoveHTML(rs2("r_contents")),300)%></p>
		  <p class="txt03"><%=Left(rs2("r_inputtime"),10)%> <span><%=rs2("r_writer")%></span></p>
	    </div>
 	    <span class="more"><img src="image/sub/more.png" alt=""/></span>
	  </a>
    </div>
    <%
	    pagei = pagei-1
	    rs2.movenext
	    loop
	    rs2.close
	    set rs2 = nothing
	  End If

	If Request.QueryString("gubun") = "a" then
	%>
    <!-- <div class="btn_box">
    	<button type="button" class="btn_right btn_write" onclick="location.href='?eye=G103&gubun=a';"><i></i>글쓰기</button>
    </div> -->
<%	End if%>
</div>
    <div class="list_page">
	  <%call Paging_list("")%>
    </div>
  </div>
</div>
<%
call dbclose
%>
