<%-- 
    Document   : newjsp
    Created on : Mar 26, 2012, 12:34:17 PM
    Author     : Abdulla
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<jsp:useBean id="item" class="com.retailer.online.Item" scope="session"></jsp:useBean>
<jsp:useBean id="listofItem" class="com.retailer.online.ListofItem" scope="session"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test Page</title>
    </head>
    <body>        
        <h1>Welcome </h1>        
        <table border="1">
            <tr>
                <th>name</th>
                <th>groupname</th>                
            </tr>
            <c:forEach var="anItem" items="${listofItem.items}">
                <tr>
                    <td>${anItem.id}</td>                                        
                    <td>${anItem.name}</td>
                </tr>
            </c:forEach>
            <c:forEach var="anItem" items="${listofItem1.items}">
                <tr>
                    <td>${anItem.groupId}</td>
                    <td>${anItem.groupName}</td>
                </tr>
            </c:forEach>
        </table>                
    </body>
</html>
