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
.style1 {
	color: #FFFFFF;
	font-weight: bold;
}
.style11 {	color: #FFFFFF;
	font-weight: bold;
	font-size: 14px;
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
          <li class="active"><a href="enduser_home.jsp"><span>Home</span></a></li>
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
          <h2><span>Customer Payment Details</span></h2>
          <%
		  String oid=request.getParameter("id");
		  String cid=request.getParameter("cid");
		  String price=request.getParameter("price");
		  
		  
		  
		  %>
          <form method="post" action="customer_payment.jsp">
            <table width="368" height="256" border="0">
              <tr>
                <td width="146" height="44"><span class="style11">Order id</span></td>
                <td width="212"><label>
                  <input type="text" name="t1" id="t1" required="required" value="<%=oid%>"/>
                </label></td>
              </tr>
              <tr>
                <td height="39"><span class="style11">Customer id</span></td>
                <td><label>
                  <input type="text" name="t2" id="t2" required="required" value="<%=cid%>"/>
                </label></td>
              </tr>
              <tr>
                <td height="42"><span class="style11">Price</span></td>
                <td><label>
                  <input type="text" name="t3" id="t3" required="required" value="<%=price%>"/>
                </label></td>
              </tr>
              <tr>
                <td height="44"><span class="style11">Payment mode</span></td>
                <td><label>
                  <input type="text" name="t4" id="t4" required="required" pattern="[A-Za-z0-9]+" title="enter alphanumeric characters only"/>
                </label></td>
              </tr>
              <tr>
                <td height="75" colspan="2"><label>
                    <div align="center">
                      <input type="submit" name="d9" id="d9" value="Submit" />
                    </div>
                  </label></td>
              </tr>
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
      <div class="clr">
        <table width="200" border="1">
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table>
      </div>
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
