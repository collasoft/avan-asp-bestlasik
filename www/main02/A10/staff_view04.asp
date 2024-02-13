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
				<div id="sub_visual" class="visual01">
					<div class="sub_visual_txt">
						<p class="visual_txt01">의료진소개</p>
					</div>
				</div>
			</div>
			<div class="sub_menu_bar">
				<ul class="sub_menu_title">
					<li><a href="default.asp"></a></li>
					<li><p class="sub_menu_txt">병원소개</p>
						<ul class="sub_menu_box">
							<li><a href="">백내장</a></li>
							<li><a href="">노안클리닉</a></li>
							<li><a href="">눈성형</a></li>
							<li><a href="">안구종합질환</a></li>
							<li><a href="">정보센터</a></li>
							<li><a href="">체험기</a></li>
							<li><a href="">상담및예약</a></li>
						</ul>
					</li>
					<li><p class="sub_menu_txt">의료진소개</p>
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
				<div class="staff"> 
					<div class="inner">
					<ul class="staff_view">
						<li><img src="image/sub/staffview_img04.png" alt=""/></li>
						<li>
							<div class="title_wrap">
								<p class="title">망막/백내장 안과전문의</p>
								<p class="name"><span>김찬영</span> 원장</p>
							</div>
							
							<div class="field">
								<p class="sub_title">진료과목</p>
								<ul> 
									<li>백내장</li>
									<li>망막</li>
									<li>외안부</li>
								</ul>
							</div>
							
							<div class="intro">
								<p class="sub_title">약력</p>
								<ul> 
									<li>전남대학교 의과대학 졸업</li>
									<li>가톨릭의대 서울성모병원 인턴 / 전공의 과정 수료</li>
									<li>VISION CARE SERVICE</li>
									<li>한국백내장굴절수술학회 정회원</li>
									<li>대한안과학회 정회원</li>
									<li>충주성모안과 원장</li>
								</ul>
							</div>
						</li>
					</ul>
					
					<p class="content_title">진료시간</p>
					<table>
						<colgroup>
							<col style="width:14%" />
							<col style="width:14%" />
							<col style="width:14%" />
							<col style="width:14%" />
							<col style="width:14%" />
							<col style="width:14%" />
							<col style="width:14%" />
						</colgroup>
						<thead> 
							<tr> 
								<th>구분</th>
								<th>월</th>
								<th>화</th>
								<th>수</th>
								<th>목</th>
								<th>금</th>
								<th>토</th>
							</tr>
						</thead>
						<tbody> 
							<tr> 
								<th>오전</th>
								<td>진료/수술</td>
								<td><img src="image/sub/none.png" alt=""/></td>
								<td>진료/수술</td>
								<td>진료/수술</td>
								<td>진료/수술</td>
								<td>진료/수술</td>
							</tr>
							<tr> 
								<th>오후</th>
								<td>진료/수술</td>
								<td>진료/수술</td>
								<td>진료/수술</td>
								<td>진료/수술</td>
								<td>진료/수술</td>
								<td>진료/수술</td>
							</tr>
						</tbody>
					</table>
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
