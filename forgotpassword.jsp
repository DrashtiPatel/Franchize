<%--
    Document   : index1
    Created on : Mar 3, 2013, 1:19:40 AM
    Author     : Shreeji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Franchise Solutions</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
        <link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css">
    <script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
    </head>

    <body><%
                if (session.getAttribute("email") != null) {
                    String email = (String) request.getParameter("email");
                    session.setAttribute("email", email);
                    response.sendRedirect("index.jsp");
                } else {

        %>
        <%@include file="header.jsp" %>
    <%@include file="header2.jsp" %>

        <div id="main_bg">
            <div id="main">
                <%@include file="leftbar.jsp" %>
                <div id="right">

                    <div id="content"><div id="cont_top"><h3>Forgot Password:</h3></div>

                        <div class="text">
                            <form action="forgotpassword2.jsp" name="" method="post">
                              <table width="409" height="74" border="1">
                                <tr>
                                  <td width="129">Enter your Email Id :</td>
                                  <td width="17">:-</td>
                                  <td width="241"> <label for="email"></label>
                                    <span id="sprytextfield1">
                                    <input type="text" name="email" id="email">
                                  <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></td>
                                </tr>
                                <tr>
                                  <td height="35" colspan="3" align="center"><input type="submit" name="submit" id="submit" value="Submit"></td>

                                </tr>
                              </table>
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
                    <%@include file="loginpanel.jsp" %>


                <div style="clear:both"></div>
            </div>


        </div>

        <!-- footer begins -->

        <%@include file="footer.jsp" %>
        <!-- footer ends -->
        <% }%>
    <script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1", "email", {validateOn:["blur"]});
        </script>
</body>
</html>


