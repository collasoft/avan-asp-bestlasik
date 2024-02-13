<%
If Right(request("lasik"),1) = "1" Then
%><!--#include virtual = "/main01/E10/lens.asp" --><%
Elseif Right(request("lasik"),1) = "2" Then
%><!--#include virtual = "/main01/E10/lens_kind00.asp" --><%
Elseif Right(request("lasik"),1) = "3" Then
%><!--#include virtual = "/main01/E10/lens_kind01.asp" --><%
Elseif Right(request("lasik"),1) = "4" Then
%><!--#include virtual = "/main01/E10/lens_kind02.asp" --><%
Elseif Right(request("lasik"),1) = "5" Then
%><!--#include virtual = "/main01/E10/lens_kind03.asp" --><%
Elseif Right(request("lasik"),1) = "6" Then
%><!--#include virtual = "/main01/E10/lens_kind04.asp" --><%
End if
%>