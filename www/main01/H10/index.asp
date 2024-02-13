<%
If Right(request("lasik"),1) = "1" Then
%><!--#include virtual = "/main01/H10/review_list.asp" --><%
Elseif Right(request("lasik"),1) = "2" Then
%><!--#include virtual = "/main01/H10/review_view.asp" --><%
Elseif Right(request("lasik"),1) = "3" Then
%><!--#include virtual = "/main01/H10/review_write.asp" --><%
Elseif Right(request("lasik"),1) = "4" Then
%><!--#include virtual = "/main01/H10/review_list.asp" --><%
Elseif Right(request("lasik"),1) = "5" Then
%><!--#include virtual = "/main01/H10/review_view.asp" --><%
Elseif Right(request("lasik"),1) = "6" Then
%><!--#include virtual = "/main01/H10/review_edit.asp" --><%
Elseif Right(request("lasik"),1) = "7" Then
%><!--#include virtual = "/main01/H10/review_del_pw.asp" --><%
End if
%>