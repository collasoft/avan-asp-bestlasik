<%
Function menu1(lasik)
  If Left(lasik,3) = "A10" then
    Response.write "병원소개"
  ElseIf Left(lasik,3) = "B10" Then
    Response.write "신세계스마일"
  ElseIf Left(lasik,3) = "C10" Then
    Response.write "라식"
  ElseIf Left(lasik,3) = "D10" Then
    Response.write "라섹"
  ElseIf Left(lasik,3) = "E10" Then
    Response.write "렌즈삽입술"
  ElseIf Left(lasik,3) = "F10" Or Left(lasik,3) = "F11" Then
    Response.write "노안라식"
  ElseIf Left(lasik,3) = "G10" Then
    Response.write "정보센터"
  ElseIf Left(lasik,3) = "H10" Then
    Response.write "체험기"
  ElseIf Left(lasik,3) = "I10" Then
    Response.write "상담・예약"
  ElseIf Left(lasik,3) = "J10" Then
    Response.write "회원"
  ElseIf Left(lasik,3) = "K10" Then
    Response.write "회원"
  End if
End Function

Function menu2(lasik)
  If Left(lasik,4) = "A101" then
    Response.write "비전"
  ElseIf Left(lasik,4) = "A102" Then
    Response.write "의료진소개"
  ElseIf Left(lasik,4) = "A103" Then
    Response.write "진료시간/층별구조"
  ElseIf Left(lasik,4) = "A104" Then
    Response.write "오시는길"
  ElseIf Left(lasik,4) = "A105" Then
    Response.write "진료시간/층별구조"
  ElseIf Left(lasik,4) = "B101" Then
    Response.write "신세계스마일이란"
  ElseIf Left(lasik,4) = "B102" Then
    Response.write "왜 신세계안과일까?"
  ElseIf Left(lasik,4) = "B103" Then
    Response.write "신세계스마일프로"
  ElseIf Left(lasik,4) = "C101" Then
    Response.write "신세계라식이란"
  ElseIf lasik = "C102" Or lasik = "C103" Or lasik = "C104" Or lasik = "C105" Then
    Response.write "신세계라식의 종류"
  ElseIf Left(lasik,4) = "D101" Then
    Response.write "신세계라섹이란"
  ElseIf lasik = "D102" or lasik = "D103" Or lasik = "D104" Or lasik = "D105" Or lasik = "D106" Then
    Response.write "신세계라섹의 종류"
  ElseIf Left(lasik,4) = "E101" Then
    Response.write "신세계렌즈삽입술이란"
  ElseIf lasik = "E102" Or lasik = "E103" Or lasik = "E104" Or lasik = "E105" Or lasik = "E106" Then
    Response.write "렌즈의 종류"
  ElseIf Left(lasik,4) = "F101" Then
    Response.write "노안이란"
  ElseIf Left(lasik,4) = "F102" Then
    Response.write "신세계안과를 선택하는 이유"
  ElseIf lasik = "F103" or lasik = "F104" or lasik = "F105" or lasik = "F106" Then
    Response.write "노안라식·스마일"
ElseIf lasik = "F113" Then
    Response.write "알티플러스"
  ElseIf lasik = "F107" or lasik = "F108" or lasik = "F109" or lasik = "F110" or lasik = "F111" or lasik = "F112" Then
    Response.write "다초점렌즈삽입술"
  ElseIf lasik = "G101" Or lasik = "G102" Then
    Response.write "이벤트소식"
  ElseIf lasik = "G103" Or lasik = "G104" Then
    Response.write "공지사항"
  ElseIf lasik = "G105" Or lasik = "G106" Then
    Response.write "보도자료"
  ElseIf lasik = "G107" Then
    Response.write "협력업체"
  ElseIf lasik = "G108" Then
    Response.write "비급여진료비용"
