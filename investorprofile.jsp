
<%@page import="javax.swing.JOptionPane"%>
<%@page import="dbconnector.dbconnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Investor Profile</title>
    </head>
    <body>
        <%
                try
                        {

                    String email = (String) session.getAttribute("email");
                    JOptionPane.showMessageDialog(null, "email:"+email);
                    if (email == null) {
                        response.sendRedirect("index.jsp");
                    } else {
                        dbconnector db = new dbconnector();
                        db.connect();
                        db.executestatement("select * from fsee_details where email='" + email + "'");
                        String fname = "",sname="", address="" , country="" , city="" , state="" , pincode="" , mob="" , phone="" , fax="" , occupation = "";
                        while (db.r.next()) {
                            fname = (String) db.r.getString(2);
                            sname = (String) db.r.getString(3);
                            address = (String) db.r.getString(4);
                            country = (String) db.r.getString(5);
                            city = (String) db.r.getString(6);
                            state = (String) db.r.getString(7);
                            pincode = (String) db.r.getString(8);
                            mob = (String) db.r.getString(9);
                            phone = (String) db.r.getString(10);
                            fax = (String) db.r.getString(11);
                            occupation = (String) db.r.getString(12);
                        }

                        db.executestatement("select * from fsee_exp where email='" + email + "'");
                        String industry="", exp="", brand="", pref1="", pref2="", pref3="";
                        while(db.r.next())
                            {
                            industry = (String) db.r.getString(2);
                            exp = (String) db.r.getString(3);
                            brand = (String) db.r.getString(4);
                            pref1 = (String) db.r.getString(5);
                            pref2 = (String) db.r.getString(6);
                            pref3 = (String) db.r.getString(7);
                        }


                         db.executestatement("select * from fsee_invest where email='" + email + "'");
                        String capacity="", invest_time="", property_add="", area="", usage="";
                        while(db.r.next())
                            {
                            capacity = (String) db.r.getString(2);
                            invest_time = (String) db.r.getString(3);
                            property_add = (String) db.r.getString(4);
                            area = (String) db.r.getString(5);
                            usage = (String) db.r.getString(6);
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
                        <div id="cont_top"><h3>Your Contact and personal details</h3></div>

                        <div class="text">


                            <form action="inv_editprofile.jsp" name="" method="post">
                              <p>&nbsp;</p>
                                <table width="527" border="0" align="center">

                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td width="80"><font color="#990000">Email</font></td>
                                                <td width="17"><font color="#990000"> :- </font> </td>
                                                <td width="416"><%= email %></td>
                                            </tr>
                                            <tr>
                                                <td><font color="#990000">Firstname</font></td>
                                                <td><font color="#990000"> :- </font> </td>
                                                <td><%= fname %></td>
                                            </tr>
                                            <tr>
                                                <td><font color="#990000">Surname</font></td>
                                                <td><font color="#990000"> :- </font></td>
                                                <td><%= sname %></td>
                                            </tr>
                                            <tr>
                                                <td><font color="#990000">Address</font></td>
                                                <td><font color="#990000"> :- </font></td>
                                                <td><%= address %></td>
                                            </tr>
                                            <tr>
                                                <td><font color="#990000">Country</font></td>
                                                <td><font color="#990000"> :- </font></td>
                                                <td><%= country %></td>
                                            </tr>
                                            <tr>
                                                <td><font color="#990000">City</font></td>
                                                <td><font color="#990000"> :- </font></td>
                                                <td><%= city %></td>
                                            </tr>
                                            <tr>
                                                <td><font color="#990000">State</font></td>
                                                <td><font color="#990000"> :- </font></td>
                                                <td><%= state %></td>
                                            </tr>
                                            <tr>
                                                <td><font color="#990000">Pincode</font></td>
                                                <td><font color="#990000"> :- </font></td>
                                                <td><%= pincode %></td>
                                            </tr>
                                            <tr>
                                                <td><font color="#990000">Mobile No</font></td>
                                                <td><font color="#990000"> :- </font></td>
                                                <td><%= mob %></td>
                                            </tr>
                                            <tr>
                                                <td><font color="#990000">Phone No</font></td>
                                                <td><font color="#990000"> :- </font></td>
                                                <td><%= phone %></td>
                                            </tr>
                                            <tr>
                                                <td><font color="#990000">Fax No</font></td>
                                                <td><font color="#990000"> :- </font></td>
                                                <td><%= fax %></td>
                                            </tr>
                                            <tr>
                                                <td><font color="#990000">Occupation</font></td>
                                                <td><font color="#990000"> :- </font></td>
                                                <td><%= occupation %></td>
                                            </tr>

                                        </table>

                              <br />
                         <div id="cont_top">
                                <h3>Your Business Experience in Franchise</h3></div>




                                <table width="527" border="0" align="center">

                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td width="152"><font color="#990000">Business Industry Type</font></td>
                                                <td width="17"><font color="#990000"> :- </font> </td>
                                                <td width="344"><%= industry %></td>
                                            </tr>
                                            <tr>
                                                <td><font color="#990000">Business Experience</font></td>
                                                <td><font color="#990000"> :- </font> </td>
                                                <td><%= exp %></td>
                                            </tr>
                                </table>


                              <br />
                         <div id="cont_top">
                                <h3>Your Business Preference</h3></div>
                                <table width="527" border="0" align="center">

                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td width="106"><font color="#990000">Preferred Brand</font></td>
                                                <td width="13"><font color="#990000"> :- </font> </td>
                                                <td width="394"><%= brand %></td>
                                            </tr>
                                            <tr>
                                                <td><font color="#990000">Preference 1</font></td>
                                                <td><font color="#990000"> :- </font> </td>
                                                <td><%= pref1 %></td>
                                            </tr>
                                            <tr>
                                                <td><font color="#990000">Preference 2</font></td>
                                                <td><font color="#990000"> :- </font></td>
                                                <td><%= pref2 %></td>
                                            </tr>
                                  <tr>
                                                <td><font color="#990000">Preference 3</font></td>
                                                <td><font color="#990000"> :- </font></td>
                                                <td><%= pref3 %></td>
                                  </tr>
                                </table>


                              <br />
                         <div id="cont_top">
                                <h3>Your Investment Details</h3></div>



                                <table width="527" border="0" align="center">

                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td width="192"><font color="#990000">Investment Capacity</font></td>
                                                <td width="19"><font color="#990000"> :- </font> </td>
                                                <td width="302"><%= capacity %></td>
                                            </tr>
                                            <tr>
                                                <td><font color="#990000">Earliest Investment Possible in</font></td>
                                                <td><font color="#990000"> :- </font> </td>
                                                <td><%= invest_time %></td>
                                            </tr>
                                </table>


                              <br />
                         <div id="cont_top">
                                <h3>Your Property Information</h3></div>



                                <table width="527" border="0" align="center">

                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td width="118"><font color="#990000">Property Address</font></td>
                                                <td width="16"><font color="#990000"> :- </font> </td>
                                                <td width="379"><%= property_add %></td>
                                            </tr>
                                            <tr>
                                                <td><font color="#990000">Total Floor Area(in sq. ft.)</font></td>
                                                <td><font color="#990000"> :- </font> </td>
                                                <td><%= area %></td>
                                            </tr>
                                            <tr>
                                                <td><font color="#990000">Best Usage</font></td>
                                                <td><font color="#990000"> :- </font></td>
                                                <td><%= usage %></td>
                                            </tr>
                                  
                                  <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td><font color="#990000"></font></td>
                                                <td colspan="3" align="center"><input type="submit" name="edit" id="edit" value="Edit Profile"><font color="#990000"></font></td>
                                                <td></td>
                                  </tr>

                                            
                                </table>
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
        <% }
                    }
        catch(Exception e)
        {
    JOptionPane.showMessageDialog(null, e);
    System.out.println(e);
            }
        %>
    </body>
</html>
