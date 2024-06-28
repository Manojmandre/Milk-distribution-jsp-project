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
.style12 {
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
          <li class="active"><a href="shop_owner_home.jsp"><span>Home</span></a></li>
          <li></li>
          <li><a href="blog.html"><span>Logout</span></a></li>
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
        
            <script>
		
		 
		function total()
		{
		   
		    var msg="";
		   var m1=document.getElementById("select").value;
		   var m2=parseInt(document.getElementById("t2").value);
		   var m3=parseInt(document.getElementById("p").value);
		   
          		   
		   
		   total=m2*m3;
		   
		   document.getElementById("t3").value=total;
		   
           
		   
		}
		
		</script>
          <h2><span>Edit Product Details</span></h2>
          <%
		  String qty=request.getParameter("qty");
		  String price=request.getParameter("price");
		  
		  %>
          <form method="post" action="edit_product_con2.jsp">
           
            <table width="399" height="175">
              <tr>
                <td width="97" height="50"><span class="style12">Product Type</span></td>
                <td width="290"><label>
                  <select name="select" id="select">
                    <option value="milk">milk</option>
                    <option value="curd">curd</option>
                    <option value="ghee">ghee</option>
                  </select>
                </label></td>
              </tr>
              <tr>
                <td height="40"><span class="style12">Total Quantity</span></td>
                <td><label>
                  <input type="text" name="t2" id="t2" value="<%=qty%>" />
                </label></td>
              </tr>
              <tr>
                <td height="39"><span class="style12">Price</span></td>
                <td><label>
                  <input type="text" name="p" id="p" onblur="total()" />
                </label></td>
              </tr>
              <tr>
                <td height="39"><span class="style12">Price</span></td>
                <td><input type="text" name="t3" id="t3" /></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><label>
                  <input type="submit" name="button" id="button" value="Submit" />
                </label></td>
              </tr>
            </table>
            <p class="style12">&nbsp;</p>
            <label></label>
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
            <li><a href="product_view3_shop.jsp" class="style1">View Product</a></li>
            <li><a href="agent_view_shop.jsp" class="style2">View agent</a></li>
             <li><a href="purchase_view_s.jsp" class="style2">Purchase Details</a></li>
             <li><a href="return_product_s.jsp" class="style2">Return Product</a></li>
            <li><a href="order_status_shop.html" class="style3">order status</a></li>
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
