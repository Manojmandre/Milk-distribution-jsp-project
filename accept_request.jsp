<%@include file="dbcon.jsp"%>

<%

String id=request.getParameter("order_id");

int k=stmt.executeUpdate("update agent_order set order_status='accepted' where order_id='"+id+"' ");


%>


<script>
alert("accept successfully");
document.location="agent_orders.jsp";
</script>

