<?php
require_once './NewsDB.class.php';
$news = new NewsDB();
$ErrMsg = '';
if ($_SERVER['REQUEST_METHOD'] === 'POST'){
    require_once './save_news.inc.php';
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Новостная лента</title>
	<meta charset="utf-8" />
</head>
<body>
<div style="display: flex;flex-direction: column;align-items: center;text-align: center" >
  <h1>Последние новости</h1>
  <?php
  if($ErrMsg)
      echo "<h3>$ErrMsg</h3>";
  ?>
  <form action="<?= $_SERVER['PHP_SELF']; ?>" method="post">
    Заголовок новости:<br />
    <input style="width: 300px;height: 12px" type="text" name="title" /><br />
    Выберите категорию:<br />
    <select style="width: 305px;height:22px" name="category">
      <option value="1">Политика</option>
      <option value="2">Культура</option>
      <option value="3">Спорт</option>
    </select>
    <br />
    Текст новости:<br />
    <textarea style="width: 300px;height: 100px" name="description" cols="50" rows="5"></textarea><br />
    Источник:<br />
    <input style="width: 300px;height: 12px" type="text" name="source" /><br />
    <br />
    <input type="submit" value="Добавить!" />
</form>
</div>
<?php
if (isset($_GET['id'])) {
    require_once "show-news.php";
} else {
    require_once "get_news.inc.php";
}
?>
</body>
</html>