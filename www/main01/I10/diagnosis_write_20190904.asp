<div class="diagnosis">
  <div class="inner">
	<div class="top_txt02"> 
	  <p class="txt02">병원 이용 및 진료 관련 문의 글을 작성해주시면 담당자가 확인 후 답변 드립니다.<br>
	  근무시간 이후나 주말, 공휴일에는 답변이 지연될 수 있습니다.
	  </p>
	</div>
	<div class="input_form">
	  <form name="frmRequestForm" method="post" onSubmit="return frmRequestForm_Submit(this);" action="/main01/I10/diagnosis_write_ok.asp" enctype="multipart/form-data">
	  <table>
		<tbody> 
		  <tr>
			<th>진료여부</th>
			<td>
			  <input id="r1" type="radio" name="b_first" value="a" />
			  <label for="r1" class="mr20"><span></span>초진</label>
			  <input id="r2" type="radio" name="b_first" value="b" />
			  <label for="r2"><span></span>재진</label>
			</td>
		  </tr>
		  <tr>
			<th>이름</th>
			<td class="id"><input type="text" name="b_name" maxlength="5" /></td>
		  </tr>
		  <tr>
			<th>연락처</th>
			<td class="call"><select name="b_phone1" id="b_phone1">
			    <option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="018">018</option>
				<option value="019">019</option>
			  </select><input type="text" name="b_phone2" maxlength="4" onkeydown="return onlyNumber(event);" onkeyup="removeChar(event);" /><input type="text" name="b_phone3" maxlength="4" onkeydown="return onlyNumber(event);" onkeyup="removeChar(event);" /></td>
		  </tr>
		  <tr>
			<th>진료구분</th>
			<td class="call">
			  <select name="b_bunryu" id="b_bunryu">
			    <option value="">선택</option>
				<option value="신세계스마일">신세계스마일</option>
				<option value="라식">라식</option>
				<option value="라섹">라섹</option>
				<option value="렌즈삽입술">렌즈삽입술</option>
				<option value="노안라식">노안라식</option>
				<option value="기타진료">기타진료</option>
			  </select>
			</td>
		  </tr>
		  <tr>
			<th>내용</th>
			<td class="call"> <textarea name="b_contents" cols="30" rows="10"></textarea></td>
		  </tr>
		  <tr>
			<td colspan="2">
			  <textarea name="" id="" cols="30" rows="10" readonly>개인정보 수집 및 이용 목적 : 홈페이지 온라인 예약 신청을 위한 개인신상 정보 확인
				수집하는 개인정보의 항목 : 이름, 연락처
				개인정보 보유 및 이용기간 : 예약확인 통화 후 즉시 삭제
				개인정보 수집 이용 동의는 거부하실 수 있으며, 거부하실 경우 서비스 이용에 제한될 수 있음을 알려드립니다.
              </textarea>
			  <p class="agree_txt" style="margin:20px 0 18px 0;">자세한 내용은 ‘개인정보처리방침’을 참조하시기 바랍니다. &nbsp;
			  <a onclick='window.open("/main01/L10/privacy_popup.asp", "privacy", "scrollbars=yes,status=no,toolbar=no,resizable=0,location=no,menu=no,width=1400,height=900,top=100,left=150"); return false' href="#">내용보기</a>
			    <span class="check">
			      <input id="c3" name="c3" type="checkbox"/>
			      <label for="c3"><span></span>위 약관에 동의합니다.</label>
			    </span>
			  </p>
			</td>
		  </tr>
		</tbody>
	  </table>
	  <div class="subbtn_wrap">
		<!--<input type="button" value="목록" class="btn01"/>--><input type="button" value="등록" class="btn02" onClick="this.form.onsubmit();" />
	  </div>	
	  </form>
	</div>
  </div>
</div>
<script language="javascript">
<!--
function frmRequestForm_Submit(frm){

  var poll1 = "0"
  for(i = 0; i < 2; i++) {
    if(frm.b_first[i].checked) { poll1=frm.b_first[i].value; }
  }
  if(poll1=="0")
  { alert("진료여부를 체크해주세요"); return false; }

  if ( frm.b_name.value.replace(/ /gi, "") == "" ) { alert("이름을 입력해주세요"); frm.b_name.focus(); return false; }
  if ( frm.b_name.value.replace(/ /gi, "").length <= 1 ) { alert("이름을 2자 이상 입력해주세요"); frm.b_name.focus(); return false; }
  if ( frm.b_phone1.value.replace(/ /gi, "") == "" ) { alert("연락처를 입력해주세요"); frm.b_phone1.focus(); return false; }
  if ( frm.b_phone2.value.replace(/ /gi, "") == "" ) { alert("연락처를 입력해주세요"); frm.b_phone2.focus(); return false; }
  if ( frm.b_phone3.value.replace(/ /gi, "") == "" ) { alert("연락처를 입력해주세요"); frm.b_phone3.focus(); return false; }
  if ( frm.b_bunryu.value.replace(/ /gi, "") == "" ) { alert("진료구분을 선택해주세요"); frm.b_bunryu.focus(); return false; }

  if ( document.frmRequestForm.c3.checked == false){
	alert("이용약관에 동의하셔야 글쓰기가 가능합니다."); return;
  }

  frm.submit();
}

function onlyNumber(event){
    event = event || window.event;
    var keyID = (event.which) ? event.which : event.keyCode;
    if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
        return;
    else
		alert("숫자만 입력해 주세요!");
		event.target.value = "";
        return false;
}
 
function removeChar(event) {
    event = event || window.event;
    var keyID = (event.which) ? event.which : event.keyCode;
    if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
        return;
    else
        event.target.value = event.target.value.replace(/[^0-9]/g, "");
}

//-->
</script>    