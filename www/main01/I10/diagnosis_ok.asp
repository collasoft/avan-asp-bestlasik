<%Dim ctime, cminut
	cyear = request("cyear")
	cmonth = request("cmonth")
	cday = request("cday")
	ctime = request("ctime")
	cminut = request("cminut")
%>
<div class="diagnosis">
  <div class="inner">
	<div class="top_txt02"> 
	  <p class="txt01"> 신세계안과 검사·진료예약을 <br>이용해 주셔서 진심으로 감사드립니다.</p>
	  <p class="txt02">고객님의 온라인 예약 내용을 담당자가 확인 후 예약절차를 진행하고 있으며,<br>
        담당자와 전화통화를 하신 후 정해진 날짜와 시간에 내원해주시면 됩니다.
	  </p>
	</div>
	<div class="input_form">
	  <table>
		<tbody> 
		  <tr>
			<th>예약시간</th>
			<td><%=cyear%>-<%=cmonth%>-<%=cday%>일 <%=ctime%>시<%=cminut%>분</td>
		  </tr>
		  <tr>
			<th>진료여부</th>
			<td><%If request("b_first") = "a" then%>초진<%else%>재진<%End if%></td>
		  </tr>
		  <tr>
			<th>이름</th>
			<td><%=request("b_name")%></td>
		  </tr>
		  <tr>
			<th>연락처</th>
			<td><%=request("b_phone")%></td>
		  </tr>
		  <tr>
			<th>진료구분</th>
			<td><%=request("b_bunryu")%></td>
		  </tr>
		</tbody>
	  </table>
	  <div class="subbtn_wrap">
		<input type="button" value="확인" class="btn02" onclick="self.location.href='/main01/';" />
	  </div>
	</div>
  </div>
</div>