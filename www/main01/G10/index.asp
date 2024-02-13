<%
'If Right(request("lasik"),2) = "91" Then
'%><!--include virtual = "/main01/G10/competition_view.asp" --><%
If Right(request("lasik"),1) = "1" Then
%><!--#include virtual = "/main01/G10/event_list.asp" --><%
Elseif Right(request("lasik"),1) = "2" Then
%><!--#include virtual = "/main01/G10/event_view.asp" --><%
Elseif Right(request("lasik"),1) = "3" Then
%><!--#include virtual = "/main01/G10/notice_list.asp" --><%
Elseif Right(request("lasik"),1) = "4" Then
%><!--#include virtual = "/main01/G10/notice_view.asp" --><%
Elseif Right(request("lasik"),1) = "5" Then
%><!--#include virtual = "/main01/G10/material_list.asp" --><%
Elseif Right(request("lasik"),1) = "6" Then
%><!--#include virtual = "/main01/G10/material_view.asp" --><%
Elseif Right(request("lasik"),1) = "7" Then
%><!--#include virtual = "/main01/G10/partner.asp" --><%
Elseif Right(request("lasik"),1) = "8" Then
%><!--#include virtual = "/main01/G10/cost.asp" --><%
Elseif Right(request("lasik"),1) = "9" Then
	If request("cSeq") <> "" Then
%><!--#include virtual = "/main01/G10/competition_view.asp" --><%
	Else
%><!--#include virtual = "/main01/G10/competition_list.asp" --><%
	End If
End if
%>