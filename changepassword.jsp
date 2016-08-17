<%--
    Document   : aboutus
    Created on : Mar 15, 2013, 9:36:27 AM
    Author     : Shreeji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
    <script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
    <link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
            function redirect_home(){

                            window.location="home.jsp";

            }

        </script>

    </head>
    <body>
         <%@include file="header.jsp" %>
    <%@include file="header2.jsp" %>

<div id="main_bg">
            <div id="main">
 <%@include file="leftbar.jsp" %>
         
        <div id="right">

           <div id="content"><div id="cont_top"><h3>Change Password</h3></div>

            	<div class="text">



        <form id="form1" name="form1" method="post" action="changepassword_action">
            <label> 
                      <p>&nbsp;</p>Enter old Password:</label>
            <input type="password" name="old_password" id="old_password"/><br/>
            <label> 
                      <p>&nbsp;</p>Enter new Password:</label>
            <input type="password" name="new_password" />
            <br/>
            <label> 
                      <p>&nbsp;</p>Confirm new Password:</label>
                          
                    <input type="password" name="confirm_password" />
                            <br/>
                           
                         <input type="submit" value="ok" />
                            <br/>
                      
                             <input type="button" value="cancel" onclick="redirect_home()"/>
                           
                      <p>&nbsp;</p>
                      <p>&nbsp;</p>
                      <p>&nbsp;</p>
                      <p>&nbsp;</p>
                      <p>&nbsp;</p>
                      <p>&nbsp;</p>
                      <p>&nbsp;</p>
                      <p>&nbsp;</p>
                      <p>&nbsp;</p>
                      <p>&nbsp;</p>
                      <p>&nbsp;</p>
                      <p>&nbsp;</p>
                      <p>&nbsp;</p>
                      <p>&nbsp;</p>
                      <p>&nbsp;</p>
                      <p>&nbsp;</p>

                    </form>

         </div>
            </div>
            <div id="cont_bot"></div>
             </div>

        <div style="clear:both"></div>
        </div>
        </div>

     <%@include file="footer.jsp" %>
<script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1", "email", {validateOn:["blur"]});
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2", "none", {validateOn:["blur"]});
</script>
    </body>
</html>
