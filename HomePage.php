<?php

include 'Nav.php';
include 'db.php';

$sql = "select * from game";
$games = $db->query($sql)->fetchAll(PDO::FETCH_ASSOC);

?>
<link rel="stylesheet" href="HomePageCSS.css">
<?php

echo "<div class='home'>";
$i = 0;
foreach($games as $game){
    $sql = "select * from game_platform where game_id={$game['game_id']}";
    $platforms = $db->query($sql)->fetchAll(PDO::FETCH_ASSOC);
    
    if ($i % 3 == 0){
        echo "<div class='row'>";
    }

    echo "
        <div class='game-container'>
            <img src='./assets/images/games/{$game['game_id']}.jpg' />
            <h3>{$game['game_name']}</h3>
            <p class='desc'>{$game['description']}</p>
            <p>";
    foreach ($platforms as $platform){
        if (isset($_SESSION['platform']) && $platform['platform'] == $_SESSION['platform']){
            echo "<span>{$platform['platform']}&nbsp&nbsp</span>";
        } else {
            echo $platform['platform']."&nbsp&nbsp";
        }
    }
    echo "<p>".(($game['price'] == 0) ? "Free" : "$".$game['price'])."</p>";
    if (isset($_SESSION['user_id'])){
        echo "</p>
                <a href='AddFavorite.php?uid={$_SESSION['user_id']}&gid={$game['game_id']}'><input type='button' id='{$game['game_id']}' value='&hearts;'></a>
            </div>";
    }
    else
        echo "</p>
            <input type='button' id='{$game['game_id']}' value='&hearts;'>
        </div>";

    if ($i % 3 == 0){
        echo "</div>";
    }

    $i++;
}

echo "</div>";

?>
<script src="./assets/jQuery/jquery-3.1.1.js">
    $("a").click(function(event){
        event.preventDefault();
        link = $(this).attr("href"); 
        console.log(link);
        $.get(link, function(data){
            console.log(data);
            for (i = 0; i < data.length; i++){
                console.log(data[i])
                $("#"+data[i]).css('color', 'blue')
            }
        })
    })
</script>
</body>
</html>