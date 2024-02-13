<% @CODEPAGE="65001" language="vbscript" %>
<% option Explicit %>

<!--#include virtual = "/Avanplus/_FormFunc.asp"-->
<!--#include virtual = "/Avanplus/_Function.asp"-->
<!--#include file = "./aspJSON1.17.asp"-->
<%
Function naver_utf_decode(ByVal str)
	Dim buff_str,b,s, c
	buff_str = Split(str,"\u")

	For Each b In buff_str
		If( Not b = "") Then s = s&ChrW((CInt("&H"&Left(b,2))*&H100) Or CInt("&H"&right(b,2))) End if
	Next
	naver_utf_decode = s
End Function

Dim sns,code,state,url, client_id,client_sec,redirect_url, strBackUrl
	sns = request("sns")
	code = request("code")

	state = session.SessionID
	redirect_url = "https://www.best-lasik.co.kr/main01/K10/gateway_ok.asp?sns="&sns
	strBackUrl = request("strBackUrl")

Select Case sns
	Case "naver"
        client_id = "c2ZCLPy_oenWCWqHbAOG"
		client_sec = "un6ODZ7Kb5"
		url="https://nid.naver.com/oauth2.0/token?grant_type=authorization_code&client_id="&client_id & "&client_secret=" & client_sec &"&code=" & code & "&state=" & state & "&redirect_uri="&redirect_url

	Case "kakao"
		client_id="758066dffde77a8be2757bd7902612fd"
		client_sec="eB4NtmIOkd4dAY1aINv1qwKxKWnOCRo9"
		url="https://kauth.kakao.com/oauth/token?grant_type=authorization_code&client_id=" & client_id &"&code=" & code & "&client_secret=" & client_sec & "&redirect_uri="&redirect_url

	Case "google"
		client_id="196494705916-v7f5dit9hksh471iveer1d4grtukcrsm.apps.googleusercontent.com"
		client_sec="kJJfJp6Ohmyppjr64QQYZT7t"
		url="https://www.googleapis.com/oauth2/v4/token?grant_type=authorization_code&access_type=offline&client_id=" & client_id & "&client_secret=" & client_sec &"&code=" & code & "&redirect_uri="&redirect_url

	Case "facebook"
		client_id="2291679524377839"
		client_sec="bf85bb8d1149466a5bdd466bdab7eede"
		url="https://graph.facebook.com/oauth/access_token?client_id=" & client_id & "&client_secret=" & client_sec & "&code="& code & "&redirect_uri="&redirect_url
End Select

dim xmlHttp, send_text,result
Set xmlHttp = CreateObject("Msxml2.ServerXMLHTTP.3.0")

Dim token_info, token,info_url, access_token
Set token_info = New aspJSON

xmlHttp.Open "POST", url, False
xmlHttp.setRequestHeader "Content-Type", "application/x-www-form-urlencoded;charset=utf-8"
xmlHttp.Send

If xmlHttp.status = "200" Then
	result = xmlHttp.ResponseText
	token_info.loadJSON(result)
Else
	Response.Write "Error Occurred : " & xmlHttp.Status & " - " & xmlHttp.statusText
	%>
	<script>
		alert("오류가 발생하였습니다. 다시시도해 주세요1");
		window.close();
	</script>
	<%	
	Response.end
End If

Set xmlHttp = Nothing

Select Case sns
	Case "naver"
		info_url="https://openapi.naver.com/v1/nid/me"
		access_token = token_info.data("access_token")
	Case "kakao"
		access_token = token_info.data("access_token")
		info_url="https://kapi.kakao.com/v2/user/me"
	Case "google"
		access_token = token_info.data("access_token")
		info_url="https://www.googleapis.com/oauth2/v1/tokeninfo?id_token="&token_info.data("id_token")
	Case "facebook"
		access_token = token_info.data("access_token")
		info_url="https://graph.facebook.com/me?access_token="& access_token

End Select

Set xmlHttp = CreateObject("Msxml2.ServerXMLHTTP.3.0")

If sns <> "facebook" then
	xmlHttp.Open "POST", info_url, False
	xmlHttp.setRequestHeader "Content-Type", "application/x-www-form-urlencoded;text/json;charset=UTF-8"
	xmlHttp.SetRequestHeader "Authorization", "Bearer " & access_token
Else
	xmlHttp.Open "GET", info_url, False
	xmlHttp.setRequestHeader "Content-Type", "application/x-www-form-urlencoded"
End if
xmlHttp.Send

If xmlHttp.status = "200" Then

	result = xmlHttp.ResponseText
	token_info.loadJSON(result)

	Dim id, email, name, birth_m, birth_d

	Select Case sns

		Case "naver"

			id=token_info.data("response").item("id")
			name = naver_utf_decode(token_info.data("response").item("name"))
			email = token_info.data("response").item("email")

		Case "kakao"

			id=token_info.data("id")
			name=token_info.data("properties").item("nickname")
			email=token_info.data("kaccount_email")

		Case "google"

			Dim xmlHttp2,profile_url
			
			profile_url="https://www.googleapis.com/oauth2/v1/userinfo?alt=json&access_token="&access_token

			Set xmlHttp2 = CreateObject("Msxml2.ServerXMLHTTP.3.0")
			xmlHttp2.Open "GET", profile_url, False
			xmlHttp2.setRequestHeader "Content-Type", "text/json;charset=UTF-8"
			xmlHttp2.send
			If(xmlHttp2.status = "200")Then
				result = xmlHttp2.ResponseText
				token_info.loadJSON(result)
			Else
				%>
				<script>
					alert("오류가 발생하였습니다. 다시시도해 주세요");
					window.close();
				</script>
				<%
				Response.end
			End If
			If len(token_info.data("code"))>0 Then
				%>
				<script>
					alert("오류가 발생하였습니다. 다시시도해 주세요");
					window.close();
				</script>
				<%
				Response.end
			End if
			id=token_info.data("id")
			name=token_info.data("name")
			email=token_info.data("email")

		Case "facebook"

			id = token_info.data("id")
			name = naver_utf_decode(token_info.data("name"))
			email = token_info.data("email")

	End Select

