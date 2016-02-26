<%-- 
    Document   : productDetails
    Created on : Mar 25, 2012, 9:18:22 PM
    Author     : Abdulla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
            .shoppingCard_area {
                width:650px;
                height:390px;	
                overflow:scroll;
                padding:2px 5px;
                margin-bottom:10px;
                border:1px solid red;
            }
            .shoppingCard_area h1 {
                height:35px;	
                padding:5px 5px;				

                color:#F90;
            }
            .shoppingCard_area h2 {
                height:25px;	
                padding:5px 5px;				

                color:#F90;
            }
            .shoppingCard_area_content{
                float:left;	
                width:400px;
                height:170px;
            }
            .shoppingCard_area_img{
                float:left;
                width:180px;
                height:150px;
                padding:1px 0 0 2px;
                border:1px solid red;
            }
            .input_area {
                padding: 5px 0 0 10px;
                overflow:hidden;				
                margin:5px;
                font-size:14px;
            }
        </style>
        <link rel="stylesheet" href="style.css" />
        <title>Product Details</title>
    </head>
    <body>
        <div class="shoppingCard_area">
            <form name="ShoppingCartController" action="ProductDetailsController" method="post"> 

                <!--                <div><h1 align="justify">Electronics</h1></div>
                                <div class="shoppingCard_area_content">
                                    <h2>Big-Screen HDTV Closeout</h2><p style="font-size:14px;padding: 0 0 0 10px">Take advantage of closeout pricing on select 2011 60- and 65-inch HDTVs while supplies last.</p></div>
                                <div class="shoppingCard_area_img"><img src="Resources/a.jpg" alt="a"/></div>
                                <div style="clear:both;"></div>
                
                                <div style="padding:10px 0 0 170px"><input src="Resources/add-to-cart.png" alt="Continue" tabindex="3" value="Continue"  height="22" type="image" width="91"></div>-->
                <div><h1 align="justify">${item.name}</h1></div>
                <div class="shoppingCard_area_content">
                    <h2>${item.groupName}</h2><p style="font-size:14px;padding: 0 0 0 10px">${item.groupDetails}</p></div>
                <div class="shoppingCard_area_img"><img src="Resources/${item.groupId}.jpg" alt="a"/></div>
                <div style="clear:both;"></div>

                <div style="padding:10px 0 0 170px"><input src="Resources/add-to-cart.png" alt="Continue" tabindex="3" value="Continue"  height="22" type="image" width="91"/></div>

            </form>
        </div>
    </body>
</html>
