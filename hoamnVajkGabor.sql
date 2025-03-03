-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Már 03. 11:13
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `suli`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `iskola`
--

CREATE TABLE `iskola` (
  `iskolaAzon` int(11) NOT NULL,
  `nev` varchar(30) NOT NULL,
  `varosAzon` int(11) NOT NULL,
  `kep` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `iskola`
--

INSERT INTO `iskola` (`iskolaAzon`, `nev`, `varosAzon`, `kep`) VALUES
(1, 'Szamalk', 12, 'szamalkKep'),
(2, 'Meta', 13, 'Metakpe');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szak`
--

CREATE TABLE `szak` (
  `szakAzon` int(11) NOT NULL,
  `iskolaAzon` int(11) NOT NULL,
  `nev` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szak`
--

INSERT INTO `szak` (`szakAzon`, `iskolaAzon`, `nev`) VALUES
(1, 1, 'Fotografia'),
(2, 1, 'programozas'),
(3, 2, 'Logisztika');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `varos`
--

CREATE TABLE `varos` (
  `varosAzon` int(11) NOT NULL,
  `nev` varchar(30) NOT NULL,
  `kep` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `varos`
--

INSERT INTO `varos` (`varosAzon`, `nev`, `kep`) VALUES
(12, 'Budapest', 'kep'),
(13, 'Buda', '123');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `iskola`
--
ALTER TABLE `iskola`
  ADD PRIMARY KEY (`iskolaAzon`),
  ADD KEY `varosAzon` (`varosAzon`);

--
-- A tábla indexei `szak`
--
ALTER TABLE `szak`
  ADD PRIMARY KEY (`szakAzon`),
  ADD KEY `iskolaAzon` (`iskolaAzon`);

--
-- A tábla indexei `varos`
--
ALTER TABLE `varos`
  ADD PRIMARY KEY (`varosAzon`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `iskola`
--
ALTER TABLE `iskola`
  MODIFY `iskolaAzon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `szak`
--
ALTER TABLE `szak`
  MODIFY `szakAzon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT a táblához `varos`
--
ALTER TABLE `varos`
  MODIFY `varosAzon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `iskola`
--
ALTER TABLE `iskola`
  ADD CONSTRAINT `iskola_ibfk_1` FOREIGN KEY (`iskolaAzon`) REFERENCES `szak` (`iskolaAzon`),
  ADD CONSTRAINT `iskola_ibfk_2` FOREIGN KEY (`varosAzon`) REFERENCES `varos` (`varosAzon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
