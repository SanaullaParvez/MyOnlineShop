<%-- 
    Document   : home
    Created on : Mar 20, 2012, 10:26:40 AM
    Author     : Abdulla
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="user" class="com.retailer.online.User" scope="session"></jsp:useBean>
<jsp:useBean id="DBConnectObj" class="com.retailer.online.DBConnect" scope="session"></jsp:useBean>
<!--%
        String linkDirectory = null;
        String linkName = null;
        String productList = null;
        if (user.getEmail() != null) {
            linkDirectory = "shoppingCard.jsp";
            linkName = "Sign Out";
            productList = "shoppingCard.jsp";
        } 
        else {
            linkDirectory = "signIn";
            linkName = "Sign In";
            productList = "productList.jsp";
        }    
%-->
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" type="text/css" href="Resources/SubContent/ddlevelsmenu-base.css" />
        <link rel="stylesheet" type="text/css" href="Resources/SubContent/ddlevelsmenu-topbar.css" />
        <link rel="stylesheet" type="text/css" href="Resources/SubContent/ddlevelsmenu-sidebar.css" />
        <script type="text/javascript" src="Resources/SubContent/ddlevelsmenu.js"></script>
        <script type="text/javascript">
            ddlevelsmenu.setup("ddsidemenubar", "sidebar") //ddlevelsmenu.setup("mainmenuid", "topbar|sidebar")
        </script>
        <script language="javascript"><!--
            function Contact(){ OpenNewWindow = window.open("logIn.jsp","log in","toolbar = no,left=650,top=320,directoris = no,status = yes,menubar = 0,scrollbars = no,resizable = yes,width = 380,height = 280");
            }
            --></script>
        <title>Online Shop</title>
        <link rel="stylesheet" href="style.css" />
    </head>
    <body>
        <div id="wrap">
            <div id="header">
                <div class="header_left"><h1 align="center"><a href="HomeController">Our Online Shop</a></h1></div>
                <div class="header_right">
                    <ul>
                        <li><a href="register.jsp" target="allContent">Register</a></li>
                        <!--li><a href="javascript:Contact()">Sign In</a></li-->
                        <li><a href="SignInController" target="allContent">Sign In</a></li>
                        <li><a href="shoppingCart.jsp" target="allContent">Shopping Card</a></li>
                    </ul>
                </div>
            </div>
            <div id="main_content">
                <div id="left_sidebar">
                    <h2>List of contents</h2>
                    <div id="ddsidemenubar" class="markermenu">
                        <ul>
                            <c:forEach var="anItem" items="${listofItem1.items}">
                                <li><a href="ContentController?recentId=${anItem.id}" target="allContent">${anItem.name}</a></li>  
                            </c:forEach>
                        </ul>
                        <!--ul>
                            <li><a href="#">Vegetables</a></li>
                            <li><a href="#" rel="7001">Toys</a>
                                <ul id="7001" class="ddsubmenustyle blackwhite">
                                    <li><a href="#">Item 1a</a></li>
                                    <li><a href="#">Item 2a</a></li>
                                    <li><a href="#">Item Folder 3a</a></li>
                                    <li><a href="#">Item 4a</a></li>
                                    <li><a href="#">Item Folder 5a</a></li>
                                    <li><a href="#">Item 6a</a></li>
                                </ul>
                            </li>                            
                            <li><a href="#">Kids</a></li>
                            <li><a href="#">Electronics</a></li>
                            <li><a href="#">Computers</a></li>
                            <li><a href="#">Shoes</a></li>
                            <li><a href="#">Rice</a></li>
                            <li><a href="#">Sugar</a></li>
                            <li><a href="#">demo</a></li>
                            <li><a href="#">demo</a></li>
                            <li><a href="#">demo</a></li>
                            <li><a href="#">demo</a></li>
                        </ul--> 
                    </div> 
                </div>
                <div class="content">
                    <div class="search">
                        <form target="allContent" name="search" action="ContentController" method="post">
                            <!--                            <input type="text" size="50" maxlength="20" name="anItem"/>
                                                        <input type="submit" value="Go" title="Go" onclick="checkItem();"/>-->
                            <input type="text" size="50" maxlength="20" name="search.gropname"/>
                            <input type="submit" value=" Go " title="Go" />
                        </form>
                    </div>
                    <iframe src="ProductListController" name="allContent" scrolling="no" width="650" height="480"></iframe>
                    <!--div class="login_area">
                	<form name="login" action="#" method="post">
                    	<div class="input_area"><div class="input_title">Name:</div> <div><input name="name" type="text" value="username" onfocus="this.value=''" onblur="this.value='username'" /></div></div>
                            <div class="input_area"><div class="input_title">Password:</div> <div><input type="password" name="pass" value="password" onfocus="this.value=''" onblur="this.value='password'" /></div></div>
                            <div class="submit"><input type="submit" value="Submit" /></div>
                        </form>
                    </div-->  
                </div>
            </div>
            <div class="btm_content_area">
                <h2>Best sales > <a href="http://www.retail.com/bestSale/home.jsp">More of your best deals</a></h2>
                <ul>
                    <c:forEach var="anItem" items="${listofItem.items}">                    
                        <li><a href="ProductDetailsController?recentId=${anItem.groupId}" target="allContent"><div><img class="btm_content_area_img" src="Resources/${anItem.groupId}.jpg" alt="a"/></div><div>${anItem.groupDetails}</div></a>
                            <div><img src="Resources/stars-4-5.gif" alt="4.5 out of 5 stars" title="4.5 out of 5 stars">(904)</div>
                            <div style="color:#F93">${anItem.price}</div></li>                    
                        </c:forEach>                
                </ul>
            </div>
        </div>
    </body>
</html>

