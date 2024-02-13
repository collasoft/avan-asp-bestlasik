<% @CODEPAGE="65001" language="vbscript" %>
<% option Explicit %>

<!--#include virtual = "/Avanplus/_FormFunc.asp"-->
<!--#include virtual = "/Avanplus/_Function.asp"-->
<%
'+++++++[0] 입력은 insert 수정은 update 삭제는 delete 로 변경한다.
Dim insert

set insert = new DextQueryClass

Call insert.setUploadFolder("/upload/counsel")

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

Dim csql, crs
	csql = "select (select count(intSeq) from book where c_yymmdd = '" & insert.getFormValue("cyear") & "-" & insert.getFormValue("cmonth") & "-" & insert.getFormValue("cday") & "_" & insert.getFormValue("ctime") & insert.getFormValue("cminut") &"'), (select count(intSeq) from book where c_yymmdd like '" & insert.getFormValue("cyear") & "-" & insert.getFormValue("cmonth") & "-" & insert.getFormValue("cday") &"%')"
	set crs = dbconn.execute(csql)

	If crs(0) = 2 Then
		Error("*선택하신 시간은 마감되었습니다.")
	End If

	If crs(1) = 20 Then
		Error("*예약 가능한 시간이 없습니다")
	End if


'+++++++[2] 수정과 삭제의 경우만 활설화 된다. 입력(insert)때는 비활성화
'Call insert.setwhere(" intSeq = '"& request.QueryString("intSeq") &"' ")	'//수정과 삭제에서만 사용
'+++++++[2]_End

'// 기본으로 넘어오는 값 세팅
'Call insert.setDefaultData("")

'+++++++[3] 입력페이지 이외에는 [주석]처리한다.
'Call insert.setdataAdd("strCategory", request.QueryString(ProgramFolderName))
'+++++++[3]_End

'+++++++[4] form에서 넘어오는 값 세팅 / 파일로 넘어오는 값 제외 / delete에서는 사용하지 않음[4번은 삭제]

Dim b_phone, b_first, b_name, b_bunryu
b_first = insert.getFormValue("b_first")
b_name = insert.getFormValue("b_name")
b_phone = insert.getFormValue("b_phone1") & "-" & insert.getFormValue("b_phone2") & "-" & insert.getFormValue("b_phone3")
b_bunryu = insert.getFormValue("b_bunryu")

Call insert.setdataAdd("b_first", insert.getFormValue("b_first"))
Call insert.setdataAdd("b_name", insert.getFormValue("b_name"))
Call insert.setdataAdd("b_phone", b_phone)
Call insert.setdataAdd("b_bunryu", insert.getFormValue("b_bunryu"))
Call insert.setdataAdd("b_contents", insert.getFormValue("b_contents"))
Call insert.setdataAdd("b_inputtime", now())
Call insert.setdataAdd("c_yymmdd", insert.getFormValue("cyear")&"-"&insert.getFormValue("cmonth")&"-"&insert.getFormValue("cday")&"_"&insert.getFormValue("ctime")&insert.getFormValue("cminut"))
'+++++++[4]_End

Call insert.settablename("book")

'+++++++[5] form에서 넘어오는 업로드될 파일 값 세팅 [함수명 바뀜insert-update-delete]
    'call insert.setFileData("img1","insert")
	'Call insert.setinsertNumFileDataAdd("strImage")
'+++++++[5]_End

  dim strSql
  strSQL = insert.getqueryinsert '[함수명 바뀜insert-update-delete]

  Call AdoConnExecute(strSQL)
  'response.Write("<br><br>"&strSQL)

Call DbClose()

'Dim html55

'html55 = "<table><tr><td style='padding-top:5px;padding-bottom:5px;'>"
'html55 = html55 & "아래 승인 버튼을 클릭하여 메일인증을 받으시기 바랍니다.</td></tr>"
'html55 = html55 & "<tr><td style='padding-top:5px;padding-bottom:5px;'>"
'html55 = html55 & "<a href='http://atcorp.solutionhosting.co.kr/avanmodule/member/w/mail_permit.asp?strId="&strId&"' target='_blank'>승인</a></td></tr>"
'html55 = html55 & "</table>"

'call HtmlMailSend_2003("avan@avansoft.co.kr", strEmail, "", strName&"님 회원가입을 인증하시기 바랍니다.", html55,"")

'+++++++[6] 메세지를 바꿔주고 처리후 이동할 페이지를 정해준다.
'Call jsAlertMsgUrl("진료예약 등록이 정상적으로 되었습니다.", "/main01/sub.asp?lasik=I107")

'+++++++[6]_End
%>
<script Language="JavaScript">
window.onload = function(){

  alert("진료예약 등록이 정상적으로 되었습니다.");
  document.booking.submit();
}
</script>

<html>
<head></head>
<body>
<form name="booking" method="post" action="/main01/sub.asp?lasik=I100">
<input type="hidden" name="cyear" value="<%=insert.getFormValue("cyear")%>" />
<input type="hidden" name="cmonth" value="<%=insert.getFormValue("cmonth")%>" />
<input type="hidden" name="cday" value="<%=insert.getFormValue("cday")%>" />
<input type="hidden" name="ctime" value="<%=insert.getFormValue("ctime")%>" />
<input type="hidden" name="cminut" value="<%=insert.getFormValue("cminut")%>" />
<input type="hidden" name="b_first" value="<%=b_first%>" />
<input type="hidden" name="b_name" value="<%=b_name%>" />
<input type="hidden" name="b_phone" value="<%=b_phone%>" />
<input type="hidden" name="b_bunryu" value="<%=b_bunryu%>" />
</form>
</body>
</html>
<%set insert = nothing%>