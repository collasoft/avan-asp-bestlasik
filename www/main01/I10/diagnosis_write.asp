<%Dim cyear, cmonth, cday
	cyear			= request("year")
	cmonth			= request("month")
	cday			= request("day")
	If cday < 10 Then cday = "0"&cday End If
%>
<script>
    $(document).ready(function() {
		ajaxgo();

		$("#cmonth").on("change", function(){
			ajaxgo();
		});
		$("#cday").on("change", function(){
			ajaxgo();
		});
		$("#ctime").on("change", function(){
			ajaxgo();
		});
		$("#cminut").on("change", function(){
			ajaxgo();
		});
	});

	function ajaxgo(){
		var cyear = "<%=cyear%>";
		var cmonth = $("#cmonth").val();
		var cday = $("#cday").val();
		var ctime = $("#ctime").val();
		var cminut = $("#cminut").val();
		var thsday = "<%=date%>";

		if ((cyear + "-" + cmonth + "-" + cday) < thsday) {
			alert("오늘 날짜보다 이전날짜는 예약하실 수 없습니다.");
//			$("#cmonth").val(thsday.substr(0,4));
			$("#cmonth").val(thsday.substr(5,2));
			$("#cday").val(thsday.substr(8,2));
		}

			$.ajax({
				type: "POST",
				url: "/main01/ajax_calender.asp",
				dataType: "html",
				data: "cyear=" + cyear +"&cmonth=" + cmonth + "&cday=" + cday + "&ctime=" + ctime + "&cminut=" + cminut,
				cache: false,
				success: function(data){
					var dtext = data.split("|");
					if (dtext[0] >= 2) {
						$(".input_form table td span.notice_cal").show();
						$(".input_form table td span.notice_cal").text("*선택하신 시간은 마감되었습니다.");
						$("#calcheck").val(dtext[0]);
					} else {
						$(".input_form table td span.notice_cal").hide();
						$("#calcheck").val("0");
					}
//console.log(dtext[1]);
					if (dtext[1] >= 20) {
						$(".input_form table td span.notice_cal").show();
						$(".input_form table td span.notice_cal").text("*예약 가능한 시간이 없습니다");
						$("#allcalcheck").val("N");
					} else {
						$("#allcalcheck").val("Y");
					}


				},
				error: function (request, status, error){        
					var msg = "ERROR : " + request.status + "<br>"
					msg +=  + "내용 : " + request.responseText + "<br>" + error;
					console.log(msg);
				}
			});
	}
</script>
				<div class="calenderDiv">
					<div class="inner">
						<div class="titArea">
							<h2 class="tit">신세계안과 <span>진료예약</span></h2>
							<p class="txt">원하시는 날짜를 선택해서 예약해주세요. 예약은 작성 후 수정/삭제가 불가능하므로 신중하게 작성해주시고 예약시간 변경을 원하실 경우 전화로 신청해주셔야 합니다.
							<span>앞으로도 수술에 대한 믿음과 신뢰를 줄 수 있는 신세계 안과가 되겠습니다.</span></p>
						</div>
						<div class="input_form">
<form name="frmRequestForm" method="post" onSubmit="return frmRequestForm_Submit(this);" action="/main01/I10/diagnosis_write_ok.asp" enctype="multipart/form-data">
<input type="hidden" name="cyear" value="<%=cyear%>">
<input type="hidden" name="calcheck" id="calcheck" value="0">
<input type="hidden" name="allcalcheck" id="allcalcheck" value="Y">
								<table>
									<colgroup>
										<col style="width:120px">
										<col style="width:*">
									</colgroup>
									<tbody>
										<tr>
											<th>예약일</th>
											<td>
												<select name="cmonth" id="cmonth">
<%
For i = 1 To 12
If i < 10 Then i = "0"&i End if
%>
													<option value="<%=i%>"<%If Int(cmonth) = Int(i) then%> selected<%End if%>><%=i%>월</option>
<%Next%>
												</select>
												<select name="cday" id="cday">
<%For i = 1 To 31
If i < 10 Then i = "0"&i End if
%>
													<option value="<%=i%>"<%If Int(cday) = Int(i) then%> selected<%End if%>><%=i%>일</option>
