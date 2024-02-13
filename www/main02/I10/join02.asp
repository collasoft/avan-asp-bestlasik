<div class="sub_join">
  <div class="inner">
	<ul class="join_tab">
	  <li><span>STEP01</span> 약관동의</li>
	  <li class="on"><span>STEP02</span> 회원정보입력</li>
	  <li><span>STEP03</span> 가입완료</li>
	</ul>
	<div class="input_form">
	  <form name="frmRequestForm" method="post" onsubmit="return frmRequestForm_Submit(this);" action="/main02/I10/insert.asp" enctype="multipart/form-data">
	  <table>
		<tbody> 
		  <tr>
			<th>아이디</th>
			<td class="id">
			  <input type="text" placeholder="영문 소문자/숫자4~12자" name="strId" id="strId" maxlength="12"/><input type="button" id="BtnIdchk1" value="중복확인"/>
			  <span class="id_text" style="display: block; color:#2c7059;padding:10px 0 5px 0;"></span>
			  <input type="hidden" class="id_check2" name="id_check2">
			  <input type="hidden" name="strId_field" id="strId_field" value="strId">
			</td>
		  </tr>
		  <tr>
			<th>이메일</th>
			<td class="email">
			  <input type="text" name="strEmail1" style="ime-mode:disabled;width:200px;">@
			  <input type="text" name="strEmail2" id="strEmail2" style="ime-mode:disabled;width:200px;">
			  <select class="select02" name="email2_sel" onChange="emailserv()">
			    <option value="">메일선택</option>
			    <option value="naver.com">naver.com</option>
			    <option value="daum.net">daum.net</option>
			    <option value="nate.com">nate.com</option>
			    <option value="gmail.com">gmail.com</option>
			    <option value="yahoo.co.kr">yahoo.co.kr</option>
			    <option value="dreamwiz.com">dreamwiz.com</option>
			    <option value="freechal.com">freechal.com</option>
			    <option value="direct">직접 입력</option>
			  </select>
			</td>
		  </tr>
		  <tr>
			<th>이름</th>
			<td class="name"><input type="text" name="strName" id="strName" placeholder="이름을 입력해 주세요."/></td>
		  </tr>
		  <tr>
			<th>비밀번호</th>
			<td>
			  <input type="password" name="strPwd" onkeyup="checkPwd()" placeholder="영문/숫자8~16자" maxlength="20"/>
			  <span class="pw_text" style="color:#2c7059;padding:10px 0 5px 0;"></span>
			</td>
		  </tr>
		  <tr>
			<th>비밀번호 재확인</th>
			<td>
			  <input type="password" name="strPwd_chk" onkeyup="checkPwd()" placeholder="입력하신 비밀번호를 다시 한번 입력해주세요." maxlength="20"/>
			  <span class="pw_text2" style="color:#2c7059;padding:10px 0 5px 0;"></span>
			</td>
		  </tr>
	    </tbody>
	  </table>
	  <div class="subbtn_wrap">
		<input type="button" value="취소" class="btn01" onclick="history.back()" /><input type="button" value="가입완료" class="btn02" onclick="this.form.onsubmit();" />
	  </div>
	  </form>
	</div>
  </div>
