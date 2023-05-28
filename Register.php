<?php

require 'db.php';

if (isset($_POST)){
    if (filter_var($_POST['password'], filter_var($string, FILTER_VALIDATE_REGEXP,
    array("options"=>array("regexp"=>""))))){
        header("Location: Registration_Form.php?passwordType=0");
    } else {
        $username = $_POST['username'];
        $password = $_POST['password'];
        $age = $_POST['age'];
        $gender = $_POST['gender'];
        $platform = $_POST['platform'];

        $sql = "insert into user_info(username, password, age, gender, platform) values ( ?, ?, ?, ?, ? )";
        $stmt = $db->prepare($sql);
        $stmt->execute([$username, $password, $age, $gender, $platform]);
        
        header("Location: Login.php");
    }
}
else {
    header("Location: Registration_Form.php");
}
?>