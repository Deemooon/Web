<?php

spl_autoload_register(function ($class) {
    include_once('classes/' . $class . '.class.php');
});

header("content-type:text/plain");


$user1 = new User("Uragan","Hokage","7c2ed4b2b9");
$user2 = new User("Border","Hokage","81b4fa24b7");
$user3 = new User("Borge","Hokage","8ac0182ec9");
$user4 = new SuperUser("Aomine","Hokage","228322","Гетто");
$user5 = new SuperUser("Matteo","Hokage","2222222","Тащер");

echo "Всего обычных userov: " . (User::$counter - SuperUser::$counter) .PHP_EOL;
echo "Всего root-userov: " . SuperUser::$counter .PHP_EOL;

$user1->showInfo();
$user2->showInfo();
$user3->showInfo();
$user4->showInfo();

print_r($user4->getInfo());

var_dump($user5->auth("DANILA","32222222"));





?>