<%dim strBackUrl
	strBackUrl = Server.URLEncode("" & Request.ServerVariables("PATH_INFO") & "?" & Request.ServerVariables("QUERY_STRING")&"")

' 리스트 및 페이지처리 변수선언
Dim nPage, nPageSize, nTotal, nCount, nTotalPage
Dim nStartPage, nEndPage, sPrev10Page, sPrevPage, sNextPage, sNext10Page, g_sListProPage

nPage = Request.QueryString("nPage")
if nPage = "" Then
	nPage = 1
end if 
nPageSize 	= 10

gum1 		= request("gum1")
gum2 		= request("gum2")

%>
<!--#include virtual = "/BXM/testjson2.asp" -->
<%
' 리스트 갖고오기
bxm_api_sorturl = "http://bestlasik.doctorcrm.co.kr/WWW/curl_counsel.php"
DataToSend = "MODE=LIST"
DataToSend = DataToSend&"&gubun=main02"
DataToSend = DataToSend&"&SearchKey="&gum2
DataToSend = DataToSend&"&SearchType="&gum1
DataToSend = DataToSend&"&nPage="&nPage
DataToSend = DataToSend&"&CLIENTIP="&Request.ServerVariables("REMOTE_ADDR")
DataToSend = DataToSend&"&KEY=BESTLASIK_"&Request.ServerVariables("LOCAL_ADDR")&"_BXM"

set xmlhttp = server.Createobject("MSXML2.ServerXMLHTTP")
xmlhttp.Open "POST", bxm_api_sorturl ,false
xmlhttp.setRequestHeader "Content-Type", "application/x-www-form-urlencoded"

xmlhttp.send DataToSend
xmlhttp_result = xmlhttp.responseText

set xmlhttp = nothing

set getJson = JSON.parse(xmlhttp_result)
nTotal = getJson.[0].nTotal

nCount = nTotal - ((nPage-1) * nPageSize)
nTotalPage = CEIL( nTotal / nPageSize)

'### List PageHolder 처리
Redim arPage( nPageSize, 3)

g_sListProPage =  "?lasik=H102"

nStartPage = ( CEIL( nPage/10) - 1) * 10 + 1
nEndPage = CEIL((nPage + 10)/10 - 1)  * 10
if nEndPage > nTotalPage then nEndPage = nTotalPage end if

Dim p
i = 0
for p = nStartPage to nEndPage 
	arPage( i, 0) = p
	arPage( i, 1) = g_sListProPage + "&nPage=" & p & "&gum1=" & gum1	& "&gum2=" & gum2	
	
	if Int(p) = Int( nPage) then arPage( i, 2) = 1 end if
	i = i + 1
next

if nPage > 1 then							' sPrevPage
	sPrevPage = g_sListProPage + "&nPage=" & (nPage - 1) & "&gum1=" & gum1	& "&gum2=" & gum2	
end if

if Int( nPage) < Int( nTotalPage) then		' sNextPage
	sNextPage = g_sListProPage + "&nPage=" & (nPage + 1) & "&gum1=" & gum1	& "&gum2=" & gum2	
end if	

if (nStartPage - 10) >= 1 then				' sPrev10Page
	sPrev10Page = g_sListProPage + "&nPage=" & (nStartPage - 10) & "&gum1=" & gum1	& "&gum2=" & gum2	
end if

if (nStartPage + 10) <= nTotalPage then		' sNext10Page
	sNext10Page = g_sListProPage + "&nPage=" & (nStartPage + 10) & "&gum1=" & gum1	& "&gum2=" & gum2	
end if	
'### List PageHolder 처리 끝
%>
<%
'Ceil 함수
Function Ceil(ByVal intParam)
	Ceil = -(Int(-(intParam)))
End Function
%>
<script type="text/javascript">
<!--
$(document).ready(function(){
	//전체 저장하기
	$("#BtnSearch").click(function(e){
		var f=document.list_search
		/*
		if ($('#gum2').val() == ""){
			alert("검색어를 입력해 주세요");
			$('#gum2').focus();
			return false;
		}
		*/
		f.submit();
	});
})

