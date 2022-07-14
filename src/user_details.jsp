<%@include file="connect.jsp"%>
<%@include file="adminmenu.jsp"%>
<table border=2>
<tr><th>SID</th><th>SNAME</th><th>PASSWORD</th><th>EMAIL</th><th>STREAM</th><th>SUBJECT</th></tr>
<%
 PreparedStatement pst=con.prepareStatement("select * from userid");
ResultSet rs=pst.executeQuery();
int count=0;
%>
Students Name are:<br><br>
<%
while(rs.next())
   {
      count++;
%>
<tr><td><%= rs.getString("SID")%></td><td><%= rs.getString("SNAME")%></td><td><%= rs.getString("PASSWORD")%></td><td><%= rs.getString("EMAIL")%></td><td><%= rs.getString("STREAM")%></td><td><%= rs.getString("SUBJECT")%></td></tr>
<%
   }
 con.close();
%>
</table>