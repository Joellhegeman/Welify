-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 13 mrt 2020 om 15:42
-- Serverversie: 10.1.31-MariaDB
-- PHP-versie: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `welifey`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(50000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`) VALUES
(1, 'Bacon and Eggs', 3, 7, 'assets/images/album-artwork/goinghigher.jpg'),
(2, 'Pizzahead', 7, 10, 'assets/images/album-artwork/ukulele.jpg'),
(3, 'Summer Hits', 3, 9, 'assets/images/album-artwork/ener.jpg'),
(4, 'The movie soundtrack', 3, 5, 'assets/images/album-artwork/clearday.jpg'),
(5, 'Best of the worst', 3, 3, 'assets/images/album-artwork/funky.jpg'),
(6, 'Hello world', 3, 8, 'assets/images/album-artwork/luci.png'),
(7, 'Best Beast', 3, 9, 'assets/images/album-artwork/Mickeal_jackson_this_is_it.png'),
(8, 'TwentyFourSeven4', 8, 11, 'assets/images/album-artwork/sevnalias.jpg'),
(9, 'Beast Mode', 9, 12, 'assets/images/album-artwork/benlionelscott.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Mickey Mouse'),
(3, 'Joell Hegeman'),
(6, 'Homer'),
(7, 'Bruce lee'),
(8, 'Sevn Alias'),
(9, 'Ben Lionel Scott');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-Hop'),
(4, 'Rap'),
(5, 'R&B'),
(6, 'Classic'),
(7, 'Techno'),
(8, 'Funk'),
(9, 'Jazz'),
(10, 'Country'),
(11, 'Trap'),
(12, 'Motivation Speech');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(2, 'lit', 'wellie', '2019-12-04 00:00:00');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `playlistsongs`
--

CREATE TABLE `playlistsongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `playlistsongs`
--

INSERT INTO `playlistsongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(3, 32, 2, 3),
(7, 6, 2, 6),
(8, 13, 2, 7);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `gerne` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(5000) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `gerne`, `duration`, `path`, `albumOrder`, `plays`) VALUES
(1, 'Acoustic Breeze', 3, 5, 8, '2:37', 'assets/music/bensound-acousticbreeze.mp3', 1, 6),
(2, 'A new beginning', 3, 5, 1, '2:35', 'assets/music/bensound-anewbeginning.mp3', 2, 7),
(3, 'Better Days', 3, 5, 2, '2:33', 'assets/music/bensound-betterdays.mp3', 3, 10),
(4, 'Buddy', 3, 5, 3, '2:02', 'assets/music/bensound-buddy.mp3', 4, 5),
(5, 'Clear Day', 1, 5, 4, '1:29', 'assets/music/bensound-clearday.mp3', 5, 4),
(6, 'Going Higher', 3, 1, 1, '4:04', 'assets/music/bensound-goinghigher.mp3', 1, 12),
(7, 'Funny Song', 3, 7, 2, '3:07', 'assets/music/bensound-funnysong.mp3', 2, 11),
(8, 'Funky Element', 3, 1, 3, '3:08', 'assets/music/bensound-funkyelement.mp3', 2, 13),
(9, 'Extreme Action', 3, 1, 4, '8:03', 'assets/music/bensound-extremeaction.mp3', 3, 4),
(10, 'Epic', 3, 7, 5, '2:58', 'assets/music/bensound-epic.mp3', 3, 7),
(11, 'Energy', 3, 1, 6, '2:59', 'assets/music/bensound-energy.mp3', 4, 5),
(12, 'Dubstep', 3, 1, 7, '2:03', 'assets/music/bensound-dubstep.mp3', 5, 5),
(13, 'Happiness', 3, 6, 8, '4:21', 'assets/music/bensound-happiness.mp3', 5, 14),
(14, 'Happy Rock', 3, 7, 9, '1:45', 'assets/music/bensound-happyrock.mp3', 4, 20),
(15, 'Jazzy Frenchy', 3, 7, 10, '1:44', 'assets/music/bensound-jazzyfrenchy.mp3', 3, 6),
(16, 'Little Idea', 3, 7, 1, '2:49', 'assets/music/bensound-littleidea.mp3', 2, 5),
(17, 'Memories', 3, 3, 2, '3:50', 'assets/music/bensound-memories.mp3', 1, 10),
(18, 'Moose', 6, 7, 1, '2:43', 'assets/music/bensound-moose.mp3', 5, 10),
(19, 'November', 6, 7, 2, '3:32', 'assets/music/bensound-november.mp3', 4, 11),
(20, 'Of Elias Dream', 6, 7, 3, '4:58', 'assets/music/bensound-ofeliasdream.mp3', 3, 1),
(21, 'Pop Dance', 6, 7, 2, '2:42', 'assets/music/bensound-popdance.mp3', 2, 10),
(22, 'Retro Soul', 3, 7, 5, '3:36', 'assets/music/bensound-retrosoul.mp3', 1, 5),
(23, 'Sad Day', 1, 2, 1, '2:28', 'assets/music/bensound-sadday.mp3', 1, 9),
(24, 'Sci-fi', 3, 2, 2, '4:44', 'assets/music/bensound-scifi.mp3', 2, 12),
(25, 'Slow Motion', 3, 2, 3, '3:26', 'assets/music/bensound-slowmotion.mp3', 3, 12),
(26, 'Sunny', 3, 2, 4, '2:20', 'assets/music/bensound-sunny.mp3', 4, 5),
(27, 'Sweet', 3, 2, 5, '5:07', 'assets/music/bensound-sweet.mp3', 5, 7),
(28, 'Tenderness ', 3, 3, 7, '2:03', 'assets/music/bensound-tenderness.mp3', 4, 7),
(29, 'The Lounge', 3, 3, 8, '4:16', 'assets/music/bensound-thelounge.mp3 ', 3, 15),
(30, 'Ukulele', 3, 3, 9, '2:26', 'assets/music/bensound-ukulele.mp3 ', 2, 6),
(31, 'Tomorrow', 3, 3, 1, '4:54', 'assets/music/bensound-tomorrow.mp3 ', 1, 5),
(32, 'Big Man', 8, 8, 8, '2:43', 'assets/music/oak/sevn-alias-big-man.mp3', 1, 6),
(33, 'Givenchy stepping', 8, 8, 1, '3:36', 'assets/music/oak/sevn-alias-givenchy-steppin.mp3', 2, 5),
(34, 'Global', 8, 8, 2, '2:46', 'assets/music/oak/sevn-alias-global.mp3', 3, 7),
(35, 'Ik trap', 8, 8, 3, '2:36', 'assets/music/oak/sevn-alias-ik-trap.mp3', 4, 1),
(36, 'L.I.A.B', 8, 8, 4, '2:38', 'assets/music/oak/sevn-alias-liab.mp3', 5, 3),
(37, 'Middle', 8, 8, 1, '2:35', 'assets/music/oak/sevn-alias-middle.mp3', 6, 5),
(38, 'Nacht Actief', 8, 8, 2, '2:47', 'assets/music/oak/sevn-alias-nacht-actief.mp3', 7, 7),
(39, 'Seeka', 8, 8, 3, '2:19', 'assets/music/oak/sevn-alias-seeka.mp3', 8, 12),
(40, 'Sikter Lan', 8, 8, 4, '2:52', 'assets/music/oak/sevn-alias-sikter-lan.mp3', 9, 2),
(41, 'Taste', 8, 8, 5, '2:33', 'assets/music/oak/sevn-alias-taste.mp3', 10, 2),
(42, 'Decisions', 9, 9, 12, '2:53', 'assets/music/ben-lionel-scott/decisions.mp3', 1, 11),
(43, 'Going Through tough times', 9, 9, 12, '3:10', 'assets/music/ben-lionel-scott/going-through-tough-times.mp3', 2, 7),
(44, 'I can do it', 9, 9, 12, '4:07', 'assets/music/ben-lionel-scott/i-can-do-it.mp3', 3, 4),
(45, 'I have come to far too quit', 9, 9, 12, '3:15', 'assets/music/ben-lionel-scott/i-have-come-to-far-to-quit.mp3', 4, 0),
(46, 'Master your mind', 9, 9, 12, '2:37', 'assets/music/ben-lionel-scott/master-your-mind.mp3', 5, 9),
(47, 'NO EXCUSES', 9, 9, 12, '3:02', 'assets/music/ben-lionel-scott/no-excuses.mp3', 6, 2),
(48, 'No matters how hard it get', 9, 9, 12, '4:15', 'assets/music/ben-lionel-scott/no-matters-how-hard-it-get.mp3', 7, 2),
(49, 'Pain is temporary', 9, 9, 12, '3:51', 'assets/music/ben-lionel-scott/pain-is-temporary.mp3', 8, 4),
(50, 'When life is hard', 9, 9, 12, '2:51', 'assets/music/ben-lionel-scott/when-life-is-hard.mp3', 9, 2),
(51, 'You will not defeat me!', 9, 9, 12, '3:00', 'assets/music/ben-lionel-scott/you-will-not-defeat-me.mp3', 10, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(5, 'wellie', 'Joell', 'Hegeman', 'J.a.r.hegeman@gmail.com', '39450f3f626570eec4ee4cffdf07afcb', '0000-00-00 00:00:00', '../../assets/images/profile-pic/head_emerald.png');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `playlistsongs`
--
ALTER TABLE `playlistsongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT voor een tabel `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT voor een tabel `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT voor een tabel `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `playlistsongs`
--
ALTER TABLE `playlistsongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT voor een tabel `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
