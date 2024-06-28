<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html ng-app="myApp">
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
.style18 {color: #FFFFFF; font-weight: bold; }
-->
</style>
</head>

<script src="angular.min.js"></script>
<script>
// JS code 
myApp = angular.module('myApp',[]);
<%@ page import = "java.sql.*" %> 
<% 
 Class.forName("com.mysql.jdbc.Driver");
 Connection conn = DriverManager.getConnection ("jdbc:mysql://localhost:3306/dairy_management","root","");
 Statement stmt = conn.createStatement();

   ResultSet rs=stmt.executeQuery("select * from contractor_order");
   
 try
 {
  if(rs!=null)
  {
%> 
// JS code 
myApp.controller('empCtl',function($scope) 
   {
    $scope.orderData = [
<%
    rs.next();
    while(true)
    {
%> 
     {"agent_id":"<%=rs.getString(1)%>","product_type":"<%=rs.getString(2)%>","order_id":"<%=rs.getString(3)%>","customer_id":"<%=rs.getString(4)%>","order_date":"<%=rs.getString(5)%>","order_time":"<%=rs.getString(6)%>","quantity":"<%=rs.getString(7)%>","total_price":"<%=rs.getString(8)%>","order_status":"<%=rs.getString(9)%>"}
   
     <%if(rs.next()) {%> , <% } else break;
    }
   } 
  }
 catch(SQLException e) 
 {
  e.printStackTrace();
 }
 stmt.close();
 rs.close();
 conn.close();
 stmt=null;
 rs=null;
 conn=null;
%>
         ];
 $scope.sortField='order_id';
 $scope.reverse=true;
}); 
</script>
<body ng-controller="empCtl">
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html">Milk Management<span></span></a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="contractor_home.jsp"><span>Home</span></a></li>
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
          <h2><span>Generate Bill</span></h2>
          <form method="post" action="">
            
            <p>Search By Agent Id: <input ng-model="query" type="text" /></p>
            <table width="643" border="1">
              <tr>
                <td width="81" height="22" bgcolor="#0000FF"><span class="style18">
                  <label for="checkbox_row_1"><a href="" ng-click="sortField = 'agent_id'; reverse=!reverse">Agent Id</a></label>
                </span></td>
                <td width="108" bgcolor="#0000FF"><span class="style18">
                  <label for="checkbox_row_2">Product Type</label>
                </span></td>
                <td width="124" bgcolor="#0000FF"><span class="style18">
                  <label for="checkbox_row_3">Order Date</label>
                </span></td>
                <td width="114" bgcolor="#0000FF"><span class="style18">
                  <label for="checkbox_row_4">Quantity</label>
                </span></td>
               
                <td width="77" bgcolor="#0000FF"><span class="style18">
                  <label for="checkbox_row_6">Price</label>
                </span></td>
                <td width="99" bgcolor="#FF0000"><div align="center"><span class="style18">
                </span></div>                  <span class="style18"><label for="checkbox_row_6"></label>
                  <div align="center">Activity</div>
                </span></td>
              </tr>
             
               <tr ng-repeat="corder in orderData | filter:{'agent_id':query} | orderBy:sortField:reverse">
                <td><span class="style3">{{corder.agent_id}}</span></td>
        <td><span class="style3">{{corder.product_type}}</span></td>
         <td><span class="style3">{{corder.order_date}}</span></td>
        <td><span class="style3">{{corder.quantity}}</span></td>
        <td><span class="style3">{{corder.total_price}}</span></td>
                
                <td><div align="center" class="style18"><a href="generate_bill.jsp?id={{corder.agent_id}}&oid={{corder.order_id}}"> Generate Bill</a></div></td>
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
           
            <li><a href="order_view.jsp" class="style2">View  Order</a></li>
            <li><a href="bill_view.jsp" class="style3">Generate Bill</a></li>
            <li><a href="agent_view_contractor.jsp" class="style3">View Agents</a></li>
            <li><a href="total_collection_view.jsp" class="style3">Total Collection</a></li>
             <li><a href="changepass.jsp" class="style3">Change Password</a></li>
            
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
