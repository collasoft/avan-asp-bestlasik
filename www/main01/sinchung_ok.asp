<%@  codepage="65001" language="VBScript" %>
<% option explicit %>
<!--#include virtual = "/Avanplus/_FormFunc.asp"-->
<!--#include virtual = "/Avanplus/_Function.asp"-->
<%
Call dbopen

Dim bestname, besttel1, besttel2, besttel3, besttel, bestkind, best_contents
bestname = request.form("bestname")
besttel1  = request.form("besttel1")
besttel2  = request.form("besttel2")
besttel3  = request.form("besttel3")
besttel = besttel1 & besttel2 & besttel3
bestkind = request.form("bestkind")
best_contents = request.form("best_contents")
dbconn.execute("insert into sinchung (bestname,besttel,bestkind,insertdate,state,best_contents) values (N'"& bestname &"',N'"& besttel &"',N'"& bestkind &"','"& FormatDateTime(now(),2) & " " & FormatDateTime(now(),4) &"','대기',N'"& best_contents &"')")

Response.write "str_ok"

Call dbclose
%>