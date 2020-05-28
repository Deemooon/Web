<?php

class User extends UserAbstract {
    public $username;
    public $login;
    public $password;
    static $counter = 0;

    public function __construct($username, $login, $password){

        $this->username = $username;
        $this->login = $login;
        $this->password = $password;
        User::$counter++;
    }

    public function __destruct(){

        echo "User: " . $this->username . " DELETE" . PHP_EOL;
    }

    public function showInfo() {
        echo "Name - " . $this->username . " Login - " . $this->login . " pass - " . $this->password .PHP_EOL;
    }
}