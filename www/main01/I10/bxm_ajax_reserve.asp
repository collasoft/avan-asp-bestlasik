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

DataToSend = "MODE=CHECK"
DataToSend = DataToSend&"&gubun=main01"
DataToSend = DataToSend&"&hopedate="&hopedate
DataToSend = DataToSend&"&hopetime="&hopetime
DataToSend = DataToSend&"&CLIENTIP="&Request.ServerVariables("REMOTE_ADDR")
DataToSend = DataToSend&"&KEY=BESTLASIK_"&Request.ServerVariables("LOCAL_ADDR")&"_BXM"
set xmlhttp = server.Createobject("MSXML2.ServerXMLHTTP")
xmlhttp.Open "POST", bxm_api_sorturl ,false
xmlhttp.setRequestHeader "Content-Type", "application/x-www-form-urlencoded"

xmlhttp.send DataToSend
xmlhttp_result = xmlhttp.responseText

Response.write xmlhttp_result

%>