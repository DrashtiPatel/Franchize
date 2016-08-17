

<%@page import="dbconnector.dbconnector"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Find Franchise</title>
        
    </head>
    <body>
        <%@include file="header.jsp" %>
        <%@include file="header2.jsp" %>

        <div id="main_bg">
            <div id="main">
                <%@include file="leftbar.jsp" %>

                <div id="right">

                    <div id="content"><div id="cont_top">
                            <h3>Your search results</h3></div>

                        <div class="text">

<%
				String category=request.getParameter("category");
                                String investment=request.getParameter("investment");
                                String location=request.getParameter("location");

                                try{
                                if(category.equals("--category--") && investment.equals("--Investment--") && location.equals("--Location--")  ){
                                JOptionPane.showMessageDialog(null, "Please Select value ");
                                response.sendRedirect("index.jsp");
                                    }
                                else{
                                if(investment.equals("--Investment--") && location.equals("--Location--")){
                                dbconnector db = new dbconnector();
                                db.connect();


                                db.executestatement("select c_name from fsor_details where industry='"+category+"'");
                                String c_name= "";
                                JOptionPane.showMessageDialog(null, "Category = "+category);
                                while (db.r.next()) {
                                    c_name = db.r.getString(1);
                                    JOptionPane.showMessageDialog(null, "c_name = "+c_name);

                    %>
                            <form action="" name="" method="post">

                                
                                <table> <tr>
                                        <a href="<%= c_name%>.jsp">  <%= c_name %> </a>
                                    </tr>
                        
                            </table>


                           
                        
                                
                                
                                <% }
                                }

                                
                                if(investment.equals("--Investment--")){

                                    dbconnector db = new dbconnector();
                                db.connect();


                                db.executestatement("select c_name from fsor_details where industry='"+category+"' && state='"+location+"'");
                                String c_name= "";
                                JOptionPane.showMessageDialog(null, "Category = "+category);
                                JOptionPane.showMessageDialog(null, "Location = "+location);
                                while (db.r.next()) {
                                    c_name = db.r.getString(1);
                                    JOptionPane.showMessageDialog(null, "c_name = "+c_name);
                                    
                                    
                                %>

                                <table> <tr>
                                        <a href="<%= c_name%>.jsp">  <%= c_name %> </a>
                                    </tr>

                            </table>

                                <%
                                }
                                }
                                }
                                }
                                catch(Exception e)
                                        {
                                    JOptionPane.showMessageDialog(null, e);
                                    }
                                        %>


                                        <p> &nbsp; </p>
                                        <p> &nbsp; </p>
                                        <p> &nbsp; </p>
                                        <p> &nbsp; </p>
                                        <p> &nbsp; </p>
                                        <p> &nbsp; </p>
                                        <p> &nbsp; </p>
                                        <p> &nbsp; </p>
                                        <p> &nbsp; </p>
                                        <p> &nbsp; </p>

                            </form>

                        </div>
                    </div>
                    <div id="cont_bot"></div>
                </div>
                <%@include file="loginpanel.jsp" %>

                <div style="clear:both"></div>
            </div>
        </div>
        <!-- footer -->
        <%@include file="footer.jsp" %>
        <!-- end of footer -->

        
    </body>
</html>
