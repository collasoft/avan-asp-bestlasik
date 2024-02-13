<!--#include virtual = "/AVANplus/BuilderStart.asp" -->
<!------------------------------------------------------
	위 코드는 빌더가 시작되는 함수 호출부분입니다.
	페이지 맨상단에 들어가야 합니다.
	(그래서 주석도 하단에 작성함!)
-------------------------------------------------------->
<!------------------------------------------------------
	홈페이지에서 별도로 사용하는 함수 모음입니다.
-------------------------------------------------------->
<!--#include file = "_config.asp" -->
<!DOCTYPE html>
<html>
<head>
<!-- #include file="_inc/head.asp" -->
<!-- head.asp 끝 -->

<!-- s: 현재페이지에만 적용할 특정 스크립트 추가영역 -->
<link rel="stylesheet" href="_css/sub.css" />
<!-- e: 현재페이지에만 적용할 특정 스크립트 추가영역 -->
<script type="text/javascript"> 
$(document).ready(function(){ 
	var fileTarget = $('.filebox .upload-hidden'); 

	fileTarget.on('change', function(){ // 값이 변경되면
	 if(window.FileReader){ // modern browser 
	 var filename = $(this)[0].files[0].name; 
	 } else { // old IE 
	 var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출 
	 } 
	 // 추출한 파일명 삽입 
	 $(this).siblings('.upload-name').val(filename); 
	 }); 
 }); 

</script>

</head>

<body>
<div id="A_Wrap">
	<div id="A_Header">
		<!-- #include file="_inc/header.asp" -->

    </div><!-- #A_Header 끝 -->
	<div class="sub_quick"> 
		<div class="sub_top"><a href="#">TOP</a></div>
	</div>
    <div id="A_Container_Wrap">
        <!-- Container 시작 -->
        <div id="A_Container">
			<div id="visual">
				<div id="sub_visual" class="visual03">
					<div class="sub_visual_txt">
						<p class="visual_txt01">진료상담</p>
					</div>
				</div>
			</div>
			<div class="sub_menu_bar">
					<ul class="sub_menu_title">
						<li><a href="default.asp"></a></li>
						<li><p class="sub_menu_txt">회원</p>
							<ul class="sub_menu_box">
								<li><a href="">3D스마일라식</a></li>
								<li><a href="">라식</a></li>
								<li><a href="">라섹</a></li>
								<li><a href="">렌즈삽입술</a></li>
								<li><a href="">노안라식</a></li>
								<li><a href="">정보센터</a></li>
								<li><a href="">체험기</a></li>
								<li><a href="">상담및예약</a></li>
							</ul>
						</li>
						<li><p class="sub_menu_txt">회원가입</p>
							<ul class="sub_menu_box">
								<li><a href="">비전</a></li>
								<li><a href="">의료진소개</a></li>
								<li><a href="">둘러보기</a></li>
								<li><a href="">오시는길</a></li>
							</ul>
						</li>
					</ul>
			</div>
			<div class="sub_content">
				<!-- 내용 입력 -->
				<div class="consulting"> 
					<div class="inner">
					<div class="input_form">
						<form action="">
						<div class="private"> 
							<p class="txt01">비공개 게시글입니다.</p>
							<p class="txt02">열람을 원하시면 작성시 입력하셨던 비밀번호를 입력해주세요</p>
							<input type="password" />
						</div>
						
						<div class="subbtn_wrap">
							<input type="button" value="취소" class="btn01"/><input type="button" value="확인" class="btn02"/>
						</div>
						
						
						</form>
					</div>
					
				</div>
				</div>
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
