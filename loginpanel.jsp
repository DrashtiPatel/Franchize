<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style.css" />

<div id="right1">
    <div class="cat"><h3>Login</h3></div>
    <form action="login_action" method="get" >
        <table>
            <tr>
                <td>
                    <p class="data"> <label>Login:</label></p>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="text" name="email" id="email"/>
                </td>
            </tr>
            <tr>
                <td>
                    <p class="data"> <label>Password:</label></p>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="password" name="password" id="password"/>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="Login" id="login" name="login"/>
                </td>
            </tr>
            <tr>
                <td>
                    <a href="forgotpassword.jsp">Forgot Password?</a>
                </td>
            </tr>
        </table>
    </form>
</div>