<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp"%>
<% 
try
{
ResultSet rs =stmt.executeQuery("select * from agent");
while(rs.next())
	{
	out.println(rs.getString(1));
	out.println();
	}
}
catch(Exception e)
{
out.println(e);
}
%>	