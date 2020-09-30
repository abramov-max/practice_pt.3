-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 30 2020 г., 21:22
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
-- База данных: `db_practice`
--

-- --------------------------------------------------------

--
-- Структура таблицы `name`
--

CREATE TABLE `name` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `name`
--

INSERT INTO `name` (`id`, `name`) VALUES
(1, 'Max'),
(2, 'Jhon'),
(3, 'George'),
(4, 'Alex'),
(5, 'Anna'),
(6, 'Peter'),
(7, 'Ray'),
(8, 'Kate'),
(9, 'Jack'),
(10, 'Hugo');

-- --------------------------------------------------------

--
-- Структура таблицы `surname`
--

CREATE TABLE `surname` (
  `id_surname` int(11) NOT NULL,
  `surname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `surname`
--

INSERT INTO `surname` (`id_surname`, `surname`) VALUES
(1, 'Abramov'),
(2, 'Cleen'),
(3, 'James'),
(4, 'Store'),
(5, 'Brown'),
(6, 'Gate'),
(7, 'Prowl'),
(8, 'Ostin'),
(9, 'Shepard'),
(10, 'Raise');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `name`
--
ALTER TABLE `name`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `surname`
--
ALTER TABLE `surname`
  ADD PRIMARY KEY (`id_surname`),
  ADD KEY `id_surname` (`id_surname`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `name`
--
ALTER TABLE `name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `surname`
--
ALTER TABLE `surname`
  MODIFY `id_surname` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `name`
--
ALTER TABLE `name`
  ADD CONSTRAINT `name_ibfk_1` FOREIGN KEY (`id`) REFERENCES `surname` (`id_surname`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
