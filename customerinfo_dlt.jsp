<%@include file="dbcon.jsp"%>

<%
String s1=request.getParameter("cust_id");
int k=stmt.executeUpdate("delete from customerinfo where cust_id='"+s1+"'");
out.println("one row deleted..");
%>