<%
If session("useridid") = "" then
	GetLogin2("sub.asp?eye=J101")
	Response.end
End If

Call DbOpen()

sql = "SELECT * FROM review2 WHERE intSeq = '"&request.QueryString("intSeq")&"'"
set rs = dbconn.execute(sql)

if not rs.eof Then

sqln = "select max(intSeq) from review2 where intSeq < "&request.QueryString("intSeq")&" and gubun = '"&request.QueryString("gubun")&"'"
set rsn = dbconn.Execute(sqln)

  if isnull(rsn(0)) then
    max_id = ""
  else
    max_id = rsn(0)
  end If

rsn.close
Set rsn=nothing

sqlb = "select min(intSeq) from review2 where intSeq > "&request.QueryString("intSeq")&" and gubun = '"&request.QueryString("gubun")&"'"
set rsb = dbconn.Execute(sqlb)

  if isnull(rsb(0)) then
    min_id = ""
  else  
    min_id = rsb(0)
  end If
  
rsb.close
Set rsb=Nothing
%>
<div class="consulting">
  <div class="inner">
	<div class="input_form">
	  <div class="view_wrap"> 
		<div class="title_box"> 
		  <p class="title"><%=rs("r_title")%></p>
		  <span class="data"><span class="day"><%=Left(rs("r_inputtime"),10)%></span><span class="name"><%=rs("r_writer")%></span></span> 
		</div>
		<div class="cate_box">
		  <p class="txt01"><%=review_gubun2(rs("r_bunryu"))%> <span>수술전 시력 <%=rs("r_eyeforce1")%> <span>수술 후 시력 <%=rs("r_eyeforce2")%></span></span></p>
		</div>
		<div class="content_box">
		  <%If Len(rs("img2")) > 0 Then
		      If Right(Split(rs("img2"),":")(0),4) = ".jpg" Or Right(Split(rs("img2"),":")(0),4) = ".gif" Or Right(Split(rs("img2"),":")(0),4) = ".png" Or Right(Split(rs("img2"),":")(0),4) = "jpeg" then
		  %>
		  <img src="/upload/review/<%=Split(rs("img2"),":")(0)%>" />
		  <%
		      End if
		    End if%>
		  <%If Len(rs("img3")) > 0 Then%>
			  <video type="video/mp4" src="/upload/review/<%=Split(rs("img3"),":")(0)%>" style="width:100%;" controls autoplay loop></video>
		  <%End if%>
		  <%=rs("r_contents")%><br><br>

		  <!-- <div class="qu">1. 수술을 결심한 동기와 방문경로가 어떻게 되시나요?</div>
          <%=rs("r_question1")%>
		  <div class="qu">2. 수술 후 느낀점이나 주변의 반응은 어떠셨나요?</div>
          <%=rs("r_question2")%>
		  <div class="qu">3. 신세계안과에서 좋았던 점/ 특별한 점은 무엇인가요?</div>
		  <%=rs("r_question3")%>
		  <div class="qu">4. 아직 수술하지 않으신 분들께 해주고 싶은 말은 무엇인가요?</div>
		  <%=rs("r_question4")%> -->
		</div>
		<ul class="list_box">
		  <%if max_id <> "" then
		    sql7 = "select * from review2 where intSeq = "&max_id&""
		    set rs7 = dbconn.Execute(sql7)
		  %>
		  <li><a href="?eye=<%=Request("eye")%>&intSeq=<%=rs7("intSeq")%>&gubun=<%=request("gubun")%>&bunryu=<%=Request.QueryString("bunryu")%>"><span>이전</span></a><%'=rs7("r_title")%></li>
		  <%rs7.close
			Set rs7=Nothing
			Else
		  %>
		  <li><span><!-- 이전 --></span><!-- <a href="#" style="cursor:default;">No Data.</a> --></li>
		  <%end if%>

		  <%if min_id <> "" Then
		    sql8 = "select * from review2 where intSeq = "&min_id&""
		    set rs8 = dbconn.Execute(sql8)
		  %>
		  <li><a href="?eye=<%=Request("eye")%>&intSeq=<%=rs8("intSeq")%>&gubun=<%=request("gubun")%>&bunryu=<%=Request.QueryString("bunryu")%>"><%'=rs8("r_title")%><span>다음</span></a></li>
		  <%rs8.close
			Set rs8=Nothing
			Else
		  %>
		  <li><!-- <a href="#" style="cursor:default;">No Data.</a> --><span><!-- 다음 --></span></li>
		  <%end if%>
		</ul>
	  </div>
	  <div class="viewbtn_wrap">
<%If session("useridid") = rs("c_strId") then%>
<form name="frmRequestForm" method="post" action="/main02/G10/review_del_pw_ok.asp?intSeq=<%=request("intSeq")%>&page=<%=request("page")%>&gum1=<%=request("gum1")%>&gum2=<%=request("gum2")%>" enctype="multipart/form-data"></form>
		<input type="button" value="삭제" class="btn01" onclick="javascript:document.frmRequestForm.submit();" /><input type="button" value="수정" class="btn01" onclick="location.href='?eye=G106&intseq=<%=request.QueryString("intSeq")%>&page=<%=request.QueryString("page")%>&gum1=<%=request.QueryString("gum1")%>&gum2=<%=request.QueryString("gum2")%>';" />
<%End if%>
		<input type="button" value="목록" class="btn02" onclick="self.location.href = '?eye=<%If Request("eye") = "G102" Then%>G101<%else%>G104<%End if%>&page=<%=request.querystring("page")%>&gum1=<%=request("gum1")%>&gum2=<%=request("gum2")%>&gubun=<%=request("gubun")%>&bunryu=<%=Request.QueryString("bunryu")%>';" />
		<!--span class="btn_right">
		<input type="button" value="답변" class="btn01"/>
		</span-->
	  </div>
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