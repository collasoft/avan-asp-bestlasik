<%
If Right(request("eye"),1) = "1" Then
%><!--#include virtual = "/main02/J10/login.asp" --><%
Elseif Right(request("eye"),1) = "2" Then
%><!--#include virtual = "/main02/J10/id_find.asp" --><%
Elseif Right(request("eye"),1) = "3" Then
%><!--#include virtual = "/main02/J10/id_findok.asp" --><%
Elseif Right(request("eye"),1) = "4" Then
%><!--#include virtual = "/main02/J10/pw_find.asp" --><%
End if
%>