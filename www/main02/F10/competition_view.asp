<!--s: 현재 페이지에만 적용할 특정 스크립트 추가영역-->
<meta charset="utf-8">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<!--e: 현재 페이지에만 적용할 특정 스크립트 추가영역-->
 <!-- Demo styles -->
    <style>
      html,
      body {
		background: #fff !important;
        position: relative;
        height: 100%;
      }

      body {
        background: #eee;
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 14px;
        color: #000;
        margin: 0;
        padding: 0;
      }
      #sub_content .inner{
          max-width: 1400px;
          margin:0 auto;
          width: 100%;
      }

      #sub_content .swiper-container {
        width: 100%;
      }
      #sub_content .swiper-container > .swiper-wrapper{
          height:auto;
          padding-bottom: 90px;
      }

      #sub_content .swiper-slide {
          margin-right:55px !important;
        text-align: center;
        font-size: 18px;
        background: #fff;
        /* Center slide text vertically */
        display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
     
        cursor:pointer;
      }
	  #sub_content .swiper-slide .img_box{
		  width:420px;
		  height:595px;
	  }
      #sub_content .swiper-slide img {
        display: block;
        width: 100%;
        height: 100%;
        object-fit: cover;
		position: relative;
      }

      #sub_content .swiper-container {
        width: 100%;
        margin: 20px auto;
        padding-bottom:0;
      }
      #sub_content .append-buttons {
        text-align: center;
        margin-top: 20px;
      }

      #sub_content .append-buttons button {
        display: inline-block;
        cursor: pointer;
        border: 1px solid #007aff;
        color: #007aff;
        text-decoration: none;
        padding: 4px 10px;
        border-radius: 4px;
        margin: 0 10px;
        font-size: 13px;
      }
      #sub_content .page{
          position: relative;
          width:300px;
          margin: 0 auto;
      }
      #sub_content .swiper-button-next, .swiper-button-prev{
          color:#333;
          height:50px;
      }
      #sub_content .swiper-button-prev:after, .swiper-container-rtl .swiper-button-next:after{
          content:none !important;
      }
    
      #sub_content .swiper-button-next:after, .swiper-container-rtl .swiper-button-prev:after{
          content:none !important; 
      }
      #sub_content .swiper-container-horizontal>.swiper-pagination-bullets, .swiper-pagination-custom, .swiper-pagination-fraction{
        bottom:-11px;
        z-index:-10;
      }
      #sub_content .swiper-button-prev, .swiper-container-rtl .swiper-button-next {
          left: 90px;
          right: auto;
          cursor:pointer;
      }
      #sub_content .swiper-button-next, .swiper-container-rtl .swiper-button-prev {
          right: 90px;
          left: auto;
          cursor:pointer;
      }

  #view_popup {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: 100;
    visibility:hidden;
    background: #fff;
    transition: .5s ease;
    overflow: scroll;
    z-index:99999;
  }

  .fixed{
    overflow: hidden;
  }

  #view_popup.active {
    visibility: visible;
    opacity: 1;
  }
  #view_popup .swiper-container{overflow:visible; position:relative; height:100%;}

      #view_popup{background:#000; text-align: center;}
      #view_popup .photo{    top: 50%;
    left: 50%;
    position: absolute;
    transform: translate(-50%, -50%);
    height:800.8px; width:565.5px;
}
    
      #view_popup .photo img{height:100%; width:100%; position:relative;}
      #view_popup .swiper-button-next:after,.swiper-button-prev:after { display: none;}
      #view_popup .swiper-button-prev, .swiper-container-rtl .swiper-button-next{left:450px;}
      #view_popup .swiper-button-next, .swiper-container-rtl .swiper-button-prev{right:450px;}
      .btn_close {
    position: absolute;
    right: 10%;
    top: 5%;
    cursor: pointer;
    z-index:100;
  }
  #view_popup .swiper-pagination{display:none;}
  #view_popup .swiper-pagination{display:none;}
  .viewbtn_wrap{padding-top:60px !important;}
#sub_content .swiper-container > .swiper-wrapper{padding-bottom: 60px;}

@media screen and (max-width:1024px) {
  #view_popup .swiper-button-next, #view_popup .swiper-button-prev{display:none;}
  #sub_content .swiper-container {padding-bottom:50px; }
}

/********************************************************/
@media screen and (max-width:768px) {
  #A_Container_Wrap .inner {
	width: 95%;
	padding: 0 0 0 0;
  }

  

}

/********************************************************/
@media screen and (max-width:480px) {
 
 
}
    </style>
