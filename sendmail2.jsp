
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="mail.Mail" %>

<jsp:useBean id="mail" scope="session" class="mail.Mail">

<jsp:setProperty name="mail" property="to" param="to" />

<jsp:setProperty name="mail" property="from" value="franchisesolutions2013@gmail.com" />

<jsp:setProperty name="mail" property="smtpServ" value="smtp.gmail.com" />

<jsp:setProperty name="mail" property="subject" param="subject" />

<jsp:setProperty name="mail" property="message" param="message" />

<jsp:setProperty name="mail" property="filename" param="filename" />

</jsp:useBean>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Email</title>
    </head>
    <body>
      <%
String to = mail.getTo();
int result;

result = mail.sendMail();
//JOptionPane.showMessageDialog(null, result);
if(result == 0){
    out.println(" Mail Successfully Sent to "+to);
    JOptionPane.showMessageDialog(null," Mail Successfully Sent to "+to);
    response.sendRedirect("adminwelcome.jsp");
}
else{
    out.println(" Mail NOT Sent to "+to);
    JOptionPane.showMessageDialog(null," Mail NOT Sent to "+to);
    response.sendRedirect("emailpanel.jsp");
}

%>

    </body>
</html>
