<%@include file="connect.jsp"%>
<%@include file="adminmenu.jsp" %>
<%
        try{
         String bkid=request.getParameter("bkid");
         PreparedStatement pst=con.prepareStatement("delete from book_details where bookid=?");
         pst.setString(1,bkid);
          int t=pst.executeUpdate();
        if(t>0)
         out.println("<h3>Delete successfully");
      con.close();
      }
      catch(Exception e)
       {
           out.println(e);
       }
%>