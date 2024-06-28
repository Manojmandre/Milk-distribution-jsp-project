<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp" %>

<% 
String s2,s3,s4;

String flag="false";

String username=(String)session.getAttribute("s1");

s2=request.getParameter("t2");
s3=request.getParameter("t3");
s4=request.getParameter("t4");


try
{

ResultSet res=stmt.executeQuery("select * from login where user_name='"+username+"'");
       
        while(res.next())
        {
            
                if(username.equals(res.getString("user_name")) && s2.equals(res.getString("password"))) 
                {
                     flag="true";
                
                                     
                }  

                else
               {    
                    flag="false";    
                }                                                                                                                 
            
         } 
        
        
        if(flag=="true")
        {
            
            if(s3.equals(s4))
           {
                
                //out.println("updated");
                
                int k=stmt.executeUpdate("update login set password='"+s3+"' where user_name='"+username+"' ");
				out.println("<b>updated successfully</b>" +" "+ "<br>" +"<br>"+ "<h2><a  href=login.html style=text-decoration:none;color:red>Login Here!!!</h2></a>");
				
				
                
            }
             
            else
           {
              out.println("<b>new password and confirm password must be same</b>" +" "+ "<br>" +"<br>"+ "<h2><a  href=changepass.jsp style=text-decoration:none;color:red> Try Again!!!</h2></a>");
           }
    }    
        else
        {
            
        out.println("<b>invalid username or password</b>" +" "+ "<br>" +"<br>"+ "<h2><a  href=changepass.jsp style=text-decoration:none;color:red> Try Again!!!</h2></a>");
            
        }    
          
	
}

catch(Exception e)
{

   out.println(e);
}

%>