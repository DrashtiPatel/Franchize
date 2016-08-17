
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.struts.upload.FormFile"%>
<%@page import="com.myapp.struts.FileUploadForm"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="dbconnector.dbconnector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Company Profile</title>
    </head>
    <body>
        <%
                    try {

                        String email = (String) session.getAttribute("email");
                        JOptionPane.showMessageDialog(null, "email:" + email);
                        if (email == null) {
                            response.sendRedirect("index.jsp");
                        } else {
                            
                            dbconnector db = new dbconnector();
                            db.connect();
                            db.executestatement("select * from fsor_details where email='" + email + "'");
                            String c_name="" , c_address="",country="",state="",city="",pincode="",mob="",phone="",fax="",website="",sec_email="",industry="",total_outlets="",comp_outlets="",fsee_outlets="",ceo_name="";
                            while (db.r.next()) {
                                 c_name = (String) db.r.getString(2);
                                 c_address = (String) db.r.getString(3);
                                 country = (String) db.r.getString(4);
                                 state = (String) db.r.getString(5);
                                 city = (String) db.r.getString(6);
                                 pincode = (String) db.r.getString(7);
                                 mob = (String) db.r.getString(8);
                                 phone = (String) db.r.getString(9);
                                 fax = (String) db.r.getString(10);
                                 website = (String) db.r.getString(11);
                                 sec_email = (String) db.r.getString(12);
                                 industry = (String) db.r.getString(13);
                                 total_outlets = (String) db.r.getString(14);
                                 comp_outlets = (String) db.r.getString(15);
                                 fsee_outlets = (String) db.r.getString(16);
                                 ceo_name = (String) db.r.getString(17);

                            }

                            db.executestatement("select * from fsor_req where email='" + email + "'");
                            String area = "", budget = "",expansion="";
                            while (db.r.next()) {
                                area = (String) db.r.getString(2);
                                budget = (String) db.r.getString(3);
                                expansion = (String) db.r.getString(4);
                                
                            }


                            db.executestatement("select * from fsor_training where email='" + email + "'");
                            String t_provided = "", t_venue = "", comp_logo = "", comp_info = "";
                            while (db.r.next()) {
                                t_provided = (String) db.r.getString(2);
                                t_venue = (String) db.r.getString(3);
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
                        <div id="cont_top"><h3>Your Business Details</h3></div>

                        <div class="text">


                            <form action="comp_editprofile.jsp" name="" method="post">
                                <p>&nbsp;</p>
                                <table width="527" border="0" align="center">

                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td width="167"><font color="#990000">Email</font></td>
                                        <td width="21"><font color="#990000"> :- </font> </td>
                                        <td width="325"><%= email%></td>
                                    </tr>
                                    
                                    <tr>
                                        <td width="167"><font color="#990000">Company Logo</font></td>
                                        <td width="21"><font color="#990000"> :- </font> </td>
                                        <td width="325"><img src="../franchise2/upload/<%= comp_logo %>" width="90" height="68" alt="<%= comp_logo %>"></td>
                                    </tr>
                                    <tr>
                                        <td><font color="#990000">Company Name</font></td>
                                        <td><font color="#990000"> :- </font> </td>
                                        <td><%= c_name%></td>
                                    </tr>
                                    <tr>
                                        <td><font color="#990000">Company Address</font></td>
                                        <td><font color="#990000"> :- </font></td>
                                        <td><%= c_address%></td>
                                    </tr>
                                    <tr>
                                        <td><font color="#990000">Country</font></td>
                                        <td><font color="#990000"> :- </font></td>
                                        <td><%= country%></td>
                                    </tr>
                                    <tr>
                                        <td><font color="#990000">State</font></td>
                                        <td><font color="#990000"> :- </font></td>
                                        <td><%= state%></td>
                                    </tr>
                                    <tr>
                                        <td><font color="#990000">City</font></td>
                                        <td><font color="#990000"> :- </font></td>
                                        <td><%= city%></td>
                                    </tr>
                                    <tr>
                                        <td><font color="#990000">Pincode</font></td>
                                        <td><font color="#990000"> :- </font></td>
                                        <td><%= pincode%></td>
                                    </tr>
                                    <tr>
                                        <td><font color="#990000">Mobile No</font></td>
                                        <td><font color="#990000"> :- </font></td>
                                        <td><%= mob%></td>
                                    </tr>
                                    <tr>
                                        <td><font color="#990000">Phone Np</font></td>
                                        <td><font color="#990000"> :- </font></td>
                                        <td><%= phone%></td>
                                    </tr>
                                    <tr>
                                        <td><font color="#990000">Fax</font></td>
                                        <td><font color="#990000"> :- </font></td>
                                        <td><%= fax%></td>
                                    </tr>
                                    <tr>
                                        <td><font color="#990000">Website</font></td>
                                        <td><font color="#990000"> :- </font></td>
                                        <td><%= website%></td>
                                    </tr>
                                    <tr>
                                        <td><font color="#990000">Secondary Email</font></td>
                                        <td><font color="#990000"> :- </font></td>
                                        <td><%= sec_email%></td>
                                    </tr>
                                    
                                    <tr>
                                        <td><font color="#990000">Industry Type</font></td>
                                        <td><font color="#990000"> :- </font></td>
                                        <td><%= industry%></td>
                                    </tr>
                                    
                                    <tr>
                                        <td><font color="#990000">Total Outlets</font></td>
                                        <td><font color="#990000"> :- </font></td>
                                        <td><%= total_outlets%></td>
                                    </tr>
                                    
                                    <tr>
                                        <td><font color="#990000">Company owned Outlets</font></td>
                                        <td><font color="#990000"> :- </font></td>
                                        <td><%= comp_outlets%></td>
                                    </tr>
                                    
                                    <tr>
                                        <td><font color="#990000">Franchise owned outlets</font></td>
                                        <td><font color="#990000"> :- </font></td>
                                        <td><%= fsee_outlets %></td>
                                    </tr>
                                    
                                    <tr>
                                        <td><font color="#990000">CEO Name</font></td>
                                        <td><font color="#990000"> :- </font></td>
                                        <td><%= ceo_name%></td>
                                    </tr>

                                </table>

                                <br />
                                <div id="cont_top">
                                    <h3>Your Requirement Details</h3></div>




                                <table width="527" border="0" align="center">

                                    <tr>
                                        <td width="222">&nbsp;</td>
                                        <td width="19">&nbsp;</td>
                                        <td width="272">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td><font color="#990000">Minimum Area Required (in sq. ft.)</font></td>
                                        <td><font color="#990000"> :- </font> </td>
                                        <td><%= area%></td>
                                    </tr>
                                    <tr>
                                        <td><font color="#990000">Budget Required(in Rs)</font></td>
                                        <td><font color="#990000"> :- </font> </td>
                                        <td><%= budget%></td>
                                    </tr>
                                    
                                                                    </table>


                                <br />
                                <div id="cont_top">
                                    <h3>Your Training Details</h3></div>
                                <table width="527" border="0" align="center">

                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td width="153"><font color="#990000">Training Provided ?</font></td>
                                        <td width="17"><font color="#990000"> :- </font> </td>
                                        <td width="343"><%= t_provided%></td>
                                    </tr>
                                    <tr>
                                        <td><font color="#990000">Training Venue</font></td>
                                        <td><font color="#990000"> :- </font> </td>
                                        <td><%= t_venue%></td>
                                    </tr>
                                    <tr>
                                        <td><font color="#990000">About your company</font></td>
                                        <td><font color="#990000"> :- </font></td>
                                        <td><%= comp_info%></td>
                                    </tr>
                                    
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    
                                    <tr>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td><input type="submit" name="edit" id="edit" value="Edit Profile"></td>
                                    </tr>
                                    
                                </table>


                                <br />
                               
                                <p>&nbsp;</p>

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
        <% }
                    } catch (Exception e) {
                        JOptionPane.showMessageDialog(null, e);
                        System.out.println(e);
                    }
        %>
    </body>
</html>
