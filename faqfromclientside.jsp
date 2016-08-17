<%--
    Document   : feedback
    Created on : Mar 14, 2013, 2:38:27 PM
    Author     : Shreeji
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="javassist.bytecode.stackmap.BasicBlock.Catch"%>
<%@page import="dbconnector.dbconnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.swing.JPopupMenu"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FAQ</title>

        <link rel="stylesheet" type="text/css" media="all" href="jsDatePick_ltr.min.css" />
        <script type="text/javascript" src="jsDatePick.min.1.3.js"></script>
        <link rel="stylesheet" type="text/css" href="tabstyle.css" />

        <script type="text/javascript">
            window.onload = function(){
                new JsDatePick({
                    useMode:2,
                    target:"calendar",
                    dateFormat:"%d-%M-%Y"});
            };
        </script>



    </head>
    <body>
        <%@include file="header.jsp" %>
        <%@include file="header2.jsp" %>

        <div id="main_bg">
            <div id="main">
                <%@include file="leftbar.jsp" %>

                <div id="right">

                    <div id="content"><div id="cont_top">
                            <h3>FAQs</h3></div>



                        <div class="text">
                            <!-- Tab Content starts-->
                            <!-- tab-1-->

                            <div class="tab">
                                <input type="radio" id="tab-1" name="tab-group-1" checked>
                                <label for="tab-1"><strong>FAQ's</strong></label>
                                <div class="content">
                                    <%

                                                dbconnector db = new dbconnector();
                                                db.connect();
                                                db.executestatement("select name,question,date,ans from faq ");
                                                while (db.r.next()) {
                                                    if (db.r.getString(4) != null) {
                                    %>
                                    <h2><% out.print(db.r.getString(1));%></h2>
                                    <p>
                              <<!--          <input name="faqid" type="text" id="faqid" value="" disabled>-->  Posted on
                                        <% out.println(db.r.getDate(3));%>


                                    </p>
                                    <font size="+1">Question:-</font>
                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<% out.println(db.r.getString(2));%></p>

                                    <font size="+1">Answer:-</font>

                                    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<% out.println(db.r.getString(4));%></p>
                                    <%}
                                                }

                                    %>
                                    <br/><p>-----------------------------------------</p>
                                </div>
                            </div>
                            <!-- tab-2-->
                            <div class="tab">
                                <input type="radio" id="tab-2" name="tab-group-1">
                                <label for="tab-2"><strong>Ask New Questions</strong></label>


                                <div class="content">
                                    <form action="faqstorefromclientside.jsp" method="post">
                                        <table width="527" border="0" align="center">

                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <%--    <td width="80"><font color="#990000"> Faq Id </font> </td>
                                                 <td width="17"><font color="#990000"> :- </font> </td>
                                                 <td width="416">   --%>
                                                <td> <input type="hidden" name="faqid" id="faqid" width="350px" value=""></td>
                                            </tr> 
                                            <tr>
                                                <td><font color="#990000"> Name </font> </td>
                                                <td><font color="#990000"> :- </font> </td>
                                                <td>
                                                    <input type="text" name="name" id="name" width="350px "></td>
                                            </tr>
                                            <tr>
                                                <td><font color="#990000"> Question </font></td>
                                                <td><font color="#990000"> :- </font></td>
                                                <td><textarea name="txtque"   cols="100" rows="5" id="txtque"  style="max-height:80px; max-width:200px; height:80px;  width:200px; "></textarea></td>
                                            </tr>
                                            <tr>
                                                <td><font color="#990000"> Email Id </font></td>
                                                <td><font color="#990000"> :- </font></td>
                                                <td>
                                                    <input type="text" name="email" id="email" width="350px" ></td>
                                            </tr>
                                            <tr>
                                                <td><font color="#990000"> Date </font></td>
                                                <td><font color="#990000"> :- </font></td>
                                                <td>
                                                    <input type="text" id="calendar" name="calendar"  />

                                                </td>
                                            </tr>
                                            <tr>
                                                <td width="416">
                                                    <input type="hidden" name="ans" id="ans"/></td>
                                            </tr>
                                            <tr>
                                                <td><input type="submit" name="button" id="button" value="Submit"></td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>

                                        </table>

                                    </form>
                                </div>

                            </div>
                            <!-- Tab Content ends-->
                            <p>&nbsp;</p>


                        </div>
                    </div>

                    <div id="cont_bot"></div>
                </div>


                <!-- Right side bar begins -->

                <%@include file="loginpanel.jsp" %>

                <!-- Right side bar ends -->



                <div style="clear:both"></div>
            </div>
        </div>


        <!-- footer -->
        <%@include file="footer.jsp" %>
        <!-- end of footer -->


    </body>
</html>
