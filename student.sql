-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Дек 14 2018 г., 17:04
-- Версия сервера: 5.2.10
-- Версия PHP: 5.4.0--pl0-gentoo

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `student`
--

-- --------------------------------------------------------

--
-- Структура таблицы `112_tts_bill_content`
--

DROP TABLE IF EXISTS `112_tts_bill_content`;
CREATE TABLE IF NOT EXISTS `112_tts_bill_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `quantity` float NOT NULL,
  KEY `id` (`id`,`goods`,`price`,`quantity`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `112_tts_bill_content`
--

INSERT INTO `112_tts_bill_content` (`id`, `goods`, `price`, `quantity`) VALUES
(2, 'сахар', 47, 5),
(3, 'яблоки', 50, 1),
(4, 'груши', 70, 2),
(5, 'котлеты', 120, 5),
(6, 'мясо', 300, 3),
(7, 'курицы', 150, 3),
(8, 'вафли', 25, 4),
(9, 'печенье', 14, 10),
(10, 'торты', 400, 2),
(11, 'шоколад', 50, 5);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
