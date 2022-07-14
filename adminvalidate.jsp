<%@include file="connect.jsp" %>
<%
   PreparedStatement pst=con.prepareStatement("select * from adminid where userid=? and password=?");
pst.setString(1,request.getParameter("uid"));
pst.setString(2,request.getParameter("passwd"));
ResultSet rs=pst.executeQuery();
if(rs.next())
  response.sendRedirect("adminhome.jsp");
else
  {
%>
<center>
<font color=orchid><h3>Invalid Userid or Password</h3></font>
<%@include file="adminlogin.html" %>
<%
  }
   con.close();
%>