<!--e: 현재 페이지에만 적용할 특정 스크립트 추가영역-->
<%
	Call DbOpen()

	sql = "SELECT C_TITLE, C_FROM, C_TO "
	sql = sql & ", ISNULL(C_THUMB_1, ':') AS C_THUMB_1 " 
	sql = sql & ", ISNULL(C_THUMB_2, ':') AS C_THUMB_2 " 
	sql = sql & ", ISNULL(C_THUMB_3, ':') AS C_THUMB_3 " 
	sql = sql & ", ISNULL(C_THUMB_4, ':') AS C_THUMB_4 " 
	sql = sql & ", ISNULL(C_THUMB_5, ':') AS C_THUMB_5 " 
	sql = sql & ", ISNULL(C_THUMB_6, ':') AS C_THUMB_6 " 
	sql = sql & ", ISNULL(C_THUMB_7, ':') AS C_THUMB_7" 
	sql = sql & ", ISNULL(C_THUMB_8, ':') AS C_THUMB_8 " 
	sql = sql & ", ISNULL(C_THUMB_9, ':') AS C_THUMB_9 " 
	sql = sql & ", ISNULL(C_THUMB_10, ':') AS C_THUMB_10 " 
	sql = sql & ", ISNULL(C_THUMB_11, ':') AS C_THUMB_11 " 
	sql = sql & ", ISNULL(C_THUMB_12, ':') AS C_THUMB_12 " 
	sql = sql & ", ISNULL(C_THUMB_13, ':') AS C_THUMB_13 " 
	sql = sql & ", ISNULL(C_THUMB_14, ':') AS C_THUMB_14 " 
	sql = sql & ", ISNULL(C_THUMB_15, ':') AS C_THUMB_15 " 
	sql = sql & ", ISNULL(C_THUMB_16, ':') AS C_THUMB_16 " 
	sql = sql & ", ISNULL(C_THUMB_17, ':') AS C_THUMB_17 " 
	sql = sql & ", ISNULL(C_THUMB_18, ':') AS C_THUMB_18 " 
	sql = sql & ", ISNULL(C_THUMB_19, ':') AS C_THUMB_19 " 
	sql = sql & ", ISNULL(C_THUMB_20, ':') AS C_THUMB_20 " 
	sql = sql & ", C_DATE "
	sql = sql & "FROM TBL_COMPETITION "
	sql = sql & "WHERE C_SEQ = '"&request.QueryString("cSeq")&"'"
	set rs = dbconn.execute(sql)
	If Not rs.eof Then
		Dim cImg1 : cImg1 = Split(rs("C_THUMB_1"), ":")(0)
		Dim cImg2 : cImg2 = Split(rs("C_THUMB_2"), ":")(0)
		Dim cImg3 : cImg3 = Split(rs("C_THUMB_3"), ":")(0)
		Dim cImg4 : cImg4 = Split(rs("C_THUMB_4"), ":")(0)
		Dim cImg5 : cImg5 = Split(rs("C_THUMB_5"), ":")(0)
		Dim cImg6 : cImg6 = Split(rs("C_THUMB_6"), ":")(0)
		Dim cImg7 : cImg7 = Split(rs("C_THUMB_7"), ":")(0)
		Dim cImg8 : cImg8 = Split(rs("C_THUMB_8"), ":")(0)
		Dim cImg9 : cImg9 = Split(rs("C_THUMB_9"), ":")(0)
		Dim cImg10 : cImg10 = Split(rs("C_THUMB_10"), ":")(0)
		Dim cImg11 : cImg11 = Split(rs("C_THUMB_11"), ":")(0)
		Dim cImg12 : cImg12 = Split(rs("C_THUMB_12"), ":")(0)
		Dim cImg13 : cImg13 = Split(rs("C_THUMB_13"), ":")(0)
		Dim cImg14 : cImg14 = Split(rs("C_THUMB_14"), ":")(0)
		Dim cImg15 : cImg15 = Split(rs("C_THUMB_15"), ":")(0)
		Dim cImg16 : cImg16 = Split(rs("C_THUMB_16"), ":")(0)
		Dim cImg17 : cImg17 = Split(rs("C_THUMB_17"), ":")(0)
		Dim cImg18 : cImg18 = Split(rs("C_THUMB_18"), ":")(0)
		Dim cImg19 : cImg19 = Split(rs("C_THUMB_19"), ":")(0)
		Dim cImg20 : cImg20 = Split(rs("C_THUMB_20"), ":")(0)
	End If
