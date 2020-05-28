<?php

if (empty($_GET['id'])){
    $errMsg = "ID не был введён!";
    echo $errMsg;
} else {
    $entry = $news->showNews($_GET['id']);

    if (!$entry) {
        echo "Такой записи не существует";
        echo "<hr> <a href='{$_SERVER['PHP_SELF']}'>Назад</a>";
    } else {
        $dt = date("d-m-Y H:m:i", $entry['datetime']);
        echo "<hr> <a href='{$_SERVER['PHP_SELF']}'>Назад</a> <br>";
        echo "number title: {$entry['id']} <br>";
        echo "title: {$entry['title']} <br>";
        echo "category: {$entry['category']} <br>";
        echo "description: {$entry['description']} <br>";
        echo "source: {$entry['source']} <br>";
        echo "datetime: {$dt} <br>";
    }
}