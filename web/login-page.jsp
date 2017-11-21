<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <link type="text/css" rel="stylesheet" href="css/style.css">
        <link type="text/css" rel="stylesheet" href="css/login-style.css">
        
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <h2>XYZ Driver Association</h2>
            </div>
        </div>
        <div id="container">
            <h3>Login</h3>
            <!-- we only link to jsp now for testing -->
            <form action="dashboard-user-page.jsp">
                <table>
                    <tbody>
                        <tr>
                            <td><label>Username: </label></td>
                            <td><input type="text" name="userName"/></td>
                        </tr>
                        <tr>
                            <td><label>Password: </label></td>
                            <td><input type="password" name="pswd"/></td>
                        </tr>
                        <tr>
                            <td><label></label></td>
                            <td><input type="submit" value="Login" class="btn"/></td>
                        </tr>
                    </tbody>
                </table>
            </form>
            <br>
            <!--note: we don't link to jsp, we link to controller class-->
            <a href="signup-page.jsp">Sign Up</a>
        </div>
    </body>
</html>
