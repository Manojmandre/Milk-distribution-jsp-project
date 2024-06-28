<%@include file="dbcon.jsp"%>

<%
String s1=request.getParameter("emp_id");
int k=stmt.executeUpdate("delete from empdetails where emp_id='"+s1+"'");
out.println("one row deleted..");
%>