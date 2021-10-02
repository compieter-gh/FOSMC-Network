-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2021 at 12:11 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minecraft_luckperms`
--

-- --------------------------------------------------------

--
-- Table structure for table `luckperms_actions`
--

CREATE TABLE `luckperms_actions` (
  `id` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `actor_uuid` varchar(36) NOT NULL,
  `actor_name` varchar(100) NOT NULL,
  `type` char(1) NOT NULL,
  `acted_uuid` varchar(36) NOT NULL,
  `acted_name` varchar(36) NOT NULL,
  `action` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `luckperms_actions`
--

INSERT INTO `luckperms_actions` (`id`, `time`, `actor_uuid`, `actor_name`, `type`, `acted_uuid`, `acted_name`, `action`) VALUES
(1, 1633210684, '00000000-0000-0000-0000-000000000000', 'Console@hub', 'U', '0f9c7d29-169c-4458-b3c6-397ff24b3114', 'compieter', 'permission set luckperms.* true'),
(2, 1633210859, '0f9c7d29-169c-4458-b3c6-397ff24b3114', 'ComPieter@hub', 'G', 'null', 'default', 'webeditor add bungeecord.command.server true server=bungee'),
(3, 1633210859, '0f9c7d29-169c-4458-b3c6-397ff24b3114', 'ComPieter@hub', 'G', 'null', 'default', 'webeditor add bukkit.command.plugins true'),
(4, 1633210859, '0f9c7d29-169c-4458-b3c6-397ff24b3114', 'ComPieter@hub', 'G', 'null', 'default', 'webeditor add bungeecord.command.list true server=bungee'),
(5, 1633210859, '0f9c7d29-169c-4458-b3c6-397ff24b3114', 'ComPieter@hub', 'G', 'null', 'default', 'webeditor add bukkit.command.tps true'),
(6, 1633210859, '0f9c7d29-169c-4458-b3c6-397ff24b3114', 'ComPieter@hub', 'G', 'null', 'default', 'webeditor add bukkit.command.version true'),
(7, 1633210859, '0f9c7d29-169c-4458-b3c6-397ff24b3114', 'ComPieter@hub', 'G', 'null', 'admin', 'webeditor add group.default true'),
(8, 1633210859, '0f9c7d29-169c-4458-b3c6-397ff24b3114', 'ComPieter@hub', 'G', 'null', 'admin', 'webeditor add bungeecord.command.reload true server=bungee'),
(9, 1633210859, '0f9c7d29-169c-4458-b3c6-397ff24b3114', 'ComPieter@hub', 'G', 'null', 'admin', 'webeditor add bungeecord.command.end true server=bungee'),
(10, 1633210859, '0f9c7d29-169c-4458-b3c6-397ff24b3114', 'ComPieter@hub', 'G', 'null', 'admin', 'webeditor add bungeecord.command.ip true server=bungee'),
(11, 1633210859, '0f9c7d29-169c-4458-b3c6-397ff24b3114', 'ComPieter@hub', 'G', 'null', 'admin', 'webeditor add bungeecord.command.alert true server=bungee'),
(12, 1633211009, '0f9c7d29-169c-4458-b3c6-397ff24b3114', 'ComPieter@hub', 'G', 'null', 'admin', 'webeditor add * true'),
(13, 1633211009, '0f9c7d29-169c-4458-b3c6-397ff24b3114', 'ComPieter@hub', 'G', 'null', 'contributers', 'webeditor add group.default true'),
(14, 1633211057, '0f9c7d29-169c-4458-b3c6-397ff24b3114', 'ComPieter@hub', 'U', '0f9c7d29-169c-4458-b3c6-397ff24b3114', 'compieter', 'parent set admin'),
(15, 1633211673, '0f9c7d29-169c-4458-b3c6-397ff24b3114', 'ComPieter@hub', 'G', 'null', 'default', 'webeditor add essentials.motd true server=hub');

-- --------------------------------------------------------

--
-- Table structure for table `luckperms_groups`
--

CREATE TABLE `luckperms_groups` (
  `name` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `luckperms_groups`
--

INSERT INTO `luckperms_groups` (`name`) VALUES
('admin'),
('contributers'),
('default');

-- --------------------------------------------------------

--
-- Table structure for table `luckperms_group_permissions`
--

CREATE TABLE `luckperms_group_permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(36) NOT NULL,
  `permission` varchar(200) NOT NULL,
  `value` tinyint(1) NOT NULL,
  `server` varchar(36) NOT NULL,
  `world` varchar(64) NOT NULL,
  `expiry` bigint(20) NOT NULL,
  `contexts` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `luckperms_group_permissions`
