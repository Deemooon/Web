<?php
define('DB_HOST', 'moiseenko');
define('DB_LOGIN', 'root');
define('DB_PASSWORD', 'root');
define('DB_NAME', 'gbook');

$link = mysqli_connect(DB_HOST, DB_LOGIN, DB_PASSWORD, DB_NAME) or die('ERROR');
mysqli_select_db($link, "gbook");
/* Сохранение записи в БД */
if($_SERVER['REQUEST_METHOD'] == 'POST'){
    echo 'Форма отправлена' . '<br>';
    $name = strip_tags($_POST["name"]);
    $email = strip_tags($_POST["email"]);
    $msg = strip_tags($_POST["msg"]);
    echo '<br>';
    $res = "INSERT INTO `msgs` (name, email, msg) VALUES ('$name', '$email', '$msg')";
    mysqli_query($link, $res);
    /* Сохранение записи в БД */
}

/* Удаление записи из БД */
elseif(isset($_GET['del']))
{
    $del= $_GET['del'];
    $sql_3 = "DELETE FROM msgs WHERE id = $del";
    mysqli_query($link, $sql_3) or die("Ошибка " . mysqli_error($link));
}
/* Удаление записи из БД */


?>
    <h3>Оставьте запись в нашей Гостевой книге</h3>

    <form method="post" action="<?= $_SERVER['REQUEST_URI']?>">
        Имя: <br /><input type="text" name="name" /><br />
        Email: <br /><input type="text" name="email" /><br />
        Сообщение: <br /><textarea name="msg"></textarea><br />

        <br />

        <input type="submit" name="create" value="Отправить!" />

    </form>
<?php
/* Вывод записей из БД */
$sql_2 = "SELECT id, name, email, msg, UNIX_TIMESTAMP(datetime) as dt FROM msgs ORDER BY id DESC";
$result_2 = mysqli_query($link, $sql_2);
$count_strings = mysqli_num_rows($result_2);
?>
    <p>Всего записей в гостевой книге: <?= $count_strings?></p>
<?php
while ($row2 = mysqli_fetch_array($result_2, MYSQLI_ASSOC)) {
    $d = date('d.m.Y', $row2[dt]);
    $t = strftime("%H:%M:%S", $row2[dt]);
    echo "<p>
            <a href= $row2[email]> $row2[name] </a>
            $d в $t
            написал:<br/>$row2[msg]
            <br />-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
          </p>
        <p align= right>
            <a href=http://moiseenko/index.php?id=gbook&del=$row2[id]>
                Удалить</a>
               
        </p>";
}
?>