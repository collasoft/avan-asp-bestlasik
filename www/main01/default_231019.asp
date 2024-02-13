<%@  codepage="65001" language="VBScript" %>
<% option Explicit
Response.expires = -1
Response.addheader "pragma","no-cache"
Response.addheader "cache-control","no-cache"
Session.CodePage = 65001

%>
<!--#include virtual = "/Avanplus/_FormFunc.asp"-->
<!--#include virtual = "/Avanplus/_Function.asp"-->
<%
Dim nowprotocol
nowprotocol = Request.ServerVariables("HTTPS")
if nowprotocol = "off" Or InStr(Request.ServerVariables("SERVER_NAME"),"www") = 0 then
%>
<script language="javascript">
	parent.location.href="https://www.best-lasik.co.kr<%=Request.ServerVariables("PATH_INFO")%>?<%=Request.ServerVariables("QUERY_STRING")%>";
</script>
<% end if%>
<%
Call DbOpen()
%>
<!DOCTYPE html>
<html>
<head>
<!-- #include file="_inc/head.asp" -->
<!-- head.asp 끝 -->

<!-- s: 현재페이지에만 적용할 특정 스크립트 추가영역 -->
<link rel="stylesheet" href="_css/main.css?ver=20200306" />
<link rel="stylesheet" href="_css/aos.css" />
<script src="js/aos.js"></script>

</head>
<!-- <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script> -->
<script>
	var review_tab1,review_tab2,review_tab3,review_tab4,review_tab5;

	$(document).ready(function() {
		review_tab1 = $("#tab1").clone();
		review_tab2 = $("#tab2").clone();
		review_tab3 = $("#tab3").clone();
		review_tab4 = $("#tab4").clone();
		review_tab5 = $("#tab5").clone();

		//Default Action
		$(".tab_content").hide(); //Hide all content
		$("ul.tabs li:first").addClass("active").show() ; //Activate first tab
		$(".tab_content:first").show(); //Show first tab content
		//On Click Event
		$("ul.tabs li").click(function() {
			$("ul.tabs li").removeClass("active"); //Remove any "active" class
			$(this).addClass("active"); //Add "active" class to selected tab


			$('.main_review .conArea .conArea_ul .video').slick('unslick');

			$(".tab_content").hide(); //Hide all tab content
			var activeTab = $(this).find("a").attr("href"); //Find the rel attribute value to identify the active tab + content

			var buff = eval("review_"+activeTab.replace("#",""));
			$(activeTab).html($(buff).html());
			$(activeTab).fadeIn();

			$('.main_review .conArea .conArea_ul .video').slick({
			  lazyLoad: 'ondemand',
				infinite: true,
				autoplay: true,
				dots: true,
			});
			return false;
		});

		$('.main_review .conArea .conArea_ul .video').slick({
		  	lazyLoad: 'ondemand',
			infinite: true,
			autoplay: true,
			dots: true,
		});

		$('.pause').on('click', function() {
			$('.main_review .conArea .conArea_ul .video')
				.slick('slickPause')
		});

		$('.play').on('click', function() {
			$('.main_review .conArea .conArea_ul .video')
				.slick('slickPlay')
		});



	});
</script>

<script>
$(document).ready(function(){
	var posY;
    function bodyFreezeScroll() {
		posY = $(window).scrollTop();
		$("html").css("position","fixed");
		$("html").css("top",-posY);
    }

    function bodyUnfreezeScroll() {
		$("html").css("position","static");
		posY = $(window).scrollTop(posY);
    }

    $('.main_popup_btn').click(function(){
        $('.main_popup_div').fadeIn();
        bodyFreezeScroll();
    });
    $('.main_popup_div .btn_close').click(function(){
        $('.main_popup_div').fadeOut();
        bodyUnfreezeScroll();
    });

});
</script>
<script>
	$(document).ready(function() {
		$('#toSections').click(function(){
			$.fn.fullpage.responsiveSlides.toSections();
		});

		$('#toSlides').click(function(){
			$.fn.fullpage.responsiveSlides.toSlides();
		});


	//비주얼 슬라이드
	$(".lazy").slick({
		lazyLoad: 'ondemand',
		infinite: true,
		autoplay: true,
		dots: true,
		autoplaySpeed:4500,
	});

	//수술후기
	$('.slide_wrap').slick({
		autoplay:true,
		accessibility:false,
		autoplaySeep:4000,
		slidesToShow:3,
		slidesToscroll:1,
	});

	//팝업이미지
	$('.popup01 .imgSilde').slick({
		autoplay:true,
		autoplaySeep:4000,
		slidesToShow:1,
		slidesToscroll:1,
		dots: true
	});

	window.addEventListener("resize",function(){
		if(window.innerWidth < 900){
		$(".slide_wrap").slick("slickSetOption","slidesToShow","2",false);
		}else{
		$(".slide_wrap").slick("slickSetOption","slidesToShow","3",false);
		}
	});

	$(document).ready(function(){
		if(window.innerWidth < 900){
			$(".slide_wrap").slick("slickSetOption","slidesToShow","2",false);
		}else{
			$(".slide_wrap").slick("slickSetOption","slidesToShow","3",false);
		}
	});

	//의료진
	$('.staff_list').slick({
		arrow:false,
		autoplay:true,
		dots:true,
		accessibility:false,
		autoplaySpeed:3500,
		slidesToShow:1,
		slidesToscroll:1,
	});
	$('.staff_list .slick-dots li').on('mouseover', function() {
		$(this).parents('.staff_list').slick('goTo', $(this).index());
	});

	/*window.addEventListener("resize",function(){
		if(window.innerWidth < 760){
		$(".staff_list").slick("slickSetOption","slidesToShow","2",false);
		}else{
		$(".staff_list").slick("slickSetOption","slidesToShow","1",false);
		}
	});

	$(document).ready(function(){
		if(window.innerWidth < 760){
		$(".staff_list").slick("slickSetOption","slidesToShow","2",false);
		}else{
		$(".staff_list").slick("slickSetOption","slidesToShow","1",false);
		}
	});*/




	window.addEventListener("resize",function(){
		if(window.innerWidth < 900){
		$(".partner_list").slick("slickSetOption","slidesToShow","2",false);
		}else{
		$(".partner_list").slick("slickSetOption","slidesToShow","5",false);
		}
	});

	$(document).ready(function(){
		if(window.innerWidth < 900){
		$(".partner_list").slick("slickSetOption","slidesToShow","2",false);
		}else{
		$(".partner_list").slick("slickSetOption","slidesToShow","5",false);
		}
	});
});
</script>
<script language="JavaScript" type="text/JavaScript">
<!--
function ch_infog33(no){
  for( i=1 ; i<=4 ; i++ ){
    if(i==no){
	  document.getElementById("realstory"+i).style.display="inline";
	}else{
      document.getElementById("realstory"+i).style.display="none";
	}
  }
}