--

INSERT INTO `luckperms_group_permissions` (`id`, `name`, `permission`, `value`, `server`, `world`, `expiry`, `contexts`) VALUES
(1, 'default', 'bungeecord.command.server', 1, 'bungee', 'global', 0, '{}'),
(2, 'default', 'bukkit.command.tps', 1, 'global', 'global', 0, '{}'),
(3, 'default', 'bukkit.command.version', 1, 'global', 'global', 0, '{}'),
(4, 'default', 'bukkit.command.plugins', 1, 'global', 'global', 0, '{}'),
(5, 'default', 'bungeecord.command.list', 1, 'bungee', 'global', 0, '{}'),
(6, 'admin', 'group.default', 1, 'global', 'global', 0, '{}'),
(7, 'admin', 'bungeecord.command.reload', 1, 'bungee', 'global', 0, '{}'),
(8, 'admin', 'bungeecord.command.end', 1, 'bungee', 'global', 0, '{}'),
(9, 'admin', 'bungeecord.command.ip', 1, 'bungee', 'global', 0, '{}'),
(10, 'admin', 'bungeecord.command.alert', 1, 'bungee', 'global', 0, '{}'),
(11, 'admin', '*', 1, 'global', 'global', 0, '{}'),
(12, 'contributers', 'group.default', 1, 'global', 'global', 0, '{}'),
(13, 'default', 'essentials.motd', 1, 'hub', 'global', 0, '{}');

-- --------------------------------------------------------

--
-- Table structure for table `luckperms_messenger`
--

CREATE TABLE `luckperms_messenger` (
  `id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `luckperms_players`
--

CREATE TABLE `luckperms_players` (
  `uuid` varchar(36) NOT NULL,
  `username` varchar(16) NOT NULL,
  `primary_group` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `luckperms_players`
--

INSERT INTO `luckperms_players` (`uuid`, `username`, `primary_group`) VALUES
('0f9c7d29-169c-4458-b3c6-397ff24b3114', 'compieter', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `luckperms_tracks`
--

CREATE TABLE `luckperms_tracks` (
  `name` varchar(36) NOT NULL,
  `groups` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `luckperms_user_permissions`
--

CREATE TABLE `luckperms_user_permissions` (
  `id` int(11) NOT NULL,
  `uuid` varchar(36) NOT NULL,
  `permission` varchar(200) NOT NULL,
  `value` tinyint(1) NOT NULL,
  `server` varchar(36) NOT NULL,
  `world` varchar(64) NOT NULL,
  `expiry` bigint(20) NOT NULL,
  `contexts` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `luckperms_user_permissions`
--

INSERT INTO `luckperms_user_permissions` (`id`, `uuid`, `permission`, `value`, `server`, `world`, `expiry`, `contexts`) VALUES
(2, '0f9c7d29-169c-4458-b3c6-397ff24b3114', 'luckperms.*', 1, 'global', 'global', 0, '{}'),
(3, '0f9c7d29-169c-4458-b3c6-397ff24b3114', 'group.admin', 1, 'global', 'global', 0, '{}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `luckperms_actions`
--
ALTER TABLE `luckperms_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `luckperms_groups`
--
ALTER TABLE `luckperms_groups`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `luckperms_group_permissions`
--
ALTER TABLE `luckperms_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `luckperms_group_permissions_name` (`name`);

--
-- Indexes for table `luckperms_messenger`
--
ALTER TABLE `luckperms_messenger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `luckperms_players`
--
ALTER TABLE `luckperms_players`
  ADD PRIMARY KEY (`uuid`),
  ADD KEY `luckperms_players_username` (`username`);

--
-- Indexes for table `luckperms_tracks`
--
ALTER TABLE `luckperms_tracks`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `luckperms_user_permissions`
--
ALTER TABLE `luckperms_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `luckperms_user_permissions_uuid` (`uuid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `luckperms_actions`
--
ALTER TABLE `luckperms_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `luckperms_group_permissions`
--
ALTER TABLE `luckperms_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `luckperms_messenger`
--
ALTER TABLE `luckperms_messenger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `luckperms_user_permissions`
--
ALTER TABLE `luckperms_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
