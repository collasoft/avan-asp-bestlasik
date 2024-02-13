<!--#include virtual = "/AVANplus/BuilderStart.asp" -->
<!------------------------------------------------------
	위 코드는 빌더가 시작되는 함수 호출부분입니다.
	페이지 맨상단에 들어가야 합니다.
	(그래서 주석도 하단에 작성함!)
-------------------------------------------------------->
<!------------------------------------------------------
	홈페이지에서 별도로 사용하는 함수 모음입니다.
-------------------------------------------------------->
<!--#include virtual = "/Avanplus/_FormFunc.asp"-->
<!--#include virtual = "/Avanplus/_Function.asp"-->
<%
Dim nowprotocol
nowprotocol = Request.ServerVariables("HTTPS")
if nowprotocol = "off" Or InStr(Request.ServerVariables("SERVER_NAME"),"www") = 0 then
%>
<script language="javascript">
	parent.location.href="https://www.best-lasik.co.kr";
</script>
<% end if%>
<!DOCTYPE html>
<html>
<head>
	<meta name="keywords" content="광주대표안과, 광천동 신세계백화점 대각선 눈모양빌딩, 스마일라식, 광주라식, 광주라섹, 광주ICL,광주노안수술, 광주백내장수술">
	<meta name="description" content="광주대표안과, 광천동 신세계백화점 대각선 눈모양빌딩, 스마일라식, 광주라식, 광주라섹, 광주ICL,광주노안수술, 광주백내장수술">
	<link rel="canonical" href="https://www.best-lasik.co.kr">
	<!-- #include virtual="/main01/_inc/head.asp" -->
	<!-- s: 현재페이지에만 적용할 특정 스크립트 추가영역 -->
	<link rel="stylesheet" href="/main01/_css/main.css" />
	<!-- e: 현재페이지에만 적용할 특정 스크립트 추가영역 -->

	<link rel="stylesheet" href="/main01/_css/aos.css" />
    <script src="/main01/js/aos.js"></script>
    <link rel="shortcut icon" href="favicon.ico">

<script src="//wcs.naver.net/wcslog.js"></script>
<script>
	if(!wcs_add) var wcs_add = {};
	wcs_add["wa"] = "becf90d991187";
	wcs_do();
</script>







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
				    setCookie( "popup_1", "done" , 1);
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

  if ( notice_getCookie('popup_1') != 'done' ){
   
    document.getElementById("popuplayer-1").style.display="inline";
  
  }
  
}
</script>
</head>

<form name="screenwidth" method="post" action="/index_poptest.asp">
  <input type="hidden" name="screenw" />
</form>

<%'If request.form("screenw") = "" And session("screenw") = "" then%>
<!--<body onload="screengo()">-->
<%'else%>
<body onload="popuplayer1()">
<%'End if%>

<%
  Call DbOpen()
  Dim sqlw, rsw, screen_left, screen_top, w_top, w_left, sin_state, img1, img2, img3, img4, img5, sin_url1, sin_url2, sin_url3, sin_url4, sin_url5
  sqlw = "SELECT * FROM popup where intSeq = 1"
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

  Call Dbclose()

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
				<div><%If Len(sin_url5) > 0 then%><a href="<%=sin_url5%>"><img src="/upload/popup/<%=Split(img5,":")(0)%>" /></a><%else%><img src="/upload/popup/<%=Split(img5,":")(0)%>" /><%End if%></div>
				<%End if%>
			</div>			
		</div>
	</div>
<%End if%>



	<div class="intro_main intro_main_on pc_ver">
		<ul>
            <li class="auction" onclick="location.href='/main01/';"  style="cursor:pointer;">
				<div class="logo">
					<img src="/main01/image/main/logo_icon01.png" alt="신세계안과로고">
				</div>
                <div class="bg_logo">
                    <div class="area">
                        <strong>Smile &amp; Lasik</strong>
                        <p>스마일 &amp; 라식</p>
                        <a href="/main01/" class="btn_go_site" style="width:170px;"><span> 바로가기 > </span></a>
                    </div>
                    <p class="copyright">copyright 2018. 신세계안과. all right reserved.</p>
                </div>
                <span class="bg"></span>
            </li>
            <li class="bell" onclick="location.href='/main02/';"  style="cursor:pointer;">
				<div class="logo">
					<img src="/main01/image/main/logo_icon01.png" alt="신세계안과로고">
				</div>
                <div class="bg_logo">
                    <div class="area">
                        <strong>Presbyopia &amp; Cataract</strong>
                        <p>노안 &amp; 백내장</p>
                        <a href="/main02/" class="btn_go_site" style="width:170px;"><span> 바로가기 > </span></a>
                    </div>
                    <p class="copyright">copyright 2018. 신세계안과. all right reserved.</p>
                </div>
                <span class="bg"></span>
            </li>
        </ul>
	</div>
	<script>
		if($('.intro_main').hasClass('intro_main_on')){
			$('.logo').removeClass('blue');
			$('.auction').addClass('hover').css({'width':'65%'}).siblings().css({'width':'35%'})
		}else{
			$('.logo').addClass('blue');
			$('.bell').addClass('hover').css({'width':'65%'}).siblings().css({'width':'35%'})
		}

		$('.intro_main li').each(function(){
			$(this).mouseenter(function(){
				$(this).addClass('hover').stop().animate({'width':'65%'},400).siblings().removeClass('hover').stop().animate({'width':'35%'},400)
				if($(this).hasClass('bell')){
					$('.logo').addClass('blue');
				}else{
					$('.logo').removeClass('blue');
				}
			});
			$(this).mouseleave(function(){
				if($('.intro_main').hasClass('intro_main_on')){
					$('.logo').removeClass('blue');
					$('.auction').addClass('hover').stop().animate({'width':'65%'},400).siblings().removeClass('hover').stop().animate({'width':'35%'},400)
				}else{
					$('.logo').addClass('blue');
					$('.bell').addClass('hover').stop().animate({'width':'65%'},400).siblings().removeClass('hover').stop().animate({'width':'35%'},400)
				}
			});
		});
	</script>
	<div class="m_ver">
		<div class="m_logo">
			<img src="/main01/image/common/logo_01.png" alt="신세계안과">
		</div>
		<ul>
            <li class="m_auction" onclick="location.href='/main01/';"  style="cursor:pointer;">
                <div class="bg_logo">
                    <div class="area">
                        <p>스마일 &amp; 라식</p>
                        <a href="/main01/" class="btn_go_site"><span>바로가기 > </span></a>
                    </div>
                </div>
                <span class="bg"></span>
            </li>
            <li class="m_bell" onclick="location.href='/main02/';"  style="cursor:pointer;">
                <div class="bg_logo">
                    <div class="area">
                        <p>노안 &amp; 백내장</p>
                        <a href="/main02/" class="btn_go_site"><span>바로가기 > </span></a>
                    </div>
                </div>
                <span class="bg"></span>
            </li>
        </ul>
		<div class="m_bg">
			<img src="/main01/image/main/m_bg.png" alt="신세계안과 외관 이미지" />
		</div>
	</div>
</body>
</html>
