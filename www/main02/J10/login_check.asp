<% @CODEPAGE="65001" language="vbscript" %>
<% option Explicit %>

<!--#include virtual = "/Avanplus/_FormFunc.asp"-->
<!--#include virtual = "/Avanplus/_Function.asp"-->
<%
Call dbopen

Dim id, pw, save, intSeq, prev, strBackUrl
id = request.Form("strId")
pw = request.form("strPw")
save = request.form("save")
intSeq = request.form("intSeq")
prev = request.form("prev")
strBackUrl = request.form("strBackUrl")

Dim rs, sql
sql = "select * from mtb_member2 where strId = '"&id&"' and strPwd = '"&Encrypt_Sha(pw)&"'" 'and intAction = 0"
Set rs = dbconn.execute(sql)
If rs.eof Then 
%>
	<script>
	alert("정보가 일치하지 않습니다.")
	window.history.back();
	</script>
<%
	Response.End
Else

    If Trim(rs("intAction")) = "2" Then
		Error("탈퇴한 회원입니다.")
		Response.End 
	End if

	If Trim(rs("intAction")) <> "0" Then
		Error("정보가 일치하지 않습니다.")
		Response.End 
	End If

'	If Trim(rs("mail_permit")) <> "Y" Then
'		Error("회원가입 시 받은 메일에서 승인을 하시기 바랍니다.")
'		Response.End 
'	End If

'	Dim day11, day22, dayminus

'	day11 = CDate(left(rs("strlogin"),10))
'	day22 = CDate(FormatDateTime(now(),2))

'	dayminus = datediff("d",day11,day22)

'	If dayminus > 365 Then
'	    Response.redirect "sub.asp?avan=1006000000&memberMode=diapause&sleepid="&id&""
'		Response.End
'	End if

  '  rs("strName") FormatDateTime(now(),2)
	
    dbconn.execute("update mtb_member2 set strlogin = '"&FormatDateTime(now(),2) & " " & FormatDateTime(now(),4)&"' where strid = '"&id&"'")

	session("username") = rs("strName")
	session("useridid") = rs("strId")
	session("userlevel") = rs("intGubun")
'	session("snsname") = rs("sns_name")
    
	If intSeq <> "" then
%>
	<script>
	alert('<%=rs("strName")%>님 환영합니다')
	location.href='/main02/sub.asp?eye=G102&intSeq=<%=intSeq%>&gubun=a'
	</script>

	<%ElseIf prev <> "" then%>

	<script>
	alert('<%=rs("strName")%>님 환영합니다')
	location.href='/main02/sub.asp?eye=<%=prev%>';
	</script>

	<%ElseIf strBackUrl <> "" then%>
	<script>
	alert('<%=rs("strName")%>님 환영합니다')
	location.href='<%=strBackUrl%>';
	</script>

	<%else%>
	<script>
	alert('<%=rs("strName")%>님 환영합니다')
	location.href='/main02';
	</script>

	<%End if%>
<%End if%>
<!--#include virtual = "/AVANplus/BuilderEnd.asp" -->