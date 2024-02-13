<% @CODEPAGE="65001" language="vbscript" %>
<% option Explicit %>

<!--#include virtual = "/Avanplus/_FormFunc.asp"-->
<!--#include virtual = "/Avanplus/_Function.asp"-->
<%
'If getSession() = False then
'	call Alert("로그인후 이용해 주세요.")
'	call GetLoginShop("/main01/sub.asp?lasik=K101")
'End If

'+++++++[0] 입력은 update 수정은 update 삭제는 delete 로 변경한다.
Dim update
Dim id_check

set update =  new DextQueryClass

Call update.setUploadFolder("/upload/member")

'+++++++[1] 넘어오는 값들을 확인해 본다.넘어오는 값확인후 반드시 주석처리로 바꾼다
'삭제시에는 아래 3값이 활성화 되어있으면 에러남
'=====================================================================
'Call update.ViewFormName()  	'[주석]폼네임명을 볼수있는 함수
'Call update.ViewTbaleGride()	'[주석]테이블로 보기
'Call update.ViewCreateTable()	'[주석]테이블쿼리
'Call update.ViewFiledupdate
'Call update.ViewFiledupdate
'=====================================================================
'+++++++[0]_End

Call DbOpen()

If update.getFormValue("strPwd_now") <> "" then

	Dim rs, sql
	sql = "select * from mtb_member2 where strId = '"&session("useridid")&"' and strPwd = '"&Encrypt_Sha(update.getFormValue("strPwd_now"))&"'"
	Set rs = dbconn.execute(sql)
	If rs.eof Then
	%>
		<script>
		alert("기존 비밀번호가 일치하지 않습니다.")
		window.history.back();
		</script>
	<%
		Response.End
	End If

End if

'+++++++[2] 수정과 삭제의 경우만 활설화 된다. 입력(update)때는 비활성화
Call update.setwhere(" strId = '"& session("useridid") &"' ")	'//수정과 삭제에서만 사용
'+++++++[2]_End

'// 기본으로 넘어오는 값 세팅
'Call update.setDefaultData("")

'+++++++[3] 입력페이지 이외에는 [주석]처리한다.
'Call update.setdataAdd("strCategory", request.QueryString(ProgramFolderName))
'+++++++[3]_End

'+++++++[4] form에서 넘어오는 값 세팅 / 파일로 넘어오는 값 제외 / delete에서는 사용하지 않음[4번은 삭제]

Dim strEmail
strEmail = update.getFormValue("strEmail1")&"@"&update.getFormValue("strEmail2")

If update.getFormValue("strPwd_now") <> "" then
Call update.setdataAdd("strPwd", Encrypt_Sha(update.getFormValue("strPwd")))
End if
Call update.setdataAdd("strEmail", strEmail)

'+++++++[4]_End


Call update.settablename("mtb_member2")


'+++++++[5] form에서 넘어오는 업로드될 파일 값 세팅 [함수명 바뀜update-update-delete]
	'call update.setFileData("strImage","update")
	'Call update.setupdateNumFileDataAdd("strImage")

	'call update.setFileData("strimg","update")
'+++++++[5]_End


	dim strSql
	strSQL = update.getqueryupdate	'[함수명 바뀜update-update-delete]
	'Response.write strSQL

	Call AdoConnExecute(strSQL)
	'response.Write("<br><br>"&strSQL)
Call DbClose()

set update = nothing

'+++++++[6] 메세지를 바꿔주고 처리후 이동할 페이지를 정해준다.
Call jsAlertMsgUrl("수정되었습니다", "/main02")
'+++++++[6]_End
%>
