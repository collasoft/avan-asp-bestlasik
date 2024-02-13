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
<style>
    .sub_content{
        width:100%;
       margin-bottom:50px;
    }
    .subpage .inner {
      max-width: 1410px;
      margin: 0 auto;
      width: 95%;
    }
  
    .arform {
      background: #fafafa;
      padding: 30px 0;
      margin-bottom: 60px;
    }
  
    .arform .inputbox {
      text-align: center;
      position: relative;
      max-width: 970px;
      width: 90%;
      margin: 0 auto;
    }
  
    .arform input {
      width: 100%;
      max-width: 970px;
      border-radius: 50px;
      border: 1px solid #ddd;
      height: 60px;
      line-height: 60px;
      padding-left: 20px;
    }
    .arform input::placeholder{
      color: #bbb;
      font-size: 16px;
    }
  
    .arform button {
      position: absolute;
      top: 45%;
      transform: translateY( -50%);
      text-align: right;
      right: 20px;
    }
  
    /********************************************************/
    .cnt_artist_part p {
      font-size: 16px;
      font-weight: 400;
      margin: 0;
    }
  
    .cnt_artist_part span {
      font-weight: 700;
      font-family: 'Montserrat', sans-serif;
      font-size: 18px;
      color: #812990;
    }
  
    .cnt_artist_part hr {
      border: none;
      background: #333;
      height: 3px;
      margin: 10px 0 30px 0;
    }
  
    /********************************************************/
    .contents_list_part{
        display: inline-block;
        width: 100%;
    }
    .contents_list_part li {
      display: inline-block;
      width: calc((100% - 90px)/4);
      float: left;
      margin-right: 30px;
      margin-bottom: 50px;
      cursor: pointer;
    }
  
    .contents_list_part li:nth-of-type(4n) {
      margin-right: 0;
    }
  
    .contents_list_part .image_box {
      position: relative;
      border:1px solid #ddd;
      padding:10px;
    }
    .contents_list_part .image_box:hover{
        border:1px solid #812990;
    }

    .contents_list_part .image_box:hover .img_bg{
        width:100%;
        position:relative;
    }
    .contents_list_part .image_box:hover .img_bg::before{
        content:'';
        background: rgba(0,0,0,0.2);
        position:relative;
        width:100%;
        height:99%;
        z-index:10;
    }

    .contents_list_part .image_box .img_bg img {
      position:relative;
      width:100%;
    }

    .contents_list_part .image_box .txt_box .txt01{
    box-sizing: border-box;
    overflow: hidden;
    width: 100%;
    padding: 0 20px;
    margin:10px 0;
    font-size: 20px;
    color: #333;
    text-overflow: ellipsis;
    white-space: nowrap;
    word-break: break-all;
    }
    .contents_list_part .image_box .txt_box .txt02{
        font-size: 18px;
    color: #b9bcc2;
    padding-left: 20px;
    }
  
    @media screen and (max-width:1024px) {
  
      .contents_list_part li {
        width: calc((100% - 60px)/3);
      }
  
      .contents_list_part li:nth-of-type(3n) {
        margin-right: 0;
      }
  
      .contents_list_part li:nth-of-type(4n) {
        margin-right: 30px;
      }
  
      .contents_list_part li:nth-of-type(12n) {
        margin-right: 0;
      }
  
      .contents_list_part li strong {
        font-size: 22px;
        margin-bottom: 3px;
      }
  
      .contents_list_part .image_box .hidden_txtbox .img_box01 p {
      font-size:18px;
      }
    }
  
    /********************************************************/
    @media screen and (max-width:768px) {
      #A_Container_Wrap .inner {
        width: 95%;
        padding: 0 0 0 0;
      }
  
      .contents_list_part li {
        width: calc((100% - 15px)/2);
        margin: 0 15px 30px 0;
      }
  
      .contents_list_part li:nth-of-type(3n) {
        margin: 0 15px 30px 0;
      }
  
      .contents_list_part li:nth-of-type(2n) {
        margin: 0 0px 30px 0;
      }
  
      .contents_list_part li:nth-of-type(6n) {
        margin-right: 0;
      }
  
      .contents_list_part .image_box .hidden_txtbox .img_box01 p {
        font-size:20px;
      }
  
    }
  
    /********************************************************/
    @media screen and (max-width:480px) {
     
  
      .contents_list_part .image_box .hidden_txtbox .img_box01 p {
        font-size:14px;
      }
      .contents_list_part .image_box .hidden_txtbox .img_box01 p span{
        font-size:13px;
      }
    }
  </style>
  
