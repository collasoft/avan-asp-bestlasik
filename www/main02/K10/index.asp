<%
If Right(request("eye"),1) = "1" Then
%><!--#include virtual = "/main02/K10/privacy.asp" --><%
Elseif Right(request("eye"),1) = "2" Then
%><!--#include virtual = "/main02/K10/use.asp" --><%
End if
%>