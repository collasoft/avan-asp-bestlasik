
<%
Function menu1(eye)
  If Left(eye,3) = "A10" then
    Response.write "병원소개"
  ElseIf Left(eye,3) = "B10" Or Left(eye,3) = "B11" Then
    Response.write "백내장"
  ElseIf Left(eye,3) = "C10" Or Left(eye,3) = "C11" Then
    Response.write "노안클리닉"
  ElseIf Left(eye,3) = "D10" Then
    Response.write "안성형"
  ElseIf Left(eye,3) = "E10" Or Left(eye,3) = "E11" Then
    Response.write "안종합질환"
  ElseIf Left(eye,3) = "F10" Then
    Response.write "정보센터"
  ElseIf Left(eye,3) = "G10" Then
    Response.write "체험기"
  ElseIf Left(eye,3) = "H10" Then
    Response.write "상담및예약"
  ElseIf Left(eye,3) = "I10" Then
    Response.write "회원"
  ElseIf Left(eye,3) = "J10" Then
    Response.write "회원"
  End if
End Function

Function menu2(eye)
  If eye = "A101" then
    Response.write "비전"
  ElseIf eye = "A102" Then
    Response.write "의료진소개"
  ElseIf eye = "A103" Then
    Response.write "진료시간/층별구조"
  ElseIf eye = "A104" Then
    Response.write "오시는길"
  ElseIf eye = "A105" Then
    Response.write "진료시간/층별구조"
  ElseIf eye = "B101" Then
    Response.write "백내장이란"
  ElseIf eye = "B102" Or eye = "B103" Or eye = "B104" Then
    Response.write "신세계백내장이 특별한 이유"
  ElseIf eye = "B105" Or eye = "B106" Or eye = "B107" Or eye = "B108" Or eye = "B109" Or eye = "B110" Or eye = "B111" Or eye = "C107" Or eye = "C108" Or eye = "C109" Or eye = "C110" Or eye = "C111" Or eye = "C112" Then
    Response.write "노안백내장(다초점 인공수정체)"
  ElseIf eye = "C101" Then
    Response.write "노안이란"
  ElseIf eye = "C102" Then
    Response.write "왜 신세계 노안·백내장일까"
  ElseIf eye = "C103" Or eye = "C104" Or eye = "C105" Or eye = "C106" Then
    Response.write "신세계노안라식·스마일"
  ElseIf eye = "D101" Then
    Response.write "눈매교정술(매몰법)"
  ElseIf eye = "D102" Then
    Response.write "상안검절개술"
  ElseIf eye = "D103" Then
    Response.write "하안검절개술"
  ElseIf eye = "D104" Then
    Response.write "안검내반"
  ElseIf eye = "D105" Then
    Response.write "안검외반"
  ElseIf eye = "D106" Then
    Response.write "앞트임"
  ElseIf eye = "D107" Then
    Response.write "안검하수"
  ElseIf eye = "D108" Then
    Response.write "보톡스"
  ElseIf eye = "E101" Then
    Response.write "사시"
  ElseIf eye = "E102" Then
    Response.write "약시"
  ElseIf eye = "E103" Or eye = "E104" Or eye = "E105" Or eye = "E106" Then
    Response.write "망막"
  ElseIf eye = "E107" Then
    Response.write "녹내장"
  ElseIf eye = "E108" Then
    Response.write "익상편"
  ElseIf eye = "E109" Then
    Response.write "안구건조증"
  ElseIf eye = "E110" Then
    Response.write "검열반"
  ElseIf eye = "F101" Or eye = "F102" Then
    Response.write "이벤트소식"
  ElseIf eye = "F103" Or eye = "F104" Then
    Response.write "공지사항"
  ElseIf eye = "F105" Or eye = "F106" Then
    Response.write "보도자료"
  ElseIf eye = "F107" Then
    Response.write "협력업체"
  ElseIf eye = "F108" Then
    Response.write "비급여진료비용"
  ElseIf eye = "G101" Or eye = "G102" Or eye = "G103" Then
    Response.write "고객수술후기"
  ElseIf eye = "G104" Or eye = "G105" Or eye = "G106" Then
    Response.write "의료진/직원 수술후기"
  ElseIf eye = "H101" Then
    Response.write "자주하는 질문"
  ElseIf eye = "H102" Or eye = "H103" Or eye = "H104" Or eye = "H105" Then
    Response.write "진료상담"
  ElseIf eye = "H106" Or eye = "H107" Then
    Response.write "검사/진료예약"
  ElseIf eye = "I101" Or eye = "I102" Or eye = "I103" Then
    Response.write "회원가입"
  ElseIf eye = "I104" Then
    Response.write "회원수정"
  ElseIf eye = "I105" Then
    Response.write "회원탈퇴"
  ElseIf eye = "J101" Then
    Response.write "로그인"
  ElseIf eye = "J102" or eye = "J103" Then
    Response.write "아이디찾기"
  ElseIf eye = "J104" Then
    Response.write "비밀번호찾기"
  ElseIf eye = "K101" Then
    Response.write "개인정보처리방침"
  ElseIf eye = "K102" Then
    Response.write "이용약관"

  End if
