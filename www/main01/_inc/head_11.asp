<meta charset="utf-8"/>
<meta name="author" content="" />
<meta name="copyright" content="(c) . All Rights Reserved." />
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="viewport" content="width=640, user-scalable=no, target-densitydpi=device-dpi">
<meta name="format-detection" content="telephone=no, address=no, email=no" />
<title>신세계안과</title>
<meta name="keywords" content="<%'bPrint("metatag")%>">

<link rel="stylesheet" href="/main01/_css/layout1.css" />
<link href="/main01/_css/slick.css" rel="stylesheet" type="text/css">
<link href="/main01/_css/slick-theme.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="image/common/favicon.ico">
<!-- 상단메뉴 GNB -->
<script src="/main01/js/jquery-1.11.3.min.js"></script>
<script src="/main01/js/slick.js"></script>
<script src="/main01/js/ajax.js"></script>
<script src="/main01/js/jquery-animate-css-rotate-scale.js"></script>
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

	$( window ).scroll( function() {
		if ( $( this ).scrollTop() > 10 ) {
			$( '.sub_top' ).fadeIn();
		} else {
			$( '.sub_top' ).fadeOut();
		}
	} );

//	$( '.sub_top' ).click( function() {
//		$( 'html, body' ).animate( { scrollTop : 0 }, 400 );
//		return false;
//	} );
	

	
});
	


</script>