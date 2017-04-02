-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Апр 02 2017 г., 22:59
-- Версия сервера: 10.1.21-MariaDB
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mvc`
--

-- --------------------------------------------------------

--
-- Структура таблицы `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `text` text NOT NULL,
  `file` varchar(256) DEFAULT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `task`
--

INSERT INTO `task` (`id`, `name`, `email`, `text`, `file`, `rating`) VALUES
(1, 'd', 'my@mail.ru', 'dood', '/uploads/U8jCKv7KrWI.jpg', 4),
(2, 'my', 'mym@mail.ru', '1234', '/uploads/q5o9Y_jLOl8.jpg', 2),
(3, 'd', 'd@mail.ru', 'dood', '/uploads/c8FlNKEbcvk.jpg', 0),
(4, 'd', 'd@mail.ru', 'dood', '/uploads/bx1XHakdUQQ.jpg', 3),
(5, 'd', 'd@mail.ru', 'dood', '/uploads/I3tR11kzQ5Y.jpg', 2),
(6, 'a', 'a@mail.ru', 'something', '/uploads/I_OUGRBh0xA.jpg', 0),
(7, 'new', 'new@mail.ru', 'some new tex', '/uploads/Bk7zIQwCDkE.jpg', 3),
(8, 'dsf', 'esd@gf', 'jhgfdghjkj', '/uploads/5Pr5g5VfnV4.jpg', 0),
(9, 'fdghf', 'fdghgf@fd', 'fdgfhbgvfegbfg', '/uploads/_2mFTnuNawE.jpg', 0),
(19, 'myname', 'my@mail.ru', 'wetyrutytreqrwteyurtikglhkjhgdrsrw56euritkgjhdtw56yeurjfhdtw5eyuritkgjfhdtweuritkgjuyeurjf', '/uploads/kMrR2h5Rz20.jpg', 0),
(20, 'one more', 'more@mail.ru', 'some text here', '/uploads/YGVaF0ERd1A.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `login` varchar(45) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` varchar(45) NOT NULL DEFAULT 'admin',
  `password` char(32) NOT NULL,
  `is_active` tinyint(1) UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `email`, `role`, `password`, `is_active`) VALUES
(1, 'admin', 'admin@your-site.com', 'admin', '44ca5fa5c67e434b9e779c5febc46f06', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
