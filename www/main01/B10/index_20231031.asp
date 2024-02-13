<%
If Right(request("lasik"),1) = "1" Then
%><!--#include virtual = "/main01/B10/smile.asp" --><%
Elseif Right(request("lasik"),1) = "2" Then
%><!--#include virtual = "/main01/B10/smile_reason.asp" --><%
End if
%>