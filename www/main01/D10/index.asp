<%
If Right(request("lasik"),1) = "1" Then
%><!--#include virtual = "/main01/D10/lasek.asp" --><%
Elseif Right(request("lasik"),1) = "2" Then
%><!--#include virtual = "/main01/D10/lasek_kinds01.asp" --><%
Elseif Right(request("lasik"),1) = "3" Then
%><!--#include virtual = "/main01/D10/lasek_kinds02.asp" --><%
Elseif Right(request("lasik"),1) = "4" Then
%><!--#include virtual = "/main01/D10/lasek_kinds03.asp" --><%
Elseif Right(request("lasik"),1) = "5" Then
%><!--#include virtual = "/main01/D10/lasek_kinds04.asp" --><%
Elseif Right(request("lasik"),1) = "6" Then
%><!--#include virtual = "/main01/D10/lasek_kinds05.asp" --><%
End if
%>