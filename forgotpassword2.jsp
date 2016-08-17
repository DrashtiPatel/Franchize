<%--
    Document   : index1
    Created on : Mar 3, 2013, 1:19:40 AM
    Author     : Shreeji
--%>

<%@page import="dbconnector.dbconnector"%>
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
                String email = (String) request.getParameter("email");
                if(email.equals("") || email.equals("null") || email.equals(null))
                    {
                    response.sendRedirect("index.jsp");
                    }
                else
                    {
                    session.setAttribute("email", email);
                    String query = "select * from login where email='"+email+"'";

                    dbconnector db = new dbconnector();
                    db.connect();
                    db.executestatement(query);
                    String sec_que = "";
                    while(db.r.next())
                        {
                                sec_que= db.r.getString(4);
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
                            <form action="forgotpassword_action" name="" method="post">
                              <table width="409" height="98" border="1">
                                <tr>
                                  <td width="129">Your Security question is:</td>
                                  <td width="17">:-</td>
                                  <td width="241"> <%=sec_que%></td>
                                </tr>
                                <tr>
                                  <td height="33">Your Security answer</td>
                                  <td>:-</td>
                                  <td><label for="sec_ans"></label>
                                  <input type="password" name="sec_ans" id="sec_ans"></td>
                                </tr>
                                <tr>
                                  <td height="35" colspan="3" align="center"><input type="submit" name="submit" id="submit" value="Submit"></td>

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


