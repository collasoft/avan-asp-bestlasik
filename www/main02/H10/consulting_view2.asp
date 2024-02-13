<%
Call DbOpen()

sql = "SELECT * FROM counsel2 WHERE intSeq = '"&request.QueryString("intSeq")&"'"
set rs = dbconn.execute(sql)

if not rs.eof Then
%>
<div class="consulting">
  <div class="inner">
	<div class="input_form">
	  <form action="">
	  <div class="view_wrap"> 
		<div class="title_box"> 
		  <p class="title"><%=rs("c_title")%></p>
		  <span class="data"><span class="day"><%=Left(rs("c_inputtime"),10)%></span><span class="name"><%=rs("c_writer")%></span></span>
		</div>
        <%If Len(rs("img1")) > 0 then%>
		<div class="file_box"> 
		  첨부파일<span class="file"><a href="/avanplus/download.asp?o_file=<%=Split(rs("img1"),":")(0)%>&u_file=<%=Split(rs("img1"),":")(1)%>&o_folder=counsel"><%=Split(rs("img1"),":")(1)%></a> <img src="image/sub/file.png" alt=""/></span>
		</div>
		<%End if%>
		<div class="content_box"> 
		  <%
		    If Len(rs("c_contents")) > 0 Then
		      Response.write Replace(rs("c_contents"),Chr(13)&Chr(10),"<br>")
			End if
		  %>
		</div>
		<div class="title_box"><p class="title">답변</p></div>
		<div class="content_box"> 
		  <%
		    If Len(rs("c_answer")) > 0 Then
		      Response.write Replace(rs("c_answer"),Chr(13)&Chr(10),"<br>")
			End if
		  %>
		</div>
	  </div>
	  <div class="viewbtn_wrap">
		<!--span class="btn_left">
		<input type="button" value="삭제" class="btn01"/><input type="button" value="수정" class="btn01"/>
		</span-->
		<input type="button" value="목록" class="btn02" onclick="self.location.href = '?eye=H102&page=<%=request.querystring("page")%>&gum1=<%=request("gum1")%>&gum2=<%=request("gum2")%>';" />
		<!--span class="btn_right">
		<input type="button" value="답변" class="btn01"/>
		</span-->
	  </div>
	  </form>
	</div>
  </div>
</div>
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
<%
  end if
  rs.close
  set rs = nothing
  call dbclose
%>