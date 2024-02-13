<% @CODEPAGE="65001" language="vbscript" %>
<% option Explicit %>

<!--#include virtual = "/Avanplus/_FormFunc.asp"-->
<!--#include virtual = "/Avanplus/_Function.asp"-->
<%
Call dbopen

Dim c_pw
c_pw = request.Form("c_pw")

Dim rs, sql
sql = "select * from counsel where c_pw = '"&c_pw&"' and intSeq = "&request("intSeq")&""
Set rs = dbconn.execute(sql)
If rs.eof Then
%>
	<script>
	alert("비밀번호가 일치하지 않습니다.")
	window.history.back();
	</script>
<%
	Response.End
Else
%>
  <script>
  location.href='/main01/sub.asp?lasik=I103&intSeq=<%=request("intSeq")%>&page=<%=request("page")%>&gum1=<%=request("gum1")%>&gum2=<%=request("gum2")%>';
  </script>
<%
End If
rs.close
Set rs=Nothing
Call dbclose
%>
