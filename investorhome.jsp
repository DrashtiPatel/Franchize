
<%@page import="javax.swing.JOptionPane"%>
<%@page import="dbconnector.dbconnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Investor Home</title>
    </head>
    <body>
        <%


                    String email = (String) session.getAttribute("email");
                    JOptionPane.showMessageDialog(null, "email:" + email);
                    if (email == null) {
                        response.sendRedirect("index.jsp");
                    } else {
                        dbconnector db = new dbconnector();
                        db.connect();
                        db.executestatement("select * from fsee_details where email='" + email + "'");
                        String fname = "", address = "", mob = "";
                        while (db.r.next()) {
                            fname = (String) db.r.getString(2);
                            address = (String) db.r.getString(4);
                            mob = (String) db.r.getString(9);
                        }
        %>
        <%@include file="header.jsp" %>
        <%@include file="header2.jsp" %>

        <div id="main_bg">
            <div id="main">
                <%@include file="leftbar.jsp" %>

                <div id="right">

                    <div id="content">

                        <!--     <div id="navigation2">
                                 <ul id="menu">
                                     <li><a href="viewprofile.jsp">View Profile</a></li>
                                     <li><a href="editprofile.jsp">Edit Profile</a></li>
                                     <li><a href="changepassword.jsp">Change Password</a></li>
                                     <li><a href="logout.jsp">Logout</a></li>
                                     <li></li>
                                     <li></li>
                                 </ul>
                             </div>  -->
                        <div id="cont_top"><h3>Welcome <%=fname%></h3></div>

                        <div class="text">


                            <form action="" name="" method="post">
                                <table width="520" height="292" border="0" cellspacing="10">

                                    <tr>
                                        <td width="123">&nbsp;</td>
                                        <td align="left"><font color="#990000">Address</font></td>
                                        <td width="13" align="left">:-</td>
                                        <td width="178" align="left"><%= address%></td>
                                    </tr>
                                    <tr>
                                        <td width="123">&nbsp;</td>
                                        <td align="left"><font color="#990000">Contact Number</font></td>
                                        <td align="left">:-</td>
                                        <td><%= mob%></td>
                                    </tr>
                                    <tr>
                                        <td width="123">&nbsp;</td>
                                        <td height="32" colspan="3" align="right">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td height="26" colspan="4" align="center">&nbsp;</td>
                                    </tr>
                                </table>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>

                            </form>
                        </div>
                    </div>
                    <div id="cont_bot"></div>
                </div>
                <%@include file="investortask.jsp" %>
                <div style="clear:both"></div>
            </div>
        </div>

        <%@include file="footer.jsp" %>
        <% }%>
    </body>
</html>