%>
<div class="subpage">
	<section id="sub_content">
		<div class="inner">
			<div class="event_title_box"> 
				<p class="title"><%=rs("C_TITLE")%></p>
			</div>
			<div #swiperRef="" class="swiper-container mySwiper">
				<div class="swiper-wrapper">
					<%If cImg1 <> "" Then%>
					<div class="swiper-slide"><img src="/upload/competition/<%=cImg1%>"></div>
					<%End If%>
					<%If cImg2 <> "" Then%>
					<div class="swiper-slide"><img src="/upload/competition/<%=cImg2%>"></div>
					<%End If%>
					<%If cImg3 <> "" Then%>
					<div class="swiper-slide"><img src="/upload/competition/<%=cImg3%>"></div>
					<%End If%>
					<%If cImg4 <> "" Then%>
					<div class="swiper-slide"><img src="/upload/competition/<%=cImg4%>"></div>
					<%End If%>
					<%If cImg5 <> "" Then%>
					<div class="swiper-slide"><img src="/upload/competition/<%=cImg5%>"></div>
					<%End If%>
					<%If cImg6 <> "" Then%>
					<div class="swiper-slide"><img src="/upload/competition/<%=cImg6%>"></div>
					<%End If%>
					<%If cImg7 <> "" Then%>
					<div class="swiper-slide"><img src="/upload/competition/<%=cImg7%>"></div>
					<%End If%>
					<%If cImg8 <> "" Then%>
					<div class="swiper-slide"><img src="/upload/competition/<%=cImg8%>"></div>
					<%End If%>
					<%If cImg9 <> "" Then%>
					<div class="swiper-slide"><img src="/upload/competition/<%=cImg9%>"></div>
					<%End If%>
					<%If cImg10 <> "" Then%>
					<div class="swiper-slide"><img src="/upload/competition/<%=cImg10%>"></div>
					<%End If%>
					<%If cImg11 <> "" Then%>
					<div class="swiper-slide"><img src="/upload/competition/<%=cImg11%>"></div>
					<%End If%>
					<%If cImg12 <> "" Then%>
					<div class="swiper-slide"><img src="/upload/competition/<%=cImg12%>"></div>
					<%End If%>
					<%If cImg13 <> "" Then%>
					<div class="swiper-slide"><img src="/upload/competition/<%=cImg13%>"></div>
					<%End If%>
					<%If cImg14 <> "" Then%>
					<div class="swiper-slide"><img src="/upload/competition/<%=cImg14%>"></div>
					<%End If%>
					<%If cImg15 <> "" Then%>
					<div class="swiper-slide"><img src="/upload/competition/<%=cImg15%>"></div>
					<%End If%>
					<%If cImg16 <> "" Then%>
					<div class="swiper-slide"><img src="/upload/competition/<%=cImg16%>"></div>
					<%End If%>
					<%If cImg17 <> "" Then%>
					<div class="swiper-slide"><img src="/upload/competition/<%=cImg17%>"></div>
					<%End If%>
					<%If cImg18 <> "" Then%>
					<div class="swiper-slide"><img src="/upload/competition/<%=cImg18%>"></div>
					<%End If%>
					<%If cImg19 <> "" Then%>
					<div class="swiper-slide"><img src="/upload/competition/<%=cImg19%>"></div>
					<%End If%>
					<%If cImg20 <> "" Then%>
					<div class="swiper-slide"><img src="/upload/competition/<%=cImg20%>"></div>
					<%End If%>
				</div>
				<div class="page">
					<div class="swiper-button-next"><img src="/main01/image/sub/arrow_next.png" alt="">  </div>
					<div class="swiper-button-prev"><img src="/main01/image/sub/arrow_prev.png" alt=""> </div>
					<div class="swiper-pagination"></div>
				</div>
				<div class="viewbtn_wrap">
				
					<input type="button" value="목록" class="btn02" onclick="self.location.href = '?eye=F109&page=&gum1=&gum2=';" />
					
				</div>
			</div>
		</div>
	</section>

	<!--뷰팝업 -->
	<section id="view_popup" class="view_popup">
		<div class="btn_close"><img src="/main01/image/sub/close_.png" /></div>
		<div class="swiper-container swipers">
			<div class="swiper-wrapper">
				<%If cImg1 <> "" Then%>
				<div class="swiper-slide">
					<div class="photo"><img src="/upload/competition/<%=cImg1%>"></div>
				</div>
				<%End If%>
				<%If cImg2 <> "" Then%>
				<div class="swiper-slide">
					<div class="photo"><img src="/upload/competition/<%=cImg2%>"></div>
				</div>
				<%End If%>
				<%If cImg3 <> "" Then%>
				<div class="swiper-slide">
					<div class="photo"><img src="/upload/competition/<%=cImg3%>"></div>
				</div>
				<%End If%>
				<%If cImg4 <> "" Then%>
				<div class="swiper-slide">
					<div class="photo"><img src="/upload/competition/<%=cImg4%>"></div>
				</div>
				<%End If%>
				<%If cImg5 <> "" Then%>
				<div class="swiper-slide">
					<div class="photo"><img src="/upload/competition/<%=cImg5%>"></div>
				</div>
				<%End If%>
				<%If cImg6 <> "" Then%>
				<div class="swiper-slide">
					<div class="photo"><img src="/upload/competition/<%=cImg6%>"></div>
				</div>
				<%End If%>
				<%If cImg7 <> "" Then%>
				<div class="swiper-slide">
					<div class="photo"><img src="/upload/competition/<%=cImg7%>"></div>
				</div>
				<%End If%>
				<%If cImg8 <> "" Then%>
				<div class="swiper-slide">
					<div class="photo"><img src="/upload/competition/<%=cImg8%>"></div>
				</div>
				<%End If%>
				<%If cImg9 <> "" Then%>
				<div class="swiper-slide">
					<div class="photo"><img src="/upload/competition/<%=cImg9%>"></div>
				</div>
				<%End If%>
				<%If cImg10 <> "" Then%>
				<div class="swiper-slide">
					<div class="photo"><img src="/upload/competition/<%=cImg10%>"></div>
				</div>
				<%End If%>
				<%If cImg11 <> "" Then%>
				<div class="swiper-slide">
					<div class="photo"><img src="/upload/competition/<%=cImg11%>"></div>
				</div>
				<%End If%>
				<%If cImg12 <> "" Then%>
				<div class="swiper-slide">
					<div class="photo"><img src="/upload/competition/<%=cImg12%>"></div>
				</div>
				<%End If%>
				<%If cImg13 <> "" Then%>
				<div class="swiper-slide">
					<div class="photo"><img src="/upload/competition/<%=cImg13%>"></div>
				</div>
				<%End If%>
				<%If cImg14 <> "" Then%>
				<div class="swiper-slide">
					<div class="photo"><img src="/upload/competition/<%=cImg14%>"></div>
				</div>
				<%End If%>
				<%If cImg15 <> "" Then%>
				<div class="swiper-slide">
					<div class="photo"><img src="/upload/competition/<%=cImg15%>"></div>
				</div>
				<%End If%>
				<%If cImg16 <> "" Then%>
				<div class="swiper-slide">
					<div class="photo"><img src="/upload/competition/<%=cImg16%>"></div>
				</div>
				<%End If%>
				<%If cImg17 <> "" Then%>
				<div class="swiper-slide">
					<div class="photo"><img src="/upload/competition/<%=cImg17%>"></div>
				</div>
				<%End If%>
				<%If cImg18 <> "" Then%>
				<div class="swiper-slide">
					<div class="photo"><img src="/upload/competition/<%=cImg18%>"></div>
				</div>
				<%End If%>
				<%If cImg19 <> "" Then%>
				<div class="swiper-slide">
					<div class="photo"><img src="/upload/competition/<%=cImg19%>"></div>
				</div>
				<%End If%>
				<%If cImg20 <> "" Then%>
				<div class="swiper-slide">
					<div class="photo"><img src="/upload/competition/<%=cImg20%>"></div>
				</div>
				<%End If%>
			</div>

			<!-- Add Pagination -->
			<div class="swiper-pagination"></div>
			<!-- Add Arrows -->
			<div class="swiper-button-prev"><img src="/main01/image/sub/arrow_prev_.png" alt=""></div>
			<div class="swiper-button-next"><img src="/main01/image/sub/arrow_next_.png" alt=""></div>
		</div>
	</section>
	<!--뷰팝업 -->
