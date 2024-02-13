<% @CODEPAGE="65001" language="vbscript" %>
<% option Explicit %>

<!--#include virtual = "/Avanplus/_FormFunc.asp"-->
<!--#include virtual = "/Avanplus/_Function.asp"-->
<%
Dim tablename
tablename = "review2"
Const UploadFolder = "/upload/review"

'+++++++[0] 입력은 insert 수정은 update 삭제는 delete 로 변경한다.
Dim insert

set insert =  new DextQueryClass

Call insert.setUploadFolder(UploadFolder)

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

'+++++++[2] 수정과 삭제의 경우만 활설화 된다. 입력(insert)때는 비활성화
'Call insert.setwhere(" intSeq = '"& request.QueryString("intSeq") &"' ")	'//수정과 삭제에서만 사용
'+++++++[2]_End

'// 기본으로 넘어오는 값 세팅
'Call insert.setDefaultData("")

'+++++++[3] 입력페이지 이외에는 [주석]처리한다.
'Call insert.setdataAdd("strCategory", request.QueryString(ProgramFolderName))
'+++++++[3]_End

Call insert.settablename(tablename)

Call DbOpen()

Call insert.setdataAdd("r_bunryu", insert.getFormValue("r_bunryu"))
Call insert.setdataAdd("r_title", insert.getFormValue("r_title"))
Call insert.setdataAdd("r_writer", insert.getFormValue("r_writer"))
Call insert.setdataAdd("r_contents", insert.getFormValue("b_text"))
'Call insert.setdataAdd("r_inputtime", now())
Call insert.setdataAdd("r_inputtime", now())
Call insert.setdataAdd("c_strId", session("useridid"))
Call insert.setdataAdd("r_eyeforce1", insert.getFormValue("r_eyeforce1"))
Call insert.setdataAdd("r_eyeforce2", insert.getFormValue("r_eyeforce2"))
Call insert.setdataAdd("r_question1", insert.getFormValue("r_question1"))
Call insert.setdataAdd("r_question2", insert.getFormValue("r_question2"))
Call insert.setdataAdd("r_question3", insert.getFormValue("r_question3"))
Call insert.setdataAdd("r_question4", insert.getFormValue("r_question4"))
Call insert.setdataAdd("gubun", "a")
Call insert.setdataAdd("people1", insert.getFormValue("people1"))
Call insert.setdataAdd("people2", insert.getFormValue("people2"))
Call insert.setdataAdd("c_pw", insert.getFormValue("c_pw"))

'+++++++[5] form에서 넘어오는 업로드될 파일 값 세팅 [함수명 바뀜insert-update-delete]
	call insert.setFileData("img1","insert")
	call insert.setFileData("img2","insert")
	call insert.setFileData("img3","insert")
	'Call insert.setinsertNumFileDataAdd("strImage") '//구번전 파일 업로드
'+++++++[5]_End

  dim strSql
  strSQL = insert.getqueryinsert

'  Response.write strSQL
' Response.end

  Call AdoConnExecute(strSQL)

Call DbClose()

set insert = nothing

'+++++++[6] 메세지를 바꿔주고 처리후 이동할 페이지를 정해준다.
Call jsAlertMsgUrl("등록되었습니다", "/main02/sub.asp?eye=G101&gubun=a")
'+++++++[6]_End
%>