function logingogo(intint)
{
	if(confirm("로그인 후 상세페이지를 볼 수 있습니다.\n로그인 하시겠습니까?"))
	{
		location.href = "sub.asp?lasik=K101&intSeq="+ intint;
	}
}
//-->
</script>
<script type="text/javascript">
	$(document).ready(function() {

		var windowW = $(window).innerWidth();

		if (windowW < 768) {
			$('#A_Header').css({'position': 'absolute'});

			$(window).scroll(function() {
				var ScrollH = $(document).scrollTop();
				var popupH = $('.popup01').outerHeight();

				if(ScrollH > popupH) {
					$('#A_Header').css({'position': 'fixed'});
				} else {
					$('#A_Header').css({'position': 'absolute'});
				}
			});

			$('.mfp-close').click(function(){
				$('.popup01').stop().slideUp();
		        $('#A_Header').css({'position': 'fixed'});
		        $(window).scroll(function() {
					var ScrollH = $(document).scrollTop();
					if(ScrollH > 0) {
						$('#A_Header').css({'position': 'fixed'});
					} else {
						$('#A_Header').css({'position': 'fixed'});
					}
				});
		    });
	    } else {
			$('.mfp-close').click(function(){
				$('.popup01').stop().fadeOut();
			});
	    }

	    $(window).resize(function(){
		 	var windowW = $(window).innerWidth();

			document.screenwidth.screenw.value = windowW;

		 	console.log(windowW)
		 	if (windowW < 768) {
		 		$('#A_Header').css({'position': 'absolute'});

				$(window).scroll(function() {
					var ScrollH = $(document).scrollTop();
					var popupH = $('.popup01').outerHeight();

					if(ScrollH > popupH) {
						$('#A_Header').css({'position': 'fixed'});
					} else {
						$('#A_Header').css({'position': 'absolute'});
					}
				});

				$('.mfp-close').click(function(){
					$('.popup01').stop().slideUp();
			        $('#A_Header').css({'position': 'fixed'});
			        $(window).scroll(function() {
						var ScrollH = $(document).scrollTop();
						if(ScrollH > 0) {
							$('#A_Header').css({'position': 'fixed'});
						} else {
							$('#A_Header').css({'position': 'fixed'});
						}
					});
			    });
		    } else if (windowW > 768) {
		    	$('#A_Header').css({'position': 'fixed'});
		    	$(window).scroll(function() {
					var ScrollH = $(document).scrollTop();
					if(ScrollH > 0) {
						$('#A_Header').css({'position': 'fixed'});
					} else {
						$('#A_Header').css({'position': 'fixed'});
					}
				});
				$('.mfp-close').click(function(){
					$('.popup01').stop().fadeOut();
				});

				$('.checkBtn').click(function(){
				    setCookie( "popup_2", "done" , 1);
					$('.popup01').stop().fadeOut();
				});
		 	}

		}).resize();

	});

	function screengo(){
	  document.screenwidth.submit();
	}

</script>

<script Language="JavaScript">

function notice_getCookie( name )
{
	var nameOfCookie = name + "=";
	var x = 0;
	while ( x <= document.cookie.length )
	{
	var y = (x+nameOfCookie.length);
		if ( document.cookie.substring( x, y ) == nameOfCookie ) {
			if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
			endOfCookie = document.cookie.length;
		return unescape( document.cookie.substring( y, endOfCookie ) );
		}
		x = document.cookie.indexOf( " ", x ) + 1;
		if ( x == 0 )
			break;
	}

	return "";
}

function setCookie( name, value, expiredays )
{
	var todayDate = new Date();
	todayDate.setDate( todayDate.getDate() + expiredays );
	document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}

function popuplayer1(){

  if ( notice_getCookie('popup_2') != 'done' ){

    document.getElementById("popuplayer-1").style.display="inline";

  }

}
</script>

<form name="screenwidth" method="post" action="/main01/default_poptest.asp">
  <input type="hidden" name="screenw" />
</form>

<%'If request.form("screenw") = "" And session("screenw") = "" then%>
<!--<body onload="screengo()">-->
<%'else%>
<body onload="popuplayer1()">
<%'End if%>



<%
  Dim sqlw, rsw, screen_left, screen_top, w_top, w_left, sin_state, img1, img2, img3, img4, img5, sin_url1, sin_url2, sin_url3, sin_url4, sin_url5
  sqlw = "SELECT * FROM popup where intSeq = 2"
  set rsw = dbconn.execute(sqlw)
  if rsw.eof Then
  Else

    w_top = rsw("w_top")
	w_left = rsw("w_left")
	sin_state = rsw("sin_state")
	img1 = rsw("img1")
	img2 = rsw("img2")
	img3 = rsw("img3")
	img4 = rsw("img4")
	img5 = rsw("img5")
	sin_url1 = rsw("sin_url1")
	sin_url2 = rsw("sin_url2")
	sin_url3 = rsw("sin_url3")
	sin_url4 = rsw("sin_url4")
	sin_url5 = rsw("sin_url5")

  End If
  rsw.close
  set rsw = Nothing

  If session("screenw") = "" And request.form("screenw") <> "" then
    session("screenw") = request.form("screenw")
  End if

  screen_top = 335 + w_top
  screen_left = session("screenw")/2 * -1 + 326 + w_left

  If sin_state = "Y" then
%>

	<div id="popuplayer-1" class="popup popup01" style="display:none;">
	    <div class="popup_wrap2">
		<!--<div class="popup_wrap2" style="border:position:absolute;top:<%'=screen_top%>px;left:<%'=screen_left%>px;z-index:99;">-->
			<div class="close_wrap">
				<button type="button" class="checkBtn">오늘 하루 보지 않기</button>
				<p><span>창닫기</span><button type="button" class="mfp-close">×</button></p>
			</div>
			<div class="imgSilde">
			    <%If Len(img1) > 0 then%>
				<div><%If Len(sin_url1) > 0 then%><a href="<%=sin_url1%>"><img src="/upload/popup/<%=Split(img1,":")(0)%>" /></a><%else%><img src="/upload/popup/<%=Split(img1,":")(0)%>" /><%End if%></div>
				<%End if%>
				<%If Len(img2) > 0 then%>
				<div><%If Len(sin_url2) > 0 then%><a href="<%=sin_url2%>"><img src="/upload/popup/<%=Split(img2,":")(0)%>" /></a><%else%><img src="/upload/popup/<%=Split(img2,":")(0)%>" /><%End if%></div>
				<%End if%>
				<%If Len(img3) > 0 then%>
				<div><%If Len(sin_url3) > 0 then%><a href="<%=sin_url3%>"><img src="/upload/popup/<%=Split(img3,":")(0)%>" /></a><%else%><img src="/upload/popup/<%=Split(img3,":")(0)%>" /><%End if%></div>
				<%End if%>
				<%If Len(img4) > 0 then%>
				<div><%If Len(sin_url4) > 0 then%><a href="<%=sin_url4%>"><img src="/upload/popup/<%=Split(img4,":")(0)%>" /></a><%else%><img src="/upload/popup/<%=Split(img4,":")(0)%>" /><%End if%></div>
				<%End if%>
				<%If Len(img5) > 0 then%>
				<div><%If Len(sin_url5) > 0 then%><a href="<%=sin_url5%>"><img src="/upload/popup/<%=Split(img5,":")(0)%>" /></a><%else%><img src="/upload/popup/<%=Split(img5,":")(0)%>"  /><%End if%></div>
				<%End if%>
			</div>
		</div>
	</div>
<%End if%>

