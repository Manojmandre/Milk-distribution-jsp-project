<%@include file="dbcon.jsp"%>

<%
String s1=request.getParameter("order_id");
int k=stmt.executeUpdate("delete from customer_payment where order_id='"+s1+"'");
out.println("one row deleted..");
%>