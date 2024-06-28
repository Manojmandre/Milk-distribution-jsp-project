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
.style14 {color: #FFFFFF}
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
          <li class="active"><a href="enduser_home.jsp"><span>Home</span></a></li>
          <li></li>
          <li><a href="index.html"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /> </a><a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /></a><a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Agent Details</span></h2>
          <form method="post" action="">
           <%@include file="dbcon.jsp"%>
          <% 
          ResultSet rs =stmt.executeQuery("select * from agent");
          %>
            <table width="616" border="1">
              <tr>
                <td height="33" bgcolor="#0000FF"><span class="style14">agent name</span></td>
                <td bgcolor="#0000FF"><span class="style14">area</span></td>
                <td bgcolor="#0000FF"><span class="style14">address</span></td>
                <td bgcolor="#0000FF"><span class="style14">Phone No</span></td>
                <td bgcolor="#0000FF"><span class="style14">Email</span></td>
                <td bgcolor="#0000FF"><span class="style14">Joining Date</span></td>
              </tr>
              
               <% while(rs.next())
			   {
              %>
              <tr>
                <td><% out.println(rs.getString(1)); %></td>
                <td><% out.println(rs.getString(2)); %></td>
                <td><% out.println(rs.getString(3)); %></td>
                <td><% out.println(rs.getString(4)); %></td>
                <td><% out.println(rs.getString(5)); %></td>
                <td><% out.println(rs.getString(6)); %></td>
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
            <li><a href="product_view3.jsp" class="style1">View Product</a></li>
            <li><a href="agent_view.jsp" class="style2">View agent</a></li>
            <li><a href="order_status.html" class="style3">order status</a></li>
            <li><a href="changepass.jsp" class="style3">Change Password</a></li>
            <li><a href="index.html" class="style3">logout</a></li>
            
           
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
