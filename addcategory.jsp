<%--
    Document   : aboutus
    Created on : Mar 15, 2013, 9:36:27 AM
    Author     : Shreeji
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="dbconnector.dbconnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="tabstyle.css" />
        <title>Schemes</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <%@include file="header2.jsp" %>
        <% session.setAttribute("current1", 0);%>
        <div id="main_bg">
            <div id="main">
                <%@include file="leftbar.jsp" %>

                <div id="right">
                    <div id="content"><div id="cont_top"><h3>Edit Category</h3></div>
                        <div class="text">
                            <!--Tab content starts -->
                            <div class="tab">
                                <input type="radio" id="tab-1" name="tab-group-1" checked>
                                <label for="tab-1"><strong>Add New Category</strong></label>

                                <div class="content">
                                    <h2 align="center">New Category</h2>
                                    <form action="addcategory1" method="post">
                                        <table width="520" border="0" cellspacing="10">
                                            <tr>
                                                <td align="right">&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left"><font color="#990000">New Category</font></td>
                                                <td><font color="#990000">:-</font></td>
                                                <td>
                                                    <input type="text" name="cat" id="cat" size="35"></td>
                                            </tr>
                                            <tr>
                                                <td align="left"><font color="#990000">Description</font></td>
                                                <td><font color="#990000">:-</font></td>
                                                <td><textarea name="desc" cols="38" rows="5"></textarea></td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="center">&nbsp;</td>
                                                <td colspan="2" align="left">
                                                    <input type="submit" name="button" id="button" value="  Add  "></td>
                                            </tr>
                                        </table>
                                    </form>
                                </div>

                            </div>
                            <div class="tab">
                                <input type="radio" id="tab-2" name="tab-group-1">
                                <label for="tab-2"><strong>Remove Category</strong></label>

                                <div class="content">
                                    <h2 align="center">Remove Category</h2>
                                    <form action="removecategory" method="post">
                                        <table width="520" border="0" cellspacing="10">
                                            <tr>
                                                <td align="right">&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left"><font color="#990000">Select Category</font></td>
                                                <td><font color="#990000">:-</font></td>
                                                <td>
                                                    <select name="cat" id="cat">
                                                        <option selected="selected">Select and Go</option>
                                                        <%
                                                                  
                                                                    db.connect();
                                                                    db.executestatement("select * from add_category");
                                                                    while (db.r.next()) {
                                                        %>
                                                        <option><% out.println(db.r.getString(2)); %></option><%}%>
                                                    </select></td>
                                            </tr>

                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="center">&nbsp;</td>
                                                <td colspan="2" align="left"><input type="submit" name="button" id="button" value="  Remove  "></td>
                                            </tr>
                                        </table>
                                    </form>

                                </div>

                            </div>

                            <!--Tab content ends -->
                        </div>
                    </div>

                </div>

                <%@include file="admintask.jsp" %>
                <div style="clear:both"></div>
            </div>
        </div>

        <%@include file="adminfooter.jsp" %>

    </body>
</html>
