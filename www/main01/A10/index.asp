<%
If Right(request("lasik"),1) = "1" Then
%><!--#include virtual = "/main01/A10/vision.asp" --><%
Elseif Right(request("lasik"),1) = "2" Then
%><!--#include virtual = "/main01/A10/staff_intro.asp" --><%
Elseif Right(request("lasik"),1) = "3" Then
%><!--#include virtual = "/main01/A10/time.asp" --><%
Elseif Right(request("lasik"),1) = "4" Then
%><!--#include virtual = "/main01/A10/map.asp" --><%
Elseif Right(request("lasik"),1) = "5" Then
%><!--#include virtual = "/main01/A10/rescue.asp" --><%
Elseif Right(request("lasik"),1) = "6" Then
%><!--#include virtual = "/main01/A10/staff_view.asp" --><%
End if
%>