<%@include file="connect.jsp" %>
<%@include file="adminmenu.jsp" %>
<table border=2>
<tr><th>SID</th><th>SNAME</th><th>BOOKID</th><th>SNAME</th><th>BOOKNAME</th><th>RETURNDATE</th></tr>
<%
PreparedStatement pst=con.prepareStatement("select * from returnbook");
ResultSet rs=pst.executeQuery();
int count=0;
%>
<h1>Returned books from student<br><br>
<%
while(rs.next())
	{
		count++;
  %>
<tr><td><%= rs.getString("SID")%></td><td><%= rs.getString("BOOKID") %></td><td><%= rs.getString("SNAME")%></td><td><%= rs.getString("BOOKID")%></td><td><%= rs.getString("RETURNDATE")%></td></tr>
 <%
	}
con.close();
	%>



  
 