
<%@page import="dbconnector.dbconnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Franchise Solutions</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
    </head>

    <body>
        <%
            String email = (String) session.getAttribute("email");
            dbconnector db = new dbconnector();
            db.connect();
            String password = "";
            String query = " select * from login where email = '"+email+"'";
            db.executestatement(query);
            while(db.r.next())
                {
                password  = db.r.getString(2);
                }
        %>
        <%@include file="header.jsp" %>
    <%@include file="header2.jsp" %>

        <div id="main_bg">
            <div id="main">
                <%@include file="leftbar.jsp" %>
                <div id="right">

                    <div id="content"><div id="cont_top"><h3>Forgot Password:</h3></div>

                        <div class="text">
                            <form action="" name="" method="">
                              <table width="409" height="98" border="1">
                                <tr>
                                  <td width="129">Your Password  is:</td>
                                  <td width="17">:-</td>
                                  <td width="241"><%= password%> </td>
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


                            </form>




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


