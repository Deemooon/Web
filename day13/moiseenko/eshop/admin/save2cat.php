<?php
    // подключение библиотек
    require "secure/session.inc.php";
    require "../inc/lib.inc.php";
    require "../inc/config.inc.php";
    $author = clearStr($_POST['author']);
    $title = clearStr($_POST['title']);
    $pubyear = clearInt($_POST['pubyear']);
    $price = clearInt($_POST['price']);

if(!addItemToCatalog($title, $author, $pubyear, $price)){
    echo 'Произошла ошибка при добавлении товара';
}else{
    header("Location: add2cat.php");
    exit;
}
?>