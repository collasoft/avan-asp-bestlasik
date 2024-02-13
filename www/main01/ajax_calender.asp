<% @CODEPAGE="65001" language="vbscript" %>
<% option Explicit %>
<!--#include virtual = "/Avanplus/_FormFunc.asp"-->
<!--#include virtual = "/Avanplus/_Function.asp"-->
<%
Call DbOpen()

	Dim sql, rs, cyear, cmonth, cday, ctime, cminut
	cyear			= request("cyear")
	cmonth			= request("cmonth")
	cday			= request("cday")
	ctime			= request("ctime")
	cminut			= request("cminut")

	sql = "select (select count(intSeq) from book where c_yymmdd = '" & cyear & "-" & cmonth & "-" & cday & "_" & ctime & cminut &"'), (select count(intSeq) from book where c_yymmdd like '" & cyear & "-" & cmonth & "-" & cday &"%')"
	set rs = dbconn.execute(sql)

	If rs.eof Then
		response.write "0|0"
	Else
		Response.write rs(0)&"|"&rs(1)
	End if
%>