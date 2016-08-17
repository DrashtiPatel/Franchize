<%@page import="dbconnector.dbconnector"%>
<%@page import="java.sql.*"%>

<%
                                    dbconnector db = new dbconnector();
                                    db.connect();
                                    //status_c.processRequest(request, response);
                                    db.executestatement("select comp_logo from fsor_training ");
                                   // Statement status_s = status_c.con.createStatement();
                                    //ResultSet status_r = status_s.executeQuery("select comp_logo from fsor_training ");
                                    if (db.r.next()) {
                        %>
                        <img src="<%= application.getContextPath()%>/upload/<%= db.r.getString(4) %>" width="50" height="50" />
                        <%}
                        %>