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
    var today = null;
    var year = null;
    var month = null;
    var firstDay = null;
    var lastDay = null;
    var $tdDay = null;
    var $tdSche = null;
 
    $(document).ready(function() {
        drawCalendar();
        initDate();
        drawDays();
        $("#movePrevMonth").on("click", function(){movePrevMonth();});
        $("#moveNextMonth").on("click", function(){moveNextMonth();});

        $('.calendar td').click(function () {
/*        	if($(this).hasClass('open')) {
        		$(this).removeClass('open');	
				console.log("aaa");
        		$('.schedule_detail').slideUp();
        	} else {
	        	$(this).addClass('open');
	        	$(this).siblings().removeClass('open');
	        	$(this).parent().siblings().children().removeClass('open');
				console.log("bbb");
	        	$('.schedule_detail').slideDown();
	        }*/
			var year = $("#cal_top_year").text();
			var month = $("#cal_top_month").text().replace(/./, "");
			var day = $(this).html().replace(/ /gi, "").replace(/(<([^>]+)>)/ig,"");

//			console.log(year+month+day);
			$(location).attr("href", "calender02.asp?year=" + year + "&month=" + month + "&day=" + day);
        })
    });
    
    //calendar 그리기
    function drawCalendar(){
        var setTableHTML = "";
        setTableHTML+='<table class="calendar">';
        setTableHTML+='<colgroup><col style="width:14.2857%"><col style="width:14.2857%"><col style="width:14.2857%"><col style="width:14.2857%"><col style="width:14.2857%"><col style="width:14.2857%"><col style="width:14.2857%"></colgroup>';
        setTableHTML+='<thead><tr class="dayofweek"><th class="sunday">일</th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th><th class="saturday">토</th></tr></thead>';
        for(var i = 0; i < 6; i++){
            setTableHTML+='<tr>';
            for(var j=0;j<7;j++){
                setTableHTML+='<td>';
                setTableHTML+='    <div class="cal-day"></div>';
                setTableHTML+='</td>';
            }
            setTableHTML+='</tr>';
        }
        setTableHTML+='</table>';
        $("#cal_tab").html(setTableHTML);
    }
 
    //날짜 초기화
    function initDate(){
        $tdDay = $("td div.cal-day")
        $tdSche = $("td div.cal-schedule p")
        dayCount = 0;
        today = new Date();
        year = today.getFullYear();
        month = today.getMonth()+1;
        firstDay = new Date(year,month-1,1);
        lastDay = new Date(year,month,0);
    }
    
    //calendar 날짜표시
    function drawDays(){
        $("#cal_top_year").text(year);
        if(month < 10){
            $("#cal_top_month").text('.'+'0'+month);

        } else {
        	$("#cal_top_month").text('.'+month);
        }

        for(var i=firstDay.getDay(); i<firstDay.getDay()+lastDay.getDate(); i++){
            $tdDay.eq(i).text(++dayCount);
        }
        for(var i=0;i<42;i+=7){
            $tdDay.eq(i).parent().addClass('sunday');
        }
        for(var i=6;i<42;i+=7){
            $tdDay.eq(i).parent().addClass('saturday');
        }
    }
 
    //calendar 월 이동
    function movePrevMonth(){
        month--;
        if(month<=0){
            month=12;
            year--;
        }
        getNewInfo();
        }
    
    function moveNextMonth(){
        month++;
        if(month>12){
            month=1;
            year++;
        }
        getNewInfo();
    }

    
    function getNewInfo(){
        for(var i=0;i<42;i++){
            $tdDay.eq(i).text("");
        }
        dayCount=0;
        firstDay = new Date(year,month-1,1);
        lastDay = new Date(year,month,0);
        drawDays();
    }
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
				<div class="calenderDiv">
					<div class="inner">
						<div class="titArea">
							<h2 class="tit">신세계안과 <span>진료예약</span></h2>
							<p class="txt">원하시는 날짜를 선택해서 예약해주세요. 예약은 작성 후 수정/삭제가 불가능하므로 신중하게 작성해주시고 예약시간 변경을 원하실 경우 전화로 신청해주셔야 합니다.
							<span>앞으로도 수술에 대한 믿음과 신뢰를 줄 수 있는 신세계 안과가 되겠습니다.</span></p>
						</div>
						<div class="calArea">
							<div class="cal_top">
						        <button type="button" id="movePrevMonth">이전달</button>
						        <span id="cal_top_year"></span>
						        <span id="cal_top_month"></span>
						        <button type="button" id="moveNextMonth">다음달</button>
						    </div>
						    <div id="cal_tab" class="cal">
						    </div>
						</div>
					</div>
					
				</div>
				<!-- 내용 입력 -->

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
