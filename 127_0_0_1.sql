-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Nov 27. 09:25
-- Kiszolgáló verziója: 10.4.14-MariaDB
-- PHP verzió: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `konyv`
--
CREATE DATABASE IF NOT EXISTS `konyv` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `konyv`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `konyv_tipus`
--

CREATE TABLE `konyv_tipus` (
  `konyv_id` int(11) NOT NULL,
  `konyv_nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `konyv_tipus` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `konyv_tipus`
--

INSERT INTO `konyv_tipus` (`konyv_id`, `konyv_nev`, `konyv_tipus`) VALUES
(1, 'A Pál utcai fiuk', 'Ifjúsági könyv'),
(2, 'A babaház', 'Krimi'),
(3, 'Alapítvány', 'Sci-Fi'),
(4, 'Ahol a szivárvány véget ér', 'Romantikus'),
(5, 'Bogyó és Babóca', 'mese könyvek'),
(6, 'Tudatos álmodás titka', 'Tudomány és természet könyvek');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `konyv_tipus`
--
ALTER TABLE `konyv_tipus`
  ADD PRIMARY KEY (`konyv_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `konyv_tipus`
--
ALTER TABLE `konyv_tipus`
  MODIFY `konyv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
