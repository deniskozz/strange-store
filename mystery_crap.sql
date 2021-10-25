-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 25 2021 г., 14:59
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mystery_crap`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `ID` int NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`ID`, `Name`) VALUES
(1, 'Еда'),
(2, 'Книги');

-- --------------------------------------------------------

--
-- Структура таблицы `item_full`
--

CREATE TABLE `item_full` (
  `ID` int NOT NULL,
  `Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Category_id` int DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `item_full`
--

INSERT INTO `item_full` (`ID`, `Name`, `Price`, `Description`, `Image`, `Category_id`, `slug`) VALUES
(1, 'Подушечки «Oreo» со вкусом клубники (Серия Pokemon)', '250.00 руб', 'Сладкие подушечки и коллекционные покемоши на упаковке - собери их все! Вес 47 г.', 'https://static-sl.insales.ru/r/l8uRAJ0wtt8/fit/1000/1000/ce/1/plain/images/products/1/172/449159340/i2mujzrynqe_1_-removebg-preview.png@webp', 1, 'podushechki-«oreo»-so-vkusom-klubniki-seriya-pokemon'),
(2, 'Острая корейская лапша/рамен Samyang с соусом бульдак кимчи', '190.00 руб', 'Из одной пачки такой лапши можно сварить поллитра взрывного супа. Рекомендуется запастись молоком или предлагать скушать рамен на спор – заряд остроты тут явно термоядерный. Вес 140 гр.\r\n', 'https://static-sl.insales.ru/r/ItmY5v4aqKU/fit/1000/1000/ce/1/plain/images/products/1/2011/451045339/zbeumnkadi81-removebg-preview.png@webp', 1, 'ostraya-korejskaya-lapsharamen-samyang-s-sousom-bulьdak-kimchi'),
(3, 'Неофициальная кулинарная книга Хогвартса. 75 рецептов блюд по мотивам волшебного мира Гарри Поттера', '790.00 руб', 'Сделайте каждый день завораживающим праздником с кулинарной книгой в стиле Гарри Поттера, в которой представлены вкусные рецепты магловских блюд, которые достойны побывать на столе у волшебников! Если любите каждые новогодние каникулы пересматривать волшебные фильмы, перечитывать замечательные книги, то для истинного поттеромана эта книга станет замечательным подарком, чтобы устроить себе Новый год и Рождество в стиле Хогвартса. Что может быть лучше, чем волшебно приготовить вкусную еду на кухне? От роскошных осенних и зимних застолий до восхитительных десертов и угощений во время чая — эта книга охватит все ваши праздники и особые случаи с особой магией.', 'https://static-sl.insales.ru/r/dQIk0uzVceM/fit/1000/0/ce/1/plain/images/products/1/7459/480165155/09yYj6M0eoo.jpg@webp', 2, 'neoficialьnaya-kulinarnaya-kniga-hogvartsa-75-receptov-blyud-po-motivam-volshebnogo-mira-garri-pottera'),
(4, 'Воскреситель, или Анатомия фантастических существ: Утерянный труд доктора Спенсера Блэка', '1 290.00 руб', 'Филадельфия, конец 1870-х. Город газовых фонарей, мощеных улиц, конных экипажей — и родина вызывающего споры хирурга Спенсера Блэка. Обучаясь в престижной Филадельфийской медицинской академии, юный доктор Блэк, сын расхитителя могил, разработал необычную гипотезу: что, если самые знаменитые мифические существа —русалки, минотавры и сатиры — на самом деле эволюционные предки людей? \"Воскреситель\" — это две удивительные книги в одной. Первая — это вымышленная биография доктора Спенсера Блэка: от детства, проведенного за эксгумацией трупов, до обучения медицине, путешествий с карнавалами и, наконец, загадочного исчезновения в конце. Вторая книга — это главный труд его жизни — \"Кодекс вымерших животных\". Это \"Анатомия Грея\" для мифических существ — драконов, кентавров, пегасов, церберов, — каждое из которых представлено на тщательно детализированных анатомических иллюстрациях. Достаточно одного взгляда на эти рисунки, чтобы понять: это творение безумца. И \"Воскреситель\" — его история.', 'https://static-sl.insales.ru/r/1VwjrbDI86U/fit/1000/0/ce/1/plain/images/products/1/7349/480165045/3xXYzlA-H1I.jpg@webp', 2, 'voskresitelь-ili-anatomiya-fantasticheskih-sushestv-uteryannyj-trud-doktora-spensera-bleka'),
(5, 'Спиритология. Всё о призраках, духах и привидениях', '1 490.00 руб', 'Исследования, приведенные в данной книге, помогут начинающему спиритологу узнать, как обнаружить привидение, как общаться с духами и как разоблачить фальшивых медиумов. Прилежное изучение предмета позволит вам понять, чего следует ожидать от каждой разновидности призраков, и, возможно, вы сумеете уговорить их оставить преследование живых.\r\n', 'https://static-sl.insales.ru/r/0BFEBgtK5AI/fit/1000/0/ce/1/plain/images/products/1/7125/477559765/6009112334-removebg-preview-2.png@webp', 2, 'spiritologiya-vsyo-o-prizrakah-duhah-i-privideniyah');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `item_full`
--
ALTER TABLE `item_full`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Category_id` (`Category_id`) USING BTREE;

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `item_full`
--
ALTER TABLE `item_full`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `item_full`
--
ALTER TABLE `item_full`
  ADD CONSTRAINT `item_full_ibfk_1` FOREIGN KEY (`Category_id`) REFERENCES `categories` (`ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
