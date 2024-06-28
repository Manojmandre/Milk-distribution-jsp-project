<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp"%>
<%@page import="java.util.Random"%>
<% 
	String s1,s2,s3,s4,s5,s6;
	 s1=request.getParameter("t1");
         s2=request.getParameter("t2");
         s3=request.getParameter("t3");
         s4=request.getParameter("t4");
         s5=request.getParameter("t5");
	 s6=request.getParameter("t6");
	 
	 Random rand=new Random();
	 int pass=rand.nextInt(3000);
   try
    { 
    	int k=stmt.executeUpdate("insert into agent values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");
	int m=stmt.executeUpdate("insert into login values('"+s5+"','"+pass+"','agent')");
	}
    catch(Exception e)
    {
    out.println(e);
    }
%>

<script>
alert("add agent successfully");
document.location="agent.html";
</script>