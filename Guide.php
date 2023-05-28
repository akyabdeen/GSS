<?php

include 'Nav.php';
include 'db.php';

if (isset($_SESSION['user_id'])){

    $sql = "select game_id from favorites where user_id={$_SESSION['user_id']}";
    $games = $db->query($sql)->fetchAll(PDO::FETCH_ASSOC);

    echo "<h2>You can get your favorite games at these places!<h2>"

?>
<link rel="stylesheet" href="GuideCSS.css">
<?php
    foreach($games as $game){
        $sql = "select * from store where game_id={$game['game_id']} order by store_name";
        $stores = $db->query($sql)->fetchAll(PDO::FETCH_ASSOC);

        if ($stores){
            echo "
            <div class='where-container'>";
            echo "<img src='./assets/images/games/{$game['game_id']}.jpg'/><span>
            &rarr;
            </span>
            <div class='stores-container'>";
            foreach ($stores as $store){
                    echo "<div class='store'>";
                    echo "<img src='./assets/images/stores/{$store['store_name']}.png' class='storeImage'/>";
                    $name = join(" ", explode("_", $store['store_name']));
                    echo "<p>$name</p>";
                    echo "</div>";
                }
            echo "</div>
            </div>";
        }
    }
}
?>

</body>
</html>


</body>
</html>