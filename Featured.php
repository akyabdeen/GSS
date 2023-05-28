<?php

include 'Nav.php';
include 'db.php';

$sql = "select * from game_news";
$news = $db->query($sql)->fetchAll(PDO::FETCH_ASSOC);

?>
<link rel="stylesheet" href="FeaturedCSS.css">
    <?php

    foreach ($news as $game_news){
        echo   
            "<div class='news-container'>
                <img src='./assets/images/games/{$game_news['game_id']}.jpg'/>
                <div>
                    <h3>{$game_news['headline']}</h3>
                    <p>{$game_news['description']}</p>
                </div>
            </div>";
    }

    ?>
</body>
</html>