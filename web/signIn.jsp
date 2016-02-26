<%-- 
    Document   : logIn
    Created on : Mar 20, 2012, 10:58:09 AM
    Author     : Abdulla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                line-height:50px;	
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
        <script type="text/javascript">
            function disable_enable(){
                if (document.all || document.getElementById){
                    if (document.signup.button1.disabled==true)
                        document.signup.button1.disabled=false
                    else
                        document.signup.button1.disabled=true
                }
            }
        </script>        
        <title>Login</title>
        <link rel="stylesheet" href="style.css" />
    </head>
    <body>
        <div class="top_name">     
            <form action="SignInController" method="post">               
                <div class="input_area"><h2 style="color:#F93"><%=session.getAttribute("message")%></h2>
                    <div style="color:#F93"> What is your email address ?</div>
                    <div class="input_title">My email address is:</div>
                    <div><input name="signIn.email" type="text" /></div>
                    <div style="color:#F93">Do you have a password ?</div>
                    <div class="input_title">My Password is:</div>
                    <div><input type="password" name="signIn.password" /></div></div>
                <div class="submit"><input src="Resources/sign-in-secure.gif" alt="Continue" tabindex="3" value="Continue" border="0" height="22" type="image" width="81">
                    <!--input type="submit" value="Log In"/--></div>
            </form>

            <form name="signup" action="register.jsp" method="post">  
                <div style="padding: 10px 0 10px 10px;font-size: 18px"><a href="javascript:disable_enable()">I am a new user</a></div>
                <div class="submit"><input disabled="disabled" type="submit" name="button1" value="Sign Up"/></p></div>
            </form>

        </div>
    </body>
</html>
