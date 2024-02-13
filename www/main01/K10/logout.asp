<%@  codepage="65001" @language="VBScript" %>
<% option explicit %>

<%
Response.CharSet="utf-8"
Session.codepage="65001"
Response.codepage="65001"
Response.ContentType="text/html;charset=utf-8"

Session.Contents.RemoveAll()
Session.Abandon
%>

<script>
	alert("로그아웃 되었습니다")
	location.href="/main01/"
</script> 