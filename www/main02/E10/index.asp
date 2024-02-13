<%
If Right(request("eye"),2) = "01" Then
%><!--#include virtual = "/main02/E10/eyeball01.asp" --><%
Elseif Right(request("eye"),2) = "02" Then
%><!--#include virtual = "/main02/E10/eyeball02.asp" --><%
Elseif Right(request("eye"),2) = "03" Then
%><!--#include virtual = "/main02/E10/eyeball03_01.asp" --><%
Elseif Right(request("eye"),2) = "04" Then
%><!--#include virtual = "/main02/E10/eyeball03_02.asp" --><%
Elseif Right(request("eye"),2) = "05" Then
%><!--#include virtual = "/main02/E10/eyeball03_03.asp" --><%
Elseif Right(request("eye"),2) = "06" Then
%><!--#include virtual = "/main02/E10/eyeball03_04.asp" --><%
Elseif Right(request("eye"),2) = "07" Then
%><!--#include virtual = "/main02/E10/eyeball04.asp" --><%
Elseif Right(request("eye"),2) = "08" Then
%><!--#include virtual = "/main02/E10/eyeball05.asp" --><%
Elseif Right(request("eye"),2) = "09" Then
%><!--#include virtual = "/main02/E10/eyeball06.asp" --><%
Elseif Right(request("eye"),2) = "10" Then
%><!--#include virtual = "/main02/E10/eyeball07.asp" --><%
End if
%>