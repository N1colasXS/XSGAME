<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NAV</title>
    <style>
        .banner {
            background: url('banner.jpg') no-repeat center center;
            background-size: cover;
            color:#000000;
            text-align: center;
            padding: 50px 0;
        }
        .game-card {
            margin-bottom: 30px;
        }
        .carousel-item {
            text-align: center;
            padding: 10px;
        }
        .carousel-item img {
            max-width: 100%;
            height: auto;
            margin-bottom: 10px;
        }
        .footer {
            background: #333;
            color: white;
            padding: 20px 0;
            text-align: center;
        }
    </style>
</head>
<body>
 			<div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">XSGAME</a>
            </div>
            <div class="collapse navbar-collapse" id="navbar">
                <ul class="nav navbar-nav">
                    <li><a href="XSGAME.jsp">主页</a></li>
                    <li><a href="Games.jsp">游戏商城</a></li>
                    <li><a href="Contact.jsp">反馈</a></li>
                    <li><a href="Register.jsp">注册登录</a></li>
                </ul>
                <form class="navbar-form navbar-right">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">查找</button>
                </form>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Cart.html"><span class="glyphicon glyphicon-shopping-cart"></span>购物车 <span id="cart-count" class="badge">0</span></a></li>
                </ul>
            </div>
</body>
</html>