<meta charset="UTF-8">
<%
Dim sns, myappid, mysnsloginUri,state,redirect_url,mode,strBackUrl
	sns = request("sns")
	Response.Cookies("sns_mode") = request("mode")
	state = session.SessionID
	redirect_url = "https://www.best-lasik.co.kr/main01/K10/gateway_ok.asp?sns="&sns
	strBackUrl = request("strBackUrl")

	Response.Cookies("strBackUrl") = strBackUrl

Select Case sns
	Case "naver"
		myappid = "c2ZCLPy_oenWCWqHbAOG"
		mysnsloginUri = "https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id="&myappid&"&state="&state&"&redirect_uri="&redirect_url

	Case "kakao"
		myappid = "758066dffde77a8be2757bd7902612fd"
		mysnsloginUri = "https://kauth.kakao.com/oauth/authorize?response_type=code&client_id="&myappid&"&state="&state&"&redirect_uri="&redirect_url
	Case "google"
		myappid = "196494705916-v7f5dit9hksh471iveer1d4grtukcrsm.apps.googleusercontent.com"
		mysnsloginUri = "https://accounts.google.com/o/oauth2/auth?response_type=code&client_id="&myappid&"&state="&state&"&scope=email%20profile"&"&redirect_uri="&redirect_url

	Case "facebook"
		myappid = "2291679524377839"
		mysnsloginUri = "https://www.facebook.com/v3.3/dialog/oauth?client_id="&myappid&"&state="&state&"&redirect_uri="&redirect_url

End Select

Response.redirect(mysnsloginUri)
Response.end
%>