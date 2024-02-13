<%
Call dbopen
Dim strId, name, strEmail

name = request.form("name")
strEmail = request.form("strEmail1")&"@"&request.form("strEmail2")
strId = getAdoRsScalar("select strId from mtb_member2 where strName = '"&name&"' and strEmail = '"&strEmail&"'")

If Isnull(strId) Then
	alert("일치하는 정보가 없습니다 다시 입력해주세요")
	Response.write "<script>history.back()</script>"
End If

Call dbclose
%>
<div class="sub_join">
	<div class="inner">
	<div class="top_txt02"> 
		<p class="txt01">회원님의 정보와 일치하는 아이디 입니다.</p>
	</div>

	<div class="id_box"> 
		<span>아이디</span><%=strId%>
	</div>
		
		
	<div class="subbtn_wrap">
		<input type="button" value="메인으로" class="btn01" onclick="location.href='/main01';" /><input type="button" value="비밀번호찾기" class="btn01" onclick="location.href='?lasik=K104';" /><input type="button" value="로그인" class="btn02" onclick="location.href='?lasik=K101';" />
	</div>

	
	
</div>
</div>