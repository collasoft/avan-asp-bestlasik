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

bxm_api_sorturl = "http://bestlasik.doctorcrm.co.kr/WWW/curl_counsel.php"

DataToSend = "MODE="&request("MODE")
DataToSend = DataToSend&"&gubun="&request("gubun")
DataToSend = DataToSend&"&c_writer="&request("c_writer")
DataToSend = DataToSend&"&c_title="&request("c_title")
DataToSend = DataToSend&"&c_contents="&request("c_contents")
DataToSend = DataToSend&"&ra01="&request("ra01")
DataToSend = DataToSend&"&c_pw="&request("c_pw")
DataToSend = DataToSend&"&CLIENTIP="&Request.ServerVariables("REMOTE_ADDR")
DataToSend = DataToSend&"&KEY=BESTLASIK_"&Request.ServerVariables("LOCAL_ADDR")&"_BXM"

set xmlhttp = server.Createobject("MSXML2.ServerXMLHTTP")
xmlhttp.Open "POST", bxm_api_sorturl ,false
xmlhttp.setRequestHeader "Content-Type", "application/x-www-form-urlencoded"

xmlhttp.send DataToSend
xmlhttp_result = xmlhttp.responseText

Call jsAlertMsgUrl("진료상담 등록이 정상적으로 되었습니다.", "/main01/sub.asp?lasik=I102")
%>