  <%call dbopen
    sql2 = "SELECT * FROM staff WHERE intSeq = " & request("staff")
    set rs2 = dbconn.execute(sql2)
    if Not rs2.eof Then
  %>
  <div class="inner staff" id="info">
    <ul class="staff_view" id="staff_view">
	  <li><%If Len(rs2("img1")) > 0 then%><img src="/upload/staff/<%=Split(rs2("img1"),":")(0)%>" alt=""/><%End if%></li>
	  <li>
		<div class="title_wrap">
		  <p class="title"><%=rs2("s_title")%></p>
		  <p class="name"><span><%=rs2("s_name")%></span> <%=rs2("s_jik")%></p>
		</div>
		<div class="field">
		  <p class="sub_title">진료과목</p>
		  <ul>
		    <%
			Dim s_bunya, j
			s_bunya = split(rs2("s_bunya"),",")

			for j=0 to UBound(s_bunya) step 1
			%>
			<li><%=s_bunya(j)%></li>
			<% 
			next
			%>
		  </ul>
		</div>
		<div class="intro">
		  <p class="sub_title">약력</p>
		  <ul>
		    <%
			  Dim sql3, rs3
		      sql3 = "SELECT * FROM staff_history WHERE intSeq_staff = "&rs2("intSeq")&" order by intSeq asc"
		      set rs3 = dbconn.execute(sql3)
		      if rs3.eof Then
          
		      Else
  			    Do Until rs3.EOF
		    %>
			<li><%=rs3("title")%></li>
		    <%
			    rs3.MoveNext
		        Loop
		  
		      End If
		      rs3.close
		      set rs3 = Nothing
		    %>
		  </ul>
		</div>
	  </li>
    </ul>
	<%If rs2("care_yn") = "Y" then%>
    <table>
	  <colgroup>
		<col style="width:14%" />
		<col style="width:14%" />
		<col style="width:14%" />
		<col style="width:14%" />
		<col style="width:14%" />
		<col style="width:14%" />
		<col style="width:14%" />
	  </colgroup>
	  <thead> 
		<tr> 
		  <th>구분</th>
		  <th>월</th>
		  <th>화</th>
		  <th>수</th>
		  <th>목</th>
		  <th>금</th>
		  <th>토</th>
		</tr>
	  </thead>
	  <tbody> 
		<tr> 
		  <th>오전</th>
		  <td><%If Len(rs2("care_am1")) > 0 then%><%=rs2("care_am1")%><%else%><img src="image/sub/none.png" alt=""/><%End if%></td>
		  <td><%If Len(rs2("care_am2")) > 0 then%><%=rs2("care_am2")%><%else%><img src="image/sub/none.png" alt=""/><%End if%></td>
		  <td><%If Len(rs2("care_am3")) > 0 then%><%=rs2("care_am3")%><%else%><img src="image/sub/none.png" alt=""/><%End if%></td>
		  <td><%If Len(rs2("care_am4")) > 0 then%><%=rs2("care_am4")%><%else%><img src="image/sub/none.png" alt=""/><%End if%></td>
		  <td><%If Len(rs2("care_am5")) > 0 then%><%=rs2("care_am5")%><%else%><img src="image/sub/none.png" alt=""/><%End if%></td>
		  <td><%If Len(rs2("care_am6")) > 0 then%><%=rs2("care_am6")%><%else%><img src="image/sub/none.png" alt=""/><%End if%></td>
		</tr>
		<tr>
		  <th>오후</th>
		  <td><%If Len(rs2("care_pm1")) > 0 then%><%=rs2("care_pm1")%><%else%><img src="image/sub/none.png" alt=""/><%End if%></td>
		  <td><%If Len(rs2("care_pm2")) > 0 then%><%=rs2("care_pm2")%><%else%><img src="image/sub/none.png" alt=""/><%End if%></td>
		  <td><%If Len(rs2("care_pm3")) > 0 then%><%=rs2("care_pm3")%><%else%><img src="image/sub/none.png" alt=""/><%End if%></td>
		  <td><%If Len(rs2("care_pm4")) > 0 then%><%=rs2("care_pm4")%><%else%><img src="image/sub/none.png" alt=""/><%End if%></td>
		  <td><%If Len(rs2("care_pm5")) > 0 then%><%=rs2("care_pm5")%><%else%><img src="image/sub/none.png" alt=""/><%End if%></td>
		  <td><%If Len(rs2("care_pm6")) > 0 then%><%=rs2("care_pm6")%><%else%><img src="image/sub/none.png" alt=""/><%End if%></td>
		</tr>
	  </tbody>
    </table>
	<%End if%>
  </div>
  <%
 
    End If
    rs2.close
    set rs2 = Nothing
  %>

  <div class="viewbtn_wrap" id="info-100">
	<input type="button" value="목록" class="btn02" onclick="location.href='?eye=A102';" />
  </div>
<%
call dbclose
%>