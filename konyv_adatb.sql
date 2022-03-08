-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Jan 17. 12:48
-- Kiszolgáló verziója: 10.4.6-MariaDB
-- PHP verzió: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `konyv_adatb`
--
CREATE DATABASE IF NOT EXISTS `konyv_adatb` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `konyv_adatb`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `konyv`
--

CREATE TABLE `konyv` (
  `konyv_id` int(11) NOT NULL,
  `konyv_nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `konyv_tipus` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `konyv_kep` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `konyv`
--

INSERT INTO `konyv` (`konyv_id`, `konyv_nev`, `konyv_tipus`, `konyv_kep`) VALUES
(1, 'A Pál utcai fiuk', '', 'palutcai1.png'),
(2, 'A babaház', '', 'babahaz1.png'),
(3, 'Alapítvány', '', 'alapitvany1.png'),
(4, 'Ahol a szivárvány véget ér', '', 'szivarvany1.png'),
(5, 'Bogyó és Babóca', '', 'bogyo1.png'),
(6, 'Tudatos álmodás titka', '', 'tudatos1.png');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `konyv_fajtai`
--

CREATE TABLE `konyv_fajtai` (
  `konyv_id` int(11) NOT NULL,
  `kony_fajtai` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `konyvfajta_kepek` varchar(255) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `konyv_fajtai`
--

INSERT INTO `konyv_fajtai` (`konyv_id`, `kony_fajtai`, `konyvfajta_kepek`) VALUES
(1, 'Ifjúsági könyvek', 'ifjusagi.png'),
(2, 'Krimi', 'babahaz.png'),
(3, 'Sci-fi', 'alapitvany.png'),
(4, 'Romantikus', 'szivarvany.png'),
(5, 'Mese könyvek', 'bogyo.png'),
(6, 'Tudomány és természet könyvek', 'tudatos.png');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `leiras`
--

CREATE TABLE `leiras` (
  `leiras_id` int(11) NOT NULL,
  `leiras_konyv` text COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `leiras`
--

INSERT INTO `leiras` (`leiras_id`, `leiras_konyv`) VALUES
(1, 'A Pál utcai fiúk Molnár Ferenc ifjúsági regénye. Első közlése 1906-ban, a Tanulók Lapja című ifjúsági folyóiratban folytatásokban történt. Könyvalakban először a Franklin-Társulatnál jelent meg, 1907-ben. Magyarországon az egyik legolvasottabb és legnépszerűbb regény, kötelező olvasmány általános iskola ötödik osztályában. Külföldön a legismertebb magyar regény: számtalan nyelvre lefordították, sok országban (például Olaszországban, Brazíliában és Lengyelországban) kötelező vagy ajánlott iskolai olvasmány.[3] A könyv máig ható nemzetközi népszerűsége arról tanúskodik, hogy olvasói szerint örök élethelyzetekről szól, bárhol, bármikor történhetett volna.\r\n\r\nA regény főszereplői – Áts Feri, Boka János, Geréb Dezső, Nemecsek Ernő – olyan karakteres emberi viselkedési mintákat mutatnak, amelyeket a név puszta említése felidéz, és a könyv annyira ismert, hogy ezeket a neveket gyakran használják emberi jellemek tömör leírására. A szereplők nevén kívül fogalommá váltak a regényből például a „gittegylet”, az „einstand” vagy a „grund” szavak is. '),
(2, 'Egy ​fiatal nő egy hideg, sötét pincében ébred, és fogalma sincs, hogy került oda, ki rabolta el. Így kezdődik a legrosszabb rémálma.\r\n\r\nEgy félreeső tengerparti strandon előkerül egy másik fiatal nő elásott holtteste. Ám a halott lány eltűnését nem jelentették – elhidegült családja rendszeresen kapott tőle szöveges üzeneteket az évek során. Valaki a síron túl is életben tartotta.\r\n\r\nHelen Grace felügyelő számára ez vérfagyasztó jelzés arról, hogy egy szörnyet üldöz, aki nemcsak perverz, de ügyes és leleményes is – ragadozó, aki nem először ölt.\r\n\r\nMiközben Helen a gyilkos motivációját próbálja megfejteni, ráébred, hogy versenyt kell futnia az idővel…\r\n\r\nM. J. Arlidge tizenöt éve dolgozik a televíziós dráma műfajában. Az utóbbi öt évben olyan bűnügyi sorozatok gyártásában vett részt az ITV számára, mint a Torn vagy a The Little House, legújabban pedig az Undeniable, amelyet 2014 tavaszán sugároztak. Jelenleg A néma szemtanú epizódjait írja, de eredeti bűnügyi sorozatokon is dolgozik angol és amerikai tévécsatornáknak.'),
(3, 'Isaac Asimov világhírű science fiction regénytrilógiája – amelynek első kötetét tartja kezében az olvasó – azt kutatja, befolyásolható, irányítható-e a matematikai módszerekkel megjósolt, kiszámított jövő. Összeomlik-e a Galaktikus Birodalom, sikerül-e elhárítani vagy legalább megrövidíteni a zűrzavar éveit? Ezer év izgalmas és döntő fordulatait sűríti történelmi regénnyé az Alapítvány-trilógia, a modern tudományos-fantasztikus irodalom klasszikus alkotása.'),
(4, 'Rosie és Alex jóban-rosszban kitartanak egymás mellett, és életre szóló szövetséget kötnek az iskola és a felnőttek zord világa ellen. Az izgalmas órai levelezések alatt még nem sejtik, hogy életük következő jó néhány évét is így fogják eltölteni: egymással levelezve… A sors újra és újra elválasztja őket egymástól, hogy próbára tegye barátságukat, kitartásukat és őszinteségüket. A gyerekek komoly felnőtté cseperednek: mindketten dolgoznak, házasodnak, gyereket nevelnek, válnak, de a varázslatos kötelék, amely összeköti őket, életük minden öröme és bánata közepette is megmarad.\r\nTöbb van-e köztük puszta barátságnál? Ha kapnának egy utolsó lehetőséget, kockára tennének-e mindent az igaz szerelemért?'),
(5, 'A Bogyó és Babóca Bartos Erika mesesorozata. Első kötete 2004-ben jelent meg a Pozsonyi Pagony könyvkiadó gondozásában, a történeteket a szerző írja és illusztrálja. A történetek főszereplője Bogyó, a csigafiú, és Babóca, a katicalány. A sorozat a rendszerváltás utáni Magyarországon hiánypótló szerepet töltött be, a kétezres évek legnépszerűbb magyar meséje.\r\n\r\nAz első részek 2004-ben kerülhettek az olvasók kezébe. A mű nagy sikert aratott. Sikeres török nyelvterületen és különféle adaptációkban (hangoskönyv, dia) is. 2010-ben mutatták be filmváltozatát, amely M. Tóth Géza stúdiójában készült. '),
(6, 'Kövessük az álmainkat, és fedezzük fel önmagunk legjobb részeit!\r\nÁLMAINK HATÁROZNAK MEG MINKET - vagy legalábbis a tudatalattinkat. A tudatos álmodás titkai megtanít minket arra, hogyan fedezzük fel és manipuláljuk álmainkat, hogy ezáltal megismerhessük magunkat. Talán még rémálmainkat is sikerül legyűrnünk - vagy élvezhetjük a repülés örömét álmunkban.\r\nEz a könyv beavat minket az álmodás tudományába és spiritualitásába. Segítségével kifejleszthetjük álom-tudatosságunkat, és az álmainkban tett felfedezéseknek az ébrenlét óráiban is hasznát vehetjük. A tudatos álmodás révén fejleszthetjük összpontosító képességünket, felfedhetjük az önmagunkkal kapcsolatos legmélyebb igazságokat, és figyelmesebb, értőbb életet élhetünk. A könyvben található technikákat alkalmazva pedig meglepően könnyen sajátíthatjuk el ezt a rendkívüli művészetet');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(2, 'moderator', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(3, 'admin', '2020-08-02 14:57:31', '2020-08-02 14:57:31');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szavazatfelvitel`
--

CREATE TABLE `szavazatfelvitel` (
  `szavazat_id` int(11) NOT NULL,
  `szavazo_nev` text COLLATE utf8_hungarian_ci NOT NULL,
  `szavazo_ertek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'user', 'user', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'mod', 'mod', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'admin', 'admin', '$2a$08$97Ze1/hXfOX44WdC62Rq8uRkog9HYC1HukRX8eld2ZEKPyenM5v.G', '2020-08-02 15:03:59', '2020-08-02 15:03:59');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 1, 3),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 2),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 3),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 3, 3);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `konyv`
--
ALTER TABLE `konyv`
  ADD PRIMARY KEY (`konyv_id`);

--
-- A tábla indexei `konyv_fajtai`
--
ALTER TABLE `konyv_fajtai`
  ADD PRIMARY KEY (`konyv_id`);

--
-- A tábla indexei `leiras`
--
ALTER TABLE `leiras`
  ADD PRIMARY KEY (`leiras_id`);

--
-- A tábla indexei `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `szavazatfelvitel`
--
ALTER TABLE `szavazatfelvitel`
  ADD PRIMARY KEY (`szavazat_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `konyv`
--
ALTER TABLE `konyv`
  MODIFY `konyv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `konyv_fajtai`
--
ALTER TABLE `konyv_fajtai`
  MODIFY `konyv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `leiras`
--
ALTER TABLE `leiras`
  MODIFY `leiras_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `szavazatfelvitel`
--
ALTER TABLE `szavazatfelvitel`
  MODIFY `szavazat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `konyv`
--
ALTER TABLE `konyv`
  ADD CONSTRAINT `konyv_ibfk_1` FOREIGN KEY (`konyv_id`) REFERENCES `konyv_fajtai` (`konyv_id`);

--
-- Megkötések a táblához `leiras`
--
ALTER TABLE `leiras`
  ADD CONSTRAINT `leiras_ibfk_1` FOREIGN KEY (`leiras_id`) REFERENCES `konyv_fajtai` (`konyv_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
