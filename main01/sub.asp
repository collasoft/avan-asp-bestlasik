
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta name="author" content="" />
<meta name="copyright" content="(c) . All Rights Reserved." />
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="viewport" content="width=640, user-scalable=no, target-densitydpi=device-dpi">
<meta name="format-detection" content="telephone=no, address=no, email=no" />
<title>신세계안과</title>
<meta name="keywords" content="광주대표안과, 광천동 신세계백화점 대각선 눈모양빌딩, 스마일라식, 광주라식, 광주라섹, 광주ICL,광주노안수술, 광주백내장수술">
<meta name="description" content="광주대표안과, 광천동 신세계백화점 대각선 눈모양빌딩, 스마일라식, 광주라식, 광주라섹, 광주ICL,광주노안수술, 광주백내장수술">
<link rel="canonical" href="https://www.best-lasik.co.kr">
<link rel="stylesheet" href="/main01/_css/layout.css" />
<link href="/main01/_css/slick.css" rel="stylesheet" type="text/css">
<link href="/main01/_css/slick-theme.css" rel="stylesheet" type="text/css">
<link href="/main01/_css/aos.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="image/common/favicon.ico">
<!-- 상단메뉴 GNB -->
<script src="/main01/js/jquery-1.11.3.min.js"></script>
<script src="/main01/js/slick.js"></script>
<script src="/main01/js/ajax.js"></script>
<script src="/main01/js/jquery-animate-css-rotate-scale.js"></script>
<script src="/main01/js/aos.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('.gnb>li').mouseenter(function(){
		$(this).children('.line').stop().animate({'width':'100%'},300)
		$(this).siblings().children('.line').stop().animate({'width':'0%'},300)
	})
	$('.gnb>li').mouseleave(function(){
		$(this).children('.line').stop().animate({'width':'0%'},300)
	})
})
</script><!-- //상단메뉴 GNB -->

 
<script type="text/javascript"> 
$(document).ready(function(){
	var param = getParams();

	menu_bt = 0;
	$('.menubar').click(function(){
		if( menu_bt == 0 )
		{
		$('.menubar li:eq(0)').animate({'rotate':'45deg','top':'10px'},300)
		$('.menubar li:eq(1)').fadeOut();
		$('.menubar li:eq(2)').animate({'rotate':'-45deg','top':'10px'},300)
		$('.full_wrap').fadeIn(600); 
		menu_bt = 1; 
		}
		else if( menu_bt == 1 ){
		$('.menubar li:eq(0)').animate({'rotate':'0','top':'0'},300)
		$('.menubar li:eq(1)').fadeIn();
		$('.menubar li:eq(2)').animate({'rotate':'0','top':'26px'},300)
		$('.full_wrap').fadeOut(600); 
		menu_bt = 0;
		}


	})
	$('.lnb1>li>p').click(function(){
			$(this).siblings('.ss_menu').slideToggle();
			$(this).parent().siblings().children('.ss_menu').slideUp();		
		})

		$('.gnb>li').mouseenter(function(){
				$('.gnb>li:after').css({'width':'100%'})
			})	


		$('.sub_menu_txt').click(function(){
			$(this).siblings('.sub_menu_box').stop().slideToggle(300); 
			$(this).parent().siblings().children('.sub_menu_box').stop().slideUp(300)
		})	
		$('.sub_menu_bar').mouseleave(function(){
			$('.sub_menu_box').stop().slideUp(300); 
		});

	if (param["lasik"] != undefined){
		if (param["lasik"].substr(0,1) != "K" && param["lasik"].substr(0,1) != "J") {
		$( window ).scroll( function() {
			if ( $( this ).scrollTop() > 10 ) {
				$( '.sub_quick_top' ).fadeIn();
			} else {
				$( '.sub_quick_top' ).fadeOut();
			}
		} );
		}
	}
//	$( '.sub_top' ).click( function() {
//		$( 'html, body' ).animate( { scrollTop : 0 }, 400 );
//		return false;
//	} );
	
	//kakao plus popup
/*	$('.foot_comInfo .sns_list li:nth-child(1), .sns_menu ul li:nth-child(2), .time .btn_wrap .btn02').click(function(){
		$('.kakao_popup').fadeIn(); 
	});			
	$('.kakao_popup .close').click(function(){
		$('.kakao_popup').fadeOut(); 
	});	
*/
	
});
	
function getParams() {
    var param = new Array();
 
    // 현재 페이지의 url
    var url = decodeURIComponent(location.href);
    url = decodeURIComponent(url);
 
    var params;
    params = url.substring( url.indexOf('?')+1, url.length );
    params = params.split("&");
 
    var size = params.length;
    var key, value;
    for(var i=0 ; i < size ; i++) {
        key = params[i].split("=")[0];
        value = params[i].split("=")[1];
 
        param[key] = value;
    }
 
    return param;
}

</script>
<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
if(!wcs_add) var wcs_add = {};
wcs_add["wa"] = "becf90d991187";
wcs_do();
</script>


