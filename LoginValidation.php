<?php

require 'db.php';

if (isset($_POST)){
    $username = $_POST['username'];
    $password = $_POST['password'];
    $sql = "select * from user_info where username='$username' and password='$password'";
    $user = $db->query($sql)->fetch(PDO::FETCH_ASSOC);

    if ($user){
        session_start();

        $_SESSION["user_id"] = $user['user_id'];
        $_SESSION["platform"] = $user["platform"];
        $_SESSION["username"] = $user["username"];

        header("Location: HomePage.php");
    }
    else {
        header("Location: Login.php?loggedIn=0");
    }
}
else {
    header("Location: Login.php");
}

?>