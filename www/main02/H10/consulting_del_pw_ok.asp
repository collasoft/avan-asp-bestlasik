<% @CODEPAGE="65001" language="vbscript" %>
<% option Explicit %>

<!--#include virtual = "/Avanplus/_FormFunc.asp"-->
<!--#include virtual = "/Avanplus/_Function.asp"-->
<%
Dim tablename
tablename = "counsel2"
Const UploadFolder = "/upload/counsel2"

'+++++++[0] 입력은 insert 수정은 update 삭제는 delete 로 변경한다.
Dim delete

set delete =  new DextQueryClass

'+++++++[1] 넘어오는 값들을 확인해 본다.넘어오는 값확인후 반드시 주석처리로 바꾼다
'삭제시에는 아래 3값이 활성화 되어있으면 에러남
'=====================================================================
'Call delete.ViewFormName()  	'[주석]폼네임명을 볼수있는 함수
'Call delete.ViewTbaleGride()	'[주석테이블로 보기
'Call delete.ViewCreateTable()	'[주석테이블쿼리
'=====================================================================
'+++++++[2] 넘어오는 값확인후 반드시 주석처리로 바꾼다

Call delete.setUploadFolder(UploadFolder)

Call DbOpen()
Dim esql, ers
	esql = "select * from counsel2 where intSeq = "& request.QueryString("intSeq")
	set ers = dbconn.execute(esql)

	If ers.eof Then
		Error("일치하는 정보가 없습니다.")
		Response.end
	Else
		If ers("c_pw") <> delete.getFormValue("c_pw") Then
			Error("비밀번호가 일치하지 않습니다.")
		End If

		If Len(ers("c_answer")) > 0 Then
			Error("답변이 있어 삭제 하실 수 없습니다.")
		End if
	End if

'+++++++[3] 수정과 삭제의 경우만 활설화 된다. 입력(insert)때는 비활성화
Call delete.setwhere(" intSeq = '"& request.QueryString("intSeq") &"' ")	'//수정과 삭제에서만 사용
'+++++++[3]_End

'// 기본으로 넘어오는 값 세팅
'Call delete.setDefaultData("")

'+++++++[4] form에서 넘어오는 값 세팅 / 파일로 넘어오는 값 제외 / delete에서는 사용하지 않음[4번은 삭제]

'+++++++[4]_End

Call delete.settablename(tablename)



'+++++++[5] form에서 넘어오는 업로드될 파일 값 세팅 [함수명 바뀜insert-update-delete]
  Call delete.setdeleteNumFileDataAdd("img1")
'+++++++[5]_End

  dim strSQL
  strSQL = delete.getquerydelete	'[함수명 바뀜insert-update-delete]			

  Call AdoConnExecute(strSQL)

Call DbClose()

set delete = nothing


'+++++++[6] 메세지를 바꿔주고 처리후 이동할 페이지를 정해준다.
Call jsAlertMsgUrl("삭제 되었습니다.", "/main02/sub.asp?eye=H102&page="&request.QueryString("page")&"&gum1="&request.QueryString("gum1")&"&gum2="&request.QueryString("gum2"))

'+++++++[6]_End
%>