ElseIf lasik = "G109" Then
    Response.write "빛창공모전"
  ElseIf lasik = "H101" Or lasik = "H102" Or lasik = "H103" Then
    Response.write "고객수술후기"
  ElseIf lasik = "H104" Or lasik = "H105" Or lasik = "H106" Then
    Response.write "의료진/직원 수술후기"
  ElseIf Left(lasik,4) = "I101" Then
    Response.write "자주하는 질문"
  ElseIf lasik = "I102" Or lasik = "I103" Or lasik = "I104" Or lasik = "I105" Then
    Response.write "진료상담"
  ElseIf lasik = "I106" Or lasik = "I107" Then
    Response.write "검사/진료예약"
  ElseIf lasik = "J101" Or lasik = "J102" Or lasik = "J103" Then
    Response.write "회원가입"
  ElseIf lasik = "J104" Then
    Response.write "회원수정"
  ElseIf lasik = "J105" Then
    Response.write "회원탈퇴"
  ElseIf lasik = "K101" Then
    Response.write "로그인"
  ElseIf lasik = "K102" or lasik = "K103" Then
    Response.write "아이디찾기"
  ElseIf lasik = "K104" Then
    Response.write "비밀번호찾기"
  ElseIf lasik = "L101" Then
    Response.write "개인정보처리방침"
  ElseIf lasik = "L102" Then
    Response.write "이용약관"
  End if
End Function

Function menu3(lasik)
  If Left(lasik,4) = "A101" then
    Response.write "비전"
  ElseIf Left(lasik,4) = "A102" Then
    Response.write "의료진소개"
  ElseIf lasik = "A103" Or lasik = "A105" Then
    Response.write "둘러보기"
  ElseIf Left(lasik,4) = "A104" Then
    Response.write "오시는길"
  ElseIf Left(lasik,4) = "B101" Then
    Response.write "신세계스마일이란"
  ElseIf Left(lasik,4) = "B102" Then
    Response.write "왜 신세계안과일까?"
  ElseIf Left(lasik,4) = "B103" Then
    Response.write "신세계스마일프로"
  ElseIf Left(lasik,4) = "C101" Then
    Response.write "신세계라식이란"
  ElseIf lasik = "C102" Or lasik = "C103" Or lasik = "C104" Or lasik = "C105" Then
    Response.write "신세계라식의 종류"
  ElseIf Left(lasik,4) = "D101" Then
    Response.write "신세계라섹이란"
  ElseIf lasik = "D102" or lasik = "D103" Or lasik = "D104" Or lasik = "D105" Or lasik = "D106" Then
    Response.write "신세계라섹의 종류"
  ElseIf Left(lasik,4) = "E101" Then
    Response.write "신세계렌즈삽입술이란"
  ElseIf lasik = "E102" Or lasik = "E103" Or lasik = "E104" Or lasik = "E105" Or lasik = "E106" Then
    Response.write "렌즈의 종류"
  ElseIf Left(lasik,4) = "F101" Then
    Response.write "노안이란"
  ElseIf Left(lasik,4) = "F102" Then
    Response.write "신세계안과를 선택하는 이유"
  ElseIf lasik = "F103" or lasik = "F104" or lasik = "F105" or lasik = "F106" Then
    Response.write "노안라식·스마일"
  ElseIf lasik = "F107" or lasik = "F108" or lasik = "F109" or lasik = "F110" or lasik = "F111" or lasik = "F112" Then
    Response.write "다초점렌즈삽입술"
 ElseIf Left(lasik,4)  = "F113" Then
    Response.write "알티플러스"
  ElseIf lasik = "G101" Or lasik = "G102" Then
    Response.write "이벤트소식"
  ElseIf lasik = "G103" Or lasik = "G104" Then
    Response.write "공지사항"
  ElseIf lasik = "G105" Or lasik = "G106" Then
    Response.write "보도자료"
  ElseIf lasik = "G107" Then
    Response.write "협력업체"
  ElseIf lasik = "G108" Then
    Response.write "비급여진료비용"
