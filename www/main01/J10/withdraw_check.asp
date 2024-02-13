<% @CODEPAGE="65001" language="vbscript" %>
<% option Explicit %>

<!--#include virtual = "/Avanplus/_FormFunc.asp"-->
<!--#include virtual = "/Avanplus/_Function.asp"-->
<%
Call dbopen

Dim memberout
memberout = request.form("memberout")

Dim rs, sql
sql = "select * from mtb_member2 where strId = '"&session("useridid")&"'"
Set rs = dbconn.execute(sql)
If rs.eof Then 
%>
	<script>
	alert("정보가 일치하지 않습니다.")
	window.history.back();
	</script>
<%
	Response.End
Else
	
    dbconn.execute("update mtb_member2 set intAction = 2, memberout = '"&memberout&"' where strid = '"&session("useridid")&"'")

    Session.Contents.RemoveAll()
    Session.Abandon
%>
	<script>
	alert('회원탈퇴가 완료되었습니다.')
	location.href='/main01'
	</script>
<%

End if

Call dbclose
%>