<%
If Right(request("lasik"),1) = "1" Then
%><!--#include virtual = "/main01/K10/login.asp" --><%
Elseif Right(request("lasik"),1) = "2" Then
%><!--#include virtual = "/main01/K10/id_find.asp" --><%
Elseif Right(request("lasik"),1) = "3" Then
%><!--#include virtual = "/main01/K10/id_findok.asp" --><%
Elseif Right(request("lasik"),1) = "4" Then
%><!--#include virtual = "/main01/K10/pw_find.asp" --><%
End if
%>