ElseIf lasik = "G109" Then
    Response.write "빛창공모전"
  ElseIf lasik = "H101" Or lasik = "H102" Or lasik = "H103" Or lasik = "H106" Or lasik = "H107" Then
    Response.write "고객수술후기"
  ElseIf lasik = "H104" Or lasik = "H105" Then
    Response.write "의료진/직원 수술후기"
  ElseIf Left(lasik,4) = "I101" Then
    Response.write "자주하는 질문"
  ElseIf lasik = "I102" Or lasik = "I103" Or lasik = "I104" Or lasik = "I105" Or lasik = "I108" Or lasik = "I109" Or lasik = "I100" Then
    Response.write "진료상담"
  ElseIf lasik = "I106" Or lasik = "I107" Then
    Response.write "검사/진료예약"
  ElseIf lasik = "J101" Or lasik = "J102" Or lasik = "J103" Then
    Response.write "회원가입"
  ElseIf lasik = "J104" Then
    Response.write "회원정보수정"
  ElseIf lasik = "J105" Then
    Response.write "회원탈퇴"
  ElseIf lasik = "K101" Then
    Response.write "로그인"
  ElseIf lasik = "K102" or lasik = "K103" Then
    Response.write "아이디찾기"
  ElseIf lasik = "K104" Then
    Response.write "비밀번호찾기"
  End if
End Function

Function sub_visual(lasik)
  If Left(lasik,3) = "A10" then
    Response.write "visual01"
  ElseIf Left(lasik,3) = "B10" Then
    Response.write "visual06"
  ElseIf Left(lasik,3) = "C10" Then
    Response.write "visual07"
  ElseIf Left(lasik,3) = "D10" Then
    Response.write "visual08"
  ElseIf Left(lasik,3) = "E10" Then
    Response.write "visual09"
  ElseIf Left(lasik,3) = "F10" Or Left(lasik,3) = "F11" Then
    Response.write "visual10"
  ElseIf Left(lasik,3) = "G10" Then
    Response.write "visual02"
  ElseIf Left(lasik,3) = "H10" Then
    Response.write "visual03"
  ElseIf Left(lasik,3) = "I10" Then
    Response.write "visual04"
  ElseIf Left(lasik,3) = "J10" Then
    Response.write "visual05"
  ElseIf Left(lasik,3) = "K10" Then
    Response.write "visual05"
  ElseIf Left(lasik,3) = "L10" Then
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
<div class="top_header">
    <div class="inner">
        <div class="language_switch">
            <div class="inner">
                <div class="language_current">
                    <img src="../../eng/img/american_flag.svg" />
                    ENG
                    <svg xmlns="http://www.w3.org/2000/svg" width="14" height="17" viewBox="0 0 14 17" fill="none">
                        <path d="M7 13L0.937822 5.5L13.0622 5.5L7 13Z" fill="black"/>
                    </svg>
                </div>
                <ul class="language_list">
                    <li>
                        <a href="/eng">
                            <img src="../../eng/img/american_flag.svg" />
                            ENG
                        </a>
                    </li>
                    <li>
                        <a href="/main01">
                            <img src="../../eng/img/korean_flag.png" />
                            KOR
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="login_wrap">
        <div class="inner">
            <ul class="login">
            <%If Len(session("useridid")) > 0 then%>
            <li><a href="/main01/K10/logout.asp">로그아웃</a></li>
            <li><a href="sub.asp?lasik=J104">회원정보수정</a></li>
            <%else%>
            <li><a href="sub.asp?lasik=K101">로그인</a></li>
            <li><a href="sub.asp?lasik=J101">회원가입</a></li>
            <%End if%>
            <li><a href="/main02">노안·백내장 바로가기</a></li>
            </ul>
        </div>
        </div>
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
<%If Len(session("useridid")) > 0 then%>
      <button type="button" onclick="location.href='sub.asp?lasik=J104';"></button>
