<?php

include 'Nav.php';
include 'db.php';

if (isset($_SESSION['user_id'])){
    $sql = "select game_id from favorites where user_id={$_SESSION['user_id']}";
    $games = $db->query($sql)->fetchAll(PDO::FETCH_ASSOC);

?>
<link rel="stylesheet" href="NewsCSS.css">
<?php
    foreach($games as $game){
        $sql = "select * from game_news where game_id={$game['game_id']}";
        $game_news = $db->query($sql)->fetch(PDO::FETCH_ASSOC);

        if ($game_news){
        echo "
        <div class='news-container'>
            <img src='./assets/images/games/{$game_news['game_id']}.jpg'/>
            <div>
                <h3>{$game_news['headline']}</h3>
                <p>{$game_news['description']}</p>
            </div>
        </div>";
        }
    }
}
?>

</body>
</html>