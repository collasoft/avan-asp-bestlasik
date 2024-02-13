<div class="consulting"> 
  <div class="inner">
	<div class="top_txt">
	  <p class="txt03"><span>비공개 게시글입니다.</span><br>
	  열람을 원하시면 글 작성 시 입력하셨던 비밀번호를 입력해주세요</p>
	</div>
	<form name="frmRequestForm" method="post" onSubmit="return frmRequestForm_Submit(this);" action="/main01/I10/bxm_consulting_pw_ok.asp?seq=<%=request("seq")%>&nPage=<%=request("nPage")%>&gum1=<%=request("gum1")%>&gum2=<%=request("gum2")%>">
	<div class="pw_input">
	  <input type="password" name="c_pw" />
	</div>
	<div class="subbtn_wrap">
	  <input type="button" value="목록" class="btn01" onclick="self.location.href='?lasik=I102'" /><input type="button" value="등록" class="btn02" onClick="this.form.onsubmit();" />
	</div>
	</form>
  </div>
</div>
<script language="javascript">
<!--
function frmRequestForm_Submit(frm){
  if ( frm.c_pw.value.replace(/ /gi, "") == "" ) { alert("비밀번호를 입력해주세요"); frm.c_pw.focus(); return false; }
  frm.submit();
}
//-->
</script>