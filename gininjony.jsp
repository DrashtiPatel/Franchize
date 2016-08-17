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
        <title>Franchise Category</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <%@include file="header2.jsp" %>
        <div id="main_bg">
            <div id="main">
                <%@include file="leftbar.jsp" %>
                <div id="right">
                    <div id="content"><div id="cont_top">
                      <h3>Gini and Jony</h3></div>
                        <div class="text">
                            <form action="" name="" method="post">
                                  <%
                             try {

                                                        dbconnector db = new dbconnector();
                                                        db.connect();
                                                        db.executestatement("select * from fsor_req where email='ginijony@gmail.com'");
                                                        while(db.r.next())
                                                            {

                        %>
                                <table width="500" border="0" cellspacing="10">
                                            <tr>
                                                <td colspan="6" width="17"><a href="gininjony.jsp"><img src="images/Gini and Jony.jpg"/></a></td>

                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td align="left"><font color="#990033">Investment</font>   </td>
                                                <td align="left"> :-</td>
                                                <td colspan="3"><% out.println(db.r.getString(3));%></td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" rowspan="2">&nbsp;</td>
                                                <td align="left"><font color="#990033">Area(in sq. ft.)</font> </td>
                                                <td align="left"> :-</td>
                                                <td colspan="3"><% out.println(db.r.getString(2));%></td>
                                                <td colspan="2" rowspan="2" align="right">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td align="left"><font color="#990033">Expansion</font> </td>
                                                <td align="left"> :-</td>
                                                <td colspan="3"><% out.println(db.r.getString(4));%></td>
                                            </tr><%}
                                            db.executestatement("select * from fsor_details where email='ginijony@gmail.com'");
                                            while(db.r.next())
                                                {
                                                            %>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td align="left"><font color="#990033">Contact Information</font></td>
                                                <td align="left"> :-</td>
                                                <td colspan="3"><%out.println(db.r.getString(11)); %></td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td align="left"><font color="#990033">Details</font></td>
                                                <td align="left"> :-</td>
                                                <td colspan="3"><p>Gini and jony is a kids clothing retail chain.</p></td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                        </table>
                                                  <% }
                          }
                             catch(Exception e)
                                     {
                                        JOptionPane.showMessageDialog(null, e);
                                     }
        %>

                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p
                                ><p>&nbsp;</p>
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
        <%@include file="footer.jsp" %>
    </body>
</html>
