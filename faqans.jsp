

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
                    String fid = request.getParameter("textfield");
                    String ans = request.getParameter("txtanswer");

                    dbconnector db = new dbconnector();
                    db.connect();
                    db.executestatement("select faq_id from faq where faq_id='" + fid + "'");
                    if (db.r.next()) {
                        db.executepreparedstatement("update faq set ans='"+ans+"' where faq_id='"+fid+"'");
                        db.p.executeUpdate();
                        JOptionPane.showMessageDialog(null, "Successfully updated");
                        response.sendRedirect("faq.jsp");

                    } else {
                        JOptionPane.showMessageDialog(null, "Incorrect id.Please check it.");
                         response.sendRedirect("faq.jsp");
                    }
        %>
    </body>
</html>
