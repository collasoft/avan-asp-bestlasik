<%
If Right(request("lasik"),1) = "1" Then
%><!--#include virtual = "/main01/C10/lasik.asp" --><%
Elseif Right(request("lasik"),1) = "2" Then
%><!--#include virtual = "/main01/C10/lasik_kinds01.asp" --><%
Elseif Right(request("lasik"),1) = "3" Then
%><!--#include virtual = "/main01/C10/lasik_kinds02.asp" --><%
Elseif Right(request("lasik"),1) = "4" Then
%><!--#include virtual = "/main01/C10/lasik_kinds03.asp" --><%
Elseif Right(request("lasik"),1) = "5" Then
%><!--#include virtual = "/main01/C10/lasik_kinds04.asp" --><%
End if
%>