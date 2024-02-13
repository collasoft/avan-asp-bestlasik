<meta charset="UTF-8">
<%
Dim sns, myappid, mysnsloginUri,state,redirect_url,mode,strBackUrl
	sns = request("sns")
	Response.Cookies("sns_mode") = request("mode")
	state = session.SessionID
	redirect_url = "https://www.best-lasik.co.kr/main02/J10/gateway_ok.asp?sns="&sns

	strBackUrl = request("strBackUrl")
	Response.Cookies("strBackUrl") = strBackUrl

Select Case sns
	Case "naver"
		myappid = "c2ZCLPy_oenWCWqHbAOG"
		mysnsloginUri = "https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id="&myappid&"&state="&state&"&redirect_uri="&redirect_url

	Case "kakao"
		myappid = "1f6c3b75faac2de4575d45aa3d73b3b9"
		mysnsloginUri = "https://kauth.kakao.com/oauth/authorize?response_type=code&client_id="&myappid&"&state="&state&"&redirect_uri="&redirect_url

	Case "google"
		myappid = "196494705916-ks3ls488l4mj98444kcjvpgbe9dd0ian.apps.googleusercontent.com"
		mysnsloginUri = "https://accounts.google.com/o/oauth2/auth?response_type=code&client_id="&myappid&"&state="&state&"&scope=email%20profile"&"&redirect_uri="&redirect_url

	Case "facebook"
		myappid = "666932627122936"
		mysnsloginUri = "https://www.facebook.com/v3.3/dialog/oauth?client_id="&myappid&"&state="&state&"&redirect_uri="&redirect_url

End Select

Response.redirect(mysnsloginUri)
Response.end
%>