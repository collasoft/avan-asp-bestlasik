<% @CODEPAGE="65001" language="vbscript" %>
<% option Explicit %>

<!--#include virtual = "/Avanplus/_FormFunc.asp"-->
<!--#include virtual = "/Avanplus/_Function.asp"-->
<!--#include virtual = "/BXM/testjson2.asp" -->
<%
dim bxm_api_sorturl
dim DataToSend
dim xmlhttp
dim xmlhttp_result

bxm_api_sorturl = "http://bestlasik.doctorcrm.co.kr/WWW/curl_reserve.php"

Dim hopedate, hopetime, htel

hopedate = request("cyear")&"-"&request("cmonth")&"-"&request("cday")
hopetime = request("ctime")&":"&request("cminut")
htel = request("b_phone1")&"-"&request("b_phone2")&"-"&request("b_phone3")

DataToSend = "MODE=INSERT"
DataToSend = DataToSend&"&gubun="&request("gubun")
DataToSend = DataToSend&"&hopedate="&hopedate
DataToSend = DataToSend&"&hopetime="&hopetime
DataToSend = DataToSend&"&name="&request("b_name")
DataToSend = DataToSend&"&htel="&htel
DataToSend = DataToSend&"&cate1="&request("b_first")
DataToSend = DataToSend&"&cate2="&request("b_bunryu")
DataToSend = DataToSend&"&contents="&request("b_contents")
DataToSend = DataToSend&"&CLIENTIP="&Request.ServerVariables("REMOTE_ADDR")
DataToSend = DataToSend&"&KEY=BESTLASIK_"&Request.ServerVariables("LOCAL_ADDR")&"_BXM"
set xmlhttp = server.Createobject("MSXML2.ServerXMLHTTP")
xmlhttp.Open "POST", bxm_api_sorturl ,false
xmlhttp.setRequestHeader "Content-Type", "application/x-www-form-urlencoded"

xmlhttp.send DataToSend
xmlhttp_result = xmlhttp.responseText
%>

<script Language="JavaScript">
window.onload = function(){

  alert("진료예약 등록이 정상적으로 되었습니다.");
  document.booking.submit();
}
</script>

<html>
<head></head>
<body>
<form name="booking" method="post" action="/main02/sub.asp?eye=H100">
<input type="hidden" name="cyear" value="<%=request("cyear")%>" />
<input type="hidden" name="cmonth" value="<%=request("cmonth")%>" />
<input type="hidden" name="cday" value="<%=request("cday")%>" />
<input type="hidden" name="ctime" value="<%=request("ctime")%>" />
<input type="hidden" name="cminut" value="<%=request("cminut")%>" />
<input type="hidden" name="b_first" value="<%=request("b_first")%>" />
<input type="hidden" name="b_name" value="<%=request("b_name")%>" />
<input type="hidden" name="b_phone" value="<%=htel%>" />
<input type="hidden" name="b_bunryu" value="<%=request("b_bunryu")%>" />
</form>
</body>
</html>
