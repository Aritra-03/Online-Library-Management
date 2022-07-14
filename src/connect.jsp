<%@ page import="java.sql.*" %>
<%! 
   Connection con=null;
%>
<%
  try{
     // out.println("Hello");
      Class.forName("oracle.jdbc.OracleDriver");
      con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","ARITRA","jAritra_30");
      //out.println(con);
     }
	catch(Exception e)
	  {
	    out.println(e);
	  }
%>
   