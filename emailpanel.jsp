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
        <title>Email Panel</title>
        <script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
        <link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <%@include file="header.jsp" %>
        <%@include file="header2.jsp" %>

        <div id="main_bg">
            <div id="main">
                <%@include file="leftbar.jsp" %>
               
                <div id="right">

                    <div id="content"><div id="cont_top"><h3>Email Panel</h3></div>

                        <div class="text">


                            <form action="sendmail2.jsp" name="emailpanel" method="post">
                                <table>
                                    <tr>
                                        <td>To:</td>
                                        <td><span id="sprytextfield1">
                                                <input type="text" name="to" id="to">
                                                <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></td>
                                    </tr>
                                    <tr>
                                        <td>Cc:</td>
                                        <td>
                                            <input type="text" name="cc" id="cc">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Bcc:</td>
                                        <td>
                                            <input type="text" name="bcc" id="bcc">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Subject</td>
                                        <td>
                                            <input type="text" name="subject" id="subject">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Message Body :</td>
                                        <td>
                                            <textarea name="message" id="message" cols="30" rows="3">
                                            </textarea>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td>Attachment: </td>
                                        <td>
                                        <td><INPUT TYPE="file"  name="filename" id="filename" /></td>

                                    </tr>

                                    <tr>
                                        <td colspan="2"><input type="submit" name="send" id="send" value="Send"></td>
                                    </tr>

                                    <tr>
                                        <td colspan="2"><input type="submit" name="cancel" id="cancel" value="Cancel"></td>
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
                                <p>&nbsp;</p>

                            </form>

                        </div>
                    </div>
                    <div id="cont_bot"></div>
                </div>

                <div style="clear:both"></div>
            </div>
        </div>

        <%@include file="adminfooter.jsp" %>
        <script type="text/javascript">
            var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1", "email", {validateOn:["blur"]});
            var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2", "none", {validateOn:["blur"]});
        </script>
    </body>
</html>
