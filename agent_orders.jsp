<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Milk Management</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style6 {color: #FFFFFF; font-weight: bold; }
.style7 {color: #000000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html">Milk Management<span></span></a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="agent_home.jsp"><span>Home</span></a></li>
          <li></li>
          <li><a href="index.html"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Purchase Details</span></h2>
          <%@include file="dbcon.jsp"%>
<% 
		  String uname=(String)session.getAttribute("s1");
          ResultSet rs=stmt.executeQuery("select * from agent_order where agent_id='"+uname+"' ");
          %>
            <table width="663" border="1">
              <tr>
                 <td width="83" height="31" bgcolor="#0000FF"><span class="style6">Product Type</span></td>
                <td width="83" height="31" bgcolor="#0000FF"><span class="style6">Agent id</span></td>
                <td width="135" bgcolor="#0000FF"><span class="style6">Order id</span></td>
                <td width="89" bgcolor="#0000FF"><span class="style6">Shop Id</span></td>
                  <td width="89" bgcolor="#0000FF"><span class="style6">Order Date</span></td>
                <td width="87" bgcolor="#0000FF"><span class="style6">Quantity</span></td>
                <td width="84" bgcolor="#0000FF"><span class="style6">Total Price</span></td>
               
                <td width="145" bgcolor="#FF0000"><div align="center"><span class="style6">Activity</span></div></td>
              </tr>
			  <% while(rs.next())
			   {
			       String id=rs.getString(3);
              %>
              
              <tr>
                <td bgcolor="#FFFFFF"><span class="style7">
                <% out.println(rs.getString(1)); %>
                </span></td>
                <td bgcolor="#FFFFFF"><span class="style7">
                <% out.println(rs.getString(2)); %>
                </span></td>
                <td bgcolor="#FFFFFF"><span class="style7">
                <% out.println(rs.getString(3)); %>
                </span></td>
                <td bgcolor="#FFFFFF"><span class="style7">
                <% out.println(rs.getString(4)); %>
                </span></td>
                <td bgcolor="#FFFFFF"><span class="style7">
                <% out.println(rs.getString(5)); %>
                </span></td>
                 <td bgcolor="#FFFFFF"><span class="style7">
                <% out.println(rs.getString(7)); %>
                </span></td>
                
                 <td bgcolor="#FFFFFF"><span class="style7">
                <% out.println(rs.getString(8)); %>
                </span></td>
                
                <%
				ResultSet rr=st.executeQuery("select * from agent_order where order_status='accepted' and order_id='"+id+"' ");
				
				if(rr.next())
				{
				%>
                <td bgcolor="#FFFFFF"><div align="center" class="style7"><strong> <%=rr.getString("order_status")%></strong></a></div></td>
                <%
				}
				else
				{
				%>
                <td bgcolor="#FFFFFF"><div align="center" class="style7"><a href="accept_request.jsp?id=<%=rs.getString(2)%>&order_id=<%=rs.getString(3)%>"><strong> Accept Order Request</strong></a></div></td>
                <%
				}
				%>
              </tr>
			  <%
                }
              %>
            </table>
          </form>
</div>
        <p class="pages">&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="searchform"></div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Main</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="product_view2.jsp"class="style1">View Products</a></li>
           
            <li><a href="agent_orders.jsp" class="style3">My Orders</a></li>
            <li><a href="return_details_view_agent.jsp" class="style3">Return Details</a></li>
            <li><a href="purchase_view_agent.jsp" class="style3">Purchase Details</a></li>
             <li><a href="changepass.html" class="style3">Change Password</a></li>
            
          </ul>
        </div>
        </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&copy; Copyright <a href="#">Milk Management</a></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
