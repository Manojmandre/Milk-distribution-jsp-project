<%@include file="dbcon.jsp"%>

<%
String s1=request.getParameter("agent_name");
int k=stmt.executeUpdate("delete from agent where agent_name='"+s1+"'");

%>

<script>
alert("deleted successfully");
document.location="order_view.jsp";
</script>