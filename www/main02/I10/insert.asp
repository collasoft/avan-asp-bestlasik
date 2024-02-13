<% @CODEPAGE="65001" language="vbscript" %>
<% option Explicit %>

<!--#include virtual = "/Avanplus/_FormFunc.asp"-->
<!--#include virtual = "/Avanplus/_Function.asp"-->
<%
'+++++++[0] 입력은 insert 수정은 update 삭제는 delete 로 변경한다.
Dim insert, id_check, strId, strName

set insert = new DextQueryClass

Call insert.setUploadFolder("/upload/member")

'+++++++[1] 넘어오는 값들을 확인해 본다.넘어오는 값확인후 반드시 주석처리로 바꾼다
'삭제시에는 아래 3값이 활성화 되어있으면 에러남
'=====================================================================
'Call insert.ViewFormName()  	'[주석]폼네임명을 볼수있는 함수
'Call insert.ViewTbaleGride()	'[주석]테이블로 보기
'Call insert.ViewCreateTable()	'[주석]테이블쿼리
'Call insert.ViewFiledInsert
'Call insert.ViewFiledupdate
'=====================================================================
'+++++++[0]_End

Call DbOpen()

''아이디 중복체크 한번더 
strId = insert.getFormValue("strId")
strName = insert.getFormValue("strName")
id_check = getAdoRsScalar("select strId from mtb_member2 where strId = '"&strId&"'")
If Len(id_check) > 0 Then
%>
	<script>
	alert("중복되는 아이디입니다.");
	location.href='/main02/I10/sub.asp?eye=I102'
	</script>
<%
	Response.end
End If 

'+++++++[2] 수정과 삭제의 경우만 활설화 된다. 입력(insert)때는 비활성화
'Call insert.setwhere(" intSeq = '"& request.QueryString("intSeq") &"' ")	'//수정과 삭제에서만 사용
'+++++++[2]_End

'// 기본으로 넘어오는 값 세팅
'Call insert.setDefaultData("")

'+++++++[3] 입력페이지 이외에는 [주석]처리한다.
'Call insert.setdataAdd("strCategory", request.QueryString(ProgramFolderName))
'+++++++[3]_End

'+++++++[4] form에서 넘어오는 값 세팅 / 파일로 넘어오는 값 제외 / delete에서는 사용하지 않음[4번은 삭제]

Dim strEmail
strEmail = insert.getFormValue("strEmail1")&"@"&insert.getFormValue("strEmail2")

Call insert.setdataAdd("strName", insert.getFormValue("strName"))
Call insert.setdataAdd("strId", strId)
Call insert.setdataAdd("strPwd", Encrypt_Sha(insert.getFormValue("strPwd")))
Call insert.setdataAdd("strEmail", strEmail)
Call insert.setdataAdd("dtmInsertDate", FormatDateTime(now(),2) & " " & FormatDateTime(now(),4))
Call insert.setdataAdd("intGubun", 1)
Call insert.setdataAdd("intAction", 0)
If insert.getFormValue("sns_sns") <> "" then
Call insert.setdataAdd(insert.getFormValue("sns_sns")&"_token", insert.getFormValue("sns_id"))
End If
Call insert.setdataAdd("strlogin", FormatDateTime(now(),2) & " " & FormatDateTime(now(),4))

'+++++++[4]_End

Call insert.settablename("mtb_member2")

'+++++++[5] form에서 넘어오는 업로드될 파일 값 세팅 [함수명 바뀜insert-update-delete]
	'call insert.setFileData("strImage","insert")
	'Call insert.setinsertNumFileDataAdd("strImage")
	'call insert.setFileData("strimg","insert")
'+++++++[5]_End

  dim strSql
  strSQL = insert.getqueryinsert '[함수명 바뀜insert-update-delete]

  Call AdoConnExecute(strSQL)
  'response.Write("<br><br>"&strSQL)

Call DbClose()

set insert = nothing

'Dim html55

'html55 = "<table><tr><td style='padding-top:5px;padding-bottom:5px;'>"
'html55 = html55 & "아래 승인 버튼을 클릭하여 메일인증을 받으시기 바랍니다.</td></tr>"
'html55 = html55 & "<tr><td style='padding-top:5px;padding-bottom:5px;'>"
'html55 = html55 & "<a href='http://atcorp.solutionhosting.co.kr/avanmodule/member/w/mail_permit.asp?strId="&strId&"' target='_blank'>승인</a></td></tr>"
'html55 = html55 & "</table>"

'call HtmlMailSend_2003("avan@avansoft.co.kr", strEmail, "", strName&"님 회원가입을 인증하시기 바랍니다.", html55,"")

'+++++++[6] 메세지를 바꿔주고 처리후 이동할 페이지를 정해준다.
Call jsAlertMsgUrl("회원가입이 정상적으로 되었습니다.", "/main02/sub.asp?eye=I103")

'+++++++[6]_End
%>