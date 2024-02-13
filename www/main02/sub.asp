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
<!DOCTYPE html>
<html>
<head>
<!-- #include virtual="/main02/_inc/head1.asp" -->
<!-- head.asp 끝 -->

<!-- s: 현재페이지에만 적용할 특정 스크립트 추가영역 -->
<link rel="stylesheet" href="_css/sub.css?ver20200122" />
<!-- e: 현재페이지에만 적용할 특정 스크립트 추가영역 -->
</head>
<body>
<div id="A_Wrap">
  <div id="A_Header">
	<!-- #include virtual="/main02/_inc/header1.asp" -->
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
			<li><a href="/main02/sub.asp?eye=H106">진료예약</a></li>
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
		<div id="sub_visual" class="<%sub_visual(request("eye"))%> pc_sub_visual"></div>
		<div id="sub_visual" class="<%sub_visual(request("eye"))%> m_sub_visual"></div>
	  </div>

      <%If Left(request("eye"),3) <> "K10" then%>

	  <div class="sub_menu_bar">
		<ul class="sub_menu_title">
		  <li><a href="/main02/"></a></li>

		  <li><p class="sub_menu_txt"><%menu1(request("eye"))%></p>
			<ul class="sub_menu_box">
              <li <%If Left(request("eye"),3) = "A10" then%>style="display:none;"<%End if%>><a href="sub.asp?eye=A101">병원소개</a></li>
			  <li <%If Left(request("eye"),3) = "B10" Or Left(request("eye"),3) = "B11" then%>style="display:none;"<%End if%>><a href="sub.asp?eye=B101">백내장</a></li>
			  <li <%If Left(request("eye"),3) = "C10" Or Left(request("eye"),3) = "C11" then%>style="display:none;"<%End if%>><a href="sub.asp?eye=C101">신세계노안</a></li>
			  <li <%If Left(request("eye"),3) = "D10" then%>style="display:none;"<%End if%>><a href="sub.asp?eye=D101">눈성형</a></li>
			  <li <%If Left(request("eye"),3) = "E10" Or Left(request("eye"),3) = "E11" then%>style="display:none;"<%End if%>><a href="sub.asp?eye=E101">안종합질환</a></li>
			  <li <%If Left(request("eye"),3) = "F10" then%>style="display:none;"<%End if%>><a href="sub.asp?eye=F101">정보센터</a></li>
			  <li <%If Left(request("eye"),3) = "G10" then%>style="display:none;"<%End if%>><a href="sub.asp?eye=G101&gubun=a">체험기</a></li>
			  <li <%If Left(request("eye"),3) = "H10" then%>style="display:none;"<%End if%>><a href="sub.asp?eye=H101">상담및예약</a></li>
			</ul>
		  </li>
		  <li><p class="sub_menu_txt"><%menu3(request("eye"))%></p>
		    <ul class="sub_menu_box">
			  <%If Left(request("eye"),3) = "A10" then%>
			  <li><a href="sub.asp?eye=A101">비전</a></li>
			  <li><a href="sub.asp?eye=A102">의료진소개</a></li>
			  <li><a href="sub.asp?eye=A103">둘러보기</a></li>
			  <li><a href="sub.asp?eye=A104">오시는길</a></li>
			  <%ElseIf Left(request("eye"),3) = "B10" Or Left(request("eye"),3) = "B11" then%>
			  <li><a href="sub.asp?eye=B102">왜 신세계백내장일까</a></li>
			  <li><a href="sub.asp?eye=B101">백내장이란</a></li>
			  <!-- <li><a href="sub.asp?eye=B105">다초점 인공수정체</a></li> -->
			  <%ElseIf Left(request("eye"),3) = "C10" Or Left(request("eye"),3) = "C11" then%>
			  <li><a href="sub.asp?eye=C102">왜 신세계 노안·백내장일까</a></li>
			  <li><a href="sub.asp?eye=C101">노안이란</a></li>
			  <li><a href="sub.asp?eye=C107">다초점 인공수정체</a></li>		  
			  <li><a href="sub.asp?eye=C103">신세계노안라식·스마일</a></li>
