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

                    <div id="content"><div id="cont_top"><h3>Business Opportunities in:</h3></div>

                        <div class="text">
                            <a href="mcd.jsp" ><img src="images/mcd.jpg" width="210px" height="100px" alt="Mc Donald's" /></a>
                            <a href="speed car wash.jsp">    <img src="images/speed car wash.gif" width="210px" height="100px" alt="Speed Car Wash" /></a>
                            <a href="siyaram.jsp">    <img src="images/siyaram.gif" width="210px" height="100px" alt="Siyaram" /></a>
                            <br/>
                            <p>&nbsp;</p>
                            <a href="euro kids.jsp" >    <img src="images/euro kids.jpg" width="210px" height="100px" alt="Euro Kids PreSchool" /></a>
                            <a href="zapak gameplex.jsp">    <img src="images/zapak gameplex.jpg" width="210px" height="100px" alt="Zapak Gameplex" /></a>
                            <a href="orra.jsp">    <img src="images/orra.gif" width="210px" height="100px" alt="Orra Jewels" /></a>



                            <div id="cont_top"><h3>Top Franchises</h3></div>
                            <a href="Gini and Jony.jsp">    <img src="images/Gini and Jony.jpg" width="210px" height="100px" alt="Gini and Jony Kids Collection" /></a>
                            <a href="jetking.jsp">    <img src="images/jetking.png" width="210px" height="100px" alt="Jetking Hardware and Networking Institute" /></a>
                            <a href="big flix.jsp">    <img src="images/big flix.png" width="210px" height="100px" alt="Big Flix Entertainment" /></a>
                            <br/>
                            <p>&nbsp;</p>
                            <a href="subway.jsp">    <img src="images/subway.jpg" width="210px" height="100px" alt="Subway" /></a>
                            <a href="gitanjali.jsp">    <img src="images/gitanjali.png" width="210px" height="100px" alt="Gitanjali Jewellers" /></a>
                            <a href="havmor.jsp">    <img src="images/havmor.jpg" width="210px" height="100px" alt="Havmor" /></a>

                            <div id="cont_top"><h3>Search franchises by Industry</h3></div>
                            <p>&nbsp;</p>
                            <center>
                                <table width="576" height="160" border="1">
                                    <tr>
                                        <td width="280" height="32" align="center"><a href="">Automobiles</a></td>
                                        <td width="280" align="center"><a href="">Clothing</a></td>
                                    </tr>
                                    <tr>
                                        <td height="23" align="center"><a href="">Education and Training</a></td>
                                        <td align="center"><a href="">Entertainment</a></td>
                                    </tr>
                                    <tr>
                                        <td height="35" align="center"><a href="">Footwear</a></td>
                                        <td align="center"><a href="">Health Sector</a></td>
                                    </tr>
                                    <tr>
                                        <td height="27" align="center"><a href="">Jewelery</a></td>
                                        <td><a href=""></a></td>
                                    </tr>
                                    <tr>
                                        <td height="29"></td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </center>

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
    </body>
</html>


