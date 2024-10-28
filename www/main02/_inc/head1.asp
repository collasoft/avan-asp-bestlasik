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

<link rel="stylesheet" href="_css/layout1.css" />
<link rel="stylesheet" href="../../eng/_css/lang_switch.css" />
<link href="_css/slick.css" rel="stylesheet" type="text/css">
<link href="_css/slick-theme.css" rel="stylesheet" type="text/css">
<link href="_css/aos.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="image/common/favicon.ico">
<!-- 상단메뉴 GNB -->
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/slick.js"></script>
<script src="/main02/js/ajax.js"></script>
<script src="js/jquery-animate-css-rotate-scale.js"></script>
<script src="js/aos.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('.gnb>li').mouseenter(function(){
		$(this).children('.line').stop().animate({'width':'100%'},300)
		$(this).siblings().children('.line').stop().animate({'width':'0%'},300)
	})
	$('.gnb>li').mouseleave(function(){
		$(this).children('.line').stop().animate({'width':'0%'},300)
	})
	
	$(".language_current li:nth-child(1) a").click(function() {
		$('.language_current').toggleClass("show")
	})
	
})
</script><!-- //상단메뉴 GNB -->

 
<script type="text/javascript"> 
$(document).ready(function(){
	var param = getParams();

	// 하나의 버튼을 기준으로 여러 상황이 연출되어야 한다면 조건문에 의한 변수 연출이 필요.
	menu_bt = 0; //변수선언. 회전X
	$('.menubar').click(function(){
		if( menu_bt == 0 ) // 회전X
		{
		// 회전이 안된상태 이므로 회전이 되도록 하자.
		$('.menubar li:eq(0)').animate({'rotate':'45deg','top':'10px'},300)
		$('.menubar li:eq(1)').fadeOut();
		$('.menubar li:eq(2)').animate({'rotate':'-45deg','top':'10px'},300)
		$('.full_wrap').fadeIn(600); 
		//$('.menubar').css({'position':'fixed'});
		//$('.full_gnb').animate({'left':'0'},600);

		// 이제 회전이 되었으므로 해당변수의 값도 변경 메모하자.
		menu_bt = 1; // 회전O 상태
		}
		else if( menu_bt == 1 ){
		$('.menubar li:eq(0)').animate({'rotate':'0','top':'0'},300)
		$('.menubar li:eq(1)').fadeIn();
		$('.menubar li:eq(2)').animate({'rotate':'0','top':'26px'},300)
		$('.full_wrap').fadeOut(600); 
		//$('.full_gnb').animate({'left':'-1000px'},600);
		//$('.menubar').css({'position':'absolute'});
		menu_bt = 0; // 회전X 상태
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
//console.log(param["eye"]);
	if (param["eye"] != undefined) {
		if (param["eye"].substr(0,1) != "J" && param["eye"].substr(0,1) != "I")  {
		$( window ).scroll( function() {
			if ( $( this ).scrollTop() > 10 ) {
				$( '.sub_quick_top' ).fadeIn();
			} else {
				$( '.sub_quick_top' ).fadeOut();
			}
		} );
		}
	}
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


<!-- Enliple Common Tracker v3.6 [공용] start -->
<script type="text/javascript">
<!--
function mobRf() {
    var rf = new EN();
    rf.setData("userid", "shinsegaels");
    rf.setSSL(true);
    rf.sendRf();
}
function mobConv() {
    var cn = new EN();
    cn.setData("uid", "shinsegaels");
    cn.setData("ordcode", "");
    cn.setData("qty", "1");
    cn.setData("price", "1");
    cn.setData("pnm", encodeURIComponent(encodeURIComponent("counsel")));
    cn.setSSL(true);
    cn.sendConv();
}

//-->
</script>
<script src="https://cdn.megadata.co.kr/js/en_script/3.6/enliple_min3.6.js" defer="defer" onload="mobRf()"></script>
<!-- Enliple Common Tracker v3.6 [공용] end -->

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