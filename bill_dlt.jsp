<%@include file="dbcon.jsp"%>

<%
String s1=request.getParameter("atm_id");
int k=stmt.executeUpdate("delete from bill where atm_id='"+s1+"'");
out.println("one row deleted..");
%>