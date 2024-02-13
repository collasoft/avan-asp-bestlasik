<div class="sub_join">
  <div class="inner">
	<ul class="join_tab">
	  <li class="on"><span>STEP01</span> 약관동의</li>
	  <li><span>STEP02</span> 회원정보입력</li>
	  <li><span>STEP03</span> 가입완료</li>
	</ul>
	<form name="frmRequestForm" method="post" onsubmit="return frmRequestForm_Submit(this);" action="?lasik=J102">
	<div class="all_agree"> 
	  <p class="txt">회원가입 및 정상적인 서비스 이용을 위해 아래 약관을 읽어 보시고, 동의 여부를 결정해 주세요. <br>	
	  필수 약관을 동의 하셔야 회원가입이 가능합니다.</p>
	  <span class="check_wrap">
		<input id="c3" name="c3" type="checkbox" onclick="checkform2();" />
		<label for="c3"><span></span>전체동의</label>
	  </span>
	</div>
	<div class="agree_box">
	<p class="title">이용약관</p>
	<textarea name="" id="" cols="30" rows="10" readonly>제1조(목적)

① 신세계안과의원 홈페이지(best-lasik.co.kr) 이용약관(이하 "본 약관"이라 합니다)은 이용자가 신세계안과의원(이하 "의원"이라 합니다)에서 제공하는 인터넷 관련 서비스(이하 "서비스"라 합니다)를 이용함에 있어 
이용자와 "의원"의 권리의무 및 책임사항을 규정 함을 목적으로 합니다.
② 이용자가 되고자 하는 자가 "의원"이 정한 소정의 절차를 거쳐서 "동의" 단추를 누르면 본 약관에 동의하는 것으로 간주합니다.</textarea>
	<p class="txt"> 
	  <input id="c4" name="c4" type="checkbox"/>
	  <label for="c4"><span></span>위 약관에 동의합니다.</label>
	</p>
	</div>
	<div class="agree_box">
	<p class="title">개인정보취급방침</p>
	<textarea name="" id="" cols="30" rows="10" readonly>제1조(목적)

① 신세계안과의원 홈페이지(best-lasik.co.kr) 이용약관(이하 "본 약관"이라 합니다)은 이용자가 신세계안과의원(이하 "의원"이라 합니다)에서 제공하는 인터넷 관련 서비스(이하 "서비스"라 합니다)를 이용함에 있어 
이용자와 "의원"의 권리의무 및 책임사항을 규정 함을 목적으로 합니다.
② 이용자가 되고자 하는 자가 "의원"이 정한 소정의 절차를 거쳐서 "동의" 단추를 누르면 본 약관에 동의하는 것으로 간주합니다.</textarea>
	<p class="txt"> 
	  <input id="c5" name="c5" type="checkbox"/>
	  <label for="c5"><span></span>위 약관에 동의합니다.</label>
	</p>
	</div>
	<div class="subbtn_wrap">
	  <input type="button" value="미동의" class="btn01" onclick="history.back()" /><input type="button" value="동의" class="btn02" onclick="this.form.onsubmit();" />
	</div>
	</form>
  </div>
</div>
<script type="text/javascript">

function frmRequestForm_Submit(frm) {

	if ( document.frmRequestForm.c4.checked == false){
	 alert("이용약관에 동의하셔야 회원가입이 됩니다."); return;
	}

	if ( document.frmRequestForm.c5.checked == false){
	 alert("개인정보취급방침에 동의하셔야 회원가입이 됩니다."); return;
	}

	frm.submit();

}

function checkform2()
{
	if ( document.frmRequestForm.c3.checked == true)
	{
	   document.frmRequestForm.c4.checked = true;
	   document.frmRequestForm.c5.checked = true;
	}else{
	   document.frmRequestForm.c4.checked = false;
	   document.frmRequestForm.c5.checked = false;
	}
}
</script>