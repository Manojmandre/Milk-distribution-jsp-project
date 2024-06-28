<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp"%>
<% 
     String s1,s2,s3,s4;
     s1=(String)session.getAttribute("s1");
     s2=request.getParameter("select");
     s3=request.getParameter("t2");
	 String price=request.getParameter("p");
     s4=request.getParameter("t3");

     
   try
    { 
    	int k=stmt.executeUpdate("insert into shop_owner_product_rate values('"+s1+"','"+s2+"','"+s3+"','"+price+"','"+s4+"')");
	}
    catch(Exception e)
    {
    out.println(e);
    }
%>
<script>
alert("insert successfully");
document.location="purchase_view_s.jsp";
</script>