<%
If session("useridid") = "" then
	GetLogin2("sub.asp?lasik=K101")
	Response.end
End If

Call DBopen

Dim sql, rs
sql = "select * from mtb_member2 where strId = '"&session("useridid")&"'"
Set rs = dbconn.execute(sql)

Dim emai
If(Len(rs("strEmail"))=0)Then
	emai = "@"
	emai = Split(emai,"@")
Else
	If InStr(rs("strEmail"),"@") > 0 then
		emai = Trim(rs("strEmail"))
		If instr(emai,"@") > 0 Then
		  emai = Split(emai,"@")
		else
		  emai = "@"
		  emai = Split(emai,"@")
		End if
	Else
		emai = "@"
		emai = Split(emai,"@")
	End if
End If
%>

<div class="sub_join">
  <div class="inner">
    <div class="member_top">
	  <ul>
		<li><span>아이디</span><%=session("useridid")%></li>
		<li><span>이름</span><%=session("username")%></li>
  	  </ul>
    </div>
    <div class="input_form">
	  <form name="frmRequestForm" method="post" onsubmit="return frmRequestForm_Submit(this);" action="/main01/J10/update.asp" enctype="multipart/form-data">
	  <table>
		<tbody>
		  <%If isnull(rs("sns_name")) Or rs("sns_name") = "" then%>
		  <tr>
			<th>기존 비밀번호</th>
			<td><input type="password" placeholder="기존 비밀번호를 입력해주세요." maxlength="20" name="strPwd_now" /></td>
		  </tr>
		  <tr>
			<th>새 비밀번호</th>
			<td>
			  <input type="password" placeholder="영문/숫자8~16자" maxlength="20" name="strPwd" onkeyup="checkPwd()" />
			  <span class="pw_text" style="color:#2c7059;padding:10px 0 5px 0;"></span>
			</td>
		  </tr>
		  <tr>
			<th>새 비밀번호 재확인</th>
			<td>
			  <input type="password" placeholder="입력하신 비밀번호를 다시 한번 입력해주세요." maxlength="20" name="strPwd_chk" onkeyup="checkPwd()" />
			  <span class="pw_text2" style="color:#2c7059;padding:10px 0 5px 0;"></span>
			</td>
		  </tr>
		  <%End if%>
		  <tr>
			<th>이메일</th>
			<td class="email">
			  <input type="text" name="strEmail1" style="ime-mode:disabled;width:200px;" value="<%=emai(0)%>"> @ 
			  <input type="text" name="strEmail2" id="strEmail2" style="ime-mode:disabled;width:200px;" value="<%=emai(1)%>"y>
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
		</tbody>
	  </table>
	  <div class="sns_con">
		<!-- <p class="txt">SNS 연동</p>
		<ul class="sns_login">
		  <%If Len(rs("naver_token")) > 0 then
	          If rs("sns_name") = "naver" then
		  %>
		        <li class="sns_grey"><a href="javascript:alert('네이버 계정으로 회원가입 되어 연동해제는 불가합니다.');"><span></span><p>네이버 계정 연동</p></a></li>
		  <%  else%>
		        <li class="sns_grey"><a href="/main01/J10/sns_out.asp?sns_name=naver_token"><span></span><p>네이버 계정 연동 해제</p></a></li>
		  <%
			  End if
			Else %>
		      <li><a href="" onclick="SNSLogin('naver'); return false;"><span></span><p>네이버 계정 연동</p></a></li>
		  <%End if%>

		  <%If Len(rs("kakao_token")) > 0 then
	          If rs("sns_name") = "kakao" then
		  %>
		        <li class="sns_grey"><a href="javascript:alert('카카오 계정으로 회원가입 되어 연동해제는 불가합니다.');"><span></span><p>카카오 계정 연동</p></a></li>
		  <%  else%>
		        <li class="sns_grey"><a href="/main01/J10/sns_out.asp?sns_name=kakao_token"><span></span><p>카카오 계정 연동 해제</p></a></li>
		  <%
			  End if
			Else %>
		      <li><a href="" onclick="SNSLogin('kakao'); return false;"><span></span><p>카카오 계정 연동</p></a></li>
		  <%End if%>

		  <%If Len(rs("facebook_token")) > 0 then
	          If rs("sns_name") = "facebook" then
		  %>
		        <li class="sns_grey"><a href="javascript:alert('페이스북 계정으로 회원가입 되어 연동해제는 불가합니다.');"><span></span><p>페이스북 계정 연동</p></a></li>
		  <%  else%>
		        <li class="sns_grey"><a href="/main02/I10/sns_out.asp?sns_name=facebook_token"><span></span><p>페이스북 계정 연동 해제</p></a></li>
		  <%
			  End if
			Else %>
		      <li><a href="" onclick="SNSLogin('facebook'); return false;"><span></span><p>페이스북 계정 연동</p></a></li>
		  <%End if%>
		  <!--<li class="sns_grey"><a href=""><span></span><p>네이버 계정 연동</p></a></li>
		  <li><a href=""><span></span><p>카카오계정 연동</p></a></li>
		</ul> -->
	  </div>
	  <p class="del_txt">회원 탈퇴 시 신세계안과에서 제공하는 각종 이벤트/혜택을 이용하실 수 없습니다. 정말 탈퇴 하시겠습니까? <a href="?lasik=J105">탈퇴하기</a></p>
	  <div class="subbtn_wrap">
		<input type="button" value="취소" class="btn01" onclick="location.href='/main01';" />
		<input type="button" value="확인" class="btn02" onclick="this.form.onsubmit();" />
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

function number(obj) { 
  obj.value = obj.value.replace(/[^0-9]/g,'');
};

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

function frmRequestForm_Submit(frm) {

    <%If isnull(rs("sns_name")) then%>
	if ( frm.strPwd_now.value == "" ) { alert("기존 비밀번호를 입력해주세요"); frm.strPwd_now.focus(); return false; }
	if ( frm.strPwd.value == "" ) { alert("새 비밀번호를 입력해주세요"); frm.strPwd.focus(); return false; }
	if ( frm.strPwd_chk.value == "" ) { alert("새 비밀번호 확인을 입력해주세요"); frm.strPwd_chk.focus(); return false; }

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
	<%end if%>

	if ( frm.strEmail1.value == "" ) { alert("이메일을 입력해주세요"); frm.strEmail1.focus(); return false; }
	if ( frm.strEmail2.value == "" ) { alert("이메일을 입력해주세요"); frm.strEmail2.focus(); return false; }

	frm.submit();
	
}

function SNSLogin(sns){
			 // Fixes dual-screen position                         Most browsers      Firefox
	var dualScreenLeft = window.screenLeft != undefined ? window.screenLeft : window.screenX;
	var dualScreenTop = window.screenTop != undefined ? window.screenTop : window.screenY;

	var width = window.innerWidth ? window.innerWidth : document.documentElement.clientWidth ? document.documentElement.clientWidth : screen.width;
	var height = window.innerHeight ? window.innerHeight : document.documentElement.clientHeight ? document.documentElement.clientHeight : screen.height;

	var left = ((width / 2) - (880 / 2)) + dualScreenLeft;
	var top = ((height / 2) - (720 / 2)) + dualScreenTop;

	var popup = window.open("/main01/K10/gateway.asp?sns="+sns+"&mode=sync","sns","resizable=false,width=880,height=720, top=" + top + ", left=" + left);
}

</script>

<%
rs.close
Set rs=nothing
Call DbClose()
%>