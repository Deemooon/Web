<?
$dt = time();

$ref = $_SERVER['HTTP_REFERER'];
$page = $_SERVER['REQUEST_URI'];

$ref = pathinfo($ref, PATHINFO_BASENAME);


$path = "$dt | $ref | $page\n";

file_put_contents("log/".PATH_LOG, $path, FILE_APPEND);
?>
