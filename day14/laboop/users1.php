<?php
class User_dd{
    public $username;
    public $login;
    public $password;

    function showInfo(){
        echo "username: '{$this->username}'; login: '{$this->login}'; password: '{$this->password}';<br>\n";
    }
}

$user01 = new User_dd;
$user01 -> username = "Uragan";
$user01 -> login = "Hokage";
$user01 -> password =  "7c2ed4b2b9" ;

$user02 = new User_dd;
$user02 -> username = "Border";
$user02 -> login = "Hokage";
$user02 -> password = "81b4fa24b7";

$user03 = new User_dd;
$user03 -> username = "Borge";
$user03 -> login = "Hokage";
$user03 -> password = "8ac0182ec9";

$content.=$user01 -> showInfo();
$content.=$user02 -> showInfo();
$content.=$user03 -> showInfo();