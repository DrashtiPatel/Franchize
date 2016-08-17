

<%@page import="dbconnector.dbconnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Company Home</title>
    </head>
    <body>

        <%


            String email = (String) session.getAttribute("email");
            if(email == null)
                {
                    response.sendRedirect("index.jsp");
                }
                else
                    {
                            dbconnector db = new dbconnector();
                            db.connect();
                            db.executestatement("select * from fsor_details where email='" + email + "'");
                            String c_address="",mob="";
                            while (db.r.next()) {

                                 c_address = (String) db.r.getString(3);
                                 mob = (String) db.r.getString(8);

                            }

                            db.executestatement("select * from fsor_training where email='" + email + "'");
                            String comp_logo = "", comp_info = "";
                            while (db.r.next()) {
                                
                                comp_logo  = (String) db.r.getString(4);
                                comp_info = (String) db.r.getString(5);

                            }
%>
        

        <%@include file="header.jsp" %>
        <%@include file="header2.jsp" %>

        <div id="main_bg">
            <div id="main">
            <%@include file="leftbar.jsp" %>

                <div id="right">

                    <div id="content">

                        
                        <div id="cont_top"><h3>Welcome <%=email %></h3></div>

                        <div class="text">


                            <form action="" name="company home" method="post">
                            <table width="520" height="292" border="0" cellspacing="10">
                                            <tr>
                                                <td width="123" rowspan="2"><img src="../franchise2/upload/<%= comp_logo%>" alt="<%= comp_logo %>" width="90" height="72">
                                                </td>
                                                <td height="39" colspan="3">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td width="148" height="51"><font color="#990000">About Company</font></td>
                                                <td height="51">:-</td>
                                                <td height="51"><%= comp_info%></td>
                                            </tr>
                                            <tr>
                                                <td width="123">&nbsp;</td>
                                                <td align="left"><font color="#990000">Company Address</font></td>
                                                <td width="13" align="left">:-</td>
                                                <td width="178" align="left"><%= c_address%></td>
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
                                <p>&nbsp;  </p>
                                <p>&nbsp;  </p>
                                <p>&nbsp;  </p>
                                <p>&nbsp;  </p>
                                <p>&nbsp;  </p>
                               

                            </form>

                        </div>
                    </div>
                    <div id="cont_bot"></div>
                </div>
                <%@include file="companytask.jsp" %>
                <div style="clear:both"></div>
            </div>
        </div>

        <%@include file="footer.jsp" %>
<% } %>
    </body>
</html>
