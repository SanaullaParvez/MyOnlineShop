<%-- 
    Document   : register
    Created on : Mar 23, 2012, 11:29:59 AM
    Author     : Abdulla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">
.top_name{
	font-family:"Times New Roman", Times, serif;
	width:630px;
	height:500px;
	overflow:scroll;
	border:1px solid red;
	padding:20px;
}
.input_area {
	overflow:hidden;
	width:400px;
	margin:5px;
	font-size:14px;        
}
.input_area h2{
	font-size:20px;
	line-height:20px;	
	}
.input_area input {
	color:#666;
}
.input_area div{
        padding: 5px;
}
.input_title {
	font-size:14px;
	float:left;
	width:150px;
}
.submit {
	margin-left:105px;
}

</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
        <link rel="stylesheet" href="style.css" />
    </head>
    <body>
        <div class="top_name">     
        <form name="login" action="#" method="post">        
            <div class="input_area">
            <h2 style="color:#F93">Register</h2>
            <h3 style="color:#F93">New ? Register Below.</h3>
            <div class="input_title">My name is:</div>
            <div><input name="login.name" type="text"/></div>
            <div class="input_title">My email address is:</div>
            <div><input name="login.email" type="text" /></div>
            <div class="input_title">Type it again:</div>
            <div><input name="login.name" type="text" /></div>
            <div class="input_title">My mobile number is:</div>
            <div><input name="login.name" type="text" /><font color="#BBBBBB">(optional)</font></div>
            <div style="color:#F93">Protect your information with password</div>
            <div class="input_title">Enter a new password:</div>
            <div><input type="password" name="login.password" /></div>
            <div class="input_title">Type it again:</div>
            <div><input type="password" name="login.password" />
            </div></div>
            <div class="submit"><input src="Resources/create-account.gif" alt="Continue" tabindex="3" value="Continue" border="0" height="22" type="image" width="101">
            <!--input type="submit" value="Log In"/--></div>
         </form>
        </div>
    </body>
</html>