End Function

Function menu3(eye)
  If eye = "A101" then
    Response.write "비전"
  ElseIf eye = "A102" Then
    Response.write "의료진소개"
  ElseIf eye = "A103" Or eye = "A105" Then
    Response.write "둘러보기"
  ElseIf eye = "A104" Then
    Response.write "오시는길"
  ElseIf eye = "B101" Then
    Response.write "백내장이란"
  ElseIf eye = "B102" Or eye = "B103" Or eye = "B104" Then
    Response.write "왜 신세계백내장일까"
  ElseIf eye = "B105" Or eye = "B106" Or eye = "B107" Or eye = "B108" Or eye = "B109" Or eye = "B110" Or eye = "B111" Or eye = "C107" Or eye = "C108" Or eye = "C109" Or eye = "C110" Or eye = "C111" Or eye = "C112" Then
    Response.write "다초점 인공수정체"
  ElseIf eye = "C101" Then
    Response.write "노안이란"
  ElseIf eye = "C102" Then
    Response.write "왜 신세계 노안·백내장일까"
  ElseIf eye = "C103" Or eye = "C104" Or eye = "C105" Or eye = "C106" Then
    Response.write "신세계노안라식·스마일"
  ElseIf eye = "C104" Then
    Response.write "다초점 인공수정체"
  ElseIf eye = "D101" Then
    Response.write "눈매교정술(매몰법)"
  ElseIf eye = "D102" Then
    Response.write "상안검절개술"
  ElseIf eye = "D103" Then
    Response.write "하안검절개술"
  ElseIf eye = "D104" Then
    Response.write "안검내반"
  ElseIf eye = "D105" Then
    Response.write "안검외반"
  ElseIf eye = "D106" Then
    Response.write "앞트임"
  ElseIf eye = "D107" Then
    Response.write "안검하수"
  ElseIf eye = "D108" Then
    Response.write "보톡스"
  ElseIf eye = "E101" Then
    Response.write "사시"
  ElseIf eye = "E102" Then
    Response.write "약시"
  ElseIf eye = "E103" Or eye = "E104" Or eye = "E105" Or eye = "E106" Then
    Response.write "망막"
  ElseIf eye = "E107" Then
    Response.write "녹내장"
  ElseIf eye = "E108" Then
    Response.write "익상편"
  ElseIf eye = "E109" Then
    Response.write "안구건조증"
  ElseIf eye = "E110" Then
    Response.write "검열반"
  ElseIf eye = "F101" Or eye = "F102" Then
    Response.write "이벤트소식"
  ElseIf eye = "F103" Or eye = "F104" Then
    Response.write "공지사항"
  ElseIf eye = "F105" Or eye = "F106" Then
    Response.write "보도자료"
  ElseIf eye = "F107" Then
    Response.write "협력업체"
  ElseIf eye = "F108" Then
    Response.write "비급여진료비용"
  ElseIf eye = "G101" Or eye = "G102" Or eye = "G103" Then
    Response.write "고객수술후기"
  ElseIf eye = "G104" Or eye = "G105" Or eye = "G106" Then
    Response.write "의료진/직원 수술후기"
  ElseIf eye = "H101" Then
    Response.write "자주하는 질문"
  ElseIf eye = "H102" Or eye = "H103" Or eye = "H104" Or eye = "H105" Then
    Response.write "진료상담"
  ElseIf eye = "H106" Or eye = "H107" Then
    Response.write "검사/진료예약"
  ElseIf eye = "I101" Or eye = "I102" Or eye = "I103" Then
    Response.write "회원가입"
  ElseIf eye = "I104" Then
    Response.write "회원수정"
  ElseIf eye = "I105" Then
    Response.write "회원탈퇴"
  ElseIf eye = "J101" Then
    Response.write "로그인"
  ElseIf eye = "J102" or eye = "J103" Then
    Response.write "아이디찾기"
  ElseIf eye = "J104" Then
    Response.write "비밀번호찾기"
  ElseIf eye = "K101" Then
    Response.write "개인정보처리방침"
  ElseIf eye = "K102" Then
    Response.write "이용약관"

  End if