<div id="A_Wrap">
	<div class="popup main_popup_div">
		<div class="popup_wrap">
			<div class="popup_tit">
				<strong>개인정보처리방침</strong>
				<button type="button" class="btn_close">닫기</button>
			</div>
			<div class="popup_con">
				<div class="data">
					<div class="inner">
						<p class="data_txt01">신세계안과 는(이하 ‘사이트’ 이라 함) 귀하의 개인정보보호를 매우 중요시하며, 『개인정보보호법』을 준수하고 있습니다. <br>신세계안과 는 개인정보처리방침을 통하여 귀하께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다. <br>이 개인정보처리방침의 순서는 다음과 같습니다.</p>
						<p class="data_txt02">1. 수집하는 개인정보의 항목 및 수집방법</p>
						<p class="data_txt01">사이트는 회원가입 시 서비스 이용을 위해 필요한 최소한의 개인정보만을 수집합니다. 귀하가 사이트의 서비스를 이용하기 위해서는 회원가입 시 필수항목과 선택항목이 있는데,<br> 메일수신여부 등과 같은 선택항목은 입력하지 않더라도 서비스 이용에는 제한이 없습니다. </p>

						<p class="data_txt03">[홈페이지 회원가입 시 수집항목] </p>
						<p class="data_txt01">- 필수항목: 성명, 아이디, 비밀번호, 닉네임, 이메일, 연락처(전화번호 or 휴대폰번호) <br>
						- 선택항목: 주소, 메일수신여부, SMS수신여부, 직업 등 <br>
						- 서비스 이용 과정이나 서비스 제공 업무 처리 과정에서 다음과 같은 정보들이 자동으로 생성되어 수집될 수 있습니다. : 서비스 이용기록, 접속 로그, 쿠키, 접속 IP 정보
						</p>
						<p class="data_txt03">[개인정보 수집방법] </p>
						<p class="data_txt01">- 다음과 같은 방법으로 개인정보를 수집합니다.<br>
						: 홈페이지, 서면양식, 팩스, 전화, 상담 게시판, 이메일, 이벤트 참여</p>




						<p class="data_txt02">2. 개인정보의 수집 및 이용목적</p>
						<p class="data_txt01">사이트는 수집한 개인정보를 다음의 목적을 위해 활용합니다.<br>
						이용자가 제공한 모든 정보는 하기 목적에 필요한 용도 이외로는 사용되지 않으며 이용 목적이 변경될 시에는 사전 동의를 구할 것입니다. </p>
						<p class="data_txt03">[홈페이지 회원정보]</p>
						<p class="data_txt01">- 필수정보: 홈페이지를 통한 진료예약, 예약조회 및 회원제 서비스 제공<br>
						- 선택정보: 이메일을 통한 사이트 소식, 예약/답변안내 SMS수신, 질병정보 등의 안내, 설문조사, 이벤트참여 외</p>



						<p class="data_txt02">3. 개인정보의 보유 및 이용기간</p>
						<p class="data_txt01">사이트는 개인정보의 수집목적 또는 제공받은 목적이 달성된 때에는 귀하의 개인정보를 지체 없이 파기합니다. </p>
						<p class="data_txt03">[홈페이지 회원정보]</p>
						<p class="data_txt01">- 회원가입을 탈퇴하거나 회원에서 제명된 때<br>
						다만, 수집목적 또는 제공받은 목적이 달성된 경우에도 상법 등 법령의 규정에 의하여 보존할 필요성이 있는 경우에는 귀하의 개인정보를 보유할 수 있습니다.<br>
						- 소비자의 불만 또는 분쟁처리에 관한 기록: 3년 (전자상거래 등에서의 소비자보호에 관한 법률)<br>
						- 신용정보의 수집/처리 및 이용 등에 관한 기록: 3년 (신용정보의 이용 및 보호에 관한 법률)<br>
						- 본인 확인에 관한 기록: 6개월 (정보통신망 이용촉진 및 정보보호 등에 관한 법률)<br>
						- 방문에 관한 기록: 3개월 (통신비밀보호법)</p>


						<p class="data_txt02">4. 개인정보의 파기절차 및 그 방법</p>
						<p class="data_txt01">사이트는 『개인정보의 수집 및 이용목적』이 달성된 후에는 즉시 파기합니다. 파기절차 및 방법은 다음과 같습니다. </p>
						<p class="data_txt03">[파기절차]</p>
						<p class="data_txt01">- 이용자가 회원가입 등을 위해 입력한 정보는 목적이 달성된 후 파기방법에 의하여 즉시 파기합니다. </p>
						<p class="data_txt03">[파기방법]</p>
						<p class="data_txt01">- 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각하여 파기합니다</p>


						<p class="data_txt02">5. 개인정보 제공 및 공유</p>
						<p class="data_txt01">사이트는 귀하의 동의가 있거나 관련법령의 규정에 의한 경우를 제외하고는 어떠한 경우에도 『개인정보의 수집 및 이용목적』에서 <br>고지한 범위를 넘어 귀하의 개인정보를 이용하거나 타인 또는 타기업ㆍ기관에 제공하지 않습니다. 다만, 아래의 경우에는 예외로 합니다. <br><br>
						- 이용자들이 사전에 공개에 동의한 경우<br>
						- 통계작성ㆍ학술연구를 위하여 필요한 경우 특정 개인을 알아볼 수 없는 형태로 가공하여 제공<br>
						- 법령에 정해진 절차와 방법에 따라 수사기관의 요구가 있는 경우 제출 등</p>




						<p class="data_txt02">6. 수집한 개인정보의 취급위탁</p>
						<p class="data_txt01">사이트는 고객님의 동의없이 고객님의 정보를 외부 업체에 위탁하지 않습니다. <br>향후 그러한 필요가 생길 경우, 위탁 대상자와 위탁 업무 내용에 대해 고객님에게 통지하고 필요한 경우 사전 동의를 받도록 하겠습니다</p>


						<p class="data_txt02">7. 이용자 및 법정대리인의 권리와 그 행사방법</p>
						<p class="data_txt01">만14세 미만 아동(이하 "아동"이라 함)의 회원가입은 아동이 이해하기 쉬운 평이한 표현으로 작성된 별도의 양식을 통해 이루어지고 있으며 개인정보 수집시 반드시 법정대리인의 동의를 구하고 있습니다. <br>사이트는 법정대리인의 동의를 받기 위하여 아동으로부터 법정대리인의 성명과 연락처 등 최소한의 정보를 수집하고 있으며, 개인정보취급방침에서 규정하고 있는 방법에 따라 법정대리인의 동의를 받고 있습니다. <br>아동의 법정대리인은 아동의 개인정보에 대한 열람, 정정 및 삭제를 요청할 수 있습니다. 아동의 개인정보를 열람·정정, 삭제하고자 할 경우에는 회원정보수정을 클릭하여 법정대리인 확인 절차를 거치신 후 아동의 개인정보를 법정대리인이 직접 열람ㆍ정정, 삭제하거나, 개인정보보호책임자로 서면, 전화, 또는 Fax등으로 연락하시면 필요한 조치를 취합니다.<br> 사이트는 아동에 관한 정보를 제3자에게 제공하거나 공유하지 않으며, 아동으로부터 수집한 개인정보에 대하여 법정대리인이 오류의 정정을 요구하는 경우 그 오류를 정정할 때까지 해당 개인정보의 이용 및 제공을 금지합니다. <br>※ 법에 의해 보관이 의무화된 개인정보는 요청이 있더라도 보관기간 내에 수정ㆍ삭제할 수 없습니다. <br><br>
						동의철회 / 회원탈퇴 방법<br>
						귀하는 회원가입 시 개인정보의 수집ㆍ이용 및 제공에 대해 동의하신 내용을 언제든지 철회하실 수 있습니다. 회원탈퇴는 사이트 홈페이지 마이페이지의 『회원탈퇴』를 클릭하여 본인 확인 절차를 거치신 후 직접 회원탈퇴를 하시거나, 개인정보관리책임자로 서면, 전화 또는 Fax 등으로 연락하시면 지체 없이 귀하의 개인정보를 파기하는 등 필요한 조치를 하겠습니다.</p>



						<p class="data_txt02">8. 개인정보 자동 수집 장치의 설치/운영 및 그 거부에 관한 사항</p>
						<p class="data_txt01">사이트는 귀하의 정보를 수시로 저장하고 찾아내는 '쿠키(cookie)'를 운용합니다. 쿠키란 사이트의 웹사이트를 운영하는데 이용되는 서버가 귀하의 브라우저에 보내는 아주 작은 텍스트 파일로서 귀하의 컴퓨터 하드디스크에 저장됩니다. 사이트는 다음과 같은 목적을 위해 쿠키를 사용합니다. 귀하는 쿠키 설치에 대한 선택권을 가지고 있습니다. 따라서, 귀하는 웹 브라우저에서 옵션을 설정함으로써 모든 쿠키를 허용하거나, 쿠키가 저장될 때마다 확인을 거치거나, 아니면 모든 쿠키의 저장을 거부할 수도 있습니다. 회원님께서 쿠키 설치를 거부하셨을 경우 일부 서비스 제공에 어려움이 있습니다. 개인정보관리책임자
						귀하의 개인정보를 보호하고 개인정보와 관련한 불만을 처리하기 위하여 사이트는 아래와 같이 개인정보관리책임자를 두고 있습니다. </p>
							<p class="data_txt03">[개인정보 관리부서] </p>
							<p class="data_txt01">- 부서: 홈페이지담당자<br>
						- 소속: 기획실<br>
						- 전화번호: 062-351-1515<br>
						- 메일 :bestlasik1@hanmail.net <br>
						귀하께서는 사이트의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 개인정보관리책임자로 신고하실 수 있습니다.<br> 사이트는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다. 기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다. <br>
						- 개인분쟁조정위원회 (http://www.1336.or.kr / 1336)<br>
						- 정보보호마크인증위원회 (http://www.eprivacy.or.kr / (02) 580-0533~4)<br>
						- 대검찰청 사이버범죄수사단 (http://www.spo.go.kr / (02) 3480-3573)<br>
						- 경찰청 사이버테러대응센터 (http://www.ctrc.go.kr / (02) 392-0330)</p>

						<p class="data_txt02">9. 개인정보의 안전성 확보조치</p>
						<p class="data_txt01">사이트는 이용자의 개인정보보호를 위한 기술적 대책으로서 여러 보안장치를 마련하고 있습니다. 이용자께서 보내시는 모든 정보는 방화벽장치에 의해 보호되는 보안시스템에 안전하게 보관/관리되고 있습니다. 또한 사이트는 이용자의 개인정보보호를 위한 관리적 대책으로서 이용자의 개인정보에 대한 접근 및 관리에 필요한 절차를 마련하고, 이용자의 개인정보를 취급하는 인원을 최소한으로 제한하여 지속적인 보안교육을 실시하고 있습니다. 또한 개인정보를 처리하는 시스템의 사용자를 지정하여 사용자 비밀번호를 부여하고 이를 정기적으로 갱신하겠습니다.</p>
						<br><br>
						<p class="data_txt01">이 개인정보취급방침은 2012년 3월 19일에 제정되었으며 법령ㆍ정책 또는 보안기술의 변경에 따라 내용의 추가ㆍ삭제 및 수정이 있을 시에는 변경되는 개인정보취급방침을 시행하기 최소 7일전에 사이트 홈페이지를 통해 변경이유 및 내용 등을 공지하도록 하겠습니다. <br>
						공고일자: 2012년 3월 19일<br>
						시행일자: 2012년 4월 1일</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="A_Header">
		<!-- #include file="_inc/header.asp" -->
	</div><!-- #A_Header 끝 -->

	<div class="quick">
		<ul>
<%If Len(session("useridid")) = 0 then%>
			<li class="q_login"><a href="sub.asp?lasik=K101">로그인</a></li>
			<li class="q_join"><a href="sub.asp?lasik=J101">회원가입</a></li>
<%else%>
			<li class="q_logout"><a href="/main01/K10/logout.asp">로그아웃</a></li>
<%End if%>
			<li class="q_reserve"><a href="sub.asp?lasik=I106">진료예약</a></li>
			<li class="q_counseling"><a href="sub.asp?lasik=I102">1:1상담</a></li>
			<li class="q_event"><a href="sub.asp?lasik=G101">이벤트</a></li>
			<li class="q_sms"><a title="모바일위치전송" class="btn-circle" onclick="window.open('https://www.best-lasik.co.kr/sms/sms_pop.html', '', 'width=420,height=676, scrollbars=no,toolbar=no,status=no')" href="#none">문자로<br>주소받기</a></li>
			<li class="top"><a href="#">TOP</a></li>
		</ul>
	</div>
	<script type="text/javascript">
		//Click event to scroll to top
		$('.quick .top').click(function(){
			$('html, body').animate({scrollTop : 0},400);
			return false;
		});

	</script>

    <div id="A_Container_Wrap">
        <!-- Container 시작 -->
        <div id="A_Container">
			<!-- visual -->
			<div class="visual_wrap">
				<div class="visual">
					<section class="lazy slider" data-sizes="50vw">
						<div class="slide05">
							<a href="/main01/sub.asp?lasik=G106&intSeq=331&page=&gum1=&gum2=">
								<img class="visual_pc" src="image/main/main01_visualImg05_20230928.jpg">
								<img class="visual_m" src="image/main/m_main01_visualImg05_20230928.jpg">

							</a>
						</div>
						<div class="slide02">
							<a href="/main01/sub.asp?lasik=B102">
								<img class="visual_pc" src="image/main/main01_visualImg02.jpg">
								<img class="visual_m" src="image/main/m_main01_visualImg02.jpg">
								<div class="txt_box">
									<strong>왜 신세계안과일까?</strong>
									<p>찬란히 빛나는 인생을 위한 후회없는 선택</p>
									<button type="button" class="more_btn" onclick="location.href='/main01/sub.asp?lasik=B102'";>자세히 보기</button>
								</div>
							</a>
						</div>
						<div class="slide03">
							<a href="/main01/sub.asp?lasik=G104&intSeq=282&page=&gum1=&gum2=#contop">
								<img class="visual_pc" src="image/main/main01_visualImg03.jpg">
								<img class="visual_m" src="image/main/m_main01_visualImg03.jpg">
								<div class="txt_box">
									<strong>안과의사는<br>어디서 수술할까요?</strong>
                                    <p>9인의 안과 전문의도 수술받는 신세계안과</p>
									<button type="button" class="more_btn" onclick="location.href='/main01/sub.asp?lasik=G104&intSeq=282&page=&gum1=&gum2='";>자세히 보기</button>
								</div>
							</a>
						</div>
						<div class="slide04">
							<a href="/main01/sub.asp?lasik=H101&gubun=a">
								<img class="visual_pc" src="image/main/main01_visualImg04_191125.jpg">
								<img class="visual_m" src="image/main/m_main01_visualImg04_191125.jpg">
                                <div class="txt_box">
								</div>
							</a>
						</div>
					</section>
				</div>
			</div>
			<!-- 후기 -->
			<%
			Dim sql2, rs2, a
			%>
			<!--<div class="review_wrap">
				<div class="inner">
					<div class="title_wrap">
						<h2 class="title">수술 후기</h2>
					</div>
					<div class="slide_wrap">

						<%
						  sql2 = "SELECT top 5 * FROM review WHERE gubun = 'a' order by intSeq desc"
						  set rs2 = dbconn.execute(sql2)
						  if rs2.eof Then

						  Else
							a=1
							Do Until rs2.EOF
						%>
							  <div>
								<div class="review_list">
									<a href="sub.asp?lasik=H102&intSeq=<%=rs2("intSeq")%>&gubun=a">
										<div class="img"><%If Len(rs2("img1")) > 0 then%><img src="/upload/review/<%=Split(rs2("img1"),":")(0)%>" alt=""/><%End if%></div>
										<div class="txt_wrap">
											<p class="tit"><span>[<%=review_gubun(rs2("r_bunryu"))%>]</span><%=Left(rs2("r_title"),10)%>...</p>
											<p class="days"><%=Replace(Left(rs2("r_inputtime"),10),"-",".")%></p>
										</div>
									</a>
								</div>
							  </div>
						<%
							rs2.MoveNext
							a=a+1
							Loop

						  End If
						  rs2.close
						  set rs2 = nothing
						%>
					</div>
				</div>
			</div>-->

			<div class="main_review">
				<div class="inner">
					<div class="titArea">
						<h2 class="title">BEST 리얼 후기</h2>
						<ul class="tabs">
	        				<li>
	        					<a href="#tab1" onClick="ch_infog33(1);">신세계스마일</a>
	        				</li>
	        				<li>
	        					<a href="#tab2" onClick="ch_infog33(2);">라식/라섹</a>
	        				</li>
	        				<li>
	        					<a href="#tab3" onClick="ch_infog33(3);">렌즈삽입술</a>
	        				</li>
	        				<li>
	        					<a href="#tab4" onClick="ch_infog33(4);">노안라식</a>
	        				</li>
	        				<!-- <li>
								<a href="#tab5" onClick="ch_infog33(5);">베스트</a>
							</li> -->
	        			</ul>
					</div>
					<!--class="tab_content"-->
					<div class="conArea">
						<div class="tab_container">

						    <%
							  Dim jj, r_bunryu, bunryu
							  For jj = 1 To 4

							    If jj = 1 Then
							      r_bunryu = "r_bunryu = 'a' and"
                                  bunryu = "a"
								ElseIf jj = 2 Then
								  r_bunryu = "(r_bunryu = 'b' or r_bunryu = 'c') and"
								  bunryu = "b"
								ElseIf jj = 3 Then
								  r_bunryu = "r_bunryu = 'd' and"
								  bunryu = "d"
								ElseIf jj = 4 Then
								  r_bunryu = "r_bunryu = 'e' and"
								  bunryu = "e"
								ElseIf jj = 5 Then
								  r_bunryu = "best = 'Y' and"
								  bunryu = ""
								End if
							%>

				            <div id="realstory<%=jj%>" <%If jj <> 1 then%>style="display:none;"<%End if%>>
				            	<ul class="conArea_ul">
									<li class="video">
									    <%
										  sql2 = "SELECT top 5 * FROM review where "&r_bunryu&" movie_yn = 'Y' and gubun = 'a' and best = 'Y' order by best desc, r_inputtime desc"
										  set rs2 = dbconn.execute(sql2)
										  if rs2.eof Then

										  Else
											a=1
											Do Until rs2.EOF
										%>
			            				<div>
											<div>
												<div>
												    <%If session("useridid") = "" then%>
													  <%If Len(rs2("img1")) > 0 then%>
													  <a href="javascript:logingogo('<%=rs2("intSeq")%>');"><img src="/upload/review/<%=Split(rs2("img1"),":")(0)%>" style="width:100%;" /></a>
													  <%End if%>
													<%else%>
													  <%If Len(rs2("img1")) > 0 then%>
													  <a href="/main01/sub.asp?lasik=H102&intSeq=<%=rs2("intSeq")%>&gubun=a"><img src="/upload/review/<%=Split(rs2("img1"),":")(0)%>" style="width:100%;" /></a>
													  <%End if%>
													<%End if%>
													<!--<video type="video/mp4" src="/upload/review/<%'=Split(rs2("img3"),":")(0)%>" style="width:100%;" controls autoplay loop></video>-->
												</div>
											</div>
				            			</div>
										<%
											rs2.MoveNext
											a=a+1
											Loop

										  End If
										  rs2.close
										  set rs2 = nothing
										%>
				            			<!--<div class="buttons">
											<button class="play">Play</button>
											<button class="pause">Pause</button>
										</div>-->
				            		</li>

				            		<li class="photo">
									    <%
										  Dim r_contents, r_bunryu_name
										  sql2 = "SELECT top 2 * FROM review where "&r_bunryu&" movie_yn <> 'Y' and gubun = 'a' order by best desc, r_inputtime desc"
										  set rs2 = dbconn.execute(sql2)
										  if rs2.eof Then

										  Else
											a=1
											Do Until rs2.EOF

											  If rs2("r_bunryu") = "a" Then
											    r_bunryu_name = "신세계스마일"
											  elseIf rs2("r_bunryu") = "b" Then
											    r_bunryu_name = "라식"
											  elseIf rs2("r_bunryu") = "c" Then
											    r_bunryu_name = "라섹"
										      elseIf rs2("r_bunryu") = "d" Then
											    r_bunryu_name = "렌즈삽입술"
											  elseIf rs2("r_bunryu") = "e" Then
											    r_bunryu_name = "노안라식"
											  End if

											  r_contents = strip_tags(rs2("r_contents"))
                                              r_contents = replace(r_contents,"&nbsp;","")
										%>
										<div>
				            				<a href="/main01/sub.asp?lasik=H102&intSeq=<%=rs2("intSeq")%>&gubun=a">
				            					<div class="img">
				            						<%If Len(rs2("img1")) > 0 then%><img src="/upload/review/<%=Split(rs2("img1"),":")(0)%>" alt="" style="width:316px;height:316px;">
													<%else%>
													<img src="/upload/logologo9.jpg" alt="" style="width:316px;height:316px;">
													<%End if%>
				            					</div>
				            					<div class="txt">
				            						<p class="tit"><span>[<%=r_bunryu_name%>]</span> <em><%=rs2("r_writer")%></em> </p>
				            						<!-- <p class="con"><%=Left(r_contents,150)%></p> -->
																<!-- <p class="con"><%=Left(rs2("r_title"),22)%>..</p> -->
																<p class="con"><%=Left(rs2("r_title"),100)%></p>

				            					</div>
				            				</a>
				            			</div>
										<%
											rs2.MoveNext
											a=a+1
											Loop

										  End If
										  rs2.close
										  set rs2 = nothing
										%>
				            		</li>
				            	</ul>
				            	<button type="button" class="best_moreBtn" onclick="location.href='/main01/sub.asp?lasik=H101&gubun=a&bunryu=<%=bunryu%>';">+ 더보기</button>
				            </div>

							<%next%>

				        </div>
					</div>
				</div>
			</div>
			<!-- 유튜브 배너 -->
			<div class="youtube_banner">
				<div class="youtube_banner_tit">
					<div class="inner">
						<h2 class="title"><i class="logo"></i>신세계안과TV</h2>
						<img src="image/main/youtube_doc_2.png" alt="김재봉 대표원장" class="doctor">
					</div>
				</div>
				<div class="youtube_banner_con">
					<div class="inner">
						<div class="txtArea">
							<p>
								<span>눈에 대한 궁금증</span>
								신세계안과 유튜브에서 확인하세요.
							</p>
							<a href="https://www.youtube.com/channel/UCbpEbNLa17AP6sK9zKynq6w" target="_blank">
								신세계안과TV <span>바로가기</span>
								<i class="arrow"></i>
							</a>
						</div>
						<img src="image/main/youtube_doc_1.png" alt="김재봉 대표원장" class="doctor">
					</div>
				</div>
				<div class="youtube_banner_list">
					<div class="inner">
						<ul>
						    <%
							  sql2 = "SELECT top 4 * FROM youtube1 where you_main = 'Y' and gubun = 'la' order by intSeq desc"
							  set rs2 = dbconn.execute(sql2)
							  if rs2.eof Then
							%>
							<li></li>
							<%

							  Else
								a=1
								Do Until rs2.EOF
							%>
							<li>
								<a href="<%=rs2("you_url")%>" target="_blank">
									<div class="imgArea">
										<%If Len(rs2("img1")) > 0 then%><img src="/upload/youtube1/<%=Split(rs2("img1"),":")(0)%>" alt=""><%End if%>
										<div class="bg">
											<i class="play"></i>
										</div>
									</div>
									<div class="txtArea">
										<p><%=rs2("you_title")%></p>
									</div>
								</a>
							</li>
							<%
								rs2.MoveNext
								a=a+1
								Loop

							  End If
							  rs2.close
							  set rs2 = nothing
							%>
						</ul>
					</div>
				</div>
			</div>
			<!-- 수술종류  -->
			<div class="surgery_kind">
				<div class="inner">
					<ul class="surgery_kind_ul">
						<li>
							<a href="sub.asp?lasik=B101">
								<img src="image/main/surgerybg1.jpg" alt="" class="b_img">
								<div class="txt_wrap">
									<p class="txt01" data-aos="fade-up"
     								data-aos-duration="1000" data-aos-delay="200">신세계스마일</p>
									<p class="txt02" data-aos="fade-up"
     								data-aos-duration="1000" data-aos-delay="300">베스트 스킬 닥터의 노하우</p>
								</div>
							</a>
						</li>
						<li>
							<ul class="surgery_kind_ul_inner">
								<li>
									<a href="sub.asp?lasik=C101">
										<img src="image/main/surgerybg2.jpg" alt="" >
										<div class="txt_wrap">
											<p class="txt01" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100">라식</p>
											<p class="txt02" data-aos="fade-up"	data-aos-duration="1000" data-aos-delay="200">오직 당신 눈을 위한<br>
											맞춤형 수술</p>
										</div>
									</a>
								</li>
								<li>
									<a href="sub.asp?lasik=D101">
										<img src="image/main/surgerybg3.jpg" alt="" >
										<div class="txt_wrap">
											<p class="txt01" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100">라섹</p>
											<p class="txt02" data-aos="fade-up"	data-aos-duration="1000" data-aos-delay="200">시력교정의 처음과 끝</p>
										</div>
									</a>
								</li>
								<li>
									<a href="sub.asp?lasik=E101">
										<img src="image/main/surgerybg4.jpg" alt="" >
										<div class="txt_wrap">
											<p class="txt01" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100">렌즈삽입술</p>
											<p class="txt02" data-aos="fade-up"	data-aos-duration="1000" data-aos-delay="200">각막을 보존하는 렌즈삽입술</p>
										</div>
									</a>
								</li>
								<li>
									<a href="sub.asp?lasik=F103">
										<img src="image/main/surgerybg5.jpg" alt="" >
										<div class="txt_wrap">
											<p class="txt01" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100">노안라식</p>
											<p class="txt02" data-aos="fade-up"	data-aos-duration="1000" data-aos-delay="200">아직은 젊은 당신을 위해</p>
										</div>
									</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
			<!-- 의료진 -->
			<div class="staff_wrap">
				<div class="inner">
					<h2 class="title">신세계안과 의료진</h2>
					<ul class="staff_wrap_ul">
						<li>
							<div class="staff_list">
							    <%
								  sql2 = "SELECT * FROM staff order by sunseo asc"
								  set rs2 = dbconn.execute(sql2)
								  if rs2.eof Then

								  Else
									a=1
									Do Until rs2.EOF
								%>
								<div>
									<a href="sub.asp?lasik=A106&staff=<%=rs2("intSeq")%>#info">
										<ul class="staff_box">
											<li>
												<div class="intro_l">
													<p class="txt01"><span><%=rs2("s_name")%></span></p>
													<p class="txt02"><%=rs2("s_jik")%></p>
												</div>
												<div class="intro_r">
												<%
												  Dim sql3, rs3, b
												  sql3 = "SELECT top 9 * FROM staff_history WHERE intSeq_staff = "&rs2("intSeq")&" order by intSeq asc"
												  set rs3 = dbconn.execute(sql3)
												  if rs3.eof Then

												  Else
													b=1
													Do Until rs3.EOF

													Response.write rs3("title") & "<br>"

													rs3.MoveNext
													b=b+1
													Loop

												  End If
												  rs3.close
												  set rs3 = Nothing
												%>
												</div>
												<div class="name"><span><%=rs2("s_name")%></span> <%=rs2("s_jik")%></div>
											</li>
											<li>
												<%If Len(rs2("img2")) > 0 then%><img src="/upload/staff/<%=Split(rs2("img2"),":")(0)%>" style="" alt=""/><%End if%>
											</li>
										</ul>
									</a>
								</div>
								<%
									rs2.MoveNext
									a=a+1
									Loop

								  End If
								  rs2.close
								  set rs2 = nothing
								%>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<div class="m_news_wrap">
				<div class="inner notice_icons">
					<ul>
						<li>
							<a href="https://ko-kr.facebook.com/bestlasik15669988/">
								<i></i>
								<p>페이스북</p>
							</a>
						</li>
						<li>
							<a href="sub.asp?lasik=G101">
								<i></i>
								<p>이벤트</p>
							</a>
						</li>
						<li>
							<a href="sub.asp?lasik=G105">
								<i></i>
								<p>보도자료</p>
							</a>
						</li>
						<li>
							<a href="sub.asp?lasik=G109">
								<i></i>
								<p>빛창공모전</p>
							</a>
						</li>
					</ul>
				</div>
				<div class="inner notice_events">
					<h2 class="title">공지사항</h2>
					<!--div class="thumbnail"></div-->
					<%
						  sql2 = "SELECT top 1 * FROM notice order by intSeq desc"
						  set rs2 = dbconn.execute(sql2)
						  if not rs2.eof Then
					%>
						<div class="thumbnail">
							<%If Len(rs2("thumbnail")) > 0 then %>
								<a href="sub.asp?lasik=G104&intSeq=<%=rs2("intSeq")%>"><img src="/upload/notice/<%=Split(rs2("thumbnail"),":")(0)%>" alt="" style="width:100%;; height:405px;"/></a>
							<%Else%>
								<a href="sub.asp?lasik=G104&intSeq=<%=rs2("intSeq")%>"><img src="/upload/logologo9.jpg" alt="" style="width:100%;; height:405px;"/></a>
							<%End if%>
						</div>
						<!--li>
						  <a href="sub.asp?lasik=G104&intSeq=<%=rs2("intSeq")%>"><%=rs2("n_title")%>...</a>
						  <span class="day"><%=Left(rs2("n_inputtime"),10)%></span>
						</li-->
						<%
						  End If
						  rs2.close
						  set rs2 = nothing
						%>
					<!--ul>
						<li><a href="#">공지사항이 출력됩니다.공지사항이 출력됩니다.</a></li>
						<li><a href="#">공지사항이 출력됩니다.공지사항이 출력됩니다.</a></li>
						<li><a href="#">공지사항이 출력됩니다.공지사항이 출력됩니다.</a></li>
						<li><a href="#">공지사항이 출력됩니다.공지사항이 출력됩니다.</a></li>
						<li><a href="#">공지사항이 출력됩니다.공지사항이 출력됩니다.</a></li>
					</ul-->
					<ul class="list">
					    <%
						  sql2 = "SELECT top 5 * FROM notice order by intSeq desc"
						  set rs2 = dbconn.execute(sql2)
						  if rs2.eof Then

						  Else
							a=1
							Do Until rs2.EOF
						%>
						<li>
						  <a href="sub.asp?lasik=G104&intSeq=<%=rs2("intSeq")%>"><%=rs2("n_title")%></a>
						  <span class="day"><%=Left(rs2("n_inputtime"),10)%></span>
						</li>
						<%
							rs2.MoveNext
							a=a+1
							Loop

						  End If
						  rs2.close
						  set rs2 = nothing
						%>
					  </ul>
					<!--<div class="facebook">
						<div class="title">신세계안과 페이스북
							<iframe src="//www.facebook.com/plugins/like.php?href=http%3A%2F%2Ffacebook.com%2Fbestlasik15669988&amp;width=61&amp;layout=button&amp;action=like&amp;show_faces=false&amp;share=false&amp;height=35&amp;appId=1431282703824037" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:61px; height:35px;" class="btn_like" allowtransparency="true"></iframe>
						</div>
						<div class="timeline">
						<iframe class="facebook_pc" src="//www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Fbestlasik15669988&amp;width=420&amp;height=470&amp;colorscheme=light&amp;show_faces=false&amp;header=false&amp;stream=true&amp;show_border=false&amp;appId=1431282703824037" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:100% !important; height:470px;" allowtransparency="true"></iframe>
						</div>
					</div>-->
				</div>
			</div>
			<!-- 신세계 소식 -->
			<div class="news_wrap">
			  <div class="inner">
				<h2 class="title">신세계 소식</h2>
				<ul class="news_box">
				  <li>
					<div class="news_list">
					  <p class="list_title">공지사항<a href="sub.asp?lasik=G103">more</a></p>
					  <ul class="list">
					    <%
						  sql2 = "SELECT top 5 * FROM notice order by intSeq desc"
						  set rs2 = dbconn.execute(sql2)
						  if rs2.eof Then

						  Else
							a=1
							Do Until rs2.EOF
						%>
						<li>
						  <a href="sub.asp?lasik=G104&intSeq=<%=rs2("intSeq")%>"><%=rs2("n_title")%>...</a>
						  <span class="day"><%=Left(rs2("n_inputtime"),10)%></span>
						</li>
						<%
							rs2.MoveNext
							a=a+1
							Loop

						  End If
						  rs2.close
						  set rs2 = nothing
						%>
					  </ul>
					</div>

					<div class="news_list">
					  <p class="list_title">이벤트<a href="sub.asp?lasik=G101">more</a></p>
					    <%
						  sql2 = "SELECT top 1 * FROM event order by intSeq desc"
						  set rs2 = dbconn.execute(sql2)
						  if rs2.eof Then

						  Else
							a=1
							Do Until rs2.EOF
						%>
					  <div class="img"><%If Len(rs2("img1")) > 0 then%><a href="sub.asp?lasik=G102&intSeq=<%=rs2("intSeq")%>"><img src="/upload/event/<%=Split(rs2("img1"),":")(0)%>" alt=""/></a><%End if%></div>
					  <div class="txt">
						<a href="sub.asp?lasik=G102&intSeq=<%=rs2("intSeq")%>"><%=Left(rs2("e_title"),18)%>...</a>
						<span class="day"><%=Left(rs2("e_inputtime"),10)%></span>
						<!-- <div class="con_txt">
							<p><%=Left(rs2("e_contents"),10)%></p>
					   </div> -->
					  </div>

						<%
							rs2.MoveNext
							a=a+1
							Loop

						  End If
						  rs2.close
						  set rs2 = nothing
						%>
					</div>

					<div class="news_list">
					  <p class="list_title">보도자료<a href="sub.asp?lasik=G105">more</a></p>
					  <ul class="list">
					    <%
						  sql2 = "SELECT top 5 * FROM press order by intSeq desc"
						  set rs2 = dbconn.execute(sql2)
						  if rs2.eof Then

						  Else
							a=1
							Do Until rs2.EOF
						%>
						<li>
						  <a href="sub.asp?lasik=G106&intSeq=<%=rs2("intSeq")%>"><%=Left(rs2("p_title"),18)%>...</a>
						  <span class="day"><%=Left(rs2("p_inputtime"),10)%></span>
						</li>
						<%
							rs2.MoveNext
							a=a+1
							Loop

						  End If
						  rs2.close
						  set rs2 = nothing
						%>
					  </ul>
					</div>

					<div class="facebook">
						<div class="title">신세계안과 페이스북
							<!--<iframe src="//www.facebook.com/plugins/like.php?href=http%3A%2F%2Ffacebook.com%2Fbestlasik1&amp;width=61&amp;layout=button&amp;action=like&amp;show_faces=false&amp;share=false&amp;height=35&amp;appId=1431282703824037" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:61px; height:35px;" class="btn_like" allowtransparency="true"></iframe> 1431282703824037--> <!--212701873659555-->
						</div>
                    <div class="timeline">
                        <iframe class="facebook_pc" src="//www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Fbestlasik15669988&amp;width=420&amp;height=470&amp;colorscheme=light&amp;show_faces=false&amp;header=false&amp;stream=true&amp;show_border=false&amp;appId=1431282703824037" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:100% !important; height:470px;" allowtransparency="true"></iframe>
                        <iframe class="facebook_m" src="//www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Fbestlasik15669988&amp;width=500&amp;height=470&amp;colorscheme=light&amp;show_faces=false&amp;header=false&amp;stream=true&amp;show_border=false&amp;appId=1431282703824037" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:100% !important; height:470px;" allowtransparency="true"></iframe>
                        </div>
					</div>
					<script>
						(function(d, s, id) {
					  var js, fjs = d.getElementsByTagName(s)[0];
					  if (d.getElementById(id)) return;
					  js = d.createElement(s); js.id = id;
					  js.src = 'https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v3.0';
					  fjs.parentNode.insertBefore(js, fjs);
					}(document, 'script', 'facebook-jssdk'));

					</script>

				  </li>
				  </ul>
				</div>
			</div>
			<!-- 검사 상담신청 -->
			<div class="main_advice">
				<div class="inner">
					<ul>
						<li>
							<h2>검사&상담신청</h2>
							<p>상담 및 검사를 신청해주시면<br>
							<span>최대한 빠른시간 내</span> 연락 드리겠습니다.</p>
						</li>
						<li>
							<div class="main_advice_form">
					 			<form name="frmRequestForm" method="post">
					 				<table>
					 					<tr>
					 						<th>이름</th>
					 						<td><input type="text" name="bestname" id="bestname" maxlength="5" /></td>
					 					</tr>
					 					<tr>
					 						<th>연락처</th>
					 						<td>
					 							<!--<input type="text" placeholder="전화번호 (- 제외)" name="besttel" id="besttel" maxlength="11" />-->
					 							<!-- <input type="text" class="callNum" name="besttel1" id="besttel1" maxlength="3" onkeydown="return onlyNumber(event);" onkeyup="removeChar(event);" /> -->
                                                 <input type="text" class="callNum" name="besttel1" id="besttel1" maxlength="3" onkeyup="f_is_num(this.form.besttel1);"/>
					 							<span class="textline"></span>
					 							<input type="text" class="callNum" name="besttel2" id="besttel2" maxlength="4" onkeyup="f_is_num(this.form.besttel2);" />
					 							<span class="textline"></span>
					 							<input type="text" class="callNum" name="besttel3" id="besttel3" maxlength="4" onkeyup="f_is_num(this.form.besttel3);" />
					 						</td>
					 					</tr>
					 					<tr>
					 						<th>진료항목</th>
					 						<td>
					 							<div class="radio_div">
							 						<input id="add01" type="radio" name="bestkind" value="스마일">
													<label for="add01"><span></span> 스마일</label>
													<input id="add02" type="radio" name="bestkind" value="라식/라섹">
													<label for="add02"><span></span> 라식/라섹</label>
													<input id="add03" type="radio" name="bestkind" value="노안·백내장">
													<label for="add03"><span></span> 노안·백내장</label>
													<input id="add04" type="radio" name="bestkind" value="기타">
													<label for="add04"><span></span> 기타</label>
								 				</div>
					 						</td>
					 					</tr>
					 					<tr>
					 						<th>상담내용</th>
					 						<td>
					 							<textarea name="best_contents" id="best_contents"></textarea>
					 						</td>
					 					</tr>
					 					<tr>
					 						<th>&nbsp;</th>
					 						<td>
					 							<div class="check_div">
									 				<input id="agree_radio" type="checkbox"  name="agree1" value="Y">
													<label for="agree_radio"><span></span> 개인정보취급방침에 동의합니다.</label>
												</div>
					 						</td>
					 					</tr>
					 				</table>
									<div class="applyDiv">
										<button type="button" class="apply_btn" id="BtnIdchk1" onclick="mobConv();">검사 신청하기</button>
						 				<button type="button" class="main_popup_btn">개인정보 수집방침 보기</button>
					 				</div>
					 			</form>
					 		</div>
						</li>
					</ul>
				</div>
			</div>
			<!-- 신세계안과 안내 -->
			<div class="main_notice">
				<div class="inner">
					<ul>
						<li class="txtArea">
							<p class="Txt1">신세계백화점 대각선 눈모양빌딩</p>
							<p class="Txt2">새로운 세계를 보다<br>
							신세계안과</p>
						</li>
						<li class="boxArea">
							<div class="map">
								<a href="/main01/sub.asp?lasik=A104">
									<span class="line"></span><span class="line"></span><span class="line"></span><span class="line"></span>
									<h2 class="main_notice_tit">오시는길</h2>
									<p>광주광역시 서구 죽봉대로 92<br>
									(광주광역시 서구 광천동 38번지)</p>
								</a>
							</div>
							<div class="time">
								<a href="sub.asp?lasik=A103">
									<span class="line"></span><span class="line"></span><span class="line"></span><span class="line"></span>
									<h2 class="main_notice_tit">진료 시간</h2>
									<p>월-목 : 09:00 - 18:00<br>
									금요일<em>(야간진료)</em> : 09:00 - 20:00<br>
									토요일<em>(점심시간 없음)</em> : 09:00 - 16:00<br>
									일요일 및 공휴일 : <span>휴진</span><br>
									점심시간 : 12:30 ~14:00</p>
								</a>
							</div>
							<div class="call">
								<span class="line"></span><span class="line"></span><span class="line"></span><span class="line"></span>
								<a href="tel:1566-9988"><h2 class="main_notice_tit">고객센터<span>(예약/상담)</span></h2></a>
								<a href="tel:1566-9988"><p class="call_num">1566-9988</p></a>
								<ul>
									<li>
										<i></i>
										<a href="sub.asp?lasik=I106" class="bg">
											진료예약
										</a>
									</li>
									<li>
										<i></i>
										<a href="sub.asp?lasik=I102" class="bg">
											진료상담
										</a>
									</li>
									<li>
										<i></i>
										<a title="모바일위치전송" class="bg" onclick="window.open('http://www.one-shot.co.kr/simplem/simplem.asp?simplem_client=MTQwNDE=', '', 'width=400,height=636, scrollbars=no,toolbar=no,status=no')" href="#none">
											위치전송
										</a>
									</li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<!-- footer -->
			<div id="A_Footer">
				<div class="sns_menu">
					<ul>
						<li><a href="https://www.youtube.com/channel/UCbpEbNLa17AP6sK9zKynq6w" target="_blank"></a></li>
						<li><a href="https://www.instagram.com/bestlasik/" target="_blank"></a></li>
						<li><a href="https://ko-kr.facebook.com/bestlasik15669988/" target="_blank"></a></li>
						<li><a href="http://pf.kakao.com/_iBxjHl/chat" target="_blank"><span class="p_icon"></span></a></li>
						<li><a href="https://blog.naver.com/new_eyes" target="_blank"></a></li>
						<li><a href="https://cafe.naver.com/shinsegaelasik" target="_blank"></a></li>
					</ul>
				</div>
				<!-- #include file="_inc/footer.asp" -->
			</div><!-- #A_Footer 끝 -->

        </div><!-- #A_Container END -->
        <!-- // Container 끝 -->
    </div><!-- #A_Container_Wrap -->


</div><!-- #A_Wrap 끝 -->
</body>
</html>
<%
Call Dbclose()
%>

<script type="text/javascript">
var ajaxObjects = new Array();
$(document).ready(function(){
	$("#BtnIdchk1").click(function(e){
	  if ($('#bestname').val() == ""){
		  alert("성명을 입력하세요.");
		  $('#bestname').focus();
		  return false;
	  }
	  if ( $('#bestname').val().replace(/ /gi, "").length <= 1 ) { alert("이름을 2자 이상 입력해주세요"); $('#bestname').focus(); return false; }
	  if ($('#besttel1').val() == ""){
		  alert("전화번호를 입력하세요.");
		  $('#besttel1').focus();
		  return false;
	  }

	  if ($('#besttel2').val() == ""){
		  alert("전화번호를 입력하세요.");
		  $('#besttel2').focus();
		  return false;
	  }

	  if ($('#besttel3').val() == ""){
		  alert("전화번호를 입력하세요.");
		  $('#besttel3').focus();
		  return false;
	  }

      var len = document.frmRequestForm.bestkind.length;
	  var poll = "";

	  for(i = 0; i < len; i++) {
		if(document.frmRequestForm.bestkind[i].checked) {
		  poll=document.frmRequestForm.bestkind[i].value;
		}
	  }
	  if (poll==""){
		alert("진료항목에 체크하세요.");
		return;
	  }

	  if($('input:checkbox[name="agree1"]:checked').length<1){
	      alert("개인정보수집동의에 체크하세요."); return false;
	  }

	  var bestname = $.trim($("#bestname").val())
	  var besttel1 = $.trim($("#besttel1").val())
	  var besttel2 = $.trim($("#besttel2").val())
	  var besttel3 = $.trim($("#besttel3").val())

	  if($('input:radio[id="add01"]:checked').length>=1){
	  var bestkind= $.trim($("#add01").val())
	  }
	  if($('input:radio[id="add02"]:checked').length>=1){
	  var bestkind= $.trim($("#add02").val())
	  }
	  if($('input:radio[id="add03"]:checked').length>=1){
	  var bestkind= $.trim($("#add03").val())
	  }
	  if($('input:radio[id="add04"]:checked').length>=1){
	  var bestkind= $.trim($("#add04").val())
	  }

	  var best_contents = $.trim($("#best_contents").val())

	  var ajaxIndex = ajaxObjects.length;
	  ajaxObjects[ajaxIndex] = new sack();
	  ajaxObjects[ajaxIndex].method = "POST";

      ajaxObjects[ajaxIndex].setVar("bestname", bestname);
	  ajaxObjects[ajaxIndex].setVar("besttel1", besttel1);
	  ajaxObjects[ajaxIndex].setVar("besttel2", besttel2);
	  ajaxObjects[ajaxIndex].setVar("besttel3", besttel3);
	  ajaxObjects[ajaxIndex].setVar("bestkind", bestkind);
	  ajaxObjects[ajaxIndex].setVar("best_contents", best_contents);

	  ajaxObjects[ajaxIndex].requestFile = "/bxm/bxm_sinchung_ok.asp";
	  ajaxObjects[ajaxIndex].onCompletion = function() { frmRequestForm1(ajaxIndex); } ;
	  ajaxObjects[ajaxIndex].runAJAX();

	});
})

function frmRequestForm1(index){

    var result=ajaxObjects[index].response
    if (result=="str_ok"){
      alert('신청되었습니다.');
    }else{
	  alert('입력오류입니다.');
    }

    document.frmRequestForm.bestname.value = '';
	document.frmRequestForm.besttel1.value = '';
	document.frmRequestForm.besttel2.value = '';
	document.frmRequestForm.besttel3.value = '';
	for(i = 0; i < 4; i++) {
    document.frmRequestForm.bestkind[i].checked = false;
    }
	document.frmRequestForm.agree1.checked = false;

	document.frmRequestForm.best_contents.value = '';

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
<script>
  AOS.init({
  	once: true
  });
</script>
<%
Function getTextString(str)
         Dim nLen
         Dim st
         Dim ed
         Dim ds
         Dim sf
         nLen        = Len(str)
         sf = str
         for i = 1 to nLen
                 st = InStr(i,str,"<")
                 ed = Instr(st+1,str,">")
                 if st > 0 and ed > 0 then
                         ds = mid(str,st,(ed+1)-st)
                         sf = Replace(sf,ds,"")
                         i = ed
                 end if
         next
         getTextString = sf
    End Function

Function strip_tags( strHTML )
	'If NOT isset(strHTML) Then Exit Function

	Dim objRegExp, strOutput
	Set objRegExp = New Regexp
	With objRegExp
		.IgnoreCase = True
		.Global = True
		.Pattern = "<(.|\n)+?>"
		strOutput = .Replace(strHTML, "")  'Replace all HTML tag matches with the empty string
	End With
	'Replace all < and > with &lt; and &gt;
	'strOutput = Replace(strOutput, "<", "&lt;")
	'strOutput = Replace(strOutput, ">", "&gt;")
	strip_tags = strOutput  'Return the value of strOutput

	Set objRegExp = Nothing
End Function
%>
