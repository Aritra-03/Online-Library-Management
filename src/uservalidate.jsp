<%@include file="connect.jsp" %>
<%
        PreparedStatement pst=con.prepareStatement("select * from ARITRA.userid where sid=? and sname=? and password=?");
        pst.setString(1,request.getParameter("uid"));
        pst.setString(2,request.getParameter("uname"));
        pst.setString(3,request.getParameter("passwd"));
        ResultSet rs=pst.executeQuery();
   if(rs.next())
  {
     session.setAttribute("sname",rs.getString(2));
     response.sendRedirect("userhome.jsp");
   }
   else
    {
%>
<center>
<font color=red><h3>Invalid UserId or password</h3></font>
<%@include file="userlogin.html" %>
<%
    }
    con.close();
%>