End Function

Function sub_visual(eye)
  If Left(eye,3) = "A10" then
    Response.write "visual01"
  ElseIf eye = "B101" Or eye = "B102" Or eye = "B103" Or eye = "B104" Then
    Response.write "visual06"
  ElseIf eye = "C101" Or eye = "C102" Or eye = "C103" Or eye = "C104" Or eye = "C105" Or eye = "C106" Or eye = "B105" Or eye = "B106" Or eye = "B107" Or eye = "B108" Or eye = "B109" Or eye = "B110" Or eye = "B111" Or eye = "C107" Or eye = "C108" Or eye = "C109" Or eye = "C110" Or eye = "C111" Or eye = "C112" Then
    Response.write "visual07"
  ElseIf Left(eye,3) = "D10" Then
    Response.write "visual08"
  ElseIf Left(eye,3) = "E10" Or Left(eye,3) = "E11" Then
    Response.write "visual09"
  ElseIf Left(eye,3) = "F10" Then
    Response.write "visual10"
  ElseIf Left(eye,3) = "G10" Then
    Response.write "visual02"
  ElseIf Left(eye,3) = "H10" Then
    Response.write "visual03"
  ElseIf Left(eye,3) = "I10" Then
    Response.write "visual05"
  ElseIf Left(eye,3) = "J10" Then
    Response.write "visual05"
  ElseIf Left(eye,3) = "K10" Then
    Response.write "visual07"
  End if
End Function
%>
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
	  <%If Len(session("useridid")) > 0 then%>
	  <li><a href="/main02/J10/logout.asp">로그아웃</a></li>
	  <li><a href="sub.asp?eye=I104">회원정보수정</a></li>
	  <%else%>
	  <li><a href="sub.asp?eye=J101">로그인</a></li>
	  <li><a href="sub.asp?eye=I101">회원가입</a></li>
	  <%End if%>
	  <li><a href="/main01">스마일·라식센터 바로가기</a></li>
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
  	<div class="call_btn_top">
		<img src="image/common/call_btn_wh.png" alt=""/>
		<span class="call_txt">상담</span>
  	</div>
  	<div class="call_dropDown">
  		<span class="dropDown_close">닫기</span>
		<ul>
			<li><a href="tel:1566-9988">전화문의</a></li>
			<li><a href="http://pf.kakao.com/_iBxjHl/chat" target="_blank">카카오톡 상담</a></li>
			<li><a href="http://bestlasik.solutionhosting.co.kr/main02/sub.asp?eye=H106">진료예약</a></li>
		</ul>
  	</div>
  </div>
  <div class="logo">
	<a href="/main02/"><img src="image/common/logo_01.png" ></a>
  </div>
  <ul class="gnb">
	<li class="dp1"><a href="sub.asp?eye=A101">병원소개</a><span class="line"></span>
	  <div class="dp2">
		<ul>
		  <li><a href="sub.asp?eye=A101">비전</a></li>
		  <li><a href="sub.asp?eye=A102">의료진소개</a></li>
		  <li><a href="sub.asp?eye=A103">둘러보기</a></li>
		  <li><a href="sub.asp?eye=A104">오시는길</a></li>
	    </ul>
	  </div>
	</li>
	<li class="dp1"><a href="sub.asp?eye=B101">백내장</a><span class="line"></span>
	  <div class="dp2">
		<ul>
	  	  <li><a href="sub.asp?eye=B102">왜 신세계백내장일까</a></li>
		  <li><a href="sub.asp?eye=B101">백내장이란</a></li>
