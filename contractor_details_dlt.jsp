<%@include file="dbcon.jsp"%>

<%
String s1=request.getParameter("contractor_name");
int k=stmt.executeUpdate("delete from contractor_details where contractor_name='"+s1+"'");
out.println("one row deleted..");
%>