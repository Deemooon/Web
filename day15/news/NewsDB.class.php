<?php
require_once('./INewsDB.class.php');
class NewsDB implements INewsDB
{
    const DB_NAME = './news.db';
    private $_db = null;

    public function __construct()
    {
        $this->_db = new PDO('sqlite:' . self::DB_NAME);
        $this->_db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        if (!filesize(self::DB_NAME)) {
            try {
                $sql = "CREATE TABLE msgs(
	  id INTEGER PRIMARY KEY AUTOINCREMENT,
	  title TEXT,
	  category INTEGER,
	  description TEXT,
	  source TEXT,
	  datetime INTEGER)";

                $this->_db->exec($sql);
                $sql = "CREATE TABLE category(
	          id INTEGER,
	          name TEXT)";

                $this->_db->exec($sql);
                $sql = "INSERT INTO category(id, name)
	  SELECT 1 as id, 'Политика' as name
	  UNION SELECT 2 as id, 'Культура' as name
	  UNION SELECT 3 as id, 'Спорт' as name ";
                $this->_db->exec($sql);
            } catch (PDOException $ex) {
                echo $ex->getMessage();
            }
        }
    }

    function __dectruct()
    {
        unset($this->_db);
    }

    public function saveNews($title, $category, $description, $source)
    {
        $sql = 'INSERT INTO msgs (title,category,description,source,datetime)VALUES('
            . $this->_db->quote($title) . ','
            . $category . ','
            . $this->_db->quote($description) . ','
            . $this->_db->quote($source) . ','
            . time() . ')';
        try {
            $this->_db->exec($sql);
            return true;
        } catch (PDOException $ex) {
            echo $ex->getMessage();
            return false;
        }
    }

    public function getNews()
    {

        $stmt = $this->_db->query('SELECT msgs.id as id, title, category.name as category, description,source, datetime FROM msgs, category WHERE category.id = msgs.category ORDER BY msgs.id DESC');
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }


    public function showNews($id)
    {
        $sql = "SELECT
                m.id,
                m.title,
                c.name AS category,
                m.description,
                m.source,
                m.datetime
                FROM msgs AS m
                INNER JOIN category AS c ON m.category = c.id
                WHERE m.id = :id";
        $statement = $this->_db->prepare($sql);
        $statement->bindParam(':id', $id);

        if ($statement->execute()) {
            return $statement->fetch(PDO::FETCH_ASSOC);
        } else {
            return false;
        }
    }
}
?>