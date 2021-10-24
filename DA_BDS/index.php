<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="shortcut icon" type="image/png" href="./assets/img/logo-dhktdn-150.png"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
    <link rel="stylesheet" href="./assets/css/main.css">
    <link rel="stylesheet" href="./assets/css/base.css">
    <link rel="stylesheet" href="./assets/fonts/fontawesome-free-5.15.3-web/css/all.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap&supset=vietnamese">
    <link rel="stylesheet" href="./assets/OwlCarousel2-2.3.4/dist/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="./assets/OwlCarousel2-2.3.4/dist/assets/owl.theme.default.min.css">
    <script  type="text/javascript" src = "./assets/js/slide.js"></script>
    <title>Bất động sản KT</title>
</head>
    <body>   
        <div class="container">
            <?php
                session_start();
                include("admincp/config/config.php");
                include('./assets/pages/header.php');
                include('./assets/pages/menu.php');
                include('./assets/pages/main.php');
                include('./assets/pages/footer.php');
            ?>
        </div>
    </body>
</html>