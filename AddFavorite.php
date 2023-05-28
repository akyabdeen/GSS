<?php

require 'db.php';

$sql = "select * from favorites where user_id={$_GET['uid']} and game_id={$_GET['gid']}";
$stmt = $db->query($sql)->fetch(PDO::FETCH_ASSOC);

if (!$stmt){
    $sql = "insert into favorites values ({$_GET['uid']}, {$_GET['gid']})";
    $db->prepare($sql)->execute();
}

$sql = "select * from favorites where user_id={$_GET['uid']}";
$stmt = $db->query($sql)->fetchAll(PDO::FETCH_ASSOC);

$games = [$_GET['gid']];

foreach ($stmt as $game){
    array_push($games, $game['game_id']);
}

echo $games;

header("Location: HomePage.php");
?>