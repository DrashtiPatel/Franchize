<%--
    Document   : feedbackstore
    Created on : Jan 24, 2012, 2:52:29 PM
    Author     : Dipak
--%>

<%@page import="dbconnector.dbconnector"%>
<%@page import="javax.swing.JOptionPane"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

                    try {

                        dbconnector db = new dbconnector();
                        db.connect();
                        java.util.Date d = new java.util.Date();
                        java.sql.Date date = new java.sql.Date(d.getTime());
                        db.executepreparedstatement("insert into faq (name,question,date,ans,email) values (?,?,?,?,?)");
                       
                        db.p.setString(1, request.getParameter("name"));
                        db.p.setString(2, request.getParameter("txtque"));
                        db.p.setDate(3, date);
                        db.p.setString(4, request.getParameter("ans"));
                        db.p.setString(5, request.getParameter("email"));
                        db.p.executeUpdate();

                        response.sendRedirect("faqfromclientside.jsp");
                    } catch (Exception ex) {
                        JOptionPane.showMessageDialog(null, ex);
                    }
        %>
    </body>
</html>
