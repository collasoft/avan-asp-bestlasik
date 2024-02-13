<% @CODEPAGE="65001" language="vbscript" %>
<% option Explicit %>

<!--#include virtual = "/Avanplus/_FormFunc.asp"-->
<!--#include virtual = "/Avanplus/_Function.asp"-->
<%
'+++++++[0] 입력은 insert 수정은 update 삭제는 delete 로 변경한다.
Dim update

set update = new DextQueryClass

Call update.setUploadFolder("/upload/counsel")

'+++++++[1] 넘어오는 값들을 확인해 본다.넘어오는 값확인후 반드시 주석처리로 바꾼다
'삭제시에는 아래 3값이 활성화 되어있으면 에러남
'=====================================================================
'Call update.ViewFormName()  	'[주석]폼네임명을 볼수있는 함수
'Call update.ViewTbaleGride()	'[주석]테이블로 보기
'Call update.ViewCreateTable()	'[주석]테이블쿼리
'=====================================================================
'+++++++[0]_End

Call DbOpen()

Dim esql, ers
	esql = "select * from counsel where intSeq = "& request.QueryString("intSeq")
	set ers = dbconn.execute(esql)

	If ers.eof Then
		Error("일치하는 정보가 없습니다.")
	Else
		If ers("c_pw") <> update.getFormValue("c_pw") Then
			Error("비밀번호가 일치하지 않습니다.")
		End if

		If Len(ers("c_answer")) > 0 Then
			Error("답변이 있어 수정 하실 수 없습니다.")
		End if
	End if

'+++++++[2] 수정과 삭제의 경우만 활설화 된다. 입력(update)때는 비활성화
Call update.setwhere(" intSeq = '"& request.QueryString("intSeq") &"'  ")	'//수정과 삭제에서만 사용
'+++++++[2]_End

'// 기본으로 넘어오는 값 세팅
'Call update.setDefaultData("")

'+++++++[3] 입력페이지 이외에는 [주석]처리한다.
'Call update.setdataAdd("strCategory", request.QueryString(ProgramFolderName))
'+++++++[3]_End

'+++++++[4] form에서 넘어오는 값 세팅 / 파일로 넘어오는 값 제외 / delete에서는 사용하지 않음[4번은 삭제]

Call update.setdataAdd("c_title", update.getFormValue("c_title"))
'Call update.setdataAdd("c_writer", session("username"))
Call update.setdataAdd("c_writer", update.getFormValue("c_writer"))
Call update.setdataAdd("c_contents", update.getFormValue("c_contents"))
'Call update.setdataAdd("c_inputtime", now())
Call update.setdataAdd("state", update.getFormValue("ra01"))
'Call update.setdataAdd("c_pw", update.getFormValue("c_pw"))
Call update.setdataAdd("html", "Y")
'+++++++[4]_End

Call update.settablename("counsel")

'+++++++[5] form에서 넘어오는 업로드될 파일 값 세팅 [함수명 바뀜update-update-delete]
    call update.setFileData("img1","update")
	'Call update.setupdateNumFileDataAdd("strImage")
'+++++++[5]_End

  dim strSql
  strSQL = update.getqueryupdate '[함수명 바뀜insert-update-delete]

  Call AdoConnExecute(strSQL)
  'response.Write("<br><br>"&strSQL)

Call DbClose()

set update = nothing

'Dim html55

'html55 = "<table><tr><td style='padding-top:5px;padding-bottom:5px;'>"
'html55 = html55 & "아래 승인 버튼을 클릭하여 메일인증을 받으시기 바랍니다.</td></tr>"
'html55 = html55 & "<tr><td style='padding-top:5px;padding-bottom:5px;'>"
'html55 = html55 & "<a href='http://atcorp.solutionhosting.co.kr/avanmodule/member/w/mail_permit.asp?strId="&strId&"' target='_blank'>승인</a></td></tr>"
'html55 = html55 & "</table>"

'call HtmlMailSend_2003("avan@avansoft.co.kr", strEmail, "", strName&"님 회원가입을 인증하시기 바랍니다.", html55,"")

'+++++++[6] 메세지를 바꿔주고 처리후 이동할 페이지를 정해준다.
Call jsAlertMsgUrl("수정 되었습니다.", "/main01/sub.asp?lasik=I103&intSeq="&request.QueryString("intSeq")&"&page="&request.QueryString("page")&"&gum1="&request.QueryString("gum1")&"&gum2="&request.QueryString("gum2"))

'+++++++[6]_End
%>