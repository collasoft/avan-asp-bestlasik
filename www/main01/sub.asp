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
<!-- #include virtual="/main01/_inc/head.asp" -->

<!-- s: 현재페이지에만 적용할 특정 스크립트 추가영역 -->
<link rel="stylesheet" href="_css/sub.css?ver20200122" />
<!-- e: 현재페이지에만 적용할 특정 스크립트 추가영역 -->
</head>
<body>
<div id="A_Wrap">
  <div id="A_Header">
	<!-- #include virtual="/main01/_inc/header.asp" -->
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
		<div id="sub_visual" class="<%sub_visual(request("lasik"))%> pc_sub_visual">
		</div>
    <div id="sub_visual" class="<%sub_visual(request("lasik"))%> m_sub_visual">
		</div>
     
      </div>

      <%If Left(request("lasik"),3) <> "L10" then%>

	  <div class="sub_menu_bar">
		<ul class="sub_menu_title">
		  <li><a href="/main01/"></a></li>
		  <li><p class="sub_menu_txt"><%menu1(request("lasik"))%></p>
			<ul class="sub_menu_box">
              <li <%If Left(request("lasik"),3) = "A10" then%>style="display:none;"<%End if%>><a href="sub.asp?lasik=A101">병원소개</a></li>
			  <li <%If Left(request("lasik"),3) = "B10" then%>style="display:none;"<%End if%>><a href="sub.asp?lasik=B101">신세계스마일</a></li>
			  <li <%If Left(request("lasik"),3) = "C10" then%>style="display:none;"<%End if%>><a href="sub.asp?lasik=C101">라식</a></li>
			  <li <%If Left(request("lasik"),3) = "D10" then%>style="display:none;"<%End if%>><a href="sub.asp?lasik=D101">라섹</a></li>
			  <li <%If Left(request("lasik"),3) = "E10" then%>style="display:none;"<%End if%>><a href="sub.asp?lasik=E101">렌즈삽입술</a></li>
			  <li <%If Left(request("lasik"),3) = "F10" Or Left(request("lasik"),3) = "F11" then%>style="display:none;"<%End if%>><a href="sub.asp?lasik=F101">노안라식</a></li>
			  <li <%If Left(request("lasik"),3) = "G10" then%>style="display:none;"<%End if%>><a href="sub.asp?lasik=G101">정보센터</a></li>
			  <li <%If Left(request("lasik"),3) = "H10" then%>style="display:none;"<%End if%>><a href="sub.asp?lasik=H101&gubun=a">체험기</a></li>
			  <li <%If Left(request("lasik"),3) = "I10" then%>style="display:none;"<%End if%>><a href="sub.asp?lasik=I101">상담・예약</a></li>
			</ul>
		  </li>
		  <li><p class="sub_menu_txt"><%menu3(request("lasik"))%></p>
			<ul class="sub_menu_box">
			  <%If Left(request("lasik"),3) = "A10" then%>
			  <li><a href="sub.asp?lasik=A101">비전</a></li>
			  <li><a href="sub.asp?lasik=A102">의료진소개</a></li>
			  <li><a href="sub.asp?lasik=A103">둘러보기</a></li>
			  <li><a href="sub.asp?lasik=A104">오시는길</a></li>
			  <%ElseIf Left(request("lasik"),3) = "B10" then%>
			  <li><a href="sub.asp?lasik=B102">왜 신세계안과일까?</a></li>
			  <li><a href="sub.asp?lasik=B101">신세계스마일이란</a></li>			  
			  <%ElseIf Left(request("lasik"),3) = "C10" then%>
			  <li><a href="sub.asp?lasik=C101">신세계라식이란</a></li>
			  <li><a href="sub.asp?lasik=C102">신세계라식의 종류</a></li>
			  <%ElseIf Left(request("lasik"),3) = "D10" then%>
			  <li><a href="sub.asp?lasik=D101">신세계라섹이란</a></li>
			  <li><a href="sub.asp?lasik=D103">신세계라섹의 종류</a></li>
			  <%ElseIf Left(request("lasik"),3) = "E10" then%>
			  <li><a href="sub.asp?lasik=E101">신세계렌즈삽입술이란?</a></li>
			  <li><a href="sub.asp?lasik=E102">렌즈의 종류</a></li>
			  <%ElseIf Left(request("lasik"),3) = "F10" Or Left(request("lasik"),3) = "F11" then%>
			  <li><a href="sub.asp?lasik=F101">노안이란</a></li>
			  <li><a href="sub.asp?lasik=F103">노안라식·스마일</a></li>
               <li><a href="sub.asp?lasik=F113">알티플러스</a></li>
			  <%ElseIf Left(request("lasik"),3) = "G10" then%>
			  <li><a href="sub.asp?lasik=G101">이벤트소식</a></li>
			  <li><a href="sub.asp?lasik=G109">빛창공모전</a></li>
			  <li><a href="sub.asp?lasik=G103">공지사항</a></li>
			  <li><a href="sub.asp?lasik=G105">보도자료</a></li>
			  <li><a href="sub.asp?lasik=G107">협력업체</a></li>
			  <li><a href="sub.asp?lasik=G108">비급여진료비용</a></li>
			  <%ElseIf Left(request("lasik"),3) = "H10" then%>
			  <li><a href="sub.asp?lasik=H101&gubun=a">고객수술후기</a></li>
			  <li><a href="sub.asp?lasik=H104&gubun=b">의료진/직원 수술후기</a></li>
			  <%ElseIf Left(request("lasik"),3) = "I10" then%>
			  <li><a href="sub.asp?lasik=I101">자주하는 질문</a></li>
			  <li><a href="sub.asp?lasik=I102">진료상담</a></li>
			  <li><a href="sub.asp?lasik=I106">검사/진료예약</a></li>
			  <%ElseIf Left(request("lasik"),3) = "J10" then%>
			  <%If Len(session("useridid")) > 0 then%>
			  <li><a href="sub.asp?lasik=J104">회원정보수정</a></li>
			  <li><a href="sub.asp?lasik=J105">회원탈퇴</a></li>
			  <%else%>
			  <li><a href="sub.asp?lasik=J101">회원가입</a></li>
			  <%End if%>
			  <%ElseIf Left(request("lasik"),3) = "K10" then%>
			  <li><a href="sub.asp?lasik=K101">로그인</a></li>
			  <li><a href="sub.asp?lasik=K102">아이디찾기</a></li>
			  <li><a href="sub.asp?lasik=K104">비밀번호찾기</a></li>
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
		  lasik_folder = left(request("lasik"),3)
		  If lasik_folder = "F11" Then
		    lasik_folder = "F10"
	      End If

		  If lasik_folder = "A10" Then%>
		    <!--#include virtual = "/main01/A10/index.asp"--><%
		  elseif lasik_folder = "B10" Then%>
		    <!--#include virtual = "/main01/B10/index.asp"--><%
		  elseif lasik_folder = "C10" Then%>
		    <!--#include virtual = "/main01/C10/index.asp"--><%
		  elseif lasik_folder = "D10" Then%>
		    <!--#include virtual = "/main01/D10/index.asp"--><%
		  elseif lasik_folder = "E10" Then%>
		    <!--#include virtual = "/main01/E10/index.asp"--><%
		  elseif lasik_folder = "F10" Then%>
		    <!--#include virtual = "/main01/F10/index.asp"--><%
		  elseif lasik_folder = "G10" Then%>
		    <!--#include virtual = "/main01/G10/index.asp"--><%
		  elseif lasik_folder = "H10" Then%>
		    <!--#include virtual = "/main01/H10/index.asp"--><%
		  elseif lasik_folder = "I10" Then%>
		    <!--#include virtual = "/main01/I10/index.asp"--><%
		  elseif lasik_folder = "J10" Then%>
		    <!--#include virtual = "/main01/J10/index.asp"--><%
		  elseif lasik_folder = "K10" Then%>
		    <!--#include virtual = "/main01/K10/index.asp"--><%
		  elseif lasik_folder = "L10" Then%>
		    <!--#include virtual = "/main01/L10/index.asp"--><%
		  End if
		  
		 ' server.Execute("/main01/"&lasik_folder&"/index.asp")
		%>
	  </div>
    </div><!-- #A_Container END -->
    <!-- // Container 끝 --> 
  </div><!-- #A_Container_Wrap -->
  <div id="A_Footer">
    <!-- #include file="_inc/footer.asp" -->
  </div><!-- #A_Footer 끝 -->
</div><!-- #A_Wrap 끝 -->
</body>
</html>