<div class="consulting">
  <div class="inner">
	<div class="top_txt02"> 
	  <p class="txt02">병원 이용 및 진료 관련 문의 글을 작성해주시면 담당자가 확인 후 답변 드립니다.<br>
	  근무시간 이후나 주말, 공휴일에는 답변이 지연될 수 있습니다.
	  </p>
	</div>
	<div class="input_form">
	  <form name="frmRequestForm" method="post" onSubmit="return frmRequestForm_Submit(this);" action="/main01/I10/bxm_consulting_write_ok.asp">
	  <input type="hidden" name="MODE" value="INSERT">
	  <input type="hidden" name="gubun" value="main01">
	  <table>
		<tbody> 
		  <tr>
			<th>작성자</th>
			<td><input type="text" name="c_writer" value="<%=session("username")%>" /></td>
		  </tr>
		  <tr>
			<th>제목</th>
			<td><input type="text" name="c_title" /></td>
		  </tr>
		  <tr>
			<th>내용</th>
			<td><%call Editor("c_contents","")%></td>
		  </tr>
		  <tr>
			<th>공개여부</th>
			<td>
			  <input id="r1" type="radio" name="ra01" value="N" />
			  <label for="r1" class="mr20"><span></span>비공개</label>
			  <input id="r2" type="radio" name="ra01" value="Y" />
			  <label for="r2"><span></span>공개</label>
			</td>
		  </tr>
		  <tr>
			<th>비밀번호</th>
			<td class="pass"><input type="password" name="c_pw" maxlength="10"></td>
		  </tr>
		</tbody>
	  </table>	
	  <div class="subbtn_wrap">
		<input type="button" value="목록" class="btn01" onclick="self.location.href='?lasik=I102'" /><input type="button" value="등록" class="btn02" onClick="mobConv();this.form.onsubmit();" />
	  </div>	
	  </form>
	</div>
  </div>
</div>
</script>
<script language="javascript">
<!--
function frmRequestForm_Submit(frm){
  if ( frm.c_writer.value.replace(/ /gi, "") == "" ) { alert("작성자을 입력해주세요"); frm.c_writer.focus(); return false; }
  if ( frm.c_title.value.replace(/ /gi, "") == "" ) { alert("제목을 입력해주세요"); frm.c_title.focus(); return false; }
	var ckeditor = CKEDITOR.instances['c_contents']; 
	if (ckeditor.getData()=="")
	{
	 alert('내용을 입력 하세요');
	 ckeditor.focus();
	 return;
	}

  var poll1 = "0"
  for(i = 0; i < 2; i++) {
    if(frm.ra01[i].checked) { poll1=frm.ra01[i].value; }
  }
  if(poll1=="0")
  { alert("공개여부를 체크해주세요"); return false; }

  if ( frm.c_pw.value.replace(/ /gi, "") == "" ) { alert("비밀번호를 입력해주세요"); frm.c_pw.focus(); return false; }

  frm.submit();
}
//-->
</script>    