<%Next%>
												</select>
												<select name="ctime" id="ctime">
													<option value="09">09시</option>
													<option value="10">10시</option>
													<option value="11">11시</option>
													<option value="12">12시</option>
													<option value="13">13시</option>
													<option value="14">14시</option>
													<option value="15">15시</option>
													<option value="16">16시</option>
													<option value="17">17시</option>
													<option value="18">18시</option>
												</select>
												<select name="cminut" id="cminut">
													<option value="00">00분</option>
													<option value="30">30분</option>
												</select>
												<span class="notice_cal" style="display:hide;">*선택하신 시간은 마감되었습니다.</span>
											</td>
										</tr>
										<tr>
											<th>진료여부</th>
											<td>
												<input id="r1" type="radio" name="b_first" value="a">
												<label for="r1" class="mr20"><span></span>초진</label>
												<input id="r2" type="radio" name="b_first" value="b">
												<label for="r2"><span></span>재진</label>
											</td>
										</tr>
										<tr>
											<th>이름</th>
											<td>
												<input type="text" maxlength="50" name="b_name" class="input01 w20" onchange="onlyEng(this);">
											</td>
										</tr>
										<tr>
											<th>연락처</th>
											<td class="call">
												<select name="b_phone1" id="b_phone1">
												<option value="010">010</option>
												<option value="011">011</option>
												<option value="016">016</option>
												<option value="017">017</option>
												<option value="018">018</option>
												<option value="019">019</option>
												</select><input type="text" name="b_phone2" maxlength="4" onkeyup="f_is_num(this.form.b_phone2);"><input type="text" name="b_phone3" maxlength="4" onkeyup="f_is_num(this.form.b_phone3);"> <!--onkeydown="return onlyNumber(event);" onkeyup="removeChar(event);"-->
											</td>
										</tr>
										<tr>
											<th>진료구분</th>
											<td>
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
											<td>
												<textarea name="b_contents" cols="30" rows="10"></textarea>
											</td>
										</tr>
										<tr>
											<td colspan="2">
												<textarea name="" id="" cols="30" rows="10" readonly="">
개인정보 수집 및 이용 목적 : 홈페이지 온라인 예약 신청을 위한&nbsp;개인신상 정보 확인
수집하는 개인정보의 항목 :&nbsp;이름, 연락처
개인정보 보유 및 이용기간 :&nbsp;예약확인 통화 후 즉시 삭제
개인정보 수집 이용 동의는 거부하실 수 있으며, 거부하실 경우 서비스 이용에 제한될 수 있음을 알려드립니다.</textarea>
												<p class="agree_txt" style="margin:20px 0 18px 0;">자세한 내용은 ‘개인정보처리방침’을 참조하시기 바랍니다. &nbsp;
												<a onclick="window.open(&quot;/main01/L10/privacy_popup.asp&quot;, &quot;privacy&quot;, &quot;scrollbars=yes,status=no,toolbar=no,resizable=0,location=no,menu=no,width=1400,height=900,top=100,left=150&quot;); return false" href="#">내용보기</a>
												<span class="check">
												<input id="c3" name="c3" type="checkbox">
												<label for="c3"><span></span>위 약관에 동의합니다.</label>
												</span>
												</p>
											</td>
										</tr>
									</tbody>
								</table>
								<div class="subbtn_wrap">
									<input type="button" value="등록" class="btn02" onclick="mobConv();this.form.onsubmit();">
								</div>
</form>
						</div>
					</div>
				</div>
<script language="javascript">
<!--
function onlyEng(objtext1) {
   var inText = objtext1.value;
   var deny_char = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|\*]+$/

  if (!deny_char.test(inText)) {
     alert("한글과 영문자만을 입력하세요");
     objtext1.value = "";
     objtext1.focus();
     return false;
   }
   return true;
 } 

function frmRequestForm_Submit(frm){
  if ( frm.calcheck.value >= 2 ) { alert("선택하신 시간은 마감되었습니다."); return false; }
  if ( frm.allcalcheck.value == "N" ) { alert("선택하신 날짜는 마감되었습니다."); return false; }
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
    if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 || keyID == 9 ) 
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

function f_is_num(it) {
  //숫자만 기입체크
  var nLen = it.value.length;
  for( i = 0 ; i < nLen ; i++) {
    temp = it.value.substring(i,i+1);
    if( temp < "0" || temp > "9" ){
	  alert("숫자만 입력해 주세요!");
	  it.value = "";
      return true;
    }
  }
  return false;
}

//-->
</script> 