</head>
<body>
<div id="A_Wrap">
  <div id="A_Header">
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
	<div class="moduleCall">
	  <div class="avanModule">
		<div class="subpage">
		  <div class="inner">
			
			<section class="sub_content">
              <div class="search_wrap">
                <form name="list_search" id="list_search" method="post" action="?lasik=H101&gubun=a&bunryu=">
                <select name="gum1" id="gum1">
                  <option value="r_title">제목</option>
                  <option value="r_contents">내용</option>
                </select><input type="text" name="gum2" id="gum2" value="">
                <input type="image" src="image/sub/search.png" id="BtnSearch" onClick="return false" style="cursor:pointer;" />
                </form>
              </div>
			  <article class="contents_list_part">
				<ul class="clear">
				  <li>
					<a href="notice_view.asp">
					  <div class="image_box">
                        <div class="img_bg">
                            <img src="image/sub/notice_01.jpg">
                        </div>
						<div class="txt_box">
                            <p class="txt01">제목이 출력됩니다</p>
                            <p class="txt02">2021-06-14 ~ 2021-06-15</p>
                        </div>
                      </div>
                     </a>
                 </li>
                 <li>
					<a href="notice_view.asp">
					  <div class="image_box">
                        <div class="img_bg">
                            <img src="image/sub/notice_01.jpg">
                        </div>
						<div class="txt_box">
                            <p class="txt01">제목이 출력됩니다</p>
                            <p class="txt02">2021-06-14 ~ 2021-06-15</p>
                        </div>
                      </div>
                     </a>
                 </li>
                 <li>
					<a href="notice_view.asp">
					  <div class="image_box">
                        <div class="img_bg">
                            <img src="image/sub/notice_01.jpg">
                        </div>
						<div class="txt_box">
                            <p class="txt01">제목이 출력됩니다</p>
                            <p class="txt02">2021-06-14 ~ 2021-06-15</p>
                        </div>
                      </div>
                     </a>
                 </li>
                 <li>
					<a href="notice_view.asp">
					  <div class="image_box">
                        <div class="img_bg">
                            <img src="image/sub/notice_01.jpg">
                        </div>
						<div class="txt_box">
                            <p class="txt01">제목이 출력됩니다</p>
                            <p class="txt02">2021-06-14 ~ 2021-06-15</p>
                        </div>
                      </div>
                     </a>
                 </li>
                 <li>
					<a href="notice_view.asp">
					  <div class="image_box">
                        <div class="img_bg">
                            <img src="image/sub/notice_01.jpg">
                        </div>
						<div class="txt_box">
                            <p class="txt01">제목이 출력됩니다</p>
                            <p class="txt02">2021-06-14 ~ 2021-06-15</p>
                        </div>
                      </div>
                     </a>
                 </li>
                 <li>
					<a href="notice_view.asp">
					  <div class="image_box">
                        <div class="img_bg">
                            <img src="image/sub/notice_01.jpg">
                        </div>
						<div class="txt_box">
                            <p class="txt01">제목이 출력됩니다</p>
                            <p class="txt02">2021-06-14 ~ 2021-06-15</p>
                        </div>
                      </div>
                     </a>
                 </li>
                 <li>
					<a href="notice_view.asp">
					  <div class="image_box">
                        <div class="img_bg">
                            <img src="image/sub/notice_01.jpg">
                        </div>
						<div class="txt_box">
                            <p class="txt01">제목이 출력됩니다</p>
                            <p class="txt02">2021-06-14 ~ 2021-06-15</p>
                        </div>
                      </div>
                     </a>
                 </li>
                 <li>
					<a href="notice_view.asp">
					  <div class="image_box">
                        <div class="img_bg">
                            <img src="image/sub/notice_01.jpg">
                        </div>
						<div class="txt_box">
                            <p class="txt01">제목이 출력됩니다</p>
                            <p class="txt02">2021-06-14 ~ 2021-06-15</p>
                        </div>
                      </div>
                     </a>
                 </li>
						
					
				</ul>
			  </article>
			</section>
            <div class="list_page">
                <div class='list_page'>
                    <a href="" class="first_btn">처음</a>
                    <a href="" class="first2_btn">이전</a>
                    <ul>
                        <li><a href="#" class="on">1</a></li>
                        <li><a href="">2</a></li>
                        <li><a href="">3</a></li>
                        <li><a href="">4</a></li>
                        <li><a href="">5</a></li>
                        <li><a href="">6</a></li>
                        <li><a href="">7</a></li>
                        <li><a href="">8</a></li>
                        <li><a href="">9</a></li>
                        <li><a href="">10</a></li>
                    </ul>
                    <a href="" class="last2_btn">다음</a>
                    <a href="" class="last_btn">맨뒤</a>
                </div>
              </div>
			
		  </div>
		</div>
	  </div>
	</div>
  </div><!-- #A_Container_Wrap -->
  <div id="A_Footer">
  </div><!-- #A_Footer 끝 -->
</div><!-- #A_Wrap 끝 -->
</body>
</html>