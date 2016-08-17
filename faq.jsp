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
        <title>FAQ Admin</title>
    </head>
    <body>
        <%@include file="adminheader.jsp" %>
        <%@include file="header2.jsp" %>

        <div id="main_bg">
            <div id="main">
                <%@include file="leftbar.jsp" %>

                <div id="right">
                    <div id="content"><div id="cont_top"><h3>FAQ Answer</h3></div>

                        <!--Tab content starts -->
                        <center>
                            <div class="tab">
                                <input type="radio" id="tab-1" name="tab-group-1" checked>
                                <label for="tab-1"><strong>Question List</strong></label>

                                <div class="content">
                                    <%
                                    try{
                                       
                                    dbconnector db = new dbconnector();
                                                db.connect();
                                                db.executestatement("select name,question,date from faq where ans = ' '");
                                                
                                                while (db.r.next()) {
                                                     JOptionPane.showMessageDialog(null, "Test1");
                                    %>
                                    <h2><% out.print(db.r.getString(1));%></h2>
                                   Posted on
                                        <% out.println(db.r.getDate(3));%><br>
                               <!--     <p>  Question Id : <% // out.print(db.r.getString(1));%></p> -->
                                    <p>Question :  <% out.println(db.r.getString(2));%></p>
                                    <br/><p>-----------------------------------------</p>

                                    <%
                                                }}catch(Exception e){
                                                    JOptionPane.showMessageDialog(null, e);
                                                    }
            %>
                                </div>

                            </div>
                            <div class="tab">
                                <input type="radio" id="tab-2" name="tab-group-1">
                                <label for="tab-2"><strong>Give Answer</strong></label>

                                <div class="content">
                                     <form action="faqans.jsp" method="post">
                                        <table width="527" border="0">
                                  <!--          <tr>
                                                <td width="76">Faq Id</td>
                                                <td width="21">:-</td>
                                                <td width="416">
                                                    <input type="text" name="textfield" id="textfield" width="350px" value=""></td>
                                            </tr>
                                  -->
                                            <tr>
                                                <td>Answer</td>
                                                <td>:-</td>
                                                <td><textarea name="txtanswer"   cols="100" rows="5" id="txtanswer"  style="max-height:80px; max-width:200px; height:80px;  width:200px;  "></textarea></td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
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
                        </center>
                        <!--Tab content ends -->
                    </div>
                </div>
                <%@include file="admintask.jsp" %>
                <div style="clear:both"></div>
            </div>
        </div>

        <%@include file="adminfooter.jsp" %>

    </body>
</html>