<%else%>
      <button type="button" onclick="location.href='sub.asp?lasik=K101';"></button>
<%End if%>
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
          <li><a href="sub.asp?lasik=B103">신세계스마일프로</a></li>	  
	    </ul>
	  </div>
    </li>
    <li class="dp1"><a href="sub.asp?lasik=C101" title="라식">라식</a><span class="line"></span>
	  <div class="dp2">
	    <ul>
		  <li><a href="sub.asp?lasik=C101">신세계라식이란</a></li>
		  <li><a href="sub.asp?lasik=C103">신세계라식의 종류</a></li>
	    </ul>
	  </div>	
    </li>
    <li class="dp1"><a href="sub.asp?lasik=D101" title="라섹">라섹</a><span class="line"></span>
	  <div class="dp2">
	    <ul>
		  <li><a href="sub.asp?lasik=D101">신세계라섹이란</a></li>
		  <li><a href="sub.asp?lasik=D103">신세계라섹의 종류</a></li>
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
<%If Len(session("useridid")) > 0 then%>
    <li class="loginBtn"><a href="sub.asp?lasik=J104"><i></i></a></li>
<%else%>
    <li class="loginBtn"><a href="sub.asp?lasik=K101"><i></i></a></li>
<%End if%>
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
          <li><a href="sub.asp?lasik=B103">신세계스마일프로</a></li>          
        </ul>
      </li>
      <li class="full_dp1">
        <ul>
          <li class="tit"><a href="sub.asp?lasik=C101" title="라식">라식</a></li>
          <li><a href="sub.asp?lasik=C101">신세계라식이란</a></li>
          <li><a href="sub.asp?lasik=C103">신세계라식의 종류</a></li>
        </ul>
      </li>
      <li class="full_dp1">
        <ul>
          <li class="tit"><a href="sub.asp?lasik=D101" title="라섹">라섹</a></li>
          <li><a href="sub.asp?lasik=D101">신세계라섹이란</a></li>
          <li><a href="sub.asp?lasik=D103">신세계라섹의 종류</a></li>
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
	  <%If Len(session("useridid")) > 0 then%>
	  <li><a href="/main01/K10/logout.asp">로그아웃</a></li>
	  <li><a href="sub.asp?lasik=J104">회원정보수정</a></li>
	  <%else%>
	  <li><a href="sub.asp?lasik=K101">로그인</a></li>
	  <li><a href="sub.asp?lasik=J101">회원가입</a></li>
	  <%End if%>
      <li><a href="/main02">노안·백내장</a></li>
    </ul>
    <div class="language_switch">
        <div class="inner">
            <div class="language_current">
                <img src="../../eng/img/american_flag.svg" />
                ENG
                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="17" viewBox="0 0 14 17" fill="none">
                    <path d="M7 13L0.937822 5.5L13.0622 5.5L7 13Z" fill="black"/>
                </svg>
            </div>
            <ul class="language_list">
                <li>
                    <a href="/eng">
                        <img src="../../eng/img/american_flag.svg" />
                        ENG
                    </a>
                </li>
                <li>
                    <a href="/main01">
                        <img src="../../eng/img/korean_flag.png" />
                        KOR
                    </a>
                </li>
            </ul>
        </div>
    </div>
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
          <li><a href="sub.asp?lasik=B103">신세계스마일프로</a></li>  		  
		</ul>
	  </li>
	  <li><p>라식</p>
	    <ul class="ss_menu">
		  <li><a href="sub.asp?lasik=C101">신세계라식이란</a></li>
		  <li><a href="sub.asp?lasik=C103">신세계라식의 종류</a></li>
		</ul>
	  </li>
	  <li><p>라섹</p>
		<ul class="ss_menu">
		  <li><a href="sub.asp?lasik=D101">신세계라섹이란</a></li>
		  <li><a href="sub.asp?lasik=D103">신세계라섹의 종류</a></li>
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