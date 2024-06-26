<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>XSGAME Login Register</title>
    <link href="bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            padding-top: 50px;
            background-color: #f5f5f5;
        }
        .navbar-brand {
            color: #fff !important;
        }
        .form-container {
            margin-top: 50px;
        }
        .form-header {
            margin-bottom: 30px;
        }
        .form-box {
            padding: 30px;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <%@include file="Nav.jsp"%>
        </div>
    </nav>
    
    <!-- Form Container -->
    <div class="container form-container">
        <div class="row">
            <!-- Login Form -->
            <div class="col-md-6">
                <div class="form-box">
                    <h2 class="form-header text-center">登录</h2>
                    <form>
                        <div class="form-group">
                            <label for="loginEmail">邮箱地址</label>
                            <input type="email" class="form-control" id="loginEmail" placeholder="Enter email">
                        </div>
                        <div class="form-group">
                            <label for="loginPassword">密码</label>
                            <input type="password" class="form-control" id="loginPassword" placeholder="Password">
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">登录</button>
                    </form>
                </div>
            </div>

            <!-- Register Form -->
            <div class="col-md-6">
                <div class="form-box">
                    <h2 class="form-header text-center">注册</h2>
                    <span style="color: #f00;">${info }</span>
                    <form class="form-horizontal"action="register"method="post">
                        <div class="form-group">
                            <label for="registerEmail">邮箱地址</label>
                            <input type="email" name="userName" class="form-control" id="registerEmail" placeholder="Enter email">
                        </div>
                        <div class="form-group">
                            <label for="registerPassword">密码</label>
                            <input type="password" name="password" class="form-control" id="registerPassword" placeholder="Password">
                        </div>
                        <div class="form-group">
                            <label for="confirmPassword">确认密码</label>
                            <input type="password" name="password" class="form-control" id="confirmPassword" placeholder="Confirm Password">
                        </div>
                        <button type="submit" class="btn btn-success btn-block">注册</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="bootstrap-3.3.5-dist/js/jquery-1.11.3.js"></script>
    <script src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
</body>
</html>
