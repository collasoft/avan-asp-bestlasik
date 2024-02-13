<%
If Right(request("eye"),2) = "01" Then
%><!--#include virtual = "/main02/F10/event_list.asp" --><%
Elseif Right(request("eye"),2) = "02" Then
%><!--#include virtual = "/main02/F10/event_view.asp" --><%
Elseif Right(request("eye"),2) = "03" Then
%><!--#include virtual = "/main02/F10/notice_list.asp" --><%
Elseif Right(request("eye"),2) = "04" Then
%><!--#include virtual = "/main02/F10/notice_view.asp" --><%
Elseif Right(request("eye"),2) = "05" Then
%><!--#include virtual = "/main02/F10/material_list.asp" --><%
Elseif Right(request("eye"),2) = "06" Then
%><!--#include virtual = "/main02/F10/material_view.asp" --><%
Elseif Right(request("eye"),2) = "07" Then
%><!--#include virtual = "/main02/F10/partner.asp" --><%
Elseif Right(request("eye"),2) = "08" Then
%><!--#include virtual = "/main02/F10/cost.asp" --><%
Elseif Right(request("eye"),2) = "09" Then
	If request("cSeq") <> "" Then
%><!--#include virtual = "/main02/F10/competition_view.asp" --><%
	Else
%><!--#include virtual = "/main02/F10/competition_list.asp" --><%
	End If
End if
%>