<%@page import="java.sql.*"%>
<%! 
	Connection con;
	Statement stmt;
	Statement st;
%>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dairy_management","root","");
stmt=con.createStatement();
st=con.createStatement();
}
catch(Exception e)
{
out.println(e);
}
%>