<!-- Enliple Tracker Start -->
<script type="text/javascript">
		(function(a,g,e,n,t){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};n=g.createElement(e);n.async=!0;n.defer=!0;n.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js";t=g.getElementsByTagName(e)[0];t.parentNode.insertBefore(n,t)})(window,document,"script");
    enp('create', 'common', 'shinsegaels', { device: 'B' });    
    enp('send', 'common', 'shinsegaels');
</script>
<!-- Enliple Tracker End -->


<!-- Enliple Tracker Start -->
<script type="text/javascript">
function mobConv() {
	(function(a,g,e,n,t){a.enp=a.enp||function(){(a.enp.q=a.enp.q||[]).push(arguments)};n=g.createElement(e);n.defer=!0;n.src="https://cdn.megadata.co.kr/dist/prod/enp_tracker_self_hosted.min.js";t=g.getElementsByTagName(e)[0];t.parentNode.insertBefore(n,t)})(window,document,"script");
    enp('create', 'conversion', 'shinsegaels', { device: 'B', convType: 'etc', productName: 'etc'});
	enp('send', 'conversion', 'shinsegaels', { device: 'B', convType: 'etc', productName: 'etc'});
}
</script>
<!-- Enliple Tracker End -->


<script type="text/javascript" charset="UTF-8" src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
      kakaoPixel('1852035277102991147').pageView(' PageView');
</script>

<!-- kakao tracker 리타게팅 태그-->

<!-- Smartlog -->
<script language="javascript" type="text/javascript">
    var hpt_info={'_account':'UHPT-12144'};
    var smtg_sc = document.createElement('script');
    smtg_sc.type = 'text/javascript'; smtg_sc.async = true; smtg_sc.charset='utf-8';
    smtg_sc.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'a19.smlog.co.kr/smart.js';
    var smtg_script = document.getElementsByTagName('script')[0]; smtg_script.parentNode.insertBefore(smtg_sc, smtg_script);
</script>
<noscript><img src="//a19.smlog.co.kr/smart_bda.php?_account=12144" style="display:none;width:0;height:0;" border="0"/></noscript>

<!-- s: 현재페이지에만 적용할 특정 스크립트 추가영역 -->
<link rel="stylesheet" href="_css/sub.css?ver20200122" />
<!-- e: 현재페이지에만 적용할 특정 스크립트 추가영역 -->
</head>
<body>
<div id="A_Wrap">
  <div id="A_Header">
	
<div class="kakao_popup">
	<div class="popup_wrap">
		<span class="close"><img src="image/common/btn_close.png" alt="닫기"></span>
		<div class="img_box">
			<img class="pc_img" src="image/common/kakao_popup.jpg"/>
			<img class="m_img" src="image/common/kakao_popup_m.jpg"/>
		</div>
	</div>
</div>
<div class="login_wrap">
  <div class="inner">
	<ul class="login">
	  
	  <li><a href="sub.asp?lasik=K101">로그인</a></li>
	  <li><a href="sub.asp?lasik=J101">회원가입</a></li>
	  
	  <li><a href="/main02">노안·백내장센터 바로가기</a></li>
	</ul>
  </div>
</div>
<div class="logo_gnb">
  <ul class="menubar">
    <li></li>
    <li></li>
    <li></li>
  </ul>
  <div class="call_btn">
    <div class="loginBtn_m">

      <button type="button" onclick="location.href='sub.asp?lasik=K101';"></button>

    </div>
  	<div class="call_btn_top">
		<img src="image/common/call_btn_wh.png" alt=""/>
		<span class="call_txt">상담</span>
  	</div>
  	<div class="call_dropDown">
  		<span class="dropDown_close">닫기</span>
		<ul>
			<li><a href="tel:1566-9988" onclick="mobConv()">전화문의</a></li>
			<li><a href="https://pf.kakao.com/_iBxjHl/chat" target="_blank" onclick="mobConv()">카카오톡 상담</a></li>
			<li><a href="/main01/sub.asp?lasik=I106">진료예약</a></li>
		</ul>
  	</div>
  </div>
  <div class="logo">
    <a href="/main01/"><img src="image/common/logo_01.png" ></a>
  </div>
  <ul class="gnb">
    <li class="dp1"><a href="sub.asp?lasik=A101" title="병원소개">병원소개</a><span class="line"></span>
	  <div class="dp2">
	    <ul>
		  <li><a href="sub.asp?lasik=A101">비전</a></li>
 		  <li><a href="sub.asp?lasik=A102">의료진소개</a></li>
		  <li><a href="sub.asp?lasik=A103">둘러보기</a></li>
		  <li><a href="sub.asp?lasik=A104">오시는길</a></li>
	    </ul>
	  </div>
    </li>	
    <li class="dp1"><a href="sub.asp?lasik=B102" title="신세계스마일">신세계스마일</a><span class="line"></span>
	  <div class="dp2">
	    <ul>
      <li><a href="sub.asp?lasik=B102">왜 신세계안과일까?</a></li>
		  <li><a href="sub.asp?lasik=B101">신세계스마일이란</a></li>		  
	    </ul>
	  </div>
    </li>
    <li class="dp1"><a href="sub.asp?lasik=C101" title="라식">라식</a><span class="line"></span>
	  <div class="dp2">
	    <ul>
		  <li><a href="sub.asp?lasik=C101">신세계라식이란</a></li>
		  <li><a href="sub.asp?lasik=C102">신세계라식의 종류</a></li>
	    </ul>
	  </div>	
    </li>
    <li class="dp1"><a href="sub.asp?lasik=D101" title="라섹">라섹</a><span class="line"></span>
	  <div class="dp2">
	    <ul>
		  <li><a href="sub.asp?lasik=D101">신세계라섹이란</a></li>
		  <li><a href="sub.asp?lasik=D102">신세계라섹의 종류</a></li>
	    </ul>
	  </div>
    </li>
    <li class="dp1"><a href="sub.asp?lasik=E101" title="렌즈삽입술">렌즈삽입술</a><span class="line"></span>
	  <div class="dp2">
	    <ul>
		  <li><a href="sub.asp?lasik=E101">신세계렌즈삽입술이란</a></li>
		  <li><a href="sub.asp?lasik=E102">렌즈의 종류</a></li>
	    </ul>
	  </div>
    </li>
    <li class="dp1"><a href="sub.asp?lasik=F101" title="노안라식">노안라식</a><span class="line"></span>
	  <div class="dp2">
	    <ul>
		  <li><a href="sub.asp?lasik=F101">노안이란</a></li>
		  <!--<li><a href="sub.asp?lasik=F102">신세계안과를 선택하는 이유</a></li>-->
		  <li><a href="sub.asp?lasik=F103">노안라식·스마일</a></li>
          <li><a href="sub.asp?lasik=F113">알티플러스</a></li>
	    </ul>
	  </div>
    </li>
    <li class="dp1"><a href="sub.asp?lasik=G101" title="정보센터">정보센터</a><span class="line"></span>
	  <div class="dp2">
	    <ul>
		  <li><a href="sub.asp?lasik=G101">이벤트소식</a></li>
		  <li><a href="sub.asp?lasik=G109">빛창공모전</a></li>
		  <li><a href="sub.asp?lasik=G103">공지사항</a></li>
		  <li><a href="sub.asp?lasik=G105">보도자료</a></li>
		  <li><a href="sub.asp?lasik=G107">협력업체</a></li>
		  <li><a href="sub.asp?lasik=G108">비급여진료비용</a></li>
	    </ul>
      </div>
    </li>
    <li class="dp1"><a href="sub.asp?lasik=H101&gubun=a" title="수술후기">수술후기</a><span class="line"></span>
	  <div class="dp2">
	    <ul>
		  <li><a href="sub.asp?lasik=H101&gubun=a">고객수술후기</a></li>
		  <li><a href="sub.asp?lasik=H104&gubun=b">의료진/직원 수술후기</a></li>
	    </ul>
	  </div>
    </li>
    <li class="dp1"><a href="sub.asp?lasik=I101" title="상담및예약">상담및예약</a><span class="line"></span>
	  <div class="dp2">
	    <ul>
		  <li><a href="sub.asp?lasik=I101">자주하는 질문</a></li>
		  <li><a href="sub.asp?lasik=I102">진료상담</a></li>
		  <li><a href="sub.asp?lasik=I106">검사/진료예약</a></li>
	    </ul>
	  </div>
    </li>

    <li class="loginBtn"><a href="sub.asp?lasik=K101"><i></i></a></li>

    <li class="allMenu"><i></i></li>
  </ul>
</div>
<div class="full_menu">
  <div class="inner">
     <ul class="full_menu_ul">
      <li class="full_dp1">
        <ul>
          <li class="tit"><a href="sub.asp?lasik=A101" title="병원소개">병원소개</a></li>
          <li><a href="sub.asp?lasik=A101">비전</a></li>
          <li><a href="sub.asp?lasik=A102">의료진소개</a></li>
          <li><a href="sub.asp?lasik=A103">둘러보기</a></li>
          <li><a href="sub.asp?lasik=A104">오시는길</a></li>
        </ul>
      </li>
      <li class="full_dp1">
        <ul>
          <li class="tit"><a href="sub.asp?lasik=B101" title="신세계스마일">신세계스마일</a></li>
          <li><a href="sub.asp?lasik=B102">왜 신세계안과일까?</a></li>
          <li><a href="sub.asp?lasik=B101">신세계스마일이란</a></li>          
        </ul>
      </li>
      <li class="full_dp1">
        <ul>
          <li class="tit"><a href="sub.asp?lasik=C101" title="라식">라식</a></li>
          <li><a href="sub.asp?lasik=C101">신세계라식이란</a></li>
          <li><a href="sub.asp?lasik=C102">신세계라식의 종류</a></li>
        </ul>
      </li>
      <li class="full_dp1">
        <ul>
          <li class="tit"><a href="sub.asp?lasik=D101" title="라섹">라섹</a></li>
          <li><a href="sub.asp?lasik=D101">신세계라섹이란</a></li>
          <li><a href="sub.asp?lasik=D102">신세계라섹의 종류</a></li>
        </ul>
      </li>
      <li class="full_dp1">
        <ul>
          <li class="tit"><a href="sub.asp?lasik=E101" title="렌즈삽입술">렌즈삽입술</a></li>
          <li><a href="sub.asp?lasik=E101">신세계렌즈삽입술이란</a></li>
          <li><a href="sub.asp?lasik=E102">렌즈의 종류</a></li>
        </ul>
      </li>
      <li class="full_dp1">
        <ul>
          <li class="tit"><a href="sub.asp?lasik=F101" title="노안라식">노안라식</a></li>
          <li><a href="sub.asp?lasik=F101">노안이란</a></li>
          <!--<li><a href="sub.asp?lasik=F102">신세계안과를<br>선택하는 이유</a></li>-->
          <li><a href="sub.asp?lasik=F103">노안라식·스마일</a></li>
          <li><a href="sub.asp?lasik=F113">알티플러스</a></li>
        </ul>
      </li>
      <li class="full_dp1">
        <ul>
          <li class="tit"><a href="sub.asp?lasik=G101" title="정보센터">정보센터</a></li>
          <li><a href="sub.asp?lasik=G101">이벤트소식</a></li>
		  <li><a href="sub.asp?lasik=G109">빛창공모전</a></li>
          <li><a href="sub.asp?lasik=G103">공지사항</a></li>
          <li><a href="sub.asp?lasik=G105">보도자료</a></li>
          <li><a href="sub.asp?lasik=G107">협력업체</a></li>
          <li><a href="sub.asp?lasik=G108">비급여진료비용</a></li>
        </ul>
      </li>
      <li class="full_dp1">
        <ul>
          <li class="tit"><a href="sub.asp?lasik=H101&gubun=a" title="수술후기">수술후기</a></li>
          <li><a href="sub.asp?lasik=H101&gubun=a">고객수술후기</a></li>
          <li><a href="sub.asp?lasik=H104&gubun=b">의료진/직원 수술후기</a></li>
        </ul>
      </li>
      <li class="full_dp1">
        <ul>
          <li class="tit"><a href="sub.asp?lasik=I101" title="상담및예약">상담및예약</a></li>
          <li><a href="sub.asp?lasik=I101">자주하는 질문</a></li>
          <li><a href="sub.asp?lasik=I102">진료상담</a></li>
          <li><a href="sub.asp?lasik=I106">검사/진료예약</a></li>
        </ul>
      </li>
    </ul>
  </div>
</div>
<div class="dp2_wrap"></div>
<div class="full_wrap">
  <div class="full_gnb">
    <div class="logo_box"><h1 class="logo"><a href="/main01/"><img src="image/common/logo_01.png"></a></h1></div>
    <ul class="login_btn">
	  
	  <li><a href="sub.asp?lasik=K101">로그인</a></li>
	  <li><a href="sub.asp?lasik=J101">회원가입</a></li>
	  
      <li><a href="/main02">노안·백내장센터</a></li>
    </ul>
    <ul class="lnb1">
	  <li><p>병원소개</p>
	    <ul class="ss_menu">
		  <li><a href="sub.asp?lasik=A101">비전</a></li>
		  <li><a href="sub.asp?lasik=A102">의료진소개</a></li>
		  <li><a href="sub.asp?lasik=A103">둘러보기</a></li>
		  <li><a href="sub.asp?lasik=A104">오시는길</a></li>
		</ul>
	  </li>
	  <li><p>신세계스마일</p>
	    <ul class="ss_menu">
      <li><a href="sub.asp?lasik=B102">왜 신세계안과일까?</a></li>
		  <li><a href="sub.asp?lasik=B101">신세계스마일이란</a></li>		  
		</ul>
	  </li>
	  <li><p>라식</p>
	    <ul class="ss_menu">
		  <li><a href="sub.asp?lasik=C101">신세계라식이란</a></li>
		  <li><a href="sub.asp?lasik=C102">신세계라식의 종류</a></li>
		</ul>
	  </li>
	  <li><p>라섹</p>
		<ul class="ss_menu">
		  <li><a href="sub.asp?lasik=D101">신세계라섹이란</a></li>
		  <li><a href="sub.asp?lasik=D102">신세계라섹의 종류</a></li>
		</ul>
	  </li>
	  <li><p>렌즈삽입술</p>
	    <ul class="ss_menu">
		  <li><a href="sub.asp?lasik=E101">신세계렌즈삽입술이란</a></li>
		  <li><a href="sub.asp?lasik=E102">렌즈의 종류</a></li>
		</ul>
	  </li>
	  <li><p>노안라식</p>
	    <ul class="ss_menu">
		  <li><a href="sub.asp?lasik=F101">노안이란</a></li>
		  <li><a href="sub.asp?lasik=F103">노안라식·스마일</a></li>
		  <li><a href="sub.asp?lasik=F113">알티플러스</a></li>
		</ul>
	  </li>
	  <li><p>상담및예약</p>
      <ul class="ss_menu">      
      <li><a href="sub.asp?lasik=I102">진료상담</a></li>
      <li><a href="sub.asp?lasik=I106">검사/진료예약</a></li>
      <li><a href="sub.asp?lasik=I101">자주하는 질문</a></li>
    </ul>
    </li>
	  <li><p>수술후기</p>
	    <ul class="ss_menu">
		  <li><a href="sub.asp?lasik=H101&gubun=a">고객수술후기</a></li>
		  <li><a href="sub.asp?lasik=H104&gubun=b">의료진/직원 수술후기</a></li>
		</ul>
	  </li>	  
    <li><p>정보센터</p>
      <ul class="ss_menu">
      <li><a href="sub.asp?lasik=G101">이벤트소식</a></li>
	  <li><a href="sub.asp?lasik=G109">빛창공모전</a></li>
      <li><a href="sub.asp?lasik=G103">공지사항</a></li>
      <li><a href="sub.asp?lasik=G105">보도자료</a></li>
      <li><a href="sub.asp?lasik=G107">협력업체</a></li>
      <li><a href="sub.asp?lasik=G108">비급여진료비용</a></li>
    </ul>
    </li>
    </ul>
  </div>
</div>

<script type="text/javascript">
$(document).ready(function(){
	$('.gnb>li').mouseenter(function(){
		$(this).children('.line').stop().animate({'width':'100%'},300)
		$(this).siblings().children('.line').stop().animate({'width':'0%'},300)
	})
	$('.gnb>li').mouseleave(function(){
		$(this).children('.line').stop().animate({'width':'0%'},300)
	})
	
	$('.dp1').mouseenter(function(){
		$('.dp2_wrap').stop().slideDown(200);
		$(this).children('.dp2').stop().show();
		$(this).siblings().children('.dp2').hide(); 
	})
	$('#A_Header').mouseleave(function(){
		$('.dp2_wrap').stop().slideUp(200);
		$('.dp2').stop().slideUp(200);
    $('.full_menu').stop().slideUp(200);
	})
  $('.gnb .allMenu').click(function(){
    $('.full_menu').stop().slideDown(200);
    return;
  });
	
	$('.call_btn_top').click(function() {
		$('.call_dropDown').fadeIn();
		$('.call_dropDown ul').stop().slideDown(500);
	});
	$('.dropDown_close').click(function() {
		$('.call_dropDown ul').stop().slideUp(500);
		$('.call_dropDown').fadeOut();
	});
	
	
	
	
})
</script>
  </div><!-- #A_Header 끝 -->
  <div class="sub_quick"> 
<!--    <div class="sub_top"><a href="#">TOP</a></div>-->
	<div class="sub_quick_top">
		<span>상담</span>
	</div>
 	<div class="sub_dropDown">
  		<span class="sub_dropDown_close">닫기</span>
		<ul>
			<li><a href="tel:1566-9988">전화문의</a></li>
			<li><a href="https://pf.kakao.com/_iBxjHl/chat" target="_blank">카카오톡 상담</a></li>
			<li><a href="/main01/sub.asp?lasik=I106">진료예약</a></li>
		</ul>
  	</div>
  </div>
  <script type="text/javascript">
	$(document).ready(function(){

		$('.sub_quick_top').click(function() {
			$('.sub_dropDown').fadeIn();
			$('.sub_dropDown ul').stop().slideDown(500);
		});
		$('.sub_dropDown_close').click(function() {
			$('.sub_dropDown ul').stop().slideUp(500);
			$('.sub_dropDown').fadeOut();
		});




	})
</script>
  <div id="A_Container_Wrap">
    <!-- Container 시작 -->
    <div id="A_Container">
	  <div id="visual">
		<div id="sub_visual" class="visual06 pc_sub_visual">
		</div>
    <div id="sub_visual" class="visual06 m_sub_visual">
		</div>
     
      </div>

      

	  <div class="sub_menu_bar">
		<ul class="sub_menu_title">
		  <li><a href="/main01/"></a></li>
		  <li><p class="sub_menu_txt">신세계스마일</p>
			<ul class="sub_menu_box">
              <li ><a href="sub.asp?lasik=A101">병원소개</a></li>
			  <li style="display:none;"><a href="sub.asp?lasik=B101">신세계스마일</a></li>
			  <li ><a href="sub.asp?lasik=C101">라식</a></li>
			  <li ><a href="sub.asp?lasik=D101">라섹</a></li>
			  <li ><a href="sub.asp?lasik=E101">렌즈삽입술</a></li>
			  <li ><a href="sub.asp?lasik=F101">노안라식</a></li>
			  <li ><a href="sub.asp?lasik=G101">정보센터</a></li>
			  <li ><a href="sub.asp?lasik=H101&gubun=a">체험기</a></li>
			  <li ><a href="sub.asp?lasik=I101">상담・예약</a></li>
			</ul>
		  </li>
		  <li><p class="sub_menu_txt">왜 신세계안과일까?</p>
			<ul class="sub_menu_box">
			  
			  <li><a href="sub.asp?lasik=B102">왜 신세계안과일까?</a></li>
			  <li><a href="sub.asp?lasik=B101">신세계스마일이란</a></li>			  
			  
		    </ul>
		  </li>
		</ul>
	  </div>

	  

      <div class="sub_content">
        <!-- 내용 입력 -->
		<div class="smile_new smile_reason_new"> 
	<div class="sensitivity_box">
		<div class="inner">
			<img data-aos="fade-up" data-aos-duration="1000" src="image/sub/double_quote_open.png" />
			<div class="txt_box">
				<p data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100">신세계안과는 <em>정직</em>합니다.</p>
				<p data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">신세계안과에서는 <em>안전</em>을 우선합니다.</p>
				<p data-aos="fade-up" data-aos-duration="1000" data-aos-delay="300">한분 한분 가족을 수술하는 <em>마음</em>으로</p>
				<p data-aos="fade-up" data-aos-duration="1000" data-aos-delay="400"><em>최선</em>을 다합니다.</p>
			</div>
			<img data-aos="fade-up" data-aos-duration="1000" src="image/sub/double_quote_close.png" />
		</div>
	</div>
	<div class="award_box1">
		<div class="inner">
			<div class="txt_box">
				<img src="image/sub/smile_reason_bg0204_txt1_200205.png" alt="전국 최초 리딩스마일센터 선정 Leding Smile Center" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100" class="mb50"/>
				<img src="image/sub/smile_reason_bg0204_txt2_200206.png" alt="도입 10년차, VISUMAX 3대 보유" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200"/>
			</div>
			<div class="img_box">
				<img src="image/sub/smile_reason_bg0204_img.png" alt="트로피" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="300"/>
			</div>
		</div>		
	</div>
	<!--<div class="ksci_box">
		<div class="ksci_top_txt">
			<div class="img_box">
				<img data-aos="fade-up" data-aos-duration="500" src="image/sub/ksci_txt_191230.png" alt="5년 연속 한국소비자만족지수 1위" />
				<ul class="medal_list">
					<li data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100"><div class="img_wrap"><div><img src="image/sub/smile_medal01_200204.png" alt="2016 한국소비자만족지수1위"></div></div></li>
					<li data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200"><div class="img_wrap"><div><img src="image/sub/smile_medal02_200204.png" alt="2017 한국소비자만족지수1위"></div></div></li>
					<li data-aos="fade-up" data-aos-duration="1000" data-aos-delay="300"><div class="img_wrap"><div><img src="image/sub/smile_medal03_200204.png" alt="2018 한국소비자만족지수1위"></div></div></li>
					<li data-aos="fade-up" data-aos-duration="1000" data-aos-delay="300"><div class="img_wrap"><div><img src="image/sub/smile_medal04_200204.png" alt="2019 한국소비자만족지수1위"></div></div></li>
					<li data-aos="fade-up" data-aos-duration="1000" data-aos-delay="300"><div class="img_wrap"><div><img src="image/sub/smile_medal05_200204.png" alt="2020 한국소비자만족지수1위"></div></div></li>
				</ul>
			</div>
		</div>
		<span class="sub_txt01" data-aos="fade-up" data-aos-duration="1000"><img src="image/sub/ksci_logo.png" alt="ksci 로고이미지">2016, 2017, 2018, 2019, 2020년 시력교정부문</span>
		<span class="sub_txt02" data-aos="fade-up" data-aos-duration="1000">· 한국경제 매거진 주최 고객만족브랜드 대상 ·</span>

		<div class="global_box">
			<div class="txt_box">
				<div>
					<img src="image/sub/smile_reason_global_txt01.png" alt="2년 연속" data-aos="fade-up" data-aos-duration="1000" />
					<strong data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100">글로벌의료서비스</strong>
					<img src="image/sub/smile_reason_global_txt02.png" alt="대상 수상" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200" />
				</div>
				<img data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100" src="image/sub/smile_trophy.png" alt="트로피 이미지" />
			</div>
		</div>
	</div>-->
	<div class="inner">
		<ul class="smile_pride_list">
			<li class="smile_pride_con02">
				<div class="top_txt" data-aos="fade-up" data-aos-duration="1000">
					<span>신세계스마일 <em>65,000</em>례 달성</span>
					<strong>독보적인 수술경험이<br/>시력의 질을 결정합니다</strong>
				</div>
				<span class="standard">2023.3 기준</span>
			</li>
			<li class="smile_pride_con01">
				<div class="top_txt" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100">
					<span>스마일수술의 시작 신세계안과</span>
					<strong>2013년 스마일수술<br/>도입 후 <em>11년째</em></strong>
				</div>
			</li>
			<li class="smile_pride_con03">
				<div class="top_txt" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">
					<span></span>
					<strong><em>스마일수술은</em>역시 신세계안과</strong>
				</div>

				<div class="bot_txt">
					<p>김재봉 대표원장<br class="t_block m_block"></p>
				</div>
			</li>
		</ul>
		<div class="smile_feature">
			<strong class="sub_tit" data-aos="fade-up" data-aos-duration="1000">이제 <em>신세계안과</em>에서 만나보세요.</strong>
			<ul class="smile_feature_list">
				<li>
					<div class="img_box">
						<img src="image/sub/smile_img01.jpg">
					</div>
					<div class="txt_box">
						<div>
							<strong data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100">시력 평생 책임제 도입</strong>
							<p data-aos="fade-up" data-aos-duration="1000" data-aos-delay="150">시력 평생 책임제 도입으로 고객님의 시력을 평생 책임지겠습니다. <br/>시력교정술 후 시력 저하시 평생 재수술을 보장합니다.</p>
						</div>
					</div>
				</li>
				<li>
					<div class="img_box">
						<img src="image/sub/smile_img02_200331.png">
					</div>
					<div class="txt_box">
						<div>
							<strong data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">9인의 의료진 분야별 진료</strong>
							<p data-aos="fade-up" data-aos-duration="1000" data-aos-delay="250">경험이 안전을 만듭니다.<br/>최고의 의료진이 고객님의 눈을 진료합니다.</p>
						</div>
					</div>
				</li>
				<li>
					<div class="img_box">
						<img src="image/sub/smile_img03.jpg">
					</div>
					<div class="txt_box">
						<div>
							<strong data-aos="fade-up" data-aos-duration="1000" data-aos-delay="300">전국 4대 스마일 센터</strong>
							<p data-aos="fade-up" data-aos-duration="1000" data-aos-delay="350">(<em>신세계안과</em>, 비앤빛강남밝은세상안과, BGN밝은눈안과, 눈에미소안과) <br/>비쥬맥스 스마일 수술장비 3대 운영</p>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<div class="smile_science">
		<div class="science_box01">
			<div class="top_txt">
				<strong class="sub_copy" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100">[ 스마일도 과학이다 ]</strong>
				<p class="txt01" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200"><span>최</span><span>소</span>절개 <em>1mm 가능</em></p>
				<p class="txt02" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="300">수술은 <strong>더 안전하게!</strong> <br class="m_block"/>회복은 <strong>더 빠르게!</strong></p>
				<p class="txt03" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="400">각막 절개량을 <br class="m_block"/>1mm까지 줄여 신경손상을 최소화<br/>LOW에너지 사용으로 <br class="m_block"/>각막 손상을 방지하고 시력의 질을 향상<br/>안구건조증 ↓ 수술 후 빛 번짐 가능성 ↓</p>
			</div>
			<ul>
				<li data-aos="fade-up" data-aos-duration="1000" data-aos-delay="500">
					<img src="image/sub/smile_eyeimg01.png" /> 
					<p>20mm 라식</p>
				</li>
				<li class="point" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="700">
					<img src="image/sub/smile_eyeimg02.png" /> 
					<p>1mm <br class="m_block" />신세계스마일</p>
				</li>
				<li data-aos="fade-up" data-aos-duration="1000" data-aos-delay="600">
					<img src="image/sub/smile_eyeimg03.png" /> 
					<p>2~4mm <br class="m_block" />타안과 스마일</p>
				</li>
			</ul>
		</div>
		<div class="science_box02">
			<div class="top_txt">
				<p class="txt01" data-aos="fade-up" data-aos-duration="1000">신세계안과만의 <br class="m_block">특별한 <span>LOW에너지</span></p>
				<p class="txt02" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="300">매끈하고 건강한 <br class="m_block" /><strong>각막 렌티큘</strong> 생성</p>
			</div>
			<ul>
				<li data-aos="fade-up" data-aos-duration="1000" data-aos-delay="500">
					<img src="image/sub/smile_eyeimg04.png" />
					<div class="txt">
						<strong>일반 스마일</strong>
						<p>높은 에너지 사용으로 <br/>거친 각막</p>
					</div>
				</li>
				<li class="point_smile" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="700">
					<img src="image/sub/smile_eyeimg05.png" /> 
					<div class="txt">
						<strong>신세계 스마일</strong>
						<p>낮은 에너지 사용으로 <br class="m_block">매끄러운 각막 <br />각막 손상방지, 시력의 질 향상</p>
					</div>
				</li>
				<li class="point_low" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="900">
					<img src="image/sub/smile_eyeimg06.png" /> 
					<div class="txt">
						<strong><span>LOW에너지</span>신세계 스마일</strong>
						<p>균일한 에너지로 조사</p>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<div class="inner">
		<div class="smile_special">
			<img class="smile_special_txt" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="50" src="image/sub/smile_special_txt.png" alt="신세계안과라서 믿고 수술했습니다"/>
			<img data-aos="fade-up" data-aos-duration="1000" data-aos-delay="150" src="image/sub/smile_doctor9.png" alt="김형은, 정세형, 우영제, 강현성, 김황균, 강병완, 문귀형, 김종완, 문형진"/>
			<div class="txt_box" data-aos="fade-up" data-aos-duration="1000" data-aos-delay="150">
				<p data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200">타안과 전문의 <em>9인</em>이 <br class="m_block"/>시력교정술한 <em>신세계안과</em></p>
			</div>
		</div>
		<div class="evoicl_box">
			<ul class="top_txt" data-aos="fade-up" data-aos-duration="1000">
				<li><p><em>4,500례</em> 시술</p></li>
				<li><strong>EVO + ICL 렌즈삽입술</strong></li>
			</ul>
			<strong data-aos="fade-up" data-aos-duration="1000">초고도 근시도 <br class="m_block"/>안전하게!</strong>
			<ul class="list">
				<li data-aos="fade-up" data-aos-duration="1000" data-aos-delay="50">각막</li>
				<li data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100">홍채</li>
				<li data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200" class="evo">EVO + ICL</li>
				<li data-aos="fade-up" data-aos-duration="1000" data-aos-delay="150">수정체</li>
			</ul>
		</div>
		<div class="machine_box">
			<strong data-aos="fade-up" data-aos-duration="1000">전문 안구건조증센터 운영</strong>
			<p data-aos="fade-up" data-aos-duration="1000">안구건조증센터에서는 <span>다양한 장비</span>를 <br class="m_block">활용한 진단,<br class="m_none"/><span>맞춤형 치료</span>를 통해 <br class="m_block">건조증의 <em>근본적인 원인을 해소</em>합니다.</p>
			<ul class="machine_list">
				<li>
					<img data-aos="fade-up" data-aos-duration="1000" src="image/sub/smile_machine01.png" alt="리피뷰 사진" />
					<div class="txt_box">
						<strong data-aos="fade-up" data-aos-duration="1000">리피뷰</strong>
						<p data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100">눈물막 지방층 두께, <br/>불완전한 눈깜빡임, <br/>마이봄샘 구조를 정밀검사</p>
						<span data-aos="fade-up" data-aos-duration="1000" data-aos-delay="150">마이봄샘 <br/>정밀검사</span>
					</div>
				</li>
				<li>
					<img data-aos="fade-up" data-aos-duration="1000" src="image/sub/smile_machine02.png" alt="리피플로우 사진" />
					<div class="txt_box">
						<strong data-aos="fade-up" data-aos-duration="1000">리피플로우</strong>
						<p data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100">막고 있던 기름을 녹여 <br/>제거한 후 눈물막의 지방층을 <br/>다시 회복시켜주는 장비</p>
						<span data-aos="fade-up" data-aos-duration="1000" data-aos-delay="150">눈물막 <br/>회복</span>
					</div>
				</li>
				<li>
					<img data-aos="fade-up" data-aos-duration="1000" src="image/sub/smile_machine03.png" alt="IPL 사진" />
					<div class="txt_box">
						<strong data-aos="fade-up" data-aos-duration="1000">IPL</strong>
						<p data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100">레이저를 조사해 혈관을 <br/>부드럽게 하고 피지를 녹여 <br/>눈물 배출을 원활하게 치료</p>
						<span data-aos="fade-up" data-aos-duration="1000" data-aos-delay="150">눈물배출 <br/>치료</span>
					</div>
				</li>
			</ul>
		</div>
		<div class="smile_office">
			<img data-aos="fade-up" data-aos-duration="1000" src="image/sub/smile_office_img.png">
			<ul>
				<li data-aos="fade-up" data-aos-duration="1000" data-aos-delay="100"><i class="ic_office"></i><p><em>7층 전층</em> 안과 건물 사용</p></li>
				<li data-aos="fade-up" data-aos-duration="1000" data-aos-delay="200"><i class="ic_car"></i><p><em>100대 주차시설</em> 완비</p></li>
				<li data-aos="fade-up" data-aos-duration="1000" data-aos-delay="300"><i class="ic_eye"></i><p>안과전문의 <br /><em>원스톱 의료서비스</em> 제공</p></li>
			</ul>
		</div>
	</div>
</div>
<div class="inner"> 
	<a href="sub.asp?lasik=H101&gubun=a" class="smile_btn"><img src="image/sub/rescue_icon.png" alt=""/>신세계안과 수술후기 보러가기<img src="image/sub/plus02.png" alt=""/></a>
</div>
<script>
 AOS.init({
	 once: true
 });
</script>
	  </div>
    </div><!-- #A_Container END -->
    <!-- // Container 끝 --> 
  </div><!-- #A_Container_Wrap -->
  <div id="A_Footer">
    <div class="foot_comInfo">
	<div class="ft_topwrap">
		<div class="inner">
			<ul class="foot_list">
				<li><a href="sub.asp?lasik=A101">병원소개</a></li>
				<!--<li><a href="sub.asp?lasik=A104">오시는길</a></li>
				<li><a href="sub.asp?lasik=I106">검사·진료예약</a></li>-->
				<li><a href="sub.asp?lasik=L102">이용약관</a></li>
				<li><a href="sub.asp?lasik=L101" class="pt">개인정보처리방침</a></li>
				<li><a href="/main02/">노안·백내장센터 바로가기</a></li>
			</ul>
			<ul class="sns_list"> 
				<li><a href="https://www.youtube.com/channel/UCbpEbNLa17AP6sK9zKynq6w" target="_blank"></a></li>
				<li><a href="https://www.instagram.com/bestlasik/" target="_blank"></a></li>
				<li><a href="https://ko-kr.facebook.com/bestlasik15669988/" target="_blank"></a></li>
				<li><a href="https://pf.kakao.com/_iBxjHl/chat" target="_blank"><span class="p_icon"></span></a></li>
				<li><a href="https://blog.naver.com/new_eyes" target="_blank"></a></li>
				<li><a href="https://cafe.naver.com/shinsegaelasik" target="_blank"></a></li>	
			</ul>
			
		</div>
	</div>
	<div class="info"> 
		<div class="inner">
		<p class="txt">
			<span>주소 : 광주광역시 서구 죽봉대로 92(광천동 38번지)</span>주차장주소 : 광주광역시 서구 무진대로 949(광천동 35-9번지)
		</p>
		<p class="txt"> 
			<span>tel. 1566-9988 </span><span> fax. 062-351-1520</span><span>사업자등록번호 : 410-31-55481</span>대표 : 김재봉
		</p>
		<p class="copy_txt">Copyright 2018. 신세계안과의원. all rights reserved.</p>
		</div>
	</div>
</div>
  </div><!-- #A_Footer 끝 -->
</div><!-- #A_Wrap 끝 -->
</body>
</html>