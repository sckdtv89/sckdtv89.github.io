<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <style>
            .content {
                max-width: 500px;
                margin: auto;
            }
        </style>
    </head>
    <body>
        <div class="head">
            <img width="100%" src="image/BHXH.png">
        </div>
        <div class="content">
            <h1>Đặng nhập tài khoản</h1>
            <form action="loginServlet" method="post">
                <table>
                    <tr>
                        <td>Tài khoản</td>
                        <td><input type="text" name="userName" required="required"></td>
                    </tr>
                    <tr>
                        <td>Mật khẩu</td>
                        <td><input type="password" name="passWord"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>${requestScope.messager}</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Đăng nhập"></td>
                    </tr>
                </table>
            </form>
        </div>

    </body>

</html>