<?php

require 'db.php';

$name = $_POST['name'];
$email = $_POST['email'];
$subject = $_POST['subject'];
$message = $_POST['message'];

$sql = "insert into messages values ('$name', '$email', '$subject', '$message')";
$db->prepare($sql)->execute();

header("Location: Contact.php");
?>