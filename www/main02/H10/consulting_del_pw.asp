<div class="consulting"> 
  <div class="inner">
	<div class="top_txt">
	  <p class="txt03"><span>비밀번호를 입력해주세요</span><br>
	</div>
	<form name="frmRequestForm" method="post" onSubmit="return frmRequestForm_Submit(this);" action="/main02/H10/consulting_del_pw_ok.asp?intSeq=<%=request("intSeq")%>&page=<%=request("page")%>&gum1=<%=request("gum1")%>&gum2=<%=request("gum2")%>" enctype="multipart/form-data">
	<div class="pw_input">
	  <input type="password" name="c_pw" />
	</div>
	<div class="subbtn_wrap">
	  <input type="button" value="목록" class="btn01" onclick="self.location.href='?eye=H102&page=<%=request("page")%>&gum1=<%=request("gum1")%>&gum2=<%=request("gum2")%>';" /><input type="button" value="등록" class="btn02" onClick="this.form.onsubmit();" />
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