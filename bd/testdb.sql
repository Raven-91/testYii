-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 27 2024 г., 06:53
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m240625_194814_create_news_table', 1719346866);

-- --------------------------------------------------------

--
-- Структура таблицы `newdata`
--

CREATE TABLE `newdata` (
  `id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `userEmail` varchar(40) NOT NULL,
  `userFirstName` varchar(255) NOT NULL,
  `userLastName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`userID`, `userEmail`, `userFirstName`, `userLastName`) VALUES
(1, 'e.morozova@gmail.com', 'Элина', 'Морозова'),
(2, 'a.andreeva@gmai.com', 'Анастасия', 'Андреева'),
(3, 'm.livova@gmail.com', 'Мария', 'Львова'),
(4, 's.pastuhov@gmail.com', 'Степан', 'Пастухов'),
(5, 'y.egorov@gmail.com', 'Юрий', 'Егоров'),
(6, 'e.ejova@gmail.com', 'Екатерина', 'Ежова'),
(7, 'm.suhova@gmail.com', 'Майя', 'Сухова'),
(8, 's.sorokina@gmail.com', 'Сафия', 'Сорокина'),
(9, 'm.filatov@gmail.com', 'Марк', 'Филатов'),
(10, 'i.larin@gmail.com', 'Иван', 'Ларин'),
(11, 'i.anohin@gmail.com', 'Илья', 'Анохин'),
(12, 's.smirnova@gmail.com', 'Сафия', 'Смирнова'),
(13, 'a.ovsyannikova@gmail.com', 'Амина', 'Овсянникова'),
(14, 'n.balashova@gmail.com', 'Николь', 'Балашова'),
(15, 'm.kirillova@gmail.com', 'Малика', 'Кириллова'),
(16, 'a.minaev@gmail.com', 'Александра', 'Минаева'),
(17, 't.minaeva@gmail.com', 'Татьяна', 'Минаева'),
(18, 'm.grigoreva@gmail.com', 'Милана', 'Григорьева'),
(19, 'a.ivanov@gmail.com', 'Алексей', 'Иванов'),
(20, 'v.romanova@gmail.com', 'Вероника', 'Романова');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `newdata`
--
ALTER TABLE `newdata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `userLogin` (`userEmail`),
  ADD UNIQUE KEY `userLogin_2` (`userEmail`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `newdata`
--
ALTER TABLE `newdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
