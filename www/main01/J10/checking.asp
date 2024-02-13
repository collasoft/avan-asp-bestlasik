<%@  codepage="65001" language="VBScript" %>
<% option explicit %>
<!--#include virtual = "/Avanplus/_FormFunc.asp"-->
<!--#include virtual = "/Avanplus/_Function.asp"-->
<%
Call dbopen
Dim strname, strfield, db_id
strname = request.form("id")
strfield = request.form("id2")
db_id = getAdoRsScalar("select * from mtb_member2 where "&strfield&" = '"&strname&"'")
If Len(db_id) > 0 Then

	Response.write "str_false"

End If 
Call dbclose
%>