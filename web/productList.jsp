<%-- 
    Document   : productList
    Created on : Mar 21, 2012, 1:02:57 PM
    Author     : Abdulla
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="DBConnectObj" class="com.retailer.online.DBConnect" scope="session"></jsp:useBean>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style type="text/css">
            .item_box_area {
                width:640px;
                height:470px;	
                overflow:scroll;
                padding:20px 0;
                margin-bottom:40px;
                border:1px solid red;
            }
            .item_box_area ul {
                width:640px;
                overflow:hidden;
            }
            .item_box_area li {
                width:180px;
                height:220px;
                float:left;
                padding:10px;
                border:1px solid red;

            }
            .item_box_area li a {
                width:180px;
                height:170px;
                display:block;                 
            }

            .item_box_area li img{
                width:108px;
                height:150px;	
                padding:0px 0px 0px 0px;

            }  
            .t11   { font-family: Arial, Verdana, "Helvetica Neue", Helvetica, sans-serif;}

        </style>
        <link rel="stylesheet" href="style.css" />
        <title>Product List</title>
    </head>
    <body>
        <div class="item_box_area"> 
            <!--%
                DBConnectObj.connectToDB();
                ResultSet rs = DBConnectObj.getDataFromDB("SELECT * FROM ITEM");
                out.println("<ul>");
                while (rs.next()) {
                    out.println("<li><a href=\"productDetails.jsp\"><div><img src=\"Resources/" + rs.getString("GROUPID") + ".jpg\" alt=\"a\"/></div>");
                    out.println("<div>" + rs.getString("GROUPNAME") + "</div></a>");
                    out.println("<div>" + rs.getString("GROUPDETAILS") + "</div>");
                    out.println("<div><span><del>$" + rs.getString("PPRICE") + ".00</del><span>");
                    out.println("<span style=\"color:#F93;font-size:14px\"><strong>$" + rs.getString("PRICE") + ".00</strong><span></div>");
                    out.println("</li>");
                }
                out.println("</ul>");
                DBConnectObj.disconnectFromDB();
            %-->
            <ul>
                <c:forEach var="anItem" items="${listofItem1.items}">
                     <li><a href="ProductDetailsController?recentId=${anItem.groupId}"><div><img src="Resources/${anItem.groupId}.jpg" alt="a"/></div><div>${anItem.groupName}</div></a>
                    <div>${anItem.groupDetails}</div><div><span><del>$${anItem.pprice}.00</del></span><span style="color:#F93">$${anItem.price}.00</span></div></li>                                                
                </c:forEach>
            </ul>
            <!--ul>
                <li><a href="productDetails.jsp"><div><img src="Resources/a.jpg" alt="a"/></div><div>Kindle Touch, Wi-Fi, 6" E Ink Display...</div></a>
                    <div>Amazon</div><div><span><del>$99.00</del></span><span style="color:#F93">$99.00</span></div></li>
                <li><a href="#"><img src="Resources/b.jpg" alt="b"/><br/>Hometown Favorites 1950's Nostalgic...</a>
                    <span>$99.00</span><span style="color:#F93">$99.00</span></li>
                <li><a href="#"><img src="Resources/c.jpg" alt="c"/><br/>The Hunger Games.</a>
                    Suzanne Collins<br/><span>$99.00</span><span style="color:#F93">$99.00</span>
                </li>
                <li><a href="#"><img src="Resources/d.jpg" alt="d"/></a></li>
                <li><a href="#"><img src="Resources/c.jpg" alt="d"/></a></li>
                <li><a href="#"><img src="Resources/b.jpg" alt="c"/></a></li>
                <li><a href="#"><img src="Resources/a.jpg" alt="b"/></a></li-->
        </ul>
    </div>
</body>
</html>
