<% @CODEPAGE="65001" language="vbscript" %>
<% option Explicit %>

<!--#include virtual = "/Avanplus/_FormFunc.asp"-->
<!--#include virtual = "/Avanplus/_Function.asp"-->
<%
Call dbopen

Function random2()
  Dim str, strlen, r, i, ds, serialCode '사용되는 변수를 선언

  str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789" '랜덤으로 사용될 문자 또는 숫자

  strlen = 5 '랜덤으로 출력될 값의 자릿수 ex)해당 구문에서 10자리의 랜덤 값 출력

  Randomize '랜덤 초기화
  For i = 1 To strlen '위에 선언된 strlen만큼 랜덤 코드 생성
    r = Int((36 - 1 + 1) * Rnd + 1)  ' 36은 str의 문자갯수
    serialCode = serialCode + Mid(str,r,1)
  Next
  random2 = serialCode
End Function

Dim id, strEmail, name, s_email, pw
id = request.form("id")
strEmail = request.form("strEmail1")&"@"&request.form("strEmail2")
name = request.form("name")
pw = random2()

s_email = getAdoRsScalar("select strEmail from mtb_member2 where strId = '"&id&"'and strEmail='"&strEmail&"' and strName='"&name&"' ")

If Len(s_email) > 0 then

dbconn.execute("update mtb_member2 set strPwd = '"&Encrypt_Sha(pw)&"' where strId = '"&id&"'")
call HtmlMailSend_2003("webmaster@best-lasik.co.kr", strEmail, "", name&"님의 임시비밀번호 입니다.", "신세계안과 임시비밀번호 : "&pw,"")

%>
	<script>
	alert("임시비밀번호를 고객님의 이메일로 발송했습니다.")
	location.href="/main02/";
	</script>
<%
	Response.end

Else

%>
	<script>
	alert("정보가 일치하지 않습니다.")
	window.history.back();
	</script>
<%
	Response.end

End If
Call dbclose
%>