<%--
    Document   : feedback
    Created on : Mar 14, 2013, 2:38:27 PM
    Author     : Shreeji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback</title>
        <script src="SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
        <script src="SpryAssets/SpryValidationTextarea.js" type="text/javascript"></script>
        <link href="SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css">
        <link href="SpryAssets/SpryValidationTextarea.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <%@include file="header.jsp" %>
        <%@include file="header2.jsp" %>

        <div id="main_bg">
            <div id="main">
                <%@include file="leftbar.jsp" %>
                <!--  <div id="left">
                      <div class="cat"><h3>Categories</h3></div>
                      <ul>
                          <li><a href="#">Hotels</a></li>
                          <li><a href="#">AutoMobiles</a></li>
                          <li><a href="#">Education &amp; Training</a></li>
                          <li><a href="#">Food &amp; Beverages</a></li>
                          <li><a href="#">Jewelery</a></li>
                          <li><a href="#">Entertainment</a></li>
                          <li><a href="#">Clothing</a></li>
                          <li><a href="#">more...</a></li>
                      </ul>


                      <div class="cat"><h3>Our News</h3></div>
                      <div class="box">
                          <div class="box1">
                              <p class="data">24.01.2013</p>
                              <p>Presentation 1</p>
                              <p>Simple coding of Login and Registration pages.</p>
                              <p>&nbsp;</p>
                          </div></div>


                      <div class="box">
                          <div class="box1">
                              <p class="data">16.02.2013</p>
                              <p>Presentation 2</p>
                              <p>Design of index page and registration pages.</p>
                              <p>&nbsp;</p>
                          </div></div>


                      <div class="box">
                          <div class="box1">
                              <p class="data">16.03.2013</p>
                              <p>Presentation 3</p>
                              <p>Documentation</p>
                              <p>&nbsp;</p>
                          </div>
                          <div class="box">
                              <li style="text-decoration:underline"><a href="">more...</a></li>
                          </div>
                      </div>
                  </div>  -->
                <div id="right">

                    <div id="content"><div id="cont_top"><h3>Your Feedback</h3></div>

                        <div class="text">


                            <form action="feedback_action" name="feedback" method="post">
                                <table width="810">
                                    <tr>
                                        <td width="72">*Name:</td>
                                        <td width="726"><span id="sprytextfield1">
                                                <label>
                                                    <input type="text" name="name" id="name">
                                                </label>
                                                <span class="textfieldRequiredMsg">A value is required.</span></span></td>
                                    </tr>
                                    <tr>
                                        <td>*Email:</td>
                                        <td><span id="sprytextfield2">
                                                <label>
                                                    <input type="text" name="email" id="email">
                                                </label>
                                                <span class="textfieldRequiredMsg">A value is required.</span><span class="textfieldInvalidFormatMsg">Invalid format.</span></span></td>
                                    </tr>
                                    <tr>
                                        <td>*Subject:</td>
                                        <td><span id="sprytextfield3">
                                                <label>
                                                    <input type="text" name="subject" id="subject">
                                                    ( compliment , criticism , comment , suggestion , idea ,specify if any other )</label>
                                                <span class="textfieldRequiredMsg">A value is required.</span></span></td>
                                    </tr>
                                    <tr>
                                        <td>*Feedback:</td>
                                        <td><span id="sprytextarea1">
                                                <label>
                                                    <textarea name="feedback" id="feedback" cols="45" rows="5"></textarea>
                                                </label>
                                                <span class="textareaRequiredMsg">A value is required.</span></span></td>
                                    </tr>
                                    <tr>

                                        <td colspan="2"><input type="submit" name="submit" id="submit" value="Submit" align="center"></td>
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
        <!-- footer -->
        <%@include file="footer.jsp" %>
        <!-- end of footer -->
        <script type="text/javascript">
            var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1", "none", {validateOn:["blur"]});
            var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2", "email", {validateOn:["blur"]});
            var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3", "none", {validateOn:["blur"]});
            var sprytextarea1 = new Spry.Widget.ValidationTextarea("sprytextarea1", {validateOn:["blur"]});
        </script>
    </body>
</html>
