<%@include file="dbcon.jsp"%>

<%

ResultSet res=stmt.executeQuery("select max(batch_no) from product");
res.next();

int b=res.getInt(1);

if(b==0)
{
   b=1;
}

else
{

  b++;
}


//String b=res.getString("batch_no");

out.println(b);

%>