<!--		  <li><a href="sub.asp?eye=B105">다초점 인공수정체</a></li>-->
		</ul>
	  </div>
	</li>
	<li class="dp1"><a href="sub.asp?eye=C101">노안클리닉</a><span class="line"></span>
	  <div class="dp2">
		<ul>
			<li><a href="sub.asp?eye=C102">왜 신세계 노안·백내장일까</a></li>
			<li><a href="sub.asp?eye=C101">노안이란</a></li>
			<li><a href="sub.asp?eye=B105">다초점 인공수정체</a></li>
			<li><a href="sub.asp?eye=C103">신세계노안라식·스마일</a></li>
<!--		  <li><a href="sub.asp?eye=C107">노안백내장(다초점렌즈삽입술)</a></li>-->
		</ul>
	  </div>
	</li>
	<li class="dp1"><a href="sub.asp?eye=D101">안성형</a><span class="line"></span>
	  <div class="dp2">
		<ul>
		  <li><a href="sub.asp?eye=D101">눈매교정술(매몰법)</a></li>
		  <li><a href="sub.asp?eye=D102">상안검절개술</a></li>
		  <li><a href="sub.asp?eye=D103">하안검절개술</a></li>
		  <li><a href="sub.asp?eye=D104">안검내반</a></li>
		  <li><a href="sub.asp?eye=D105">안검외반</a></li>
		  <li><a href="sub.asp?eye=D106">앞트임</a></li>
		  <li><a href="sub.asp?eye=D107">안검하수</a></li>
		  <li><a href="sub.asp?eye=D108">보톡스</a></li>
		</ul>
	  </div>
	</li>
	<li class="dp1"><a href="sub.asp?eye=E101">안종합질환</a><span class="line"></span>
	  <div class="dp2">
		<ul>
		  <li><a href="sub.asp?eye=E101">사시</a></li>
		  <li><a href="sub.asp?eye=E102">약시</a></li>
		  <li><a href="sub.asp?eye=E103">망막</a></li>
		  <li><a href="sub.asp?eye=E107">녹내장</a></li>
		  <li><a href="sub.asp?eye=E108">익상편</a></li>
		  <li><a href="sub.asp?eye=E109">안구건조증</a></li>
		  <li><a href="sub.asp?eye=E110">검열반</a></li>
		</ul>
	  </div>
	</li>
	<li class="dp1"><a href="sub.asp?eye=F101">정보센터</a><span class="line"></span>
	  <div class="dp2">
		<ul>
		  <li><a href="sub.asp?eye=F101">이벤트소식</a></li>
		  <li><a href="sub.asp?eye=F103">공지사항</a></li>
		  <li><a href="sub.asp?eye=F105">보도자료</a></li>
		  <li><a href="sub.asp?eye=F107">협력업체</a></li>
		  <li><a href="sub.asp?eye=F108">비급여진료비용</a></li>
		</ul>
	  </div>
	</li>
	<li class="dp1"><a href="sub.asp?eye=G101&gubun=a">체험기</a><span class="line"></span>
	  <div class="dp2">
		<ul>
		  <li><a href="sub.asp?eye=G101&gubun=a">고객수술후기</a></li>
		  <li><a href="sub.asp?eye=G104&gubun=b">의료진/직원 수술후기</a></li>
		</ul>
	  </div>
	</li>
	<li class="dp1"><a href="sub.asp?eye=H101">상담및예약</a><span class="line"></span>
	  <div class="dp2">
		<ul>
		  <li><a href="sub.asp?eye=H101">자주하는 질문</a></li>
		  <li><a href="sub.asp?eye=H102">진료상담</a></li>
		  <li><a href="sub.asp?eye=H106">검사/진료예약</a></li>
		</ul>
	  </div>
	</li>
  </ul>
