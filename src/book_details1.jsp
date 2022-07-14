<%@include file="connect.jsp"%>
<%@include file="usermenu.jsp"%>
<center><table border=2>
<tr><th>BOOKID</th><th>BOOKNAME</th><th>AUTHOR</th><th>QUANTITY</th></tr>
<%
 PreparedStatement pst=con.prepareStatement("select * from book_details");
ResultSet rs=pst.executeQuery();
int count=0;
%>
Books Name are:<br><br>
<%
while(rs.next())
   {
      count++;
%>
<tr><td><%= rs.getString("BOOKID")%></td><td><%= rs.getString("BOOKNAME")%></td><td><%= rs.getString("AUTHOR")%></td><td><%= rs.getInt("QUANTITY")%></td></tr>
<%
   }
 con.close();
%>
</table><br><br>
<form action="request_book.html" method="post">
<input type=submit value=Request>
</form>
</center>