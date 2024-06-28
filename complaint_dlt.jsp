<%@include file="dbcon.jsp"%>

<%
String s1=request.getParameter("complaint_id");
int k=stmt.executeUpdate("delete from complaint where complaint_id='"+s1+"'");
out.println("one row deleted..");
%>