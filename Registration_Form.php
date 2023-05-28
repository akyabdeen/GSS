<!Doctype html>
<html>
    <head>
        <title>GSS Registration</title>
    </head>

    <Body> 
    <fieldset>
        <legend><h1>GSS Registration</h1></legend>
        <form action = "Register.php" method = "post">
            <label for = "username">Username:</label>
            <input type = "text" id = "username" name="username" required><br><br>
            <label for = "passwrod">Password:</label>
            <input type = "password" id = "pass" name="password" required><br><br>
            <label for = "age">Age:</label>
            <input type = "number" id="age" name="age" min="7" max="100" required><br><br>
            <label for = "gender">Gender:</label>
            <input type = "radio" id = "male" name="gender" checked="checked" value="m">
            <label for="male">Male</label>
            <input type="radio" id="Female" name="gender" value="f">
            <label for="female">Female</label><br><br>
            <label for="platform">Platform:</label>
            <input type="radio" id="Playstation" name="platform" checked="checked" value="PS">
            <label for="pc">Playstation</label>
            <input type="radio" id="PC" name="platform" value="PC">
            <label for="pc">PC</label>
            <input type="radio" id="Xbox" name="platform" value="Xbox">
            <label for="Xbox">Xbox</label>
            <input type="radio" id="Switch" name="platform" value="Switch">
            <label for="Switch">Nintendo Switch</label><br><br>
            <Input type="submit" value="Register">
            <a href="Login.php">Go back to logging in!</a>
        </form>
        <?php
            if (isset($_GET)){
                echo "Password should contain at least 8 characters, 1 letter and 1 number";
            }
        ?>
    </fieldset>
    </Body>
</html>