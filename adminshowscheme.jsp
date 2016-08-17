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
         <script type="text/javascript"  language="javascript" src="js/jquery-1.9.1.min.js"></script>
          <link rel="stylesheet" type="text/css" media="all" href="jsDatePick_ltr.min.css" />
        <script type="text/javascript" src="jsDatePick.min.1.3.js"></script>
         <script type="text/javascript">
	window.onload = function(){
		new JsDatePick({
			useMode:2,
			target:"calendar",
			dateFormat:"%Y-%M-%d"});
	};
       
</script>
        
        <title>Schemes</title>
    </head>
    <body>
        <%@include file="adminheader.jsp" %>
        <%@include file="header2.jsp" %>

        <div id="main_bg">
            <div id="main">
                <%@include file="leftbar.jsp" %>

                <div id="right">
                    <div id="content"><div id="cont_top"><h3>Schemes</h3></div>

                          <!--Tab content starts -->
                          <center>
                          <div class="tab">
                            <input type="radio" id="tab-1" name="tab-group-1" checked>
                            <label for="tab-1"><strong>Scheme for Users</strong></label>
                             <%
                            // session.setAttribute("current1", 0);
                             int current;
                                    int j = 0;
                        %>
                            <div class="content">
                                 <FORM NAME="form1" ACTION="" METHOD="post">
                                     <%
                                                        current = (Integer) session.getAttribute("current1");

                                                        try {

                                                            dbconnector db = new dbconnector();
                                                            db.connect();
                                                            
                                                            db.executestatement("select * from scheme_master");
                                                            while(db.r.next()) {
                                                                j++;
                                                            }
                                                            session.setAttribute("current1", current);
                                                            db.executestatement("select * from scheme_master");

                                                            for (int i = 0; i < current; i++) {
                                                                db.r.next();
                                                            }

                                                            if (db.r.next()) {
                                                %>
                                                <table width="500" border="0" cellspacing="10">
                                                    <tr>
                                                        <td width="17">&nbsp;</td>
                                                        <td width="47">&nbsp;</td>
                                                        <td width="108" align="left"><font color="#990033">Scheme Name</font></td>
                                                        <td width="35" align="left"> :-</td>
                                                        <td colspan="3"><% out.println(db.r.getString(2));%></td>
                                                        <td width="48">&nbsp;</td>
                                                        <td width="19">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td align="left"><font color="#990033">Scheme Type</font>   </td>
                                                        <td align="left"> :-</td>
                                                        <td colspan="3"><% out.println(db.r.getString(3));%></td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" rowspan="2"><a href="decrement.jsp"><big><<</big></a></td>
                                                        <td align="left"><font color="#990033">Discount</font> </td>
                                                        <td align="left"> :-</td>
                                                        <td colspan="3"><% out.println(db.r.getString(4));%></td>
                                                        <td colspan="2" rowspan="2" align="right"><a href="increment.jsp"><big>>></big></a></td>
                                                    </tr>
                                                    <tr>
                                                        <td align="left"><font color="#990033">Condition</font> </td>
                                                        <td align="left"> :-</td>
                                                        <td colspan="3"><% out.println(db.r.getString(5));%></td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td align="left"><font color="#990033">Start Date</font></td>
                                                        <td align="left"> :-</td>
                                                        <td colspan="3"><% out.println(db.r.getString(6));%></td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td align="left"><font color="#990033">End Date</font></td>
                                                        <td align="left"> :-</td>
                                                        <td colspan="3"><% out.println(db.r.getString(7));%></td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td colspan="5" align="center">&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                        <td colspan="5" align="center">
                                                          <a href="admineditscheme.jsp?<%=db.r.getString(1)%>">Edit Scheme
                                                             <!-- <input type="image" name="imageField" id="imageField" src="images/edit_scheme.jpg"> -->
                                                      </a></td>
                                                        <td>&nbsp;</td>
                                                        <td>&nbsp;</td>
                                                    </tr>

                                                </table>

                                                <%
                                                                }
                                                            } catch (Exception e) {
                                                                JOptionPane.showMessageDialog(null, e);
                                                            }
                                                %> </FORM>
                            </div>

                          </div>
                          <div class="tab">
                            <input type="radio" id="tab-2" name="tab-group-1">
                            <label for="tab-2"><strong>Add New Schemes</strong></label>

                            <div class="content">
                            <FORM NAME="form1" ACTION="addscheme" METHOD="get">
                                            <table width="500" border="0" cellspacing="10">
<tr>
                                                        <td width="132"><font color="#990033">Scheme Id</font></td>
                                                        <td width="35" align="left"> :-</td>
                                                        <td width="287" colspan="2"><input type="text" name="schemeid" id="schemeid" ></td>
                                                    </tr>
                                                    <tr>
                                                        <td><font color="#990033">Scheme Name</font></td>
                                                        <td width="35" align="left"> :-</td>
                                                        <td colspan="2"><input type="text" name="schemename" id="schemename" ></td>
                                                    </tr>
                                                    <tr>
                                                        <td><font color="#990033">Scheme Type</font>   </td>
                                                        <td align="left"> :-</td>
                                                        <td colspan="2"><input type="text" name="schemetype" id="schemetype" ></td>
                                                    </tr>
                                                    <tr>
                                                        <td><font color="#990033">Discount</font> </td>
                                                        <td align="left"> :-</td>
                                                        <td><input type="text" name="discount" id="discount"></td>
                                                    </tr>
                                                    <tr>
                                                      <td><font color="#990033">Condition</font> </td>
                                                        <td align="left"> :-</td>
                                                        <td> <textarea name="condition" id="condition" cols="45" rows="5"></textarea></td>
                                                    </tr>
                                                    <tr>
                                                        <td><font color="#990033">Start Date</font></td>
                                                        <td align="left"> :-</td>
                                                        <td colspan="2"> <input type="text" id="calendar" name="calendar"  />
                                                         
                                                      </td>
                                                    </tr>
                                                    <tr>
                                                        <td><font color="#990033">End Date</font></td>
                                                        <td align="left"> :-</td>
                                                        <td colspan="2"> <input type="text" id="calendar" name="calendar1"/>
                                                          
                                                      </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="5">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="5" align="center"><input type="submit" value="Save Scheme"> </td>
                                                    </tr>

                                                </table>
</FORM>

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

        <%@include file="footer.jsp" %>

    </body>
</html>
