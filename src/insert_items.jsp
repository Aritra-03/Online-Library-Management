<%@include file="connect.jsp"%>
<%@include file="adminmenu.jsp"%>
<%
  String bkid=request.getParameter("bkid");
  session.setAttribute("bkid",bkid);
try{
    PreparedStatement pst=con.prepareStatement("insert into ARITRA.book_details(bookid,bookname,author,quantity) values(?,?,?,?)");
    pst.setString(1,bkid);
    pst.setString(2,request.getParameter("bknm"));
    pst.setString(3,request.getParameter("ath"));
    pst.setInt(4,Integer.parseInt(request.getParameter("cnt")));
    pst.executeUpdate();
    con.close(); 
    }
     catch(Exception e){}
%>
<form method="post" action="fileUpload.jsp" enctype="multipart/form-data">  
 Select your book image :  
     
        <input type="file" name="uploadfile" size="50">  
      
       
	<br>	
        <input type="submit" name="Submit" value="Upload">  
        <input type="reset" name="Reset" value="Cancel">  
        
</form>  
</body>  
</html>  
