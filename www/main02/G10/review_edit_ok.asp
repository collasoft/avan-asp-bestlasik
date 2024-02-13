<% @CODEPAGE="65001" language="vbscript" %>
<% option Explicit %>

<!--#include virtual = "/Avanplus/_FormFunc.asp"-->
<!--#include virtual = "/Avanplus/_Function.asp"-->
<%
Dim tablename
tablename = "review2"
Const UploadFolder = "/upload/review"

'+++++++[0] 입력은 update 수정은 update 삭제는 delete 로 변경한다.
Dim update

set update =  new DextQueryClass
Call update.setUploadFolder(UploadFolder)


'+++++++[1] 넘어오는 값들을 확인해 본다.넘어오는 값확인후 반드시 주석처리로 바꾼다
'삭제시에는 아래 3값이 활성화 되어있으면 에러남
'=====================================================================
'Call update.ViewFormName()  	'[주석]폼네임명을 볼수있는 함수
'Call update.ViewTbaleGride()	'[주석테이블로 보기
'Call update.ViewCreateTable()	'[주석테이블쿼리
'=====================================================================
'+++++++[2] 넘어오는 값확인후 반드시 주석처리로 바꾼다

Call DbOpen()

Dim esql, ers
	esql = "select * from review2 where intSeq = "& request.QueryString("intSeq")
	set ers = dbconn.execute(esql)

	If ers.eof Then
		Error("일치하는 정보가 없습니다.")
	Else
		If ers("c_strId") <> session("useridid") Then
			Error("수정 권한이 없습니다.")
		End if
	End if

'+++++++[3] 수정과 삭제의 경우만 활설화 된다. 입력(insert)때는 비활성화
Call update.setwhere(" intSeq = '"& request.QueryString("intSeq") &"' ")	'//수정과 삭제에서만 사용
'+++++++[3]_End

'// 기본으로 넘어오는 값 세팅
'Call update.setDefaultData("")

'+++++++[4] form에서 넘어오는 값 세팅 / 파일로 넘어오는 값 제외 / delete에서는 사용하지 않음[4번은 삭제]

Call update.setdataAdd("r_bunryu", update.getFormValue("r_bunryu"))
Call update.setdataAdd("r_title", update.getFormValue("r_title"))
Call update.setdataAdd("r_writer", update.getFormValue("r_writer"))
Call update.setdataAdd("r_contents", update.getFormValue("b_text"))
Call update.setdataAdd("r_eyeforce1", update.getFormValue("r_eyeforce1"))
Call update.setdataAdd("r_eyeforce2", update.getFormValue("r_eyeforce2"))
Call update.setdataAdd("r_question1", update.getFormValue("r_question1"))
Call update.setdataAdd("r_question2", update.getFormValue("r_question2"))
Call update.setdataAdd("r_question3", update.getFormValue("r_question3"))
Call update.setdataAdd("r_question4", update.getFormValue("r_question4"))
'Call update.setdataAdd("r_inputtime", update.getFormValue("r_inputtime"))
Call update.setdataAdd("people1", update.getFormValue("people1"))
Call update.setdataAdd("people2", update.getFormValue("people2"))

'+++++++[4]_End

Call update.settablename(tablename)



'+++++++[5] form에서 넘어오는 업로드될 파일 값 세팅 [함수명 바뀜update-update-delete]
'  call update.setFileData("img1","update")
  call update.setFileData("img2","update")
'  call update.setFileData("img3","update")
  'Call update.setupdateNumFileDataAdd("strImage")
'+++++++[5]_End

  dim strSQL
  strSQL = update.getqueryupdate	'[함수명 바뀜update-update-delete]			

  Call AdoConnExecute(strSQL)

Call DbClose()

set update = nothing


'+++++++[6] 메세지를 바꿔주고 처리후 이동할 페이지를 정해준다.
Call jsAlertMsgUrl("수정 되었습니다", "/main02/sub.asp?eye=G102&gubun=a&intSeq="&request.QueryString("intSeq")&"&page="&request.QueryString("page")&"&gum1="&request.QueryString("gum1")&"&gum2="&request.QueryString("gum2"))
'+++++++[6]_End
%>