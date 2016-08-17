<%--
    Document   : aboutus
    Created on : Mar 15, 2013, 9:36:27 AM
    Author     : Shreeji
--%>

<%@page import="dbconnector.dbconnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="tabstyle.css" />
        <script type="text/javascript"  language="javascript" src="js/jquery-1.9.1.min.js"></script>

        <title>Address Book</title>
    </head>
    <body>

        <%@include file="adminheader.jsp" %>
        <%@include file="header2.jsp" %>

        <div id="main_bg">
            <div id="main">
                <%@include file="leftbar.jsp" %>
                <div id="right">
                    <div id="content"><div id="cont_top"><h3>Address Book</h3>
                        </div>
                        <!-- Tab Starts -->
                        <div class="tab">
                            <input type="radio" id="tab-1" name="tab-group-1" checked>
                            <label for="tab-1"><strong>Company Email-Id</strong></label>

                            <div class="content">
                                <form action="HTMLMail" name="sendmail" method="post">
                                    <%
                                                dbconnector db = new dbconnector();
                                                db.connect();
                                                db.executestatement("select * from address_book where usertype='company'");

                                    %>
                                    <table border=0 width="525" cellpadding="2" cellspacing="5">
                                        <tr>
                                            <th width="210" align="left" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#000000">Company Name</font></th>
                                            <th width="183" align="left" ><font color="#000000">Email</font></th>
                                            <th width="100" align="left" ><font color="#000000">Contact</font></th>

                                        </tr>

                                        <%  while (db.r.next()) {%>


                                        <tr>
                                            <td align="left">
                                                <input type="checkbox" name="checkbox" id="checkbox" value="<% out.println(db.r.getString(2));%>" >
                                                <% out.println(db.r.getString(4));%></td>
                                            <td align="left"><% out.println(db.r.getString(2));%></td>
                                            <td align="left"><% out.println(db.r.getString(3));%></td>

                                        </tr>
                                        <%

                                                        }%>
                                        <tr align="left">
                                            <td colspan="4" align="center">&nbsp;</td>
                                        </tr>
                                        <tr align="left">
                                            <td colspan="4" align="center"><input type="submit" name="button" id="button" value="Send mail to selected contacts"></td>
                                        </tr>
                                    </table>
                                </form>
                            </div>
                        </div>

                        <div class="tab">
                            <input type="radio" id="tab-2" name="tab-group-1">
                            <label for="tab-2"><strong>Investor Email-Id</strong></label>

                            <div class="content">
                                    <form action="HTMLMail" name="" method="post">

                                         <%

                                        db.connect();
db.executestatement("select * from address_book where usertype='investor'");%>

                                        <table border=0 width="525" cellpadding="2" cellspacing="5">
                                            <tr>
                                                <th width="210" align="left" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font color="#000000">Name</font></th>
                                                <th width="100" align="left" ><font color="#000000">Email Id</font></th>
                                                <th width="100" align="left" ><font color="#000000">Contact Number</font></th>

                                            </tr>

                                            <%  while (db.r.next()) {%>


                                            <tr>
                                                   <td align="left"><input type="checkbox" name="checkbox" id="checkbox" value="<% out.println(db.r.getString(2));%>" >
                                                    <% out.println(db.r.getString(4));%></td>
                                                    <td align="left"><% out.println(db.r.getString(2));%></td>
                                                    <td align="left"><% out.println(db.r.getString(3));%></td>

                                            </tr>
                                            <%}%>
                                            <tr align="left">
                                                <td colspan="4" align="center">&nbsp;</td>
                                            </tr>
                                            <tr align="left">
                                                <td colspan="4" align="center"><input type="submit" name="button" id="button" value="Send mail to selected contacts"></td>
                                            </tr>
                                        </table>




                                    </form>
                                </div>
                        </div>



                        <!-- Tab Ends -->

                    </div>

                </div>

            </div>

            <%@include file="admintask.jsp" %>


            <div style="clear:both"></div>

        </div>
        <%@include file="footer.jsp" %>

    </body>
</html>
