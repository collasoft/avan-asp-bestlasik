<%
	intNowPage 		= Request.QueryString("page")    
	intPageSize 	= 500
	intBlockPage 	= 5

	query_filde		= "*"
	query_Tablename	= "faq"
	query_where		= " intSeq > 0 and f_divi = 2 "
	query_orderby	= " order by intSeq DESC"

	gum1 		= request("gum1")
	gum2 		= request("gum2")
	
	If isValue(gum2) Then
		query_where = query_where & " and "&gum1&" like '%"&gum2&"%'"
	Else
		gum1 = ""
		gum2 = ""
	End If

	If Request.QueryString("bunryu") <> "" Then
	    query_where = query_where & " and f_bunryu = '"&Request.QueryString("bunryu")&"'"
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
	call dbopen
	set rs2 = dbconn.execute(sql2)
%>
<div class="top_tabwrap">
  <ul>
	<li <%If Request.QueryString("bunryu") = "" Then%>class="on"<%End if%>><a href="?eye=H101">전체</a></li>
	<li <%If Request.QueryString("bunryu") = "a" Then%>class="on"<%End if%>><a href="?eye=H101&bunryu=a">진료 및 수술</a></li>
	<li <%If Request.QueryString("bunryu") = "b" Then%>class="on"<%End if%>><a href="?eye=H101&bunryu=b">비용</a></li>
	<li <%If Request.QueryString("bunryu") = "c" Then%>class="on"<%End if%>><a href="?eye=H101&bunryu=c">기타</a></li>
  </ul>
</div>
<div style="height:30px;">&nbsp;</div>
<div class="faq">
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
		<div class="faq_title"><span><img src="image/sub/q.png" alt=""/></span>
		  <p class="txt"><%=rs2("f_title")%></p>
		</div>
		<div class="faq_content">
		  <table>
		    <tr>
			  <td style="padding:10px 10px 10px 30px;"><img src="image/sub/a.png" alt=""/></td>
			  <td style="padding:20px 10px 20px 48px;"><%=rs2("f_contents")%></td>
		    </tr>
		  </table>
		</div>
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
		$('.faq_title').click(function(){
			$(this).toggleClass('open');
			$(this).siblings('.faq_content').stop().slideToggle();
			$(this).parent().siblings().children('.faq_content').stop().slideUp();
			$(this).parent().siblings().children('.faq_title').removeClass('open');
		})
	})
</script>
<%
call dbclose
%>