<?php
class User___{
    public $username;
    public $login;
    public $password;

    function __construct($username,$login,$password){  // Конструктор
        $this->username=$username;
        $this->login=$login;
        $this->password=$password;
        echo "Создан объект класса '".__CLASS__."'.
      username: '{$this->username}';
      login: '{$this->login}';
      password: '{$this->password}';
      <br>\n";
    }
    function __destruct(){  // Деструктор
        echo "Удалён объект класса '".__CLASS__."'. name: {$this->username};<br>\n";
    }
    function showInfo(){
        echo "username: '{$this->username}'; login: '{$this->login}'; password: '{$this->password}';<br>\n";
    }

}



$user01 = new User___("Uragan","Hokage",bin2hex(random_bytes(5)));
$user02 = new User___("Border","Hokage",bin2hex(random_bytes(5)));
$user03 = new User___("Borge","Hokage",bin2hex(random_bytes(5)));
unset($user01,$user02,$user03,$user04);
?>