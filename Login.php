<?php

if (isset($_SESSION)){
    unset($_SESSION);
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
    <fieldset>
        <legend><h1>GSS Registration</h1></legend>
        <form action="LoginValidation.php" method="post">
            <label for = "username">Username:</label>
            <input type = "text" id = "username" name="username" required><br><br>
            <label for = "passwrod">Password:</label>
            <input type = "password" id = "pass" name="password" required><br><br>
            <Input type="submit" value="Login">
            <a href="Registration_Form.php">Don't have an account? Sign up!</a>
        </form>
        <?php
            if (isset($_GET['loggedIn'])){
                echo "<div class='alert alert-danger' role='alert'>Incorrect username of password!</div>";
            }
        ?>
    </fieldset>
</body>
</html>