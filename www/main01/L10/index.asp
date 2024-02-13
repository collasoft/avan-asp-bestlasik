<%
If Right(request("lasik"),1) = "1" Then
%><!--#include virtual = "/main01/L10/privacy.asp" --><%
Elseif Right(request("lasik"),1) = "2" Then
%><!--#include virtual = "/main01/L10/use.asp" --><%
End if
%>