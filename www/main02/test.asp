<% If InStr(Request.ServerVariables("SERVER_NAME"),"www") > 0 Then
	Response.write "aa"
End if
%>
<html>
 <body>
     <table >
     <% For Each key in Request.ServerVariables %>
         <tr>
             <td><%=key %></td>
             <td>
             <%
                 if Request.ServerVariables(key) = "" Then
                     Response.Write " "
                 else
                     Response.Write Request.ServerVariables(key)
                 end if
             %>
             </td>
         </tr>
     <% next %>
     </table>
 </body>
 </html>