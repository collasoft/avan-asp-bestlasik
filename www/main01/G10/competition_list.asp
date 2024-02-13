
<%
nowprotocol = Request.ServerVariables("HTTPS")
if nowprotocol = "off" Or InStr(Request.ServerVariables("SERVER_NAME"),"www") = 0 then
%>
<script language="javascript">
	parent.location.href="https://www.best-lasik.co.kr<%=Request.ServerVariables("PATH_INFO")%>?<%=Request.ServerVariables("QUERY_STRING")%>";
</script>
<% end if%>
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
  max-height: 500px;
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

.contents_list_part .image_box:hover .img_bg::before{
    width:100%;
    position:relative;
}
.contents_list_part .image_box:hover .img_bg::before{
    content:'';
    background: rgba(0,0,0,0.2);
    position:absolute;
    width:100%;
    height:100%;
    z-index:10;
}
.contents_list_part .image_box .img_bg{
  width:100%;
  height:100%;
  position:relative;
  overflow:hidden;
}

.contents_list_part .image_box .img_bg img {
  position:relative;
  width:100%;
}
.contents_list_part .image_box:hover .img_bg img {
  width:100%;
  transform:scale(1.1);
  transition:all 0.5s ease-in-out;

}
.contents_list_part .image_box .txt_box{
  text-align:center;
}
.contents_list_part .image_box .txt_box .txt01{
box-sizing: border-box;
overflow: hidden;
width: 100%;
padding: 0 20px;
margin-top:10px;
font-size: 20px;
color: #333;
text-overflow: ellipsis;
white-space: nowrap;
word-break: break-all;
}
.contents_list_part .image_box .txt_box .txt02{
    font-size: 18px;
color: #b9bcc2;
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
<%
'모바일인지 pc인지 체크하기
Function isItMobile()
    Dim boo
    boo = False
    
    Dim mob : mob = "iPod|iPhone|Android|BlackBerry|SymbianOS|SCH-M\d+|Opera Mini|Windows CE|Nokia|SonyEricsson|webOS|PalmOS"
    Dim splitmo : splitmo = split(mob,"|")
    Dim agent : agent = Request.ServerVariables("HTTP_USER_AGENT")
    For i = 0 to UBound(splitmo )
        If InStr(agent,splitmo (i)) > 0 Then
            boo = True 
            Exit For 
        End If
    Next
    
    isItMobile = boo
End Function
'Response.Write isItMobile()
%>
<%
	intNowPage = Request.QueryString("page")
	If isItMobile() Then
	intPageSize = 4
	intBlockPage = 5
	Else
	intPageSize = 8
	intBlockPage = 10
	End If

	query_filde		= "*"
	query_Tablename	= " TBL_COMPETITION "
	query_where		= " 1 = 1 "
	'query_where = query_where & " AND C_TYPE = '1'"
	query_orderby	= " ORDER BY C_SEQ DESC "  
	
	gum1 = request("gum1")
	gum2 = request("gum2")
	
	If isValue(gum2) Then
		query_where = query_where & " and "&gum1&" like '%"&gum2&"%'"
	Else
		gum1 = ""
		gum2 = ""
	End If

	call intTotal

	'##
	'## 1. intTotal : call intTotal
	'## 2. TopCount 를 불러오는 쿼리문 에 삽입한다.
	'## 3. MoveCount 를 Do while문 상단에 rs.move MoveCount 형식으로 삽입한다.
	'## 4. NavCount 현재페이지의 정보를 보여주는 함수 response.Write(NavCount) 형식으로 삽입
	'## 5. Paging(byval plusString) 하단의 네비게이션 바 call Paging(추가스트링)
	'## 
	'## 
	'#############################################################################

	sql2 = GetQuery()
	'Response.write sql2
	call dbopen
	set rs2 = dbconn.execute(sql2)
%>
<div id="A_Container_Wrap">
	<div class="moduleCall">
		<div class="avanModule">
			<div class="subpage">
				<div class="inner">
					<section class="sub_content">
						<div class="search_wrap">
							<form name="list_search" id="list_search" method="post" action="?lasik=G109">
								<select name="gum1" id="gum1">
									<option value="C_TITLE" <%If gum1 = "C_TITLE" Then Response.Write "SELECTED" End If%>>제목</option>
								</select>
								<input type="text" name="gum2" id="gum2" value="<%=gum2%>">
								<input type="image" src="image/sub/search.png" id="BtnSearch" style="cursor:pointer;" />
							</form>
						</div>

						<article class="contents_list_part">
							<ul class="clear">
								<%
								pagei = (intTotalCount-MoveCount)
								if  rs2.eof then
								%>
								<li style="width:100%;height:100px;">No Data.</li>
								<%
								else
									rs2.move MoveCount
									Do while not rs2.eof
								%>
								<li>
									<a href="?lasik=G109&cSeq=<%=rs2("C_SEQ")%>&page=<%=request("page")%>&gum1=<%=request("gum1")%>&gum2=<%=request("gum2")%>">
										<div class="image_box">
											<div class="img_bg">
												<%If rs2("C_THUMB_0") <> "" Then%>
													<img src="/upload/competition/<%=Split(rs2("C_THUMB_0"), ":")(0)%>">
												<%Else%>
													<img src="">
												<%End If%>
											</div>
											<div class="txt_box">
												<p class="txt01"><%=rs2("C_TITLE")%></p>
												<p class="txt02"><%=Left(rs2("C_FROM"), 10)%> ~ <%=Left(rs2("C_TO"), 10)%></p>
											</div>
										</div>
									</a>
								</li>
								<%
										pagei = pagei-1
										rs2.movenext
									Loop

									rs2.close(): set rs2 = nothing
								End If
								%>
							</ul>
						</article>
					</section>

					<div class="list_page">
						<%call Paging_list("&gum1=" & request("gum1") & "&gum2=" & Request("gum2"))%>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%
call dbclose
%>