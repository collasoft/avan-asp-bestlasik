<div class="sub_join">
  <div class="inner">
    <form name="memberoutform" onsubmit="return submit_check(this);" action="/main01/J10/withdraw_check.asp" method="post">
	<div class="top_txt02">
  	  <p class="txt02">신세계안과를 이용하실 때 불편한 사항이 있으셨다면 아래에 사유를 남겨주세요.<br>
		보다 나은 신세계안과의원이 될 수 있도록 참고하겠습니다.
	  </p>
	</div>
	<textarea cols="30" rows="10" placeholder="탈퇴사유를 적어주세요." class="write_box" name="memberout"></textarea>
	<div class="ex_box">
	  <p class="txt01">주의사항</p>
	  <p class="txt02">
	    * 회원탈퇴를 신청하시면 해당 아이디는 이후 영구적으로 사용이 중지됩니다. <br>
		* 동일한 아이디로 재가입이 불가능하며, 다른 아이디로 재가입이 가능합니다.<br>
		* 회원탈퇴 즉시 회원정보는 영구 삭제되며 회원제 서비스와 관련하여 고객님의 개인정보 삭제 처리됩니다.
      </p>
	</div>
	<div class="subbtn_wrap">
	  <input type="button" value="취소" class="btn01" onclick="history.back()" />
	  <input type="button" value="회원탈퇴" class="btn02" onclick="this.form.onsubmit();" />
	</div>
	</form>
  </div>
</div>

<script language="javascript">
<!--

  function submit_check(){
	var frm = document.memberoutform;

	if(frm.memberout.value.replace(/ /,'')==""){
		alert("탈퇴사유를 입력해주세요");
		return false;
	}

	frm.submit();

  }

  function number(obj) { 
    obj.value = obj.value.replace(/[^0-9]/g,'');
  };

/*  window.onload = function(){

	if (document.loginform.strId.value == "")
	  document.loginform.strId.focus();
	else
	  document.loginform.strPw.focus();
  }
*/

//-->
</script>