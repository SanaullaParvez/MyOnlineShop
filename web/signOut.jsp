<%-- 
    Document   : logout
    Created on : 22-Jan-2012, 18:07:47
    Author     : Tanvir
--%>

<jsp:scriptlet>
request.getSession().invalidate();
response.sendRedirect("productList.jsp");
//pageContext.forward("/");
</jsp:scriptlet>