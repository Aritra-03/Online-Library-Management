<%@include file="connect.jsp" %>
<%@include file="usermenu.jsp" %>
<%
  int status=0;
  PreparedStatement pst=con.prepareStatement("insert into ARITRA.request_book values(?,?,?,?,?)");
  pst.setString(1,request.getParameter("sd"));
  pst.setString(2,request.getParameter("bkid"));
  pst.setString(3,request.getParameter("snm"));
  pst.setString(4,request.getParameter("bknm"));
  pst.setInt(5,status);
  int x=pst.executeUpdate();
  if(x>0)
     out.println("<h3>Request Successfully");
    
  else
     out.println("<h3>Failed Request"); 
     
   con.close();  
%>

