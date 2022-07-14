<%@ include file="connect.jsp" %>
<%
   PreparedStatement pst=con.prepareStatement("insert into ARITRA.userid values(?,?,?,?,?,?)");
    pst.setString(1,request.getParameter("sd"));
    pst.setString(2,request.getParameter("snm"));
    pst.setString(3,request.getParameter("pass"));
    pst.setString(4,request.getParameter("eml"));
    pst.setString(5,request.getParameter("stm"));
    pst.setString(6,request.getParameter("sub"));
  int t=pst.executeUpdate();
   if(t>0)
    out.println("Register successfully");
   con.close();
%>
<br><br>
<a href=userlogin.html>Click hrer to login</a>