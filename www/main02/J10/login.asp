<!-- https://developers.google.com/identity/sign-in/web/ -->

<!-- https://developers.naver.com/apps/#/myapps/9oKQZZuVJpfsSBQSjZD_/config -->
<!-- https://github.com/rawady/NaverLogin-for-PHP -->

<!-- https://developers.facebook.com/docs/facebook-login/manually-build-a-login-flow -->
<!-- https://developers.kakao.com/docs/js/kakaologin -->
<div class="sub_login">
  <div class="inner">
	<div class="login_box">
	  <p class="title">일반 로그인</p>
	  <form name="loginform" onsubmit="return submit_check(this);" action="/main02/J10/login_check.asp" method="post" class="login_input">
	  <input type="hidden" name="intSeq" value="<%=request.querystring("intseq")%>" />
	  <input type="hidden" name="prev" value="<%=request.querystring("prev")%>" />
	  <input type="hidden" name="strBackUrl" value="<%=request.querystring("strBackUrl")%>" />
	  <ul> 
		<li><span class="txt">아이디</span><input type="text" placeholder="아이디를 입력하세요" name="strId" value="" /></li>
		<li><span class="txt">비밀번호</span><input type="password" placeholder="비밀번호를 입력하세요" maxlength="20" name="strPw" onkeydown="if (event.keyCode == 13) javascript:submit_check(this);" /></li>
		<li class="check">
		  <span class="check_icon">
			<input id="c1" type="checkbox" name="idsave" id="idsave">
			<label for="c1"><span></span>아이디저장</label>
		  </span>
		  <!-- <span class="check_icon">
			<input id="c2" type="checkbox"/>
			<label for="c2"><span></span>자동로그인</label>
		  </span> -->
	    </li>
	    <li>
		  <input type="submit" value="로그인"/>
	    </li>
      </ul>
	  </form>	
	  <div class="login_btn"> 
		<a href="sub.asp?eye=I101">회원가입 바로가기</a>
		<a href="sub.asp?eye=J102">아이디 / 비밀번호 찾기</a>
	  </div>
	</div>
	<!-- 2022/12/13 숨김요청
    <div class="login_box">
	  <p class="title">SNS로그인</p>
	  <ul class="sns_login"> 
		<li><a href="#" onclick="SNSLogin('naver'); return false;"><span></span><p>네이버 계정으로 로그인 하기</p></a></li>
		<li><a href="#" onclick="SNSLogin('kakao'); return false;"><span></span><p>카카오계정으로 로그인 하기</p></a></li>
		<li><a href="#" onclick="SNSLogin('google'); return false;"><span></span><p>유튜브 계정으로 로그인 하기</p></a></li>
		<li><a href="#" onclick="SNSLogin('facebook'); return false;"><span></span><p>페이스북 계정으로 로그인 하기</p></a></li>		
	  </ul>
	  <p class="bt_txt">기존에 사용하시는 계정으로 간편하게 로그인하실 수 있습니다.</p>
	</div>  -->
  </div>
</div>

<form name="sns_form1" method="post" action="sub.asp?avan=1006000000&memberMode=sns_join02">
<input type="hidden" name="sns_id">
<input type="hidden" name="sns_name">
<input type="hidden" name="sns_email">
<input type="hidden" name="sns_sns">
</form>

<script language="javascript">
<!--
jQuery(document).ready(function(){
	remCookie();
});

function newCookie(name,value,days) { //쿠기를 생성하는 function
	var days = 10;   // 쿠키저장 일수
	if (days) {
		var date = new Date();  //날짜 객체 생성
			date.setTime(date.getTime()+(days*24*60*60*1000)); //10일로 설정된 시간을 밀리세컨드로 변환
		var expires = "; expires="+date.toGMTString(); //쿠키 만료일을 변수 expires에 설정함
	} 
	else
	var expires = ""; //days 변수가 초기화 안될 경우 expires를 NULL로 초기화
	document.cookie = name+"="+value+expires+"; path=/"; //쿠키생성 
}

//name의 Cookie값을 검색하여서 값을 가져오는데 없으면  NULL을 반환
function GetCookie(name) {
 //name으로 Cookie의 값을 검색해서 반환한다 없으면 NULL을 반환
	var nameSG = name + "=";
	var nuller = '';
	if (document.cookie.indexOf(nameSG) == -1)  //Cookie를 검색
		return nuller;

	var ca = document.cookie.split(';');
 
	for(var i = 0; i < ca.length; i++) {
		var c = ca[i];
		while (c.charAt(0)==' ') c = c.substring(1,c.length);
		if (c.indexOf(nameSG) == 0) return c.substring(nameSG.length,c.length);
	}
	return null;
}

//checkbox의 에 따라서 Cookie를 설정(체크이벤트를 잡아서 동작)
function SetCookie()
{
	if ( !document.loginform.idsave.checked)
		DeleteCookie();
	else
		toCookie();
}

//Cookie에 값을 넣는다.
function toCookie()
{
	newCookie('useId', document.loginform.strId.value);
}

//Cookie에 값을 ""로 초기화 한다.
function DeleteCookie()
{
	newCookie('useId',"",1);
// document.loginform.strId.value = '';   // add a line for every field
}

function remCookie()
{
	if (GetCookie("useId") == " " || GetCookie("useId") == "" ) {
		document.loginform.idsave.checked = false;
	} else {
	document.loginform.strId.value = GetCookie("useId");
	document.loginform.idsave.checked = true;
 }
 //document.form.email.value = GetCookie("theEmail");
}


  function anotherwin2()
  {
    document.sns_form1.action = "sub.asp?avan=1006000000&memberMode=sns_join02";
    document.sns_form1.submit();
  }

  function SNSLogin(sns){
			 // Fixes dual-screen position                         Most browsers      Firefox
	var dualScreenLeft = window.screenLeft != undefined ? window.screenLeft : window.screenX;
	var dualScreenTop = window.screenTop != undefined ? window.screenTop : window.screenY;

	var width = window.innerWidth ? window.innerWidth : document.documentElement.clientWidth ? document.documentElement.clientWidth : screen.width;
	var height = window.innerHeight ? window.innerHeight : document.documentElement.clientHeight ? document.documentElement.clientHeight : screen.height;

	var left = ((width / 2) - (880 / 2)) + dualScreenLeft;
	var top = ((height / 2) - (720 / 2)) + dualScreenTop;

	var popup = window.open("/main02/J10/gateway.asp?sns="+sns+"&strBackUrl=<%=server.urlencode(request.querystring("strBackUrl"))%>","sns","resizable=false,width=880,height=720, top=" + top + ", left=" + left);
  }

  function submit_check(){
	var frm = document.loginform;

	if(frm.strId.value.replace(/ /,'')==""){
		alert("아이디를 입력해주세요");
		return false;
	}else if(frm.strPw.value.replace(/ /,'')==""){
		alert("비밀번호를 입력해주세요");
		return false;
	}
	SetCookie();
	frm.submit();

  }

/*  window.onload = function(){

	if (document.loginform.strId.value == "")
	  document.loginform.strId.focus();
	else
	  document.loginform.strPw.focus();
  }
*/

//-->
</script>