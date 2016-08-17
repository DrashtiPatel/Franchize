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
        <title>Schemes</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <%@include file="header2.jsp" %>

        <div id="main_bg">
            <div id="main">
                <%@include file="leftbar.jsp" %>

                <div id="right">
                    <div id="content"><div id="cont_top"><h3>Scheme Page</h3></div>
                        <div class="text">
                          <!--Tab content starts -->
                           <div class="tab">
                            <input type="radio" id="tab-1" name="tab-group-1" checked>
                            <label for="tab-1"><strong>Schemes for Users</strong></label>

                            <div class="content">
                                 <% 
                                 int current;
                                    int j = 0;
                        %>
                         <FORM NAME="form1" ACTION="editscheme" METHOD="post">
                                        <%


                                                        try {
                                                            
                                                            dbconnector db = new dbconnector();
                                                            db.connect();
                                                            String id=request.getQueryString();
                                                            session.setAttribute("scheme_id",id);
                                                            
                                                            db.executestatement("select * from scheme_master where scheme_id='"+id+"'");


                                                         //   session.setAttribute("scheme_id",id);
                                                            while(db.r.next()) {

                                                %>

                                                <table width="500" border="0" cellspacing="10">
                                                    <tr>
                                                        <td width="119"><font color="#990033">Scheme Name</font></td>
                                                        <td width="10" align="left"> :-</td>
                                                        <td width="325" colspan="2"><input type="text" name="schemename" id="schemename" value="<% out.println(db.r.getString(2));%>"></td>
                                                    </tr>
                                                    <tr>
                                                        <td><font color="#990033">Scheme Type</font>   </td>
                                                        <td align="left"> :-</td>
                                                        <td colspan="2"><input type="text" name="schemetype" id="schemetype" value="<% out.println(db.r.getString(3));%>"></td>
                                                    </tr>
                                                    <tr>
                                                        <td><font color="#990033">Discount</font> </td>
                                                        <td align="left"> :-</td>
                                                        <td><input type="text" name="discount" id="discount" value="<% out.println(db.r.getString(4));%>"></td>
                                                    </tr>
                                                    <tr>
                                                      <td><font color="#990033">Condition</font> </td>
                                                        <td align="left"> :-</td>
                                                        <td><label for="condition"></label>
                                                        <textarea name="condition" id="condition" cols="45" rows="5"><% out.println(db.r.getString(5));%></textarea></td>
                                                    </tr>
                                                    <tr>
                                                        <td><font color="#990033">Start Date</font></td>
                                                        <td align="left"> :-</td>
                                                        <td colspan="2"><input type="text" id="stdate" name="stdate" value="<% out.println(db.r.getString(6));%> "/>
                                                          <button id="trigger">...</button>
                                                          <script type="text/javascript">//<![CDATA[
      Zapatec.Calendar.setup({
        firstDay          : 1,
        weekNumbers       : false,
        showOthers        : true,
        electric          : false,
        inputField        : "stdate",
        button            : "trigger",
        ifFormat          : "%d/%m/%Y",
        daFormat          : "%d/%m/%y"
      });
    //]]></script>

                                                      </td>
                                                    </tr>
                                                    <tr>
                                                        <td><font color="#990033">End Date</font></td>
                                                        <td align="left"> :-</td>
                                                        <td colspan="2"><input type="text" id="enddate" name="enddate" value="<% out.println(db.r.getString(7));%> "/>
                                                          <button id="trigger1">...</button>
                                                          <script type="text/javascript">//<![CDATA[
      Zapatec.Calendar.setup({
        firstDay          : 1,
        weekNumbers       : false,
        showOthers        : true,
        electric          : false,
        inputField        : "enddate",
        button            : "trigger1",
        ifFormat          : "%d/%m/%Y",
        daFormat          : "%d/%m/%y"
      });
    //]]></script>
                                                      </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="5">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="5" align="center"><input type="submit" value="Save Scheme"> </td>
                                                    </tr>

                                                </table>

                                          <%
                                                                }
                                                            } catch (Exception ex) {
                                                                JOptionPane.showMessageDialog(null, ex);
                                                            }
                                                %> </FORM>
                            </div>

                          </div>
                          <div class="tab">
                            <input type="radio" id="tab-2" name="tab-group-1">
                            <label for="tab-2"><strong>Add New Scheme</strong></label>


                            <div class="content">

                            </div>

                          </div>

                          <!--Tab content ends -->
                        </div>
                    </div>

                </div>

                <%@include file="admintask.jsp" %>
                <div style="clear:both"></div>
            </div>
        </div>

        <%@include file="adminfooter.jsp" %>

    </body>
</html>
