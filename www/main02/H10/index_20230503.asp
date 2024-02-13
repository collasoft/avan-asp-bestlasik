<%
If Right(request("eye"),1) = "1" Then
%><!--#include virtual = "/main02/H10/faq.asp" --><%
Elseif Right(request("eye"),1) = "2" Then
%><!--#include virtual = "/main02/H10/consulting_list.asp" --><%
Elseif Right(request("eye"),1) = "3" Then
%><!--#include virtual = "/main02/H10/consulting_view.asp" --><%
Elseif Right(request("eye"),1) = "4" Then
%><!--#include virtual = "/main02/H10/consulting_write.asp" --><%
Elseif Right(request("eye"),1) = "5" Then
%><!--#include virtual = "/main02/H10/consulting_pw.asp" --><%
Elseif Right(request("eye"),1) = "6" Then
%><!--#include virtual = "/main02/H10/calender01.asp" --><%
Elseif Right(request("eye"),1) = "7" Then
%><!--#include virtual = "/main02/H10/diagnosis_write.asp" --><%
Elseif Right(request("eye"),1) = "8" Then
%><!--#include virtual = "/main02/H10/consulting_edit.asp" --><%
Elseif Right(request("eye"),1) = "9" Then
%><!--#include virtual = "/main02/H10/consulting_del_pw.asp" --><%
Elseif Right(request("eye"),1) = "0" Then
%><!--#include virtual = "/main02/H10/diagnosis_ok.asp" --><%
End if
%>