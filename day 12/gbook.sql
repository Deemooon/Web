-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 23 2020 г., 11:57
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `gbook`
--

-- --------------------------------------------------------

--
-- Структура таблицы `msgs`
--

CREATE TABLE `msgs` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `msg` text DEFAULT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `msgs`
--

INSERT INTO `msgs` (`id`, `name`, `email`, `msg`, `datetime`) VALUES
(1, 'Дмитрий', 'tenno1503@gmail.com', 'Привет, мир!', '2020-05-23 08:35:33'),
(5, 'Громов', 'grom@gmail.com', '21321312', '2020-05-23 08:54:28'),
(8, 'ДАНИЛА', 'uragan_hokage@mail.ru', 'PHONK CLASS', '2020-05-23 08:56:57');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `msgs`
--
ALTER TABLE `msgs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `msgs`
--
ALTER TABLE `msgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