//-->
</script>
<div class="consulting">
	<div class="inner">
		<ul class="top_question"> 
			<li>
				최대한 빠르고 상세한 답변을 드릴 수 있도록 최선을  다하겠습니다.<br>
				빠른 문의는 고객센터를 통해 문의하시기 바랍니다.
			</li>
			<li><a href="tel:1566-9988"><img src="image/sub/top_icon01.png" alt=""/>고객센터 1566-9988</a></li>
			<li>
				<a href="?eye=H104"><img src="image/sub/top_icon02.png" alt=""/>문의하기</a>
			</li>
		</ul>
		<p class="list_txt">
			총 <span><%=nTotal%></span>건
			<div class="search_wrap">
				<form name="list_search" id="list_search" method="post" action="?eye=H102">
					<select name="gum1" id="gum1">
						<option value="title" <%If gum1="title" Then Response.write "selected" End if%>>제목</option>
						<option value="contents" <%If gum1="contents" Then Response.write "selected" End if%>>내용</option>
					</select>
					<input type="text" name="gum2" id="gum2" value="<%=gum2%>">
					<input type="image" src="image/sub/search.png" id="BtnSearch" onClick="return false" style="cursor:pointer;" />
				</form>
			</div>
		</p>
		<table class="basic_list">
			<colgroup>
				<col style="width:10%"/>
				<col style="width:48%"/>
				<col style="width:12%"/>
				<col style="width:15%"/>
				<col style="width:15%"/>
			</colgroup>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th class="day">작성일</th>
				<th>처리상태</th>
			</tr>
			<% 
			If nTotal < 1 Then 
			%>
			<tr><td style="width:100%;height:100px;" colspan="5">No Data.</td></tr>
			<%
			else
				For i=0 To getJson.length - 1
			%>
			<tr>
				<td><%=nCount - i%></td>
				<td>
					<%If getJson.Get(i).secret = "N" then%>
					<a href="?eye=H105&seq=<%=getJson.Get(i).seq%>&nPage=<%=request("nPage")%>&gum1=<%=request("gum1")%>&gum2=<%=request("gum2")%>"><%=getJson.Get(i).title%></a>
					<%else%>
					<a href="?eye=H103&seq=<%=getJson.Get(i).seq%>&nPage=<%=request("nPage")%>&gum1=<%=request("gum1")%>&gum2=<%=request("gum2")%>"><%=getJson.Get(i).title%></a>
					<%End if%>
				</td>
				<td><%=getJson.Get(i).name%></td>
				<td class="day"><%=Left(getJson.Get(i).inputday, 10)%></td>
				<td><%If Len(getJson.Get(i).contents2) > 0 then%><span class="re_ok">답변완료</span><%else%><span class="re_no">미답변</span><%End if%></td>
			</tr>
			<%
				Next
			End If
			set getJson= Nothing
			%>
		</table>
		<div class="list_page">
			<%if sPrev10Page <> "" then											%>
				<a class="first_btn" href="<%=sPrev10Page%>">맨처음</a>
			<%end if															%>
			<%if sPrevPage <> "" then											%>
				<a class="first2_btn" href="<%=sPrevPage%>">처음</a>
			<%end if															%>

			<ul>
			<%For i = 0 To UBound( arPage, 1) - 1								%>
			<%	if arPage( i, 0) = "" then Exit for End If						%>
			<%	if arPage( i, 2) = 1 then										%>
					<li><a class="on" href="#"><%=arPage( i, 0) %></a></li>
			<%	else															%>
					<li><a href="<%=arPage( i, 1)%>"><%=arPage( i, 0) %></a></li>
			<%	end if															%>
			<%next																%>
			</ul>
			<%if sNextPage <> "" then											%>
				<a class="last2_btn" href="<%=sNextPage%>">뒤로</a>
			<%	end if															%>
			<%if sNext10Page <> "" then											%>
				<a class="last_btn" href="<%=sNext10Page%>">맨뒤로</a>
			<%	end if															%>
		</div>
	</div>
</div>
