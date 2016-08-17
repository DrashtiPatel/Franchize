<%-- 
    Document   : food
    Created on : 10 Apr, 2013, 12:01:30 PM
    Author     : Twinkle
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="dbconnector.dbconnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css" />
        <title>Food Franchises</title>
    </head>
    <body>
         <%@include file="header.jsp" %>
        <%@include file="header2.jsp" %>

<div id="main_bg">
            <div id="main">
                <%@include file="leftbar.jsp" %>

        <div id="right">

           <div id="content"><div id="cont_top"><h3>Food Franchises</h3></div>

            	<div class="text">


                    <form action="" name="" method="post">
                        <%
                                            try {

                                                dbconnector db = new dbconnector();
                                                db.connect();
                                                db.executestatement("select * from fsor_req where email='mcd@gmail.com'");
                                                while (db.r.next()) {

                                %>
                                <table width="536">
                                    <tr>
                                        <td width="219">
                                            <a href="mcd.jsp"><img src="images/mcd.jpg"/></a>
                                        </td>
                                        <td width="111" style="font-size:12px">
                                            <strong>Investment:</strong>
                                            <%out.println(db.r.getString(3));%>
                                        </td>
                                        <td width="116" style="font-size:12px">
                                            <strong>Area:</strong>
                                            <%out.println(db.r.getString(2));%>
                                        </td>
                                    </tr><% }%>
                                </table>

                                <%
                                                                 db.executestatement("select * from fsor_req where email='mcd@gmail.com'");
                                                                 while (db.r.next()) {

                                %>
                                <table>
                                    <tr>
                                        <td width="255">
                                            <a href="havmor.jsp"><img src="images/havmor.jpg"/></a>
                                        </td>
                                        <td width="121" style="font-size:12px">
                                            <strong>Investment</strong>:
                                            <%out.println(db.r.getString(3));%>
                                        </td>

                                        <td width="145" style="font-size:12px">
                                            <strong>Area:</strong>
                                            <%out.println(db.r.getString(2));%>
                                        </td>
                                    </tr>
                                </table>
                                <%}
                                            } catch (Exception e) {
                                                JOptionPane.showMessageDialog(null, e);
                                            }
                                %>

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
 <%@include file="loginpanel.jsp" %>
        <div style="clear:both"></div>
        </div>
        </div>

     <%@include file="footer.jsp" %>


    </body>
</html>
