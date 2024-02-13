<%
Call DbOpen()

sql = "SELECT * FROM event WHERE intSeq = '"&request.QueryString("intSeq")&"'"
set rs = dbconn.execute(sql)

if not rs.eof then
%>
<div class="consulting"> 
  <div class="inner">
	<div class="input_form">
	  <div class="view_wrap"> 
		<div class="event_title_box"> 
		  <p class="title"><%=rs("e_title")%></p>
		  <p class="day">이벤트 기간 : <%If rs("e_sangsi") = "Y" then%>상시진행<%else%><%=rs("e_gigan1")%> ~ <%=rs("e_gigan2")%><%End if%></p>
		</div>
		<div class="content_box"> 
		  <%If Len(rs("img2")) > 0 then%><img src="/upload/event/<%=Split(rs("img2"),":")(0)%>" alt=""/><%End if%>
		  <%=rs("e_contents")%>
		</div>
	  </div>	
	  <div class="viewbtn_wrap">
		<!--span class="btn_left">
		<input type="button" value="삭제" class="btn01"/><input type="button" value="수정" class="btn01"/>
		</span-->
		<input type="button" value="목록" class="btn02" onclick="self.location.href = '?lasik=G101&page=<%=request.querystring("page")%>&gum1=<%=request("gum1")%>&gum2=<%=request("gum2")%>';" />
		<!--span class="btn_right">
		<input type="button" value="답변" class="btn01"/>
		</span-->
	  </div>
	</div>
  </div>
</div>
<%
  end if
  rs.close()
  set rs = nothing
  call dbclose
%>

<script type="text/javascript"> 
$(document).ready(function(){
	var fileTarget = $('.filebox .upload-hidden');

	fileTarget.on('change', function(){ // 값이 변경되면
	 if(window.FileReader){ // modern browser 
	 var filename = $(this)[0].files[0].name; 
	 } else { // old IE 
	 var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출 
	 } 
	 // 추출한 파일명 삽입 
	 $(this).siblings('.upload-name').val(filename); 
	 }); 
 });
</script>