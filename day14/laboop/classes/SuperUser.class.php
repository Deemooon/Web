<?php




class SuperUser extends User implements ISuperUser, IAuthorizeUser {

    public $role;
    static $counter = 0;  

    public function __construct($username, $login, $password,$r){
        parent::__construct($username, $login, $password);
        $this->r = $r;
        SuperUser::$counter++;

    }    
    public function showInfo() {
        echo "Name - " . $this->username . " Login - " . $this->login . " Password - " . $this->password . " ROLE - " . $this->role .PHP_EOL;
    }

    public function getInfo(){
        return [
            "username" => $this->username,
            "login" => $this->login,
            "password" => $this->password,
            "role" => $this->r
        ];
    }
    public function auth($login, $password){
        return ($this->login == $login) && ($this->password == $password);
    }
}