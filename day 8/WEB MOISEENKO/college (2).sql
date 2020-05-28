-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 19 2020 г., 11:38
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
-- База данных: `college`
--

-- --------------------------------------------------------

--
-- Структура таблицы `moiseenko_classroom`
--

CREATE TABLE `moiseenko_classroom` (
  `classroom_id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `moiseenko_classroom`
--

INSERT INTO `moiseenko_classroom` (`classroom_id`, `name`) VALUES
(1, 'WEB'),
(2, 'Информатика'),
(3, 'Графика'),
(4, 'Программирование');

-- --------------------------------------------------------

--
-- Структура таблицы `moiseenko_course`
--

CREATE TABLE `moiseenko_course` (
  `course_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_id` int(11) NOT NULL,
  `hours` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `moiseenko_course`
--

INSERT INTO `moiseenko_course` (`course_id`, `name`, `special_id`, `hours`) VALUES
(1, 'Основы алгоритмизации', 1, 90),
(2, 'Электротехника', 3, 106),
(3, 'Основы алгоритмизации', 5, 52),
(4, 'Мультимедиа технологии', 1, 36),
(5, 'Техническая механика', 6, 96),
(6, 'Промышленная электротехника', 4, 108),
(7, 'Автоматизированные информационные системы', 1, 86);

-- --------------------------------------------------------

--
-- Структура таблицы `moiseenko_day`
--

CREATE TABLE `moiseenko_day` (
  `day_id` tinyint(4) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `moiseenko_day`
--

INSERT INTO `moiseenko_day` (`day_id`, `name`) VALUES
(1, 'Понедельник'),
(2, 'Вторник'),
(3, 'Среда'),
(4, 'Четверг'),
(5, 'Пятница'),
(6, 'Суббота'),
(7, 'Воскресенье');

-- --------------------------------------------------------

--
-- Структура таблицы `moiseenko_gender`
--

CREATE TABLE `moiseenko_gender` (
  `gender_id` tinyint(4) NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `moiseenko_gender`
--

INSERT INTO `moiseenko_gender` (`gender_id`, `name`) VALUES
(1, 'Мужской'),
(2, 'Женский');

-- --------------------------------------------------------

--
-- Структура таблицы `moiseenko_graduate`
--

CREATE TABLE `moiseenko_graduate` (
  `graduate_id` int(11) NOT NULL,
  `gruppa_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `moiseenko_graduate`
--

INSERT INTO `moiseenko_graduate` (`graduate_id`, `gruppa_id`, `course_id`, `user_id`) VALUES
(1, 5, 1, 2),
(2, 5, 7, 3),
(3, 5, 4, 5),
(4, 6, 6, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `moiseenko_graduate_time`
--

CREATE TABLE `moiseenko_graduate_time` (
  `graduate_time_id` int(11) NOT NULL,
  `graduate_id` int(11) NOT NULL,
  `day_id` tinyint(4) NOT NULL,
  `lesson_num_id` int(11) NOT NULL,
  `classroom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `moiseenko_graduate_time`
--

INSERT INTO `moiseenko_graduate_time` (`graduate_time_id`, `graduate_id`, `day_id`, `lesson_num_id`, `classroom_id`) VALUES
(1, 1, 5, 1, 4),
(2, 2, 1, 3, 3),
(3, 3, 2, 4, 2),
(4, 4, 3, 2, 1),
(5, 2, 4, 3, 3),
(6, 1, 5, 4, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `moiseenko_gruppa`
--

CREATE TABLE `moiseenko_gruppa` (
  `gruppa_id` int(11) NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_id` int(11) NOT NULL,
  `date_begin` date NOT NULL,
  `date_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `moiseenko_gruppa`
--

INSERT INTO `moiseenko_gruppa` (`gruppa_id`, `name`, `special_id`, `date_begin`, `date_end`) VALUES
(1, '101 ИС', 1, '2016-09-01', '2020-07-01'),
(2, '102 АС', 3, '2016-09-01', '2020-07-01'),
(3, '302 ИС', 1, '2014-09-01', '2018-07-01'),
(4, '302 АС', 3, '2014-09-01', '2018-07-01'),
(5, '202 С', 6, '2015-09-01', '2019-07-01'),
(6, '404 П', 5, '2014-09-01', '2017-07-01'),
(7, '303 ЭЛ', 4, '2014-09-01', '2018-07-01');

-- --------------------------------------------------------

--
-- Структура таблицы `moiseenko_lesson_num`
--

CREATE TABLE `moiseenko_lesson_num` (
  `lesson_num_id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_lesson` time NOT NULL,
  `yaer_lesson` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `moiseenko_lesson_num`
--

INSERT INTO `moiseenko_lesson_num` (`lesson_num_id`, `name`, `time_lesson`, `yaer_lesson`) VALUES
(1, 'Программирование', '05:17:04', 2015),
(2, 'Веб разработка', '50:34:03', 2016),
(3, 'Комп. Графика', '08:34:27', 2014),
(4, 'Автоматизация', '28:34:45', 2016);

-- --------------------------------------------------------

--
-- Структура таблицы `moiseenko_otdel`
--

CREATE TABLE `moiseenko_otdel` (
  `otdel_id` smallint(6) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `moiseenko_otdel`
--

INSERT INTO `moiseenko_otdel` (`otdel_id`, `name`) VALUES
(1, 'Информационные системы'),
(2, 'Технические специальности '),
(3, 'Автоматизация и управление');

-- --------------------------------------------------------

--
-- Структура таблицы `moiseenko_special`
--

CREATE TABLE `moiseenko_special` (
  `special_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otdel_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `moiseenko_special`
--

INSERT INTO `moiseenko_special` (`special_id`, `name`, `otdel_id`) VALUES
(1, 'Информационные системы', 1),
(2, 'Нефтегазовое дело', 2),
(3, 'Автоматизация и управление', 3),
(4, 'Электроснабжение', 3),
(5, 'Программное обеспечение и ВТ и ПО', 1),
(6, 'Строительство и эксплуатация зданий и сооружений', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `moiseenko_student`
--

CREATE TABLE `moiseenko_student` (
  `user_id` bigint(20) NOT NULL,
  `gruppa_id` int(11) NOT NULL,
  `num_zach` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `moiseenko_student`
--

INSERT INTO `moiseenko_student` (`user_id`, `gruppa_id`, `num_zach`) VALUES
(6, 1, 'K1020'),
(7, 2, 'A5292'),
(8, 2, 'B8578'),
(9, 5, 'P5285'),
(10, 4, 'Ф5285'),
(11, 1, 'К7485'),
(12, 3, 'А2585');

-- --------------------------------------------------------

--
-- Структура таблицы `moiseenko_teacher`
--

CREATE TABLE `moiseenko_teacher` (
  `user_id` bigint(20) NOT NULL,
  `otdel_id` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `moiseenko_teacher`
--

INSERT INTO `moiseenko_teacher` (`user_id`, `otdel_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(5, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `moiseenko_user`
--

CREATE TABLE `moiseenko_user` (
  `user_id` bigint(20) NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patronomic` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender_id` tinyint(4) NOT NULL,
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `moiseenko_user`
--

INSERT INTO `moiseenko_user` (`user_id`, `lastname`, `firstname`, `patronomic`, `login`, `pass`, `gender_id`, `birthday`) VALUES
(1, 'Иванов', 'Иван', 'Иванович', 'ivanov', 'ivanov', 1, '1975-05-25'),
(2, 'Петров', 'Петр', 'Петрович', 'petr', 'petrov', 1, '1980-08-06'),
(3, 'Козлов', 'Иван', 'Афанасьевич', 'kozlov', 'ivan', 1, '1985-04-15'),
(4, 'Чурюмова', 'Кристина', 'Федоровна', 'chyr', 'kris', 2, '1990-05-20'),
(5, 'Васильев', 'Феофан', 'Александрович', 'vasya', 'frik', 1, '1991-01-13'),
(6, 'Федорова', 'Милана', 'Андреевна', 'fedya', 'milana', 2, '1998-04-15'),
(7, 'Нуржанов', 'Нуржан', 'Нуржанович', 'nyrik', 'tyrik', 1, '1999-09-18'),
(8, 'Канатов', 'Канат', 'Канатович', 'kanat', 'kannat', 1, '1999-07-07'),
(9, 'Золотая', 'Ирина', 'Кайратовна', 'goldie', 'irina', 2, '2000-09-14'),
(10, 'Серая', 'Арина', 'Радионовна', 'serii', 'arina', 2, '2001-10-29'),
(11, 'Петухов', 'Виталий', 'Фадеевич', 'petyh', 'vit', 1, '2000-02-20'),
(12, 'Котова', 'Аурелия', 'Ароновна', 'kot', 'ayr', 2, '2002-12-19');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `moiseenko_classroom`
--
ALTER TABLE `moiseenko_classroom`
  ADD PRIMARY KEY (`classroom_id`);

--
-- Индексы таблицы `moiseenko_course`
--
ALTER TABLE `moiseenko_course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `FK_moiseenko_course_moiseenko_special_special_id` (`special_id`);

--
-- Индексы таблицы `moiseenko_day`
--
ALTER TABLE `moiseenko_day`
  ADD PRIMARY KEY (`day_id`);

--
-- Индексы таблицы `moiseenko_gender`
--
ALTER TABLE `moiseenko_gender`
  ADD PRIMARY KEY (`gender_id`);

--
-- Индексы таблицы `moiseenko_graduate`
--
ALTER TABLE `moiseenko_graduate`
  ADD PRIMARY KEY (`graduate_id`),
  ADD KEY `FK_moiseenko_graduate_moiseenko_teacher_user_id` (`user_id`),
  ADD KEY `FK_moiseenko_graduate_moiseenko_gruppa_gruppa_id` (`gruppa_id`),
  ADD KEY `FK_moiseenko_graduate_moiseenko_course_course_id` (`course_id`);

--
-- Индексы таблицы `moiseenko_graduate_time`
--
ALTER TABLE `moiseenko_graduate_time`
  ADD PRIMARY KEY (`graduate_time_id`),
  ADD KEY `FK_moiseenko_graduate_time_moiseenko_graduate_graduate_id` (`graduate_id`),
  ADD KEY `FK_moiseenko_graduate_time_moiseenko_classroom_classroom_id` (`classroom_id`),
  ADD KEY `FK_moiseenko_graduate_time_moiseenko_lesson_num_lesson_num_id` (`lesson_num_id`),
  ADD KEY `FK_moiseenko_graduate_time_moiseenko_day_day_id` (`day_id`);

--
-- Индексы таблицы `moiseenko_gruppa`
--
ALTER TABLE `moiseenko_gruppa`
  ADD PRIMARY KEY (`gruppa_id`),
  ADD KEY `FK_moiseenko_gruppa_moiseenko_special_special_id` (`special_id`);

--
-- Индексы таблицы `moiseenko_lesson_num`
--
ALTER TABLE `moiseenko_lesson_num`
  ADD PRIMARY KEY (`lesson_num_id`);

--
-- Индексы таблицы `moiseenko_otdel`
--
ALTER TABLE `moiseenko_otdel`
  ADD PRIMARY KEY (`otdel_id`);

--
-- Индексы таблицы `moiseenko_special`
--
ALTER TABLE `moiseenko_special`
  ADD PRIMARY KEY (`special_id`),
  ADD KEY `FK_moiseenko_special_moiseenko_otdel_otdel_id` (`otdel_id`);

--
-- Индексы таблицы `moiseenko_student`
--
ALTER TABLE `moiseenko_student`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `FK_moiseenko_student_moiseenko_gruppa_gruppa_id` (`gruppa_id`);

--
-- Индексы таблицы `moiseenko_teacher`
--
ALTER TABLE `moiseenko_teacher`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `FK_moiseenko_teacher_moiseenko_otdel_otdel_id` (`otdel_id`);

--
-- Индексы таблицы `moiseenko_user`
--
ALTER TABLE `moiseenko_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `FK_moiseenko_user_moiseenko_gender_gender_id` (`gender_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `moiseenko_classroom`
--
ALTER TABLE `moiseenko_classroom`
  MODIFY `classroom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `moiseenko_course`
--
ALTER TABLE `moiseenko_course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `moiseenko_day`
--
ALTER TABLE `moiseenko_day`
  MODIFY `day_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `moiseenko_gender`
--
ALTER TABLE `moiseenko_gender`
  MODIFY `gender_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `moiseenko_graduate`
--
ALTER TABLE `moiseenko_graduate`
  MODIFY `graduate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `moiseenko_graduate_time`
--
ALTER TABLE `moiseenko_graduate_time`
  MODIFY `graduate_time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `moiseenko_gruppa`
--
ALTER TABLE `moiseenko_gruppa`
  MODIFY `gruppa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `moiseenko_lesson_num`
--
ALTER TABLE `moiseenko_lesson_num`
  MODIFY `lesson_num_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `moiseenko_otdel`
--
ALTER TABLE `moiseenko_otdel`
  MODIFY `otdel_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `moiseenko_special`
--
ALTER TABLE `moiseenko_special`
  MODIFY `special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `moiseenko_user`
--
ALTER TABLE `moiseenko_user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `moiseenko_course`
--
ALTER TABLE `moiseenko_course`
  ADD CONSTRAINT `FK_moiseenko_course_moiseenko_special_special_id` FOREIGN KEY (`special_id`) REFERENCES `moiseenko_special` (`special_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `moiseenko_graduate`
--
ALTER TABLE `moiseenko_graduate`
  ADD CONSTRAINT `FK_moiseenko_graduate_moiseenko_course_course_id` FOREIGN KEY (`course_id`) REFERENCES `moiseenko_course` (`course_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_moiseenko_graduate_moiseenko_gruppa_gruppa_id` FOREIGN KEY (`gruppa_id`) REFERENCES `moiseenko_gruppa` (`gruppa_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_moiseenko_graduate_moiseenko_teacher_user_id` FOREIGN KEY (`user_id`) REFERENCES `moiseenko_teacher` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `moiseenko_graduate_time`
--
ALTER TABLE `moiseenko_graduate_time`
  ADD CONSTRAINT `FK_moiseenko_graduate_time_moiseenko_classroom_classroom_id` FOREIGN KEY (`classroom_id`) REFERENCES `moiseenko_classroom` (`classroom_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_moiseenko_graduate_time_moiseenko_day_day_id` FOREIGN KEY (`day_id`) REFERENCES `moiseenko_day` (`day_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_moiseenko_graduate_time_moiseenko_graduate_graduate_id` FOREIGN KEY (`graduate_id`) REFERENCES `moiseenko_graduate` (`graduate_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_moiseenko_graduate_time_moiseenko_lesson_num_lesson_num_id` FOREIGN KEY (`lesson_num_id`) REFERENCES `moiseenko_lesson_num` (`lesson_num_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `moiseenko_gruppa`
--
ALTER TABLE `moiseenko_gruppa`
  ADD CONSTRAINT `FK_moiseenko_gruppa_moiseenko_special_special_id` FOREIGN KEY (`special_id`) REFERENCES `moiseenko_special` (`special_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `moiseenko_special`
--
ALTER TABLE `moiseenko_special`
  ADD CONSTRAINT `FK_moiseenko_special_moiseenko_otdel_otdel_id` FOREIGN KEY (`otdel_id`) REFERENCES `moiseenko_otdel` (`otdel_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `moiseenko_student`
--
ALTER TABLE `moiseenko_student`
  ADD CONSTRAINT `FK_moiseenko_student_moiseenko_gruppa_gruppa_id` FOREIGN KEY (`gruppa_id`) REFERENCES `moiseenko_gruppa` (`gruppa_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_moiseenko_student_moiseenko_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `moiseenko_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `moiseenko_teacher`
--
ALTER TABLE `moiseenko_teacher`
  ADD CONSTRAINT `FK_moiseenko_teacher_moiseenko_otdel_otdel_id` FOREIGN KEY (`otdel_id`) REFERENCES `moiseenko_otdel` (`otdel_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_moiseenko_teacher_moiseenko_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `moiseenko_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `moiseenko_user`
--
ALTER TABLE `moiseenko_user`
  ADD CONSTRAINT `FK_moiseenko_user_moiseenko_gender_gender_id` FOREIGN KEY (`gender_id`) REFERENCES `moiseenko_gender` (`gender_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
