<?php
require_once('./NewsDB.class.php');
if(!is_array($items = $news->getNews())){
    $errMsg = "Ошибка при выводе новостей";
} else {
    echo '<p style="text-align: center">Всего новостей: '.count($items).'</p>';
    foreach ($items as $news) {
        $dt = date("d-m-Y H:m:i", $news['datetime']);
        echo "<p><hr> <a style='display: block;text-align: center' href='?id={$news['id']}'>number title: {$news['id']}</a> <br><hr></p>";
        echo "<p style='text-align: center;'>title: {$news['title']} <br><hr></p>";
        echo "<p style='text-align: center;'>category: {$news['category']} <br><hr></p>";
        echo "<p style='text-align: center;'>description: {$news['description']} <br><hr></p>";
        echo "<p style='text-align: center;'>source: {$news['source']} <br><hr></p>";
        echo "<p style='text-align: center;'>datetime: {$dt} <br><hr></p> ";
        echo "<button style='position: relative; left: 50%;transform: translate(-50%, 0);'>Удалить<br></button>";
    }
}


?>