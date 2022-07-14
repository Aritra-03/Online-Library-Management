<%@include file="connect.jsp" %>

<%
       try{
         PreparedStatement pst=con.prepareStatement("update ARITRA.userid set sname=?,password=?,email=?,stream=?,subject=? where sid=?");
          pst.setString(1,request.getParameter("nm"));
          pst.setString(2,request.getParameter("pass"));
          pst.setString(3,request.getParameter("eml"));
	  pst.setString(4,request.getParameter("stm"));
	  pst.setString(5,request.getParameter("sub"));
       pst.setString(6,request.getParameter("sid"));
     int t=pst.executeUpdate();
     if(t>0)
       out.println("<h3>Update successfully");
     con.close();
     }
      catch(Exception e)
      {
         out.println(e);
     }
%>