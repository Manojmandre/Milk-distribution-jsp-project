<%@include file="dbcon.jsp"%>

<%

String oid=request.getParameter("id");

int k=stmt.executeUpdate("update customer_order set order_status='accepted' where order_id='"+oid+"' ");



%>

<script>
alert("updated successfully");
document.location="customer_order_s.jsp";

</script>