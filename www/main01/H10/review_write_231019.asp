<%
If session("useridid") = "" then
	GetLogin2("sub.asp?lasik=K101")
	Response.end
End If

Call DbOpen()%>
<div class="consulting">
	<div class="inner">
	<div class="top_txt02">
		<p class="txt02">후기를 쓰는 경우, 본문 또는 첨부파일 내에 개인정보가 포함되어<br>게시되지 
않도록 유의하시기 바랍니다. 개인정보를 포함하여 게시하는 경우 불특정 다수에게 개인정보가 
노출되어 악용될 수 있으며,<br> 특히 타인의 개인정보가 노출되는 경우에는 개인정보보호법에 <br>
따라 처벌을 받을 수 있음을 알려드립니다.

		</p>
	</div>
	
	<div class="input_form">
	  <form name="frmRequestForm" method="post" onSubmit="return frmRequestForm_Submit(this);" action="/main01/H10/review_write_ok.asp" enctype="multipart/form-data">
		<table>
			<colgroup>
				<col style="width:120px">
				<col style="width:*">
			</colgroup>
			<tbody> 
				<tr>
					<th>작성자</th>
					<td>
						<input type="text" name="r_writer" value="<%=session("username")%>" maxlength="50" class="input01 w20">
					</td>
				</tr>
				<tr>
					<th>수술종류</th>
					<td class="call">
						<select name="r_bunryu" id="r_bunryu">
							<option value="">선택</option>
							<option value="a">신세계스마일</option>
							<option value="b">라식</option>
							<option value="c">라섹</option>
							<option value="d">렌즈삽입술</option>
							<option value="e">노안라식</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>원장</th>
					<td class="call"> <select name="people1" id="people1">
						<option value="">선택</option>
						<%Dim psql2, prs2
						    psql2 = "SELECT * FROM staff order by sunseo asc"
						    set prs2 = dbconn.execute(psql2)
						    If not prs2.eof Then
							  Do Until prs2.EOF
						%>
								  <option value="<%=prs2("s_name")%>"><%=prs2("s_name")%></option>
						<%
							  prs2.MoveNext
							  Loop
								  
							End If
							prs2.close
							set prs2 = Nothing
						%>
						</select>
					</td>
				</tr>
				<tr>
					<th>상담사</th>
					<td>
						<input type="text" name="people2" maxlength="20" class="input01 w20">
					</td>
				</tr>	
				<tr> 
					<th>수술 전<br class="m_block"> 시력</th>
					<td class="eye">
						<input type="text" name="r_eyeforce1-1" placeholder="좌" maxlength="10" /><input type="text" name="r_eyeforce1-2" placeholder="우"maxlength="10" />
					</td>
				</tr>
				<tr>
					<th>수술 후<br class="m_block"> 시력</th>
					<td class="eye">
						<input type="text" name="r_eyeforce2-1" placeholder="좌" maxlength="10" /><input type="text" name="r_eyeforce2-2" placeholder="우" maxlength="10" />
					</td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="r_title" maxlength="100" class="w100p" /></td>
				</tr>
				<!-- <tr>
					<th>비밀번호</th>
					<td><input type="password" name="c_pw" maxlength="10"></td>
				</tr> -->
				<tr>
					<th>첨부파일</th>
					<td>
					<div class="filebox"><input class="upload-name" disabled="disabled"> <label for="ex_filename">찾기</label><input type="file" id="ex_filename" name="img2" class="upload-hidden"></div>
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td><%call Editor("b_text","")%></td>
				</tr>

			</tbody>
		</table>
		<div class="subbtn_wrap">
			<input type="button" value="취소" class="btn01" onclick="self.location.href='?lasik=H101&page=<%=request.QueryString("page")%>&gubun=a&gum1=<%=request.QueryString("gum1")%>&gum2=<%=request.QueryString("gum2")%>';"/><input type="button" value="등록" class="btn02" onClick="this.form.onsubmit();" />
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
<script language="javascript">
<!--
function frmRequestForm_Submit(frm){
  if ( frm.r_writer.value.replace(/ /gi, "") == "" ) { alert("작성자을 입력해주세요"); frm.r_writer.focus(); return false; }
  if ( frm.r_title.value.replace(/ /gi, "") == "" ) { alert("제목을 입력해주세요"); frm.r_title.focus(); return false; }
	var ckeditor = CKEDITOR.instances['b_text']; 
	if (ckeditor.getData()=="")
	{
	 alert('내용을 입력 하세요');
	 ckeditor.focus();
	 return;
	}

//  if ( frm.c_pw.value.replace(/ /gi, "") == "" ) { alert("비밀번호를 입력해주세요"); frm.c_pw.focus(); return false; }

  frm.submit();
}
//-->
</script>  