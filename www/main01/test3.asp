<%@  codepage="65001" language="VBScript" %>
<% option explicit %>
<!--#include virtual = "/Avanplus/_FormFunc.asp"-->
<!--#include virtual = "/Avanplus/_Function.asp"-->
<%
Call DbOpen()
%>
<!DOCTYPE html>
<html>
<head>
<!-- #include file="_inc/head1.asp" -->
<!-- head.asp 끝 -->

<!-- s: 현재페이지에만 적용할 특정 스크립트 추가영역 -->
<link rel="stylesheet" href="_css/main03.css" />
<link rel="stylesheet" href="_css/aos.css" />
<script src="js/aos.js"></script>

</head>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
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
  for( i=1 ; i<=5 ; i++ ){
    if(i==no){
	  document.getElementById("realstory"+i).style.display="inline";
	}else{
      document.getElementById("realstory"+i).style.display="none";
	}
  }
}
//-->
</script>
<body>
<div id="A_Wrap">
	
	<div id="A_Header">
		<!-- #include file="_inc/header1.asp" -->
	</div><!-- #A_Header 끝 -->
	
	
	
    <div id="A_Container_Wrap">
        <!-- Container 시작 -->
        <div id="A_Container">
			

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
						  Dim sql2, rs2, a
						  sql2 = "SELECT top 5 * FROM test_excel order by test7 desc"
						  set rs2 = dbconn.execute(sql2)
						  if rs2.eof Then
						  
						  Else
							a=1
							Do Until rs2.EOF
						%>
						<li>
						  <a href="sub.asp?lasik=G104&intSeq=<%=rs2("test4")%>"><%=Left(rs2("test16"),18)%>...</a>
						  <span class="day"><%=Left(rs2("test7"),10)%></span>
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
						<div class="con_txt">
					   		<p><%=Left(rs2("e_contents"),10)%></p>
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
							<iframe src="//www.facebook.com/plugins/like.php?href=http%3A%2F%2Ffacebook.com%2Fbestlasik15669988&amp;width=61&amp;layout=button&amp;action=like&amp;show_faces=false&amp;share=false&amp;height=35&amp;appId=1431282703824037" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:61px; height:35px;" class="btn_like" allowtransparency="true"></iframe>
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
					 						<td><input type="text" name="bestname" id="bestname" /></td>
					 					</tr>
					 					<tr>
					 						<th>연락처</th>
					 						<td>
					 							<!--<input type="text" placeholder="전화번호 (- 제외)" name="besttel" id="besttel" maxlength="11" />-->
					 							<input type="text" class="callNum" name="besttel1" id="besttel1" maxlength="3">
					 							<span class="textline"></span>
					 							<input type="text" class="callNum" name="besttel2" id="besttel2" maxlength="4">
					 							<span class="textline"></span>
					 							<input type="text" class="callNum" name="besttel3" id="besttel3" maxlength="4">
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
										<button type="button" class="apply_btn" id="BtnIdchk1">검사 신청하기</button>
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
								<a href="http://bestlasik.solutionhosting.co.kr/main01/sub.asp?lasik=A104">
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
									일요일 및 공휴일 : <span>휴진(예약수술가능)</span><br>
									점심시간 : 12:30 ~14:00</p>
								</a>
							</div>
							<div class="call">
								<span class="line"></span><span class="line"></span><span class="line"></span><span class="line"></span>
								<h2 class="main_notice_tit">고객센터<span>(예약/상담)</span></h2>
								<p class="call_num">1566-9988</p>
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
						<li><span class="p_icon"></span></li>
						<li><a href="https://cafe.naver.com/shinsegaelasik" target="_blank"></a></li>
						<li><a href="https://blog.naver.com/bestlasik1" target="_blank"></a></li>
						<li><a href="https://www.instagram.com/bestlasik/" target="_blank"></a></li>
						<li><a href="#" target="_blank"></a></li>
					</ul>
				</div>
				<!-- #include file="_inc/footer1.asp" -->
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

	  ajaxObjects[ajaxIndex].requestFile = "./sinchung_ok.asp";
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