</div>
<div class="dp2_wrap"></div>
<div class="full_wrap">
  <div class="full_gnb"> 
    <div class="logo_box"><h1 class="logo"><a href="/"><img src="image/common/logo_01.png"></a></h1></div>
    <ul class="login_btn">
	  <%If Len(session("useridid")) > 0 then%>
	  <li><a href="/main02/J10/logout.asp">로그아웃</a></li>
	  <li><a href="sub.asp?eye=I104">회원정보수정</a></li>
	  <%else%>
	  <li><a href="sub.asp?eye=J101">로그인</a></li>
	  <li><a href="sub.asp?eye=I101">회원가입</a></li>
	  <%End if%>
	  <li><a href="/main01">라식센터</a></li>
    </ul>
    <ul class="lnb1">
	  <li><p>병원소개</p>
		<ul class="ss_menu">
		  <li><a href="sub.asp?eye=A101">비전</a></li>
		  <li><a href="sub.asp?eye=A102">의료진소개</a></li>
		  <li><a href="sub.asp?eye=A103">둘러보기</a></li>
		  <li><a href="sub.asp?eye=A104">오시는길</a></li>
		</ul>
	  </li>
	  <li><p>백내장</p>
		<ul class="ss_menu">
		  <li><a href="sub.asp?eye=B102">왜 신세계백내장일까</a></li>
		  <li><a href="sub.asp?eye=B101">백내장이란</a></li>
		  <!-- <li><a href="sub.asp?eye=B105">다초점 인공수정체</a></li> -->
		</ul>
	  </li>
	  <li><p>노안클리닉</p>
		<ul class="ss_menu">
      <li><a href="sub.asp?eye=C101">노안이란</a></li>
      <li><a href="sub.asp?eye=C102">왜 신세계 노안·백내장일까</a></li>
      <li><a href="sub.asp?eye=B105">다초점 인공수정체</a></li>
      <li><a href="sub.asp?eye=C103">신세계노안라식·스마일</a></li>
<!--		  <li><a href="sub.asp?eye=C107">노안백내장(다초점렌즈삽입술)</a></li>-->
		</ul>
	  </li>
	  <li><p>안성형</p>
		<ul class="ss_menu">
		  <li><a href="sub.asp?eye=D101">눈매교정술(매몰법)</a></li>
		  <li><a href="sub.asp?eye=D102">상안검절개술</a></li>
		  <li><a href="sub.asp?eye=D103">하안검절개술</a></li>
		  <li><a href="sub.asp?eye=D104">안검내반</a></li>
		  <li><a href="sub.asp?eye=D105">안검외반</a></li>
		  <li><a href="sub.asp?eye=D106">앞트임</a></li>
		  <li><a href="sub.asp?eye=D107">안검하수</a></li>
		  <li><a href="sub.asp?eye=D108">보톡스</a></li>
		</ul>
	  </li>
	  <li><p>안종합질환</p>
		<ul class="ss_menu">
		  <li><a href="sub.asp?eye=E101">사시</a></li>
		  <li><a href="sub.asp?eye=E102">약시</a></li>
		  <li><a href="sub.asp?eye=E103">망막</a></li>
		  <li><a href="sub.asp?eye=E107">녹내장</a></li>
		  <li><a href="sub.asp?eye=E108">익상편</a></li>
		  <li><a href="sub.asp?eye=E109">안구건조증</a></li>
		  <li><a href="sub.asp?eye=E110">검열반</a></li>
		</ul>
	  </li>
	  <li><p>정보센터</p>
		<ul class="ss_menu">
		  <li><a href="sub.asp?eye=F101">이벤트소식</a></li>
		  <li><a href="sub.asp?eye=F103">공지사항</a></li>
		  <li><a href="sub.asp?eye=F105">보도자료</a></li>
		  <li><a href="sub.asp?eye=F107">협력업체</a></li>
		  <li><a href="sub.asp?eye=F108">비급여진료비용</a></li>
		</ul>
	  </li>
	  <li><p>체험기</p>
		<ul class="ss_menu">
		  <li><a href="sub.asp?eye=G101&gubun=a">고객수술후기</a></li>
		  <li><a href="sub.asp?eye=G104&gubun=b">의료진/직원 수술후기</a></li>
		</ul>
	  </li>
	  <li><p>상담및예약</p>
		<ul class="ss_menu">
		  <li><a href="sub.asp?eye=H101">자주하는 질문</a></li>
		  <li><a href="sub.asp?eye=H102">진료상담</a></li>
		  <li><a href="sub.asp?eye=H106">검사/진료예약</a></li>
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
	})
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