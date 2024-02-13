<!--#include virtual = "/BXM/testjson2.asp" -->
<%
bxm_api_sorturl = "http://bestlasik.doctorcrm.co.kr/WWW/curl_counsel.php"
DataToSend = "MODE=VIEW"
DataToSend = DataToSend&"&seq="&request("seq")
DataToSend = DataToSend&"&CLIENTIP="&Request.ServerVariables("REMOTE_ADDR")
DataToSend = DataToSend&"&KEY=BESTLASIK_"&Request.ServerVariables("LOCAL_ADDR")&"_BXM"

set xmlhttp = server.Createobject("MSXML2.ServerXMLHTTP")
xmlhttp.Open "POST", bxm_api_sorturl ,false
xmlhttp.setRequestHeader "Content-Type", "application/x-www-form-urlencoded"

xmlhttp.send DataToSend
xmlhttp_result = xmlhttp.responseText

set xmlhttp = Nothing

set getJson = JSON.parse(xmlhttp_result)
%>
<div class="consulting">
  <div class="inner">
	<div class="input_form">
	  <form action="">
	  <div class="view_wrap"> 
		<div class="title_box"> 
		  <p class="title"><%=getJson.title%></p>
		  <span class="data"><span class="day"><%=Left(getJson.inputday,10)%></span><span class="name"><%=getJson.name%></span></span>
		</div>
		<div class="content_box"> 
			<%=getJson.contents%>
		</div>

		<div class="title_box"><p class="title">답변</p></div>
		<div class="content_box"> 
			<%=getJson.contents2%>
		</div>

	  </div>
	  <div class="viewbtn_wrap">
		<%
		If Len(getJson.contents2) > 0 Then 
		%>
			<input type="button" value="삭제" class="btn01" onclick="alert('답변이 있어 수정, 삭제 하실 수 없습니다.')" />
			<input type="button" value="수정" class="btn01" onclick="alert('답변이 있어 수정, 삭제 하실 수 없습니다.')" />
		<%
		else
		%>
			<input type="button" value="삭제" class="btn01" onclick="location.href='?lasik=I109&seq=<%=request.QueryString("seq")%>&nPage=<%=request.QueryString("nPage")%>&gum1=<%=request.QueryString("gum1")%>&gum2=<%=request.QueryString("gum2")%>';" />
			<input type="button" value="수정" class="btn01" onclick="location.href='?lasik=I108&seq=<%=request.QueryString("seq")%>&nPage=<%=request.QueryString("nPage")%>&gum1=<%=request.QueryString("gum1")%>&gum2=<%=request.QueryString("gum2")%>';" />
		<%
		End if
		%>

		<input type="button" value="목록" class="btn02" onclick="self.location.href = '?lasik=I102&nPage=<%=request.querystring("nPage")%>&gum1=<%=request("gum1")%>&gum2=<%=request("gum2")%>';" />
	  </div>
	  </form>
	</div>
  </div>
</div>
<%
	set getJson= Nothing
%>