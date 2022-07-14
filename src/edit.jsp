<%@include file="connect.jsp" %>
<%@include file="usermenu.jsp"%>
<%!
    String sid1="",sname="",password="",email="",stream="",subject="";
%>
<%
try{
        String sid=request.getParameter("sid");
        PreparedStatement pst=con.prepareStatement("select * from userid where sid=?");
        pst.setString(1,sid);
        ResultSet rs=pst.executeQuery();
       if(rs.next())
       {
           sid1=rs.getString(1);
           sname=rs.getString(2);
           password=rs.getString(3);
           email=rs.getString(4);
	   stream=rs.getString(5);
	   subject=rs.getString(6);
%>
      <form action="update1.jsp" method="post">
      <table>
          <tr>
	<td></td>
                  <td><input type=hidden name=sid value=<%=sid1%>></td>
          </tr>
           <tr>
	<td>SNAME</td>
	<td><input type=text name=nm value=<%=sname%>></td>
          </tr>
          <tr>
	<td>PASSWORD</td>
	<td><input type=text name=pass value=<%=password%>></td>
           </tr>
            <tr>
                    <td>EMAIL</td>
	 <td><input type=text name=eml value=<%=email%>></td>
            </tr>
	    <tr>
	    	<td>STREAM</td>
	    <td><input type=text name=stm value=<%=stream%>></td>
	    </tr>
	    <tr>
		<td>SUBJECT</td>
	     <td><input type=text name=sub value=<%=subject%>></td>
	    </tr>
            <tr>
                  <td colspan=2 align=center><input type=submit value=update>
            </tr>
          </table></form>
 <%
              }
             else
                out.println("<h3>Invalid Eid</h3>");
           con.close();
         }
        catch(Exception e)
        {
            out.println(e);
        }
%>













      
       