</div>

<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script>
      var swiper = new Swiper(".mySwiper", {
		slidesPerView: 3,
		centeredSlides: true,
		// autoWidth:true,
		spaceBetween: 30,
		pagination: {
			el: ".swiper-pagination",
			type: "fraction",
			prevEl: '#view_popup .swiper-button-prev',
		},
		breakpoints: { 720: { slidesPerView: 3, spaceBetween: 20, } ,
						640:{ slidesPerView: 1.4, spaceBetween: 20, }
		},
		navigation: {
		nextEl: ".swiper-button-next",
		prevEl: ".swiper-button-prev",
	    },
      });
</script>
<script>
    //팝업슬라이드
    const swipers = new Swiper ('.swipers', {
    direction: 'horizontal',
    //loop: true,
    spaceBetween: 100,
    pagination: {
      el: '#view_popup .swiper-pagination',
      type: 'fraction',
    },
    navigation: {
      nextEl: '#view_popup .swiper-button-next',
      prevEl: '#view_popup .swiper-button-prev',
    },
  });

  //팝업
  $(".swiper-slide").click(function(){
    idx = $(this).index();
    swipers.slideTo(idx, 10, false);
    $(".view_popup").addClass("active");
    $("body").addClass("fixed");
  });
  $("#view_popup .btn_close").click(function(){
    $("body").removeClass("fixed");
    $(".view_popup").removeClass("active");
  });
</script>