Else

	Response.Write "Error Occurred : " & xmlHttp.Status & " - " & xmlHttp.statusText
	%>
	<script>
		alert("오류가 발생하였습니다. 다시시도해 주세요");
		window.close();
	</script>
	<%
	Response.end
End If
%>
<form name="sns_form1" method="post" action="sns_join02.asp">
<input type="hidden" name="sns_id" value="<%=id%>">
<input type="hidden" name="sns_name" value="<%=name%>">
<input type="hidden" name="sns_email" value="<%=email%>">
<input type="hidden" name="sns_sns" value="<%=sns%>">
</form>
<%
Call dbopen

Dim sql,sql_result

sql = "select count(*) from mTb_member2 where "&sns&"_token='"&id&"'"

If getAdoRsScalar(sql) = 0 and Request.Cookies("sns_mode") = "sync" Then
	sql = "update mTb_member2 set "&sns&"_token='"&id&"' where strId='"&session("useridid")&"'"
	dbconn.execute(sql)

ElseIf getAdoRsScalar(sql) = 0 And IsEmpty(session("useridid")) = True Then
'sns연동을 통해 회원가입을 시킬 경우 아래 스크립트를 이용
%>
	<script>
/*	  window.onload = function(){
	    opener.document.sns_form1.sns_id.value = document.sns_form1.sns_id.value;
		opener.document.sns_form1.sns_name.value = document.sns_form1.sns_name.value;
		opener.document.sns_form1.sns_email.value = document.sns_form1.sns_email.value;
		opener.document.sns_form1.sns_sns.value = document.sns_form1.sns_sns.value;
		opener.anotherwin2();
		window.close();
      }
*/	</script>
<%
 '   Response.End
   
'sns연동을 통해 바로 회원가입이 되고 로그인을 시킬 경우 아래 소스를 이용

    If sns = "kakao" And email = "" Then
	  email = "kakao" & id
	End If

    If sns = "facebook" And email = "" Then
	  email = "facebook" & id
	End If


	sql = "select count(*) from mTb_member2 where strId='"&email&"'"

	If getAdoRsScalar(sql)=0 Then
	    
		sql = "insert into mTb_member2 (strName,strId,strPwd,strEmail,"&sns&"_token,dtmInsertDate,strlogin,sns_name,intGubun) values"_
		+"('"&name&"','"&email&"','"&Encrypt_Sha(random())&"','"&email&"','"&id&"',getdate(),getdate(),'"&sns&"',1)"
		dbconn.execute(sql)

	Else

		sql = "update mTb_member2 set "&sns&"_token='"&id&"', strlogin=getdate() where strId='"&email&"'"
		dbconn.execute(sql)

	End If

Else

	If Request.Cookies("sns_mode") = "sync" then
		If getAdoRsScalar(sql) = 1 Then
			response.Cookies("sns_mode") = ""

'			Session.Contents.RemoveAll()
'			Session.Abandon

			sql = "select strName,strId,intgubun,intAction from mTb_member2 where "&sns&"_token='"&id&"'"
			sql_result = getAdoRsArray(sql)
			session("username")  = sql_result(0,0)
			session("useridid")  = sql_result(1,0)
			session("userlevel") = sql_result(2,0)
			session("snsname")   = sns
		End if
%>
		<script>
			window.opener.document.location.href = window.opener.document.location.href;
//			alert("이미 가입한 회원입니다.");
			window.close();
		</script>
		<%
		Call dbclose
		Response.End
	End If

End If

response.Cookies("sns_mode") = ""

sql = "select strName,strId,intgubun,intAction from mTb_member2 where "&sns&"_token='"&id&"'"
sql_result = getAdoRsArray(sql)

If(Len(session("useridid")) > 0) Then
%>
	<script>
//		alert("성공적으로 연동되었습니다.");
//		window.opener.document.location.reload();
//		window.close();
	</script>
<%
Else

    If sql_result(3,0) = "2" then
		%>
		<script>
			alert("탈퇴한 회원입니다.");
			window.close();
		</script>
		<%
		Call dbclose
		Response.End
	End If

'	If sql_result(4,0) = "N" then
		%>
		<script>
//			alert("회원가입 시 받은 메일에서 승인을 하시기 바랍니다.");
//			window.close();
		</script>
		<%
'		Call dbclose
'		Response.End
'	End If

session("username")  = sql_result(0,0)
session("useridid")  = sql_result(1,0)
session("userlevel") = sql_result(2,0)
session("snsname")   = sns

'Response.write strBackUrl
'Response.end
%>
<script>
<%	if request.Cookies("strBackUrl") = "" then%>
    opener.parent.location="/main01";
<%	else%>
    opener.parent.location="<%=request.Cookies("strBackUrl")%>";
<%	end if%>
	//window.opener.document.location.href=window.opener.document.referrer;
	window.close();
</script>
<%
End if
	Response.Cookies("strBackUrl") = ""
Call dbclose
%>