<!--			  <li><a href="sub.asp?eye=C107">다초점 인공수정체</a></li>-->
			  <%ElseIf Left(request("eye"),3) = "D10" then%>
			  <li><a href="sub.asp?eye=D101">눈매교정술(매몰법)</a></li>
			  <li><a href="sub.asp?eye=D102">상안검절개술</a></li>
			  <li><a href="sub.asp?eye=D103">하안검절개술</a></li>
			  <li><a href="sub.asp?eye=D104">안검내반</a></li>
			  <li><a href="sub.asp?eye=D105">안검외반</a></li>
			  <li><a href="sub.asp?eye=D106">앞트임</a></li>
			  <li><a href="sub.asp?eye=D107">안검하수</a></li>
			  <li><a href="sub.asp?eye=D108">보톡스</a></li>
			  <%ElseIf Left(request("eye"),3) = "E10" Or Left(request("eye"),3) = "E11" then%>
			  <li><a href="sub.asp?eye=E101">사시</a></li>
			  <li><a href="sub.asp?eye=E102">약시</a></li>
			  <li><a href="sub.asp?eye=E103">망막</a></li>
			  <li><a href="sub.asp?eye=E107">녹내장</a></li>
			  <li><a href="sub.asp?eye=E108">익상편</a></li>
			  <li><a href="sub.asp?eye=E109">안구건조증</a></li>
			  <li><a href="sub.asp?eye=E110">검열반</a></li>
			  <%ElseIf Left(request("eye"),3) = "F10" then%>
			  <li><a href="sub.asp?eye=F101">이벤트소식</a></li>
			  <li><a href="sub.asp?eye=F109">빛창공모전</a></li>
			  <li><a href="sub.asp?eye=F103">공지사항</a></li>
			  <li><a href="sub.asp?eye=F105">보도자료</a></li>
			  <li><a href="sub.asp?eye=F107">협력업체</a></li>
			  <li><a href="sub.asp?eye=F108">비급여진료비용</a></li>
			  <%ElseIf Left(request("eye"),3) = "G10" then%>
			  <li><a href="sub.asp?eye=G101&gubun=a">고객수술후기</a></li>
			  <li><a href="sub.asp?eye=G104&gubun=b">의료진/직원 수술후기</a></li>
			  <%ElseIf Left(request("eye"),3) = "H10" then%>
			  <li><a href="sub.asp?eye=H101">자주하는 질문</a></li>
			  <li><a href="sub.asp?eye=H102">진료상담</a></li>
			  <li><a href="sub.asp?eye=H106">검사/진료예약</a></li>
			  <%ElseIf Left(request("eye"),3) = "I10" then%>
			  <li><a href="sub.asp?eye=I101">회원가입</a></li>
			  <li><a href="sub.asp?eye=I104">회원수정</a></li>
			  <li><a href="sub.asp?eye=I105">회원탈퇴</a></li>
			  <%ElseIf Left(request("eye"),3) = "J10" then%>
			  <li><a href="sub.asp?eye=J101">로그인</a></li>
			  <li><a href="sub.asp?eye=J102">아이디찾기</a></li>
			  <li><a href="sub.asp?eye=J104">비밀번호찾기</a></li>
			  <%End if%>
			</ul>
		  </li>
		</ul>
	  </div>

      <%End if%>

	  <div class="sub_content">
	    <!-- 내용 입력 -->

		<%
		  Dim lasik_folder
		  lasik_folder = left(request("eye"),3)
		  If lasik_folder = "B11" Then
		    lasik_folder = "B10"
		  elseIf lasik_folder = "C11" Then
		    lasik_folder = "C10"
		  elseIf lasik_folder = "E11" Then
		    lasik_folder = "E10"
	      End If

		  If lasik_folder = "A10" Then%>
		    <!--#include virtual = "/main02/A10/index.asp"--><%
		  elseif lasik_folder = "B10" Then%>
		    <!--#include virtual = "/main02/B10/index.asp"--><%
		  elseif lasik_folder = "C10" Then%>
		    <!--#include virtual = "/main02/C10/index.asp"--><%
		  elseif lasik_folder = "D10" Then%>
		    <!--#include virtual = "/main02/D10/index.asp"--><%
		  elseif lasik_folder = "E10" Then%>
		    <!--#include virtual = "/main02/E10/index.asp"--><%
		  elseif lasik_folder = "F10" Then%>
		    <!--#include virtual = "/main02/F10/index.asp"--><%
		  elseif lasik_folder = "G10" Then%>
		    <!--#include virtual = "/main02/G10/index.asp"--><%
		  elseif lasik_folder = "H10" Then%>
		    <!--#include virtual = "/main02/H10/index.asp"--><%
		  elseif lasik_folder = "I10" Then%>
		    <!--#include virtual = "/main02/I10/index.asp"--><%
		  elseif lasik_folder = "J10" Then%>
		    <!--#include virtual = "/main02/J10/index.asp"--><%
		  elseif lasik_folder = "K10" Then%>
		    <!--#include virtual = "/main02/K10/index.asp"--><%
		  End if

		  'server.Execute("/main02/"&lasik_folder&"/index.asp")
		%>
      </div>
    </div><!-- #A_Container END -->
    <!-- // Container 끝 --> 
  </div><!-- #A_Container_Wrap -->
  <div id="A_Footer">
	<!-- #include virtual="/main02/_inc/footer.asp" -->
  </div><!-- #A_Footer 끝 -->
</div><!-- #A_Wrap 끝 -->
</body>
</html>