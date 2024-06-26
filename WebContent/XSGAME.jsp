<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="https://tse4-mm.cn.bing.net/th/id/OIP-C.j3o6LUe0CO9bkDfS5c0r_wHaHa?w=178&h=180&c=7&r=0&o=5&dpr=1.4&pid=1.7" type="image/x-icon">
    <title>XSGAME</title>
    <link href="bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" rel="stylesheet">
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <%@include file="Nav.jsp"%>
        </div>
    </nav>

    <!-- banner -->
    <div class="banner">
        <div class="container">
            <h1>Welcome to XSGAME</h1>
            <p>Create by XSSJX</p>
        </div>
    </div>

    <!-- Hot Games Carousel -->
    <div class="container carousel-section">
        <h2 class="text-center">热门游戏</h2>
        <div class="owl-carousel owl-theme">
            <div class="item carousel-item">
                <img src="https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1245620/header_alt_assets_2_schinese.jpg?t=1718923242" alt="Game 1">
                <h3>原神</h3>
                <p>米哈游开放世界冒险RPG</p>
                <p>
                    <a href="https://www.yuanshen.com/#/" class="btn btn-primary" role="button">查看更多</a>
                    <button class="btn btn-success add-to-cart" data-id="1" data-name="原神" data-price="29.99">加入购物车</button>
                </p>
            </div>
            <div class="item carousel-item">
                <img src="https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1687950/header.jpg?t=1711014966" alt="Game 2">
                <h3>原神</h3>
                <p>米哈游开放世界冒险RPG</p>
                <p>
                    <a href="https://www.yuanshen.com/#/" class="btn btn-primary" role="button">查看更多</a>
                    <button class="btn btn-success add-to-cart" data-id="2" data-name="原神" data-price="29.99">加入购物车</button>
                </p>
            </div>
            <div class="item carousel-item">
                <img src="https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/2358720/header_schinese.jpg?t=1718690162" alt="Game 3">
                <h3>原神</h3>
                <p>米哈游开放世界冒险RPG</p>
                <p>
                    <a href="https://www.yuanshen.com/#/" class="btn btn-primary" role="button">查看更多</a>
                    <button class="btn btn-success add-to-cart" data-id="3" data-name="原神" data-price="29.99">加入购物车</button>
                </p>
            </div>
            <div class="item carousel-item">
                <img src="https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/730/header_schinese.jpg?t=1716504320" alt="Game 4">
                <h3>原神</h3>
                <p>米哈游开放世界冒险RPG</p>
                <p>
                    <a href="https://www.yuanshen.com/#/" class="btn btn-primary" role="button">查看更多</a>
                    <button class="btn btn-success add-to-cart" data-id="4" data-name="原神" data-price="29.99">加入购物车</button>
                </p>
            </div>
            <div class="item carousel-item">
                <img src="https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1144400/header_schinese.jpg?t=1686806109" alt="Game 5">
                <h3>原神</h3>
                <p>米哈游开放世界冒险RPG</p>
                <p>
                    <a href="https://www.yuanshen.com/#/" class="btn btn-primary" role="button">查看更多</a>
                    <button class="btn btn-success add-to-cart" data-id="5" data-name="原神" data-price="29.99">加入购物车</button>
                </p>
            </div>
        </div>
    </div>
     <!-- Footer -->
    <div class="footer">
        <div class="container">
            <p>&copy; 2024 XSGAME. All Rights Reserved.</p>
        </div>
    </div>

    <script src="bootstrap-3.3.5-dist/js/jquery-1.11.3.js"></script>
    <script src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <script>
        $(document).ready(function(){
            $('.owl-carousel').owlCarousel({
                loop: true,
                margin: 10,
                nav: true,
                autoplay: true,
                autoplayTimeout: 1000, // 1 seconds
                autoplayHoverPause: true,
                responsive: {
                    0: {
                        items: 1
                    },
                    600: {
                        items: 3
                    },
                    1000: {
                        items: 5
                    }
                }
            });

            // Add to Cart Functionality
            let cart = JSON.parse(localStorage.getItem('cart')) || [];

            function updateCartCount() {
                $('#cart-count').text(cart.length);
            }

            $('.add-to-cart').click(function() {
                const id = $(this).data('id');
                const name = $(this).data('name');
                const price = $(this).data('price');

                const item = cart.find(item => item.id === id);
                if (item) {
                    item.quantity += 1;
                } else {
                    cart.push({ id, name, price, quantity: 1 });
                }

                localStorage.setItem('cart', JSON.stringify(cart));
                updateCartCount();
                alert(name + ' 已添加到购物车');
            });

            updateCartCount();
        });
    </script>
</body>
</html>
