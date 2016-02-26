<%-- 
    Document   : shoppingCard
    Created on : Mar 23, 2012, 7:37:57 PM
    Author     : Abdulla
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="com.retailer.online.User" scope="session"></jsp:useBean>
<%
    String signInDirectory = null;
    String signInName = null;
    String wellcome = null;
    String payment;
    if (user.getEmail() != null) {
        signInDirectory = "signOut.jsp";
        signInName = "Sign Out";
        wellcome = "Your Shopping Cart";
        payment = "<div class=\"submit\"><input src=\"Resources/proceed-to-checkout.gif\" alt=\"Continue\" tabindex=\"3\" value=\"Continue\" border=\"0\" height=\"27\" type=\"image\" width=\"156\"></div>";
    } else {
        signInDirectory = "signIn";
        signInName = "Sign In";
        wellcome = "Please Log In";
        payment = "";
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Cart</title>
        <style type="text/css">
            .shoppingCard_area {
                width:662px;
                height:390px;	
                overflow:scroll;
                padding:2px 0;
                margin-bottom:10px;
                border:1px solid red;
            }
            .header_left_cart {
                float:left;
                width:210px;
                height:35px;	
                padding:5px;
                border:1px solid red;
                color:#F90;
            }
            .header_right_cart {
                float:right;
                width:200px;
                height:15px;	
                padding:30px 1px 1px 1px;
                border:1px solid red;
            }
            .shoppingCard_area h1 {
                width:400px;
                height:50px;
                line-height:50px;
                padding:0 20px;
            }
            .shoppingCard_area ul {
                width:640px;
                overflow:hidden;
            }
            .shoppingCard_area li {
                float:left;
                padding:5px;
                border:1px solid red;
            }
            .detail{
                width:312px;
                height:130px;
                float:left;       
            }
            .price_area {
                width:95px; 
                height:130px; 
                float:left; 
            }
            .qty_area {
                width:40px; 
                height:130px; 
                float:left; 
                padding-left:5px;
            }
            .qty_area input {
                text-align:center;
            }
            .price_area span {
                display:block;
            }
            .shoppingCard_area_img{
                width:120px;
                height:120px;	
                padding:5px 0px 0px 5px;
                float:left;
            }
            .right_side{
                padding:0px 0 0 400px;
            }
            .submit {
                float:left;
                margin-left:250px;
                margin-top: 10px;
            }



        </style>

        <link rel="stylesheet" href="style.css" />
    </head>
    <body>
        <h1>Hellow ${user.name}!</h1>
        <h2><jsp:expression>wellcome</jsp:expression></h2>
        <div class="shoppingCard_area">
            <div style="width:590px">
                <div class="header_left_cart"><h1 align="justify">Shopping Cart</h1></div>
                <div class="header_right_cart">Did you make any changes below?</div>
                <div style="clear:both;"></div>
            </div>
            <form action="payment.jsp" method="post">
                <div>
                    <ul>
                        <li style="width:432px">Items to buy now</li>
                        <li style="width:80px">Price</li>
                        <li style="width:40px">Quantity</li>
                    </ul>
                    <ul>



                        <c:forEach var="anItem" items="${listofRegistry.items}">
                            <li>
                                <div class="shoppingCard_area_img"><a href="ProductDetailsController?recentId=${anItem.groupId}"><img src="Resources/${anItem.groupId}.jpg" alt="b"/></a></div>
                                <div class="detail"><h2>${anItem.name}</h2><p>${anItem.groupName}</p><a href="#">Delete</a></div>
                                <div class="price_area">
                                    <span style="color:#993300;">$${anItem.pprice}.00</span> <span>You save:</span><span style="color:#993300;">$${anItem.price}.00( 41%)</span> 
                                </div>
                                <div class="qty_area"><input type="text" size="1" maxlength="3" name="anItem"/></div>
                            </li>
                        </c:forEach>








                        <!--                        <li>
                                                    <div class="shoppingCard_area_img"><a href="#"><img src="Resources/b.jpg" alt="b"/></a></div>
                                                    <div class="detail"><h2>Big-Screen HDTV Closeout</h2><p>Take advantage of closeout pricing on select 2011 60- and 65-inch HDTVs while suppdives last.</p><a href="#">Delete</a></div>
                                                    <div class="price_area">
                                                        <span style="color:#993300;">$58.95</span> <span>You save:</span><span style="color:#993300;">$41.05 ( 41%)</span> 
                                                    </div>
                                                    <div class="qty_area"><input type="text" size="1" maxlength="3" name="anItem"/></div>
                                                </li>-->

                        <!--li><a href="#"><img src="Resources/a.jpg" alt="a"/></a></li>
                        <li class="detail"><h2>Big-Screen HDTV Closeout</h2><p>Take advantage of closeout pricing on select 2011 60- and 65-inch HDTVs while supplies last.</p></li>
                        <li style="width:80px; height:130px;"><font color="#993300">$58.95</font><br />You save:<br /><font color="#993300">$41.05 ( 41%) </font></li>
                        <li style="width:40px; height:130px;">
                            <input type="text" size="1" maxlength="3" name="anItem"/></li>

                        <li><a href="#"><img src="Resources/c.jpg" alt="c"/></a></li>
                        <li class="detail"><h2>Big-Screen HDTV Closeout</h2><p>Take advantage of closeout pricing on select 2011 60- and 65-inch HDTVs while supplies last.</p></li>
                        <li style="width:80px; height:130px;"><font color="#993300">$58.95</font><br />You save:<br /><font color="#993300">$41.05 ( 41%) </font></li>
                        <li style="width:40px; height:130px;">
                            <input type="text" size="1" maxlength="3" name="anItem"/></li-->         
                    </ul>
                </div>
                <div><hr/></div>
                <div style="padding:0 0px 0 385px;font-size:14px;"><strong>Subtotal: <span style="color:#CC0000;">$${totalPrice}.00</span></strong></div>
                <div style="padding:10px 0 0 2px;font-size:12px">The price and availability of items at Amazon.com are subject to change. The shopping cart is a temporary place to store a list of your items and reflects each item's most recent price.<br/><br/>Do you have a gift card or promotional code? We'll ask you to enter your claim code when it's time to pay.</div>


                <jsp:expression>payment</jsp:expression>
            </form>
        </div>
        <h3>
            <a href="<jsp:expression>signInDirectory</jsp:expression>"><jsp:expression>signInName</jsp:expression></a>

        </h3>
    </body>
</html>
