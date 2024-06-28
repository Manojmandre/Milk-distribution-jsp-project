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
.style1 {font-weight: bold}
.style2 {font-weight: bold}
.style3 {font-weight: bold}
.style5 {
	color: #FFFFFF;
	font-weight: bold;
}
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
          <li class="active"><a href="admin_home.jsp"><span>Home</span></a></li>
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
          <h2><span>Area Wise Sales</span></h2>

          <p>
            <%@include file="dbcon.jsp"%>
           
          </p>
          <form method="post" action="areawise_sales_view.jsp">
          <table width="461" height="86">
            <tr>
              <td width="144"><span class="style5">Select Area</span></td>
              <td width="301"><label>
                <select name="select" id="select">
              <%
		    ResultSet res=stmt.executeQuery("select * from agent");
			while(res.next())
			{
			%>
                <option value="<%=res.getString("Email")%>"> <%=res.getString("area")%> </option>
              <%
			  }
			  %>  
                </select>
              </label></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><label>
                <input type="submit" name="button" id="button" value="Submit" />
              </label></td>
            </tr>
          </table>
          </form>
          
          <p>&nbsp; </p>
          <p>&nbsp;</p>
        
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
            <li><a href="product.html"class="style1">add product</a></li>
            <li><a href="agent.html" class="style2">add agent</a></li>
             <li><a href="oders_views_admin.jsp" class="style2">Orders</a></li>
            <li><a href="contractor_details.html" class="style3">add contractor details</a></li>
            <li><a href="stock_details_view.jsp" class="style3">stock details</a></li>
             <li><a href="areawise_sales.jsp" class="style3">Area Wise Sales</a></li>
            <li><a href="changepass.jsp" class="style3">change password</a></li>
          
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
