<%
If Right(request("lasik"),1) = "1" Then
%><!--#include virtual = "/main01/B10/smile.asp" --><%
Elseif Right(request("lasik"),1) = "2" Then
%><!--#include virtual = "/main01/B10/smile_reason.asp" --><%
Elseif Right(request("lasik"),1) = "3" Then
%><!--#include virtual = "/main01/B10/smile_pro.asp" --><%
End if
%>