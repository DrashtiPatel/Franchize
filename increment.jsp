<%-- 
    Document   : increment
    Created on : 18 Apr, 2013, 11:35:57 PM
    Author     : Twinkle
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="dbconnector.dbconnector"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Increment</title>
    </head>
    <body>
        <% 
        int current = (Integer) session.getAttribute("current1");
                    int j = 0;
                    
                    dbconnector db = new dbconnector();
                    db.connect();
                    db.executestatement("select * from scheme_master");
                    while (db.r.next()) {
                         j++;
                        
                    }
                   
                    if (current == (j - 1)) {
                        
                        current = 0;
                    } else {
                       
                        current++;
                         
                    }
                    session.setAttribute("current1", current);
                    response.sendRedirect("adminshowscheme.jsp");

        %>
    </body>
</html>

