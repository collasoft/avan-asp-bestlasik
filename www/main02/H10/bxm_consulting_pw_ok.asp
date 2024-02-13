<% @CODEPAGE="65001" language="vbscript" %>
<% option Explicit %>

<!--#include virtual = "/Avanplus/_FormFunc.asp"-->
<!--#include virtual = "/Avanplus/_Function.asp"-->
<!--#include virtual = "/BXM/testjson2.asp" -->
<%
dim seq
seq =request("seq")

dim bxm_api_sorturl
dim DataToSend
dim xmlhttp
dim xmlhttp_result

bxm_api_sorturl = "http://bestlasik.doctorcrm.co.kr/WWW/curl_counsel.php"
DataToSend = "MODE=PASS"
DataToSend = DataToSend&"&seq="&seq
DataToSend = DataToSend&"&c_pw="&request.Form("c_pw")
DataToSend = DataToSend&"&CLIENTIP="&Request.ServerVariables("REMOTE_ADDR")
DataToSend = DataToSend&"&KEY=BESTLASIK_"&Request.ServerVariables("LOCAL_ADDR")&"_BXM"

set xmlhttp = server.Createobject("MSXML2.ServerXMLHTTP")
xmlhttp.Open "POST", bxm_api_sorturl ,false
xmlhttp.setRequestHeader "Content-Type", "application/x-www-form-urlencoded"

xmlhttp.send DataToSend
xmlhttp_result = xmlhttp.responseText

set xmlhttp = Nothing

If xmlhttp_result="0" Then
%>
	<script>
	alert("비밀번호가 일치하지 않습니다.")
	window.history.back();
	</script>
<%
Else 
%>
  <script>
  location.href='/main02/sub.asp?eye=H103&seq=<%=seq%>&nPage=<%=request("nPage")%>&gum1=<%=request("gum1")%>&gum2=<%=request("gum2")%>';
  </script>
<%
End if
%>