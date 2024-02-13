<div class="sub_join">
  <div class="inner">
	<div class="top_tabwrap mb50"> 
	  <ul> 
		<li class="on"><a href="?lasik=K102">아이디찾기</a></li>
		<li><a href="?lasik=K104">비밀번호찾기</a></li>
	  </ul>
	</div>
	<div class="top_txt02"> 
	  <p class="txt01">회원가입 시 입력했던 회원님의 기본정보를 기재해주세요.</p>
	  <p class="txt02">입력하신 정보는 조회 즉시 폐기됩니다.</p>
	</div>
	<div class="input_form">
	  <form name="loginform" onsubmit="return submit_check(this);" action="?lasik=K103" method="post">
	  <table>
		<tbody> 
		  <tr>
			<th>이름</th>
			<td class="name"><input type="text" placeholder="이름을 입력해 주세요." name="name" /></td>
		  </tr>
		  <tr>
			<th>이메일</th>
			<td class="email">
			  <input type="text" name="strEmail1" style="ime-mode:disabled;width:200px;"> @ 
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
		</tbody>
	  </table>
	  <div class="subbtn_wrap">
		<input type="button" value="취소" class="btn01" onclick="history.back()" /><input type="button" value="아이디찾기" class="btn02" onclick="this.form.onsubmit();" />
	  </div>
	  </form>
	</div>
  </div>
</div>
<script language="javascript">
<!--
function emailserv()
{
	var frm = document.loginform;
	var email2 = frm.email2_sel.value;


	if (email2 == "direct") {
		frm.strEmail2.value = "";
		frm.strEmail2.readOnly = false;
		frm.strEmail2.focus();
	}
	else {
		frm.strEmail2.value = email2;
		frm.strEmail2.readOnly = true;
	}

return;
}

function submit_check(frm){
	var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

	if ( frm.name.value == "" ) { alert("이름을 입력해주세요"); frm.name.focus(); return false; }
	if ( frm.strEmail1.value == "" ) { alert("이메일을 입력해주세요"); frm.strEmail1.focus(); return false; }
	if ( frm.strEmail2.value == "" ) { alert("이메일을 입력해주세요"); frm.strEmail2strEmail2.focus(); return false; }

//	emailAddr = frm.email.value
//   if (emailAddr.match(regExp) != null) {
//   }
//   else {
//	  alert("이메일 형식이 옳바르지 않습니다.")
//	  return false;
//   }


	frm.submit();
}

//-->
</script>