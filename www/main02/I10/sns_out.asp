<%@  codepage="65001" language="VBScript" %>
<% option explicit %>
<!--#include virtual = "/AVANplus/_Function.asp"-->
<!--#include virtual = "/AVANplus/_FormFunc.asp"-->
<%

'If getSession() = False then
'	call GetLoginShop("/main/sub.asp?avan=1007000000")
'	call Alert("로그인후 이용해 주세요.")
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


'+++++++[2] 수정과 삭제의 경우만 활설화 된다. 입력(update)때는 비활성화
Call update.setwhere(" strId = '"& session("useridid") &"' ")	'//수정과 삭제에서만 사용
'+++++++[2]_End


'// 기본으로 넘어오는 값 세팅
'Call update.setDefaultData("")


'+++++++[3] 입력페이지 이외에는 [주석]처리한다.
'Call update.setdataAdd("strCategory", request.QueryString(ProgramFolderName))
'+++++++[3]_End


'+++++++[4] form에서 넘어오는 값 세팅 / 파일로 넘어오는 값 제외 / delete에서는 사용하지 않음[4번은 삭제]

Dim sns_name, sns_value
sns_name = request.QueryString("sns_name")

'+++++++[4]_End

Call update.settablename("mtb_member2")

'+++++++[5] form에서 넘어오는 업로드될 파일 값 세팅 [함수명 바뀜update-update-delete]
	'call update.setFileData("strImage","update")
	'Call update.setupdateNumFileDataAdd("strImage")
'+++++++[5]_End

	dbconn.execute("update mtb_member2 set "&sns_name&" = null where strId='"& session("useridid") &"'")

Call DbClose()

set update = Nothing

'+++++++[6] 메세지를 바꿔주고 처리후 이동할 페이지를 정해준다.
Call jsAlertMsgUrl(Left(sns_name,Len(sns_name)-6)&" 연동이 해제되었습니다", "/main02/sub.asp?eye=I104")
'+++++++[6]_End
%>
