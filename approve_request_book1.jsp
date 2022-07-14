<%@include file="adminmenu.jsp" %>
<%@include file="connect.jsp"%>
<%
 String sid=request.getParameter("sid");
 //System.out.println(sid);
 String bookid=request.getParameter("bk_id");
 //System.out.println(Bookid);
 String sname=request.getParameter("s_nm");
 //System.out.println(Sname);
 String bookname=request.getParameter("bk_nm");
 //System.out.println(bookname);
 String returndate=request.getParameter("r_dt");
 PreparedStatement pst=con.prepareStatement("delete from ARITRA.request_book where sid=?");
 PreparedStatement pst1=con.prepareStatement("insert into ARITRA.checkout values(?,?,?,?,?)");
 pst.setString(1,sid);
 pst.executeUpdate();
 pst1.setString(1,sid);
 pst1.setString(2,bookid);
 pst1.setString(3,sname);
 pst1.setString(4,bookname);
 pst1.setString(5,returndate);
 int x=pst1.executeUpdate();
 if(x>0)
  {
    out.println("<h3>Approved Successfully");
  }
 else
  {
    out.println("<h3>Failed");
  }
%>