<%
If Right(request("lasik"),1) = "1" Then
%><!--#include virtual = "/main01/J10/join01.asp" --><%
Elseif Right(request("lasik"),1) = "2" Then
%><!--#include virtual = "/main01/J10/join02.asp" --><%
Elseif Right(request("lasik"),1) = "3" Then
%><!--#include virtual = "/main01/J10/join03.asp" --><%
Elseif Right(request("lasik"),1) = "4" Then
%><!--#include virtual = "/main01/J10/member_modify.asp" --><%
Elseif Right(request("lasik"),1) = "5" Then
%><!--#include virtual = "/main01/J10/member_del.asp" --><%
End if
%>