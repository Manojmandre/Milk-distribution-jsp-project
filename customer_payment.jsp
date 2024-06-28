<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp"%>
<% 
     String s1,s2,s3,s4;
     s1=request.getParameter("t1");
     s2=request.getParameter("t2");
     s3=request.getParameter("t3");
     s4=request.getParameter("t4");
    
   try
    { 
    	int k=stmt.executeUpdate("insert into customer_payment values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
	}
    catch(Exception e)
    {
    out.println(e);
    }
%>

<script>
alert("insert successfully");
document.location="customer_home.jsp";
</script>