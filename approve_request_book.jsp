<%@page import="java.util.Date"%>
<%@include file="connect.jsp"%>
<%@include file="adminmenu.jsp"%>
<html>
<body>
<table>
<form action="approve_request_book1.jsp" method=post>
<tr>
<td>
Sid <input type=text name=sid><br><br>
Bookid <input type=text name=bk_id><br><br>
Sname <input type=text name=s_nm><br><br>
Bookname <input type=text name=bk_nm><br><br>
Return Date <input type=date name=r_dt><br><br>
<center><input type=submit value=Submit></center>
</td>
</tr>
</form>
</table>
</body>
</html>