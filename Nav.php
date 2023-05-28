<?php

session_start();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="Nav.css">
</head>
<body>
    <nav>
        <div class='company'>GSS</div>
        <div><a href="HomePage.php">Home</a></div>
        <div><a href="Featured.php">Featured</a></div>
        <div><a href="News.php">News</a></div>
        <div><a href="Contact.php">Contact</a></div>
        <div><a href="Guide.php">Guide</a></div>
        <?php 

            echo "<div><a href='Login.php'>";
            if (isset($_SESSION['username'])) echo $_SESSION['username'];
            else echo "Login";
            echo "</a></div>";
        ?>
    </nav>