</div>
<script type="text/javascript">
var ajaxObjects = new Array();
var RegexEmail = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i; //이메일 요휴성검사
var RegexName = /^[가-힣a-zA-Z0-9]{2,10}$/; //이름 유효성 검사 2~10자 사이
var RegexId = /^[a-z0-9_\`\~\!\@\#\$\%\^\&\*\(\)\-\=\+\\\{\}\[\]\'\"\;\:\<\,\>\.\?\/]{4,16}$/; 
var RegexTel = /^[0-9]{8,12}$/; //전화번호 유효성 검사
var RegexPass	= /^[\S\x21-\x7E]{4,16}$/;  //비번 유효성 검사

$(document).ready(function(){

	$("#BtnIdchk1").click(function(e){
	  var id= $.trim($("#strId").val())
	  var id2= $.trim($("#strId_field").val())
	  var ajaxIndex = ajaxObjects.length;
	  ajaxObjects[ajaxIndex] = new sack();
	  ajaxObjects[ajaxIndex].method = "POST";
	  ajaxObjects[ajaxIndex].setVar("id", id);
	  ajaxObjects[ajaxIndex].setVar("id2", id2);
	  ajaxObjects[ajaxIndex].requestFile = "/main02/I10/checking.asp";
	  ajaxObjects[ajaxIndex].onCompletion = function() { idchkValueComplete(ajaxIndex); } ;
	  ajaxObjects[ajaxIndex].runAJAX();
	});

	$("#BtnIdchk2").click(function(e){
	  var id= $.trim($("#strnick").val())
	  var id2= $.trim($("#strnick_field").val())
	  var ajaxIndex = ajaxObjects.length;
	  ajaxObjects[ajaxIndex] = new sack();
	  ajaxObjects[ajaxIndex].method = "POST";
	  ajaxObjects[ajaxIndex].setVar("id", id);
	  ajaxObjects[ajaxIndex].setVar("id2", id2);
	  ajaxObjects[ajaxIndex].requestFile = "/avanmodule/member/w/checking.asp";
	  ajaxObjects[ajaxIndex].onCompletion = function() { idchkValueComplete2(ajaxIndex); } ;
	  ajaxObjects[ajaxIndex].runAJAX();
	});

	$("#BtnIdchk3").click(function(e){
	  var id= $.trim($("#chucheun").val())
	  var ajaxIndex = ajaxObjects.length;
	  ajaxObjects[ajaxIndex] = new sack();
	  ajaxObjects[ajaxIndex].method = "POST";
	  ajaxObjects[ajaxIndex].setVar("id", id);
	  ajaxObjects[ajaxIndex].requestFile = "/avanmodule/member/w/checking2.asp";
	  ajaxObjects[ajaxIndex].onCompletion = function() { idchkValueComplete3(ajaxIndex); } ;
	  ajaxObjects[ajaxIndex].runAJAX();
	});

})

function idchkValueComplete(index){

    var result=ajaxObjects[index].response
    if (result=="str_false"){
      //alert('중복되는 아이디입니다.');
	  $(".id_text").text("중복되는 아이디입니다.");
      $(".id_check2").val('1');
	  $("#strId").val('');

    }else{

      var frm = document.frmRequestForm;

      if (frm.strId.value == ""){
	    //alert("이메일(아이디)을 입력해주세요"); frm.strId.focus();
		$(".id_text").text("아이디를 입력해주세요.");
		return;
	  }

	  var m_val = frm.strId.value;

	  var m_Sp = /[\$\@\\\#\%\^\&\*\(\)\[\]\+\_\{\}\`\~\=\|\!]/;
	  var m_Sp2 = /[a-z]/ig;
	  var m_Sp3 = /[0-9]/g;
		
	  /*if(m_val.search(m_Sp) < 0) {
	    alert("비밀번호는 영문자, 숫자, 특수문자의 조합으로 입력하시기 바랍니다");
	    frm.pw.value = "";
	    frm.pw.focus();
	    return;
	  }*/
	
	  if(m_val.search(m_Sp2) < 0) {
	    //alert("아이디를 4~20자의 영문, 숫자의 조합으로 입력하세요.");
		$(".id_text").text("아이디를 4~12자의 영문, 숫자 조합으로 입력하세요.");
	    frm.strId.value = "";
	    frm.strId.focus();
	    return;
	  }
	
	  if(m_val.search(m_Sp3) < 0) {
	    //alert("아이디를 4~20자의 영문, 숫자 조합으로 입력하세요.");
		$(".id_text").text("아이디를 4~12자의 영문, 숫자 조합으로 입력하세요.");
	    frm.strId.value = "";
	    frm.strId.focus();
	    return;
	  }

	  if(frm.strId.value.length < 4 || frm.strId.value.length > 12){
	    //alert("아이디를 4~20자의 영문, 숫자 조합으로 입력하세요.");
		$(".id_text").text("아이디를 4~12자의 영문, 숫자 조합으로 입력하세요.");
	    frm.strId.value = "";
	    frm.strId.focus();
	    return;
	  }

	  //alert("사용가능한 아이디입니다.")
	  $(".id_text").text("사용가능한 아이디입니다.");
	  $(".id_check2").val('2');
	  $("#strnick").focus();

    }
}

function checkPwd(){
  var f1 = document.frmRequestForm;
  var pw1 = f1.strPwd.value;
  var pw2 = f1.strPwd_chk.value;

  var m_Sp = /[\$\@\\\#\%\^\&\*\(\)\[\]\+\_\{\}\`\~\=\|\!]/;
  var m_Sp2 = /[a-z]/ig;
  var m_Sp3 = /[0-9]/g;
	
  /*if(m_val.search(m_Sp) < 0) {
	alert("비밀번호는 영문자, 숫자, 특수문자의 조합으로 입력하시기 바랍니다");
	frm.pw.value = "";
	frm.pw.focus();
	return;
  }*/

  if(pw1.search(m_Sp2) < 0) {
	$(".pw_text").text("비밀번호를 8~16자의 영문, 숫자 조합으로 입력하세요.");
	return;
  }

  if(pw1.search(m_Sp3) < 0) {
	$(".pw_text").text("비밀번호를 8~16자의 영문, 숫자 조합으로 입력하세요.");
	return;
  }

  if(pw1.length < 8 || pw1.length > 16){
	$(".pw_text").text("비밀번호를 8~16자의 영문, 숫자 조합으로 입력하세요.");
	return;
  }

  $(".pw_text").text("");

  if(pw1!=pw2 && pw1.length > 0 && pw2.length > 0 ){
    $(".pw_text2").text("비밀번호가 서로 다릅니다.")
    return;
  }else if(pw1==pw2 && pw1.length > 0 && pw2.length > 0 ){
    $(".pw_text2").text("비밀번호가 일치합니다.")
  }
}

function emailserv()
{
	var frm = document.frmRequestForm;
	var email2 = frm.email2_sel.value;


	if (email2 == "direct") {
		frm.strEmail2.value = "";
//		frm.strEmail2.readOnly = false;
		frm.strEmail2.focus();
	}
	else {
		frm.strEmail2.value = email2;
//		frm.strEmail2.readOnly = true;
	}

return;
}

function checkId() {
	
  var f1 = document.forms[0];
  var strId = f1.strId.value;
  $(".id_text").text("");
  
}

function frmRequestForm_Submit(frm) {

	if ( frm.strId.value == "" ) { alert("아이디를 입력해주세요"); frm.strId.focus(); return false; }
	if ( frm.id_check2.value == "" ) { alert("아이디 중복체크를 해주세요"); frm.id_check2.focus(); return false; }
	if ( frm.id_check2.value == "1" ) { alert("중복되는 아이디입니다"); frm.id_check2.focus(); return false; }

	if ( frm.strEmail1.value == "" ) { alert("이메일을 입력해주세요"); frm.strEmail1.focus(); return false; }
	if ( frm.strEmail2.value == "" ) { alert("이메일을 입력해주세요"); frm.strEmail2.focus(); return false; }

	if ( frm.strName.value == "" ) { alert("이름을 입력해주세요"); frm.strName.focus(); return false; }

	if ( frm.strPwd.value == "" ) { alert("비밀번호를 입력해주세요"); frm.strPwd.focus(); return false; }
	if ( frm.strPwd_chk.value == "" ) { alert("비밀번호 확인을 입력해주세요"); frm.strPwd_chk.focus(); return false; }

    var f1 = document.frmRequestForm;
    var pw1 = f1.strPwd.value;
    var pw2 = f1.strPwd_chk.value;

    var m_Sp = /[\$\@\\\#\%\^\&\*\(\)\[\]\+\_\{\}\`\~\=\|\!]/;
    var m_Sp2 = /[a-z]/ig;
    var m_Sp3 = /[0-9]/g;
	
    if(pw1.search(m_Sp2) < 0) {
	  alert("비밀번호를 8~16자의 영문, 숫자 조합으로 입력하세요.");
	  return false;
    }

    if(pw1.search(m_Sp3) < 0) {
	  alert("비밀번호를 8~16자의 영문, 숫자 조합으로 입력하세요.");
	  return false;
    }

    if(pw1.length < 8 || pw1.length > 16){
	  alert("비밀번호를 8~16자의 영문, 숫자 조합으로 입력하세요.");
	  return false;
    }

	if ( frm.strPwd.value != frm.strPwd_chk.value ) { alert("비밀번호가 다릅니다"); frm.strPwd_chk.focus(); return false; }

	frm.submit();
}
</script>