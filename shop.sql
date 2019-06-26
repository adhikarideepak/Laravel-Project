-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 26, 2019 at 06:23 PM
-- Server version: 10.2.7-MariaDB-10.2.7+maria~xenial
-- PHP Version: 7.2.19-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `abilities`
--

CREATE TABLE `abilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `entity_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `only_owned` tinyint(1) NOT NULL DEFAULT 0,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abilities`
--

INSERT INTO `abilities` (`id`, `name`, `title`, `entity_id`, `entity_type`, `only_owned`, `options`, `scope`, `created_at`, `updated_at`) VALUES
(10, '*', 'Manage everything owned', NULL, '*', 1, NULL, NULL, '2019-06-22 08:15:43', '2019-06-22 08:15:43'),
(13, 'ban-users', 'Ban users', NULL, NULL, 0, NULL, NULL, '2019-06-22 12:36:36', '2019-06-22 12:36:36');

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'default', 'updated', 3, 'App\\User', 3, 'App\\User', '{\"attributes\":{\"name\":\"Administrator\",\"email\":\"test@gmail.com\",\"password\":\"$2y$10$K9EB6yWBANHpMJyytDeTR.PpXtLpxHz0yBbVNxMGImNXi6phKGlZm\"},\"old\":{\"name\":\"Administrator\",\"email\":\"test@gmail.com\",\"password\":\"$2y$10$K9EB6yWBANHpMJyytDeTR.PpXtLpxHz0yBbVNxMGImNXi6phKGlZm\"}}', '2019-06-24 04:12:38', '2019-06-24 04:12:38'),
(2, 'default', 'updated', 3, 'App\\User', 3, 'App\\User', '{\"attributes\":{\"name\":\"Administrator\",\"email\":\"test@gmail.com\",\"password\":\"$2y$10$K9EB6yWBANHpMJyytDeTR.PpXtLpxHz0yBbVNxMGImNXi6phKGlZm\"},\"old\":{\"name\":\"Administrator\",\"email\":\"test@gmail.com\",\"password\":\"$2y$10$K9EB6yWBANHpMJyytDeTR.PpXtLpxHz0yBbVNxMGImNXi6phKGlZm\"}}', '2019-06-24 04:14:59', '2019-06-24 04:14:59'),
(3, 'default', 'updated', 3, 'App\\User', 3, 'App\\User', '{\"attributes\":{\"name\":\"Administrator\",\"email\":\"test@gmail.com\",\"password\":\"$2y$10$K9EB6yWBANHpMJyytDeTR.PpXtLpxHz0yBbVNxMGImNXi6phKGlZm\"},\"old\":{\"name\":\"Administrator\",\"email\":\"test@gmail.com\",\"password\":\"$2y$10$K9EB6yWBANHpMJyytDeTR.PpXtLpxHz0yBbVNxMGImNXi6phKGlZm\"}}', '2019-06-24 05:34:54', '2019-06-24 05:34:54'),
(4, 'default', 'updated', 3, 'App\\User', 3, 'App\\User', '{\"attributes\":{\"name\":\"Administrator\",\"email\":\"test@gmail.com\",\"password\":\"$2y$10$K9EB6yWBANHpMJyytDeTR.PpXtLpxHz0yBbVNxMGImNXi6phKGlZm\"},\"old\":{\"name\":\"Administrator\",\"email\":\"test@gmail.com\",\"password\":\"$2y$10$K9EB6yWBANHpMJyytDeTR.PpXtLpxHz0yBbVNxMGImNXi6phKGlZm\"}}', '2019-06-24 06:14:22', '2019-06-24 06:14:22'),
(5, 'default', 'updated', 3, 'App\\User', 3, 'App\\User', '{\"attributes\":{\"name\":\"Administrator\",\"email\":\"test@gmail.com\",\"password\":\"$2y$10$K9EB6yWBANHpMJyytDeTR.PpXtLpxHz0yBbVNxMGImNXi6phKGlZm\"},\"old\":{\"name\":\"Administrator\",\"email\":\"test@gmail.com\",\"password\":\"$2y$10$K9EB6yWBANHpMJyytDeTR.PpXtLpxHz0yBbVNxMGImNXi6phKGlZm\"}}', '2019-06-24 06:22:46', '2019-06-24 06:22:46'),
(6, 'default', 'updated', 3, 'App\\User', 3, 'App\\User', '{\"attributes\":{\"name\":\"Administrator\",\"email\":\"admin@gmail.com\",\"password\":\"$2y$10$K9EB6yWBANHpMJyytDeTR.PpXtLpxHz0yBbVNxMGImNXi6phKGlZm\"},\"old\":{\"name\":\"Administrator\",\"email\":\"admin@gmail.com\",\"password\":\"$2y$10$K9EB6yWBANHpMJyytDeTR.PpXtLpxHz0yBbVNxMGImNXi6phKGlZm\"}}', '2019-06-24 06:26:26', '2019-06-24 06:26:26'),
(7, 'default', 'updated', 3, 'App\\User', 3, 'App\\User', '{\"attributes\":{\"name\":\"Administrator\",\"email\":\"admin@gmail.com\",\"password\":\"$2y$10$K9EB6yWBANHpMJyytDeTR.PpXtLpxHz0yBbVNxMGImNXi6phKGlZm\"},\"old\":{\"name\":\"Administrator\",\"email\":\"admin@gmail.com\",\"password\":\"$2y$10$K9EB6yWBANHpMJyytDeTR.PpXtLpxHz0yBbVNxMGImNXi6phKGlZm\"}}', '2019-06-24 07:16:51', '2019-06-24 07:16:51'),
(8, 'default', 'updated', 3, 'App\\User', 3, 'App\\User', '{\"attributes\":{\"name\":\"Administrator\",\"email\":\"admin@gmail.com\",\"password\":\"$2y$10$K9EB6yWBANHpMJyytDeTR.PpXtLpxHz0yBbVNxMGImNXi6phKGlZm\"},\"old\":{\"name\":\"Administrator\",\"email\":\"admin@gmail.com\",\"password\":\"$2y$10$K9EB6yWBANHpMJyytDeTR.PpXtLpxHz0yBbVNxMGImNXi6phKGlZm\"}}', '2019-06-26 06:04:57', '2019-06-26 06:04:57'),
(9, 'default', 'updated', 3, 'App\\User', 3, 'App\\User', '{\"attributes\":{\"name\":\"Administrator\",\"email\":\"admin@gmail.com\",\"password\":\"$2y$10$K9EB6yWBANHpMJyytDeTR.PpXtLpxHz0yBbVNxMGImNXi6phKGlZm\"},\"old\":{\"name\":\"Administrator\",\"email\":\"admin@gmail.com\",\"password\":\"$2y$10$K9EB6yWBANHpMJyytDeTR.PpXtLpxHz0yBbVNxMGImNXi6phKGlZm\"}}', '2019-06-26 06:23:53', '2019-06-26 06:23:53'),
(10, 'default', 'updated', 3, 'App\\User', 3, 'App\\User', '{\"attributes\":{\"name\":\"Administrator\",\"email\":\"admin@gmail.com\",\"password\":\"$2y$10$K9EB6yWBANHpMJyytDeTR.PpXtLpxHz0yBbVNxMGImNXi6phKGlZm\"},\"old\":{\"name\":\"Administrator\",\"email\":\"admin@gmail.com\",\"password\":\"$2y$10$K9EB6yWBANHpMJyytDeTR.PpXtLpxHz0yBbVNxMGImNXi6phKGlZm\"}}', '2019-06-26 07:15:53', '2019-06-26 07:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `assigned_roles`
--

CREATE TABLE `assigned_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restricted_to_id` int(10) UNSIGNED DEFAULT NULL,
  `restricted_to_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scope` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assigned_roles`
--

INSERT INTO `assigned_roles` (`id`, `role_id`, `entity_id`, `entity_type`, `restricted_to_id`, `restricted_to_type`, `scope`) VALUES
(4, 1, 3, 'App\\User', NULL, NULL, NULL),
(6, 3, 4, 'App\\User', NULL, NULL, NULL),
(7, 3, 3, 'App\\User', NULL, NULL, NULL),
(8, 4, 5, 'App\\User', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `remember_token` varchar(250) CHARACTER SET latin1 NOT NULL,
  `timestamps` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `remember_token`, `timestamps`, `created_at`, `updated_at`) VALUES
(1, 'Ericka Jerde', 'oliver.upton@example.net', 'kTpCByViUi', '2019-06-21 07:41:27', '2019-06-21 02:11:27', '2019-06-21 02:11:27'),
(2, 'Mr. Lance Spinka', 'towne.glenda@example.org', 'DAVF7PuGYd', '2019-06-21 07:41:27', '2019-06-21 02:11:27', '2019-06-21 02:11:27'),
(3, 'Dave Bartoletti', 'mdibbert@example.org', 'BCkSnI6Noa', '2019-06-21 07:41:28', '2019-06-21 02:11:28', '2019-06-21 02:11:28'),
(4, 'Daphney Franecki', 'blair.schuster@example.com', 'C6vAbaRqq9', '2019-06-21 07:41:28', '2019-06-21 02:11:28', '2019-06-21 02:11:28'),
(5, 'Armand Schmitt', 'dare.wilfred@example.org', '8BnsLse65O', '2019-06-21 07:41:28', '2019-06-21 02:11:28', '2019-06-21 02:11:28'),
(6, 'Charity Legros', 'andre.hegmann@example.net', 'RD3l5ekKdC', '2019-06-21 07:41:28', '2019-06-21 02:11:28', '2019-06-21 02:11:28'),
(7, 'Prof. Bart Funk PhD', 'zmacejkovic@example.com', 'KQFO5YGpLx', '2019-06-21 07:41:28', '2019-06-21 02:11:28', '2019-06-21 02:11:28'),
(8, 'Daphney Steuber', 'bertram80@example.org', 'PjMn1zCMH7', '2019-06-21 07:41:28', '2019-06-21 02:11:28', '2019-06-21 02:11:28'),
(9, 'Mr. Tristin Gusikowski PhD', 'mitchell.garland@example.com', '1Kbg2i7UDy', '2019-06-21 07:41:28', '2019-06-21 02:11:28', '2019-06-21 02:11:28'),
(10, 'Kay Ortiz Sr.', 'bella59@example.org', 'IXYl3ILs1k', '2019-06-21 07:41:28', '2019-06-21 02:11:28', '2019-06-21 02:11:28'),
(11, 'Amira DuBuque', 'jacobson.yadira@example.com', 'qg9ToQP52W', '2019-06-21 07:41:28', '2019-06-21 02:11:28', '2019-06-21 02:11:28'),
(12, 'Prof. Jean Schuster', 'nigel42@example.org', '4Zzt6tSj8C', '2019-06-21 07:41:28', '2019-06-21 02:11:28', '2019-06-21 02:11:28'),
(13, 'Ms. Bonita Stoltenberg PhD', 'schuyler.gislason@example.org', 'TrcRZ8k3U3', '2019-06-21 07:41:28', '2019-06-21 02:11:28', '2019-06-21 02:11:28'),
(14, 'Dr. Khalid Lynch II', 'zgoyette@example.net', 'cH29R6zUhb', '2019-06-21 07:41:28', '2019-06-21 02:11:28', '2019-06-21 02:11:28'),
(15, 'Reanna Kuphal', 'irma.gaylord@example.com', 'STSxwpOIFp', '2019-06-21 07:41:28', '2019-06-21 02:11:28', '2019-06-21 02:11:28'),
(16, 'Dr. Rocio Dooley', 'domenico35@example.org', 'CTsKiTNIUR', '2019-06-21 07:41:28', '2019-06-21 02:11:28', '2019-06-21 02:11:28'),
(17, 'Miss Zelda Klein', 'damore.orland@example.org', '0WQChwzWTQ', '2019-06-21 07:41:28', '2019-06-21 02:11:28', '2019-06-21 02:11:28'),
(18, 'Kade Connelly', 'johnathon.sawayn@example.org', 'YajWIsdgHV', '2019-06-21 07:41:28', '2019-06-21 02:11:28', '2019-06-21 02:11:28'),
(19, 'Rebecca Kuhlman', 'michale48@example.net', '27RvqubjCB', '2019-06-21 07:41:28', '2019-06-21 02:11:28', '2019-06-21 02:11:28'),
(20, 'Elsie Senger', 'jbuckridge@example.com', '1ctgpNmwpd', '2019-06-21 07:41:28', '2019-06-21 02:11:28', '2019-06-21 02:11:28'),
(21, 'Andres Rippin', 'zemlak.leonardo@example.net', 'QJVTKBszif', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(22, 'Ms. Emely Bashirian', 'jdibbert@example.net', 'L2LWN0Qqgt', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(23, 'Jessica Larkin', 'runte.sonny@example.org', 'upujya0WSW', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(24, 'Dr. Rico Frami', 'qritchie@example.org', 'LEJtGnlq80', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(25, 'Coleman Lakin', 'keara11@example.org', 'A7V1W3Ofdm', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(26, 'Willa Gulgowski', 'sage.doyle@example.net', 'B14tTmAQTB', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(27, 'Freddy Ryan', 'dedric.schmidt@example.org', 'l4lCZNKwYS', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(28, 'Dr. Brant Wolff III', 'ursula.goyette@example.net', 'ks8NhefWYs', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(29, 'Dr. Anne Kris I', 'reyna18@example.com', 'ihDb3iWtD1', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(30, 'Nat Kutch', 'mallory68@example.org', 'DdiIhgvm6W', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(31, 'Mattie Sanford', 'michale38@example.net', 'MS8znPvZUc', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(32, 'Fred Thompson', 'rstreich@example.com', 'HmJRzRPp7i', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(33, 'Mrs. Joy Thiel', 'mauricio.corwin@example.org', '2k3uStUMlX', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(34, 'Ross Smith', 'cnitzsche@example.org', 'GGlkYYNrth', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(35, 'August Stark', 'lavonne.weissnat@example.net', 'w9MFwbWHu6', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(36, 'Holden Schinner V', 'verda45@example.org', 'zK4vDFsAng', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(37, 'Angelica Lubowitz', 'annalise72@example.net', 'ZXB10x16aQ', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(38, 'Wilma Wyman', 'pcorkery@example.com', 'NrcjGYcTMh', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(39, 'Murl Beier DDS', 'anabel33@example.org', '0EtvMBHt6k', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(40, 'Deshawn Brekke', 'caitlyn.kohler@example.net', 'xwwqvkjP2X', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(41, 'Shea Deckow', 'vjerde@example.com', 'MuFSsmA1bP', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(42, 'Hailee Schiller', 'walter.wiley@example.org', 'wPQMCiaYjN', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(43, 'Prof. Keith Dicki I', 'dickinson.allison@example.com', '3XctAuQp53', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(44, 'Tommie Bauch', 'gerson.donnelly@example.org', 'vUuK7tQhG2', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(45, 'Amos Von', 'gilda.abernathy@example.org', 'KFxfa49vii', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(46, 'Joelle Legros', 'fern80@example.com', 'qQvDYxsmGj', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(47, 'Matilde Roberts I', 'anjali.hyatt@example.net', 'mOzPd8TM5C', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(48, 'Antonina Gislason', 'mollie.hickle@example.org', 'eTtInS4kOH', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(49, 'Clemmie Okuneva', 'raquel.auer@example.net', 'HGQjksbNvQ', '2019-06-21 07:41:29', '2019-06-21 02:11:29', '2019-06-21 02:11:29'),
(50, 'Ansley Pouros', 'meta.mertz@example.com', 'hy9xugMyDr', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(51, 'Dr. Laura Wunsch IV', 'sgleichner@example.org', 'Xro8CXcKXD', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(52, 'Lera Mayert', 'stanton.jayce@example.com', 'TCwbzhiL5V', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(53, 'Claudine Torphy', 'hahn.hertha@example.org', 'Wu8pozff8n', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(54, 'Shawna Balistreri', 'hansen.tressa@example.org', 'rxOpYiDhgY', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(55, 'Ashton Erdman', 'fredy99@example.com', 'FOpWnNErij', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(56, 'Prof. Roy Yost Sr.', 'zita60@example.org', '2SiZjYYEmG', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(57, 'Theresia Monahan', 'maida.lang@example.org', 'mxixeTycla', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(58, 'Florence Paucek', 'aarmstrong@example.com', '2mjfmZWt6u', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(59, 'Prof. Graham Morar', 'roger68@example.com', 'ni0vNY8WQE', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(60, 'Haylee Larkin', 'yokeefe@example.org', 'x2Anjdg0Xr', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(61, 'Ms. Delpha Wiegand II', 'ihayes@example.net', '1bLxAUCAaz', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(62, 'Prof. Brandon Bruen III', 'enos.legros@example.com', 'ScauTFTGNJ', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(63, 'Jazmyne Heaney', 'zleannon@example.com', 'DGD1dzc4mL', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(64, 'Prof. Keira Ratke', 'haag.alanis@example.org', 'hodI9lITIN', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(65, 'Mrs. Gina Wiza', 'dooley.keanu@example.org', 'FKpjCAKMT9', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(66, 'Dianna Bartell', 'eva.runolfsson@example.com', '4CSXjn6ht1', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(67, 'Raquel Osinski', 'anderson.oliver@example.net', 'LroBh84Ge5', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(68, 'Emilia Goodwin', 'kristopher.considine@example.com', 'KFEtyNPd79', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(69, 'Elton Haley', 'serenity.lang@example.org', '7ljXafzXob', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(70, 'Marianne Batz Jr.', 'wiza.isac@example.org', 'U0kY5Jgn5l', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(71, 'Prof. Damian Berge', 'uhansen@example.net', 'Udl9S0LLUL', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(72, 'Rory Altenwerth', 'dubuque.jayne@example.net', 'OhClawPpzm', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(73, 'Cali Tremblay', 'helen.blick@example.com', 'XhsiLTu0ks', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(74, 'Gwendolyn Pfannerstill', 'jan.rowe@example.net', 'dYEzRfXcIU', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(75, 'Keon Hilpert', 'kwalker@example.org', 'A9YPsjXjrN', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(76, 'Lyda Goldner', 'bernier.lucy@example.org', 'kMunPRVdYH', '2019-06-21 07:41:30', '2019-06-21 02:11:30', '2019-06-21 02:11:30'),
(77, 'Dr. Fae Kreiger V', 'wilkinson.jeramie@example.com', 'IVoXhmxEyU', '2019-06-21 07:41:31', '2019-06-21 02:11:31', '2019-06-21 02:11:31'),
(78, 'Prof. Jevon Pacocha V', 'wyman.gabrielle@example.net', 'VycaUwAuD1', '2019-06-21 07:41:31', '2019-06-21 02:11:31', '2019-06-21 02:11:31'),
(79, 'Genoveva Hilpert', 'cooper05@example.com', '9dpM4gbBTw', '2019-06-21 07:41:31', '2019-06-21 02:11:31', '2019-06-21 02:11:31'),
(80, 'Ms. Adell Emmerich Sr.', 'evelyn.beer@example.org', 's1RO8NdQAp', '2019-06-21 07:41:31', '2019-06-21 02:11:31', '2019-06-21 02:11:31'),
(81, 'Zachary Ernser', 'marisa48@example.org', 'IqQV90CpDa', '2019-06-21 07:41:31', '2019-06-21 02:11:31', '2019-06-21 02:11:31'),
(82, 'Lottie Osinski IV', 'josianne.quitzon@example.net', '0pzf3EfMIp', '2019-06-21 07:41:31', '2019-06-21 02:11:31', '2019-06-21 02:11:31'),
(83, 'Miss Abigail Blanda', 'fabian50@example.net', '4B7qv3xPHY', '2019-06-21 07:41:31', '2019-06-21 02:11:31', '2019-06-21 02:11:31'),
(84, 'Dr. Aidan Carter', 'wehner.savion@example.org', 'bQdmK0hygn', '2019-06-21 07:41:31', '2019-06-21 02:11:31', '2019-06-21 02:11:31'),
(85, 'Dr. Graham Kiehn DVM', 'heaney.jalen@example.com', 'RNCdTxmt3y', '2019-06-21 07:41:31', '2019-06-21 02:11:31', '2019-06-21 02:11:31'),
(86, 'Itzel Will', 'mayer.manley@example.com', 'vNLEJqLjfm', '2019-06-21 07:41:31', '2019-06-21 02:11:31', '2019-06-21 02:11:31'),
(87, 'Retta McDermott III', 'nleuschke@example.org', 'PefeIY3SZy', '2019-06-21 07:41:31', '2019-06-21 02:11:31', '2019-06-21 02:11:31'),
(88, 'Rocio Morissette DVM', 'pblanda@example.net', 'G3fBODQzZR', '2019-06-21 07:41:31', '2019-06-21 02:11:31', '2019-06-21 02:11:31'),
(89, 'Miss Ally Mills Jr.', 'rwintheiser@example.net', 'quK84pgwV6', '2019-06-21 07:41:31', '2019-06-21 02:11:31', '2019-06-21 02:11:31'),
(90, 'Kelsi Hills DDS', 'nnader@example.com', 'rBpAbNXwqx', '2019-06-21 07:41:31', '2019-06-21 02:11:31', '2019-06-21 02:11:31'),
(91, 'Willard Green', 'ucummerata@example.net', '6ZO2Sm07np', '2019-06-21 07:41:31', '2019-06-21 02:11:31', '2019-06-21 02:11:31'),
(92, 'Norris Block', 'ralph30@example.com', 'J8yk3XNdwU', '2019-06-21 07:41:31', '2019-06-21 02:11:31', '2019-06-21 02:11:31'),
(93, 'Bette Roberts', 'senger.morris@example.org', 'OINp653kAk', '2019-06-21 07:41:31', '2019-06-21 02:11:31', '2019-06-21 02:11:31'),
(94, 'Waylon Bahringer', 'melvin.donnelly@example.com', '14ik3bvD7k', '2019-06-21 07:41:31', '2019-06-21 02:11:31', '2019-06-21 02:11:31'),
(95, 'Josie Ankunding', 'glenna.kuhic@example.com', 'Po6qcid5I0', '2019-06-21 07:41:31', '2019-06-21 02:11:31', '2019-06-21 02:11:31'),
(96, 'Oleta Walker', 'murphy.wyman@example.org', 'KHkhMQo4WB', '2019-06-21 07:41:31', '2019-06-21 02:11:31', '2019-06-21 02:11:31'),
(97, 'Willa Leffler', 'buckridge.gladyce@example.org', 'bkT5p1DDu4', '2019-06-21 07:41:31', '2019-06-21 02:11:31', '2019-06-21 02:11:31'),
(98, 'Deshawn Kris', 'urodriguez@example.net', '3r0cJNjQ2K', '2019-06-21 07:41:31', '2019-06-21 02:11:31', '2019-06-21 02:11:31'),
(99, 'Mrs. Bette Greenholt IV', 'cooper.vandervort@example.net', 'jOZOBqr0lb', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(100, 'Edison Wolf', 'louisa.trantow@example.com', 'oWoibr11Pi', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(101, 'Palma Fadel', 'beatty.jana@example.com', 'nrv9lkVGjP', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(102, 'Mona Marvin', 'kamren63@example.net', '1Wa9Gw44gX', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(103, 'Mr. Winfield Kuvalis', 'stefanie60@example.org', 'Psh6n4J9vQ', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(104, 'Austyn Kulas', 'mschroeder@example.net', '6wDbNM79Kh', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(105, 'Zora Welch', 'darion.hand@example.org', 'g6Bcn6Y2Tb', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(106, 'Mr. Mathias Koch', 'qmurazik@example.net', 'gDzdPVxsGJ', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(107, 'Dr. Lauriane Thompson', 'pedro84@example.com', 'VqiwEMqiNO', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(108, 'Ben Jakubowski', 'vincenzo64@example.com', 'AhMU9KGNmF', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(109, 'Mr. Estevan Doyle V', 'gerard.shields@example.net', 'QtC0er1ztS', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(110, 'Beulah Batz', 'awalsh@example.net', 'yC7yaLpkQC', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(111, 'Dr. Desiree Keebler', 'marcellus24@example.net', 'jpiGSBuG0U', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(112, 'Prof. Jeramie Sanford', 'elisa63@example.org', 'vXjuf7AqdI', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(113, 'Alison Cremin', 'jamil44@example.com', '0l9eZgV0ky', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(114, 'Chadd Jones', 'kwyman@example.com', 'fGLFi1eE3r', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(115, 'Dr. Devante Kris', 'zion.corkery@example.org', 'sr9KP2lSOJ', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(116, 'Eve Orn', 'uward@example.net', 'wYSRroOwek', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(117, 'Wilson Wintheiser', 'katelin61@example.com', 't57V4GmrUa', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(118, 'Georgiana Emmerich', 'nicholaus67@example.com', 'B2ucOn7TuH', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(119, 'Mr. Sigrid Kohler', 'clinton.beer@example.net', 'c6JUi6t8On', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(120, 'Kody Murray', 'emil35@example.com', 'l7WgkF8Ud6', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(121, 'Lynn Pfeffer', 'fausto.powlowski@example.org', '8L7LJBtgjw', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(122, 'Linnie Franecki', 'dell.okuneva@example.net', 'ds7K3f5jYw', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(123, 'Sarai Witting', 'jamie.rowe@example.com', 'c7S41BMfyK', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(124, 'Martine Lakin V', 'witting.annabel@example.com', '4cNrEBKM4S', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(125, 'Mr. Santa Feest', 'alessandro48@example.net', 'Lfag806mwD', '2019-06-21 07:41:32', '2019-06-21 02:11:32', '2019-06-21 02:11:32'),
(126, 'Prof. Kyleigh Cremin', 'mack41@example.org', 'at46oUNatB', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(127, 'Billy Connelly', 'heber.dickens@example.com', 'Y3YaN0icbz', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(128, 'Dr. Forest Bogisich', 'fjohnston@example.net', 'YSGzkJst7U', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(129, 'Dr. Thea Emmerich V', 'kokuneva@example.com', 'wcYjhKcs2Q', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(130, 'Kasandra Watsica', 'ullrich.clara@example.org', '1kHJ1R4aCS', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(131, 'Manuel Leffler', 'roxanne.macejkovic@example.com', 'LYhBnPQo27', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(132, 'Lesly Renner', 'awilkinson@example.org', 'RI7KHAQZoB', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(133, 'Noelia Greenholt', 'merritt96@example.net', 'qYisv1TJyM', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(134, 'Samir Berge', 'mhegmann@example.com', 'mGBTryiKNg', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(135, 'Jennings Frami', 'pflatley@example.com', 'Gk6b50UbOz', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(136, 'Savanah Wolf', 'vlangworth@example.com', 'pstB1B1dVV', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(137, 'Deshaun Rempel', 'vharvey@example.com', 'ddbf2xkXje', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(138, 'Logan Bayer', 'walker.sebastian@example.com', 'Cb2cAnClNy', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(139, 'Prof. Tad Ortiz MD', 'pearline65@example.net', 'wVp0esH03E', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(140, 'Irwin Leffler', 'bobbie19@example.org', '6Q5sEvAkYL', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(141, 'Prof. Jovany Rogahn', 'bernhard.sabryna@example.com', 'dBv0uRNqAR', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(142, 'Bianka Okuneva', 'omacejkovic@example.org', 'v40IJSmrvh', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(143, 'Dr. Berta Wiegand', 'taya.carroll@example.com', 'vqT2LxLm4V', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(144, 'Dr. Antwan Turcotte', 'mack25@example.net', 'dFA89sDJXW', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(145, 'Mr. Stan Corkery DDS', 'beahan.jovanny@example.net', 's3SityHDUM', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(146, 'Ruthe O\'Reilly Sr.', 'bahringer.keith@example.net', 'Q0KXefbHjr', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(147, 'Dr. Dusty Keebler DDS', 'price57@example.net', 'UcAFqKSmyw', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(148, 'Cecelia Robel DVM', 'vita87@example.org', 'O8WbDZnCwx', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(149, 'Eloy Stroman', 'ncasper@example.com', 'LUVXU9vRc4', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(150, 'Ms. Cheyenne Crona PhD', 'ritchie.stacy@example.org', 'UXV1N08wxB', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(151, 'Stacy Ferry', 'hoeger.juana@example.net', 'KleLpiSgUB', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(152, 'Claudine Feeney', 'medhurst.sarah@example.org', 'nmk1FUWtZZ', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(153, 'Jessyca Bradtke I', 'amelie27@example.net', 'u9loN5zDl0', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(154, 'Prof. Gail Nienow', 'yundt.darron@example.net', 'zCnjY1dre0', '2019-06-21 07:41:33', '2019-06-21 02:11:33', '2019-06-21 02:11:33'),
(155, 'Eriberto Prohaska', 'aidan.herman@example.com', 'yQsJTyNWVU', '2019-06-21 07:41:34', '2019-06-21 02:11:34', '2019-06-21 02:11:34'),
(156, 'Adele Boehm', 'lyla.muller@example.org', 'l8aKiLiE1n', '2019-06-21 07:41:34', '2019-06-21 02:11:34', '2019-06-21 02:11:34'),
(157, 'Gussie Maggio', 'kerluke.sigurd@example.net', '1MdC8MNICD', '2019-06-21 07:41:34', '2019-06-21 02:11:34', '2019-06-21 02:11:34'),
(158, 'Serena Strosin', 'hkreiger@example.net', '3SqMg5pryI', '2019-06-21 07:41:34', '2019-06-21 02:11:34', '2019-06-21 02:11:34'),
(159, 'Aurore Hintz I', 'justine82@example.net', 'p6ZLF7f8DO', '2019-06-21 07:41:34', '2019-06-21 02:11:34', '2019-06-21 02:11:34'),
(160, 'Dayton Boehm MD', 'morissette.catharine@example.com', 'jIaxQ6ndI9', '2019-06-21 07:41:34', '2019-06-21 02:11:34', '2019-06-21 02:11:34'),
(161, 'Mr. Dee Kerluke III', 'meda.schoen@example.org', 'iBNSzfg1Vi', '2019-06-21 07:41:34', '2019-06-21 02:11:34', '2019-06-21 02:11:34'),
(162, 'Cali Barrows', 'oswald85@example.com', 'enBe73NUul', '2019-06-21 07:41:34', '2019-06-21 02:11:34', '2019-06-21 02:11:34'),
(163, 'Dr. Kattie Hirthe', 'king.schaefer@example.net', '7hTo824w7Q', '2019-06-21 07:41:34', '2019-06-21 02:11:34', '2019-06-21 02:11:34'),
(164, 'Leo Ledner', 'erdman.maggie@example.net', '1891COy0y1', '2019-06-21 07:41:34', '2019-06-21 02:11:34', '2019-06-21 02:11:34'),
(165, 'Meda Lebsack', 'mariano.tremblay@example.net', 'FA31yNnVr7', '2019-06-21 07:41:34', '2019-06-21 02:11:34', '2019-06-21 02:11:34'),
(166, 'Alessandro Pacocha', 'gorczany.darrel@example.net', 'fOUCEABmHR', '2019-06-21 07:41:34', '2019-06-21 02:11:34', '2019-06-21 02:11:34'),
(167, 'Courtney Mueller PhD', 'fahey.remington@example.org', 'Q3S0J5UECV', '2019-06-21 07:41:34', '2019-06-21 02:11:34', '2019-06-21 02:11:34'),
(168, 'Gretchen Kautzer', 'ivory.jones@example.org', 'Q9I2Ay0HJC', '2019-06-21 07:41:34', '2019-06-21 02:11:34', '2019-06-21 02:11:34'),
(169, 'Jacquelyn Beer', 'phamill@example.net', 'lFf6ekXBWB', '2019-06-21 07:41:34', '2019-06-21 02:11:34', '2019-06-21 02:11:34'),
(170, 'Calista Gerhold', 'moises89@example.org', 'v6TQzpGrL3', '2019-06-21 07:41:34', '2019-06-21 02:11:34', '2019-06-21 02:11:34'),
(171, 'Retha Thiel', 'gennaro.cole@example.net', 'Z1iz74xdpJ', '2019-06-21 07:41:34', '2019-06-21 02:11:34', '2019-06-21 02:11:34'),
(172, 'Wilfrid Feest', 'gokon@example.org', 'IW7S20PltX', '2019-06-21 07:41:34', '2019-06-21 02:11:34', '2019-06-21 02:11:34'),
(173, 'Celestine Bayer', 'richmond92@example.net', 'Ge1I07nOE1', '2019-06-21 07:41:34', '2019-06-21 02:11:34', '2019-06-21 02:11:34'),
(174, 'Mikayla Prohaska MD', 'schmeler.magnus@example.net', '7Entmz5myF', '2019-06-21 07:41:34', '2019-06-21 02:11:34', '2019-06-21 02:11:34'),
(175, 'Prof. Lorenzo Baumbach Sr.', 'bernhard.everett@example.org', 'L8VsbeD1ka', '2019-06-21 07:41:34', '2019-06-21 02:11:34', '2019-06-21 02:11:34'),
(176, 'Alba Bode', 'pbradtke@example.net', 'jjRU9pMN9m', '2019-06-21 07:41:34', '2019-06-21 02:11:34', '2019-06-21 02:11:34'),
(177, 'Dr. Esmeralda Rath', 'bergnaum.tyra@example.net', '1rjbxazuPb', '2019-06-21 07:41:34', '2019-06-21 02:11:34', '2019-06-21 02:11:34'),
(178, 'Prof. Nellie Dicki Sr.', 'vhalvorson@example.org', 'basEq4teSU', '2019-06-21 07:41:35', '2019-06-21 02:11:35', '2019-06-21 02:11:35'),
(179, 'Samara Carroll', 'billie.wisoky@example.net', 'BJbYesk16M', '2019-06-21 07:41:35', '2019-06-21 02:11:35', '2019-06-21 02:11:35'),
(180, 'Mr. Devante Hill I', 'bailee82@example.net', 'bOmcMEdaDo', '2019-06-21 07:41:35', '2019-06-21 02:11:35', '2019-06-21 02:11:35'),
(181, 'Prof. Johnson Emmerich III', 'blake.davis@example.net', 'YASvV9hQMI', '2019-06-21 07:41:35', '2019-06-21 02:11:35', '2019-06-21 02:11:35'),
(182, 'Ms. Vicenta Nader', 'qmoore@example.net', 'OOVqeiL8GV', '2019-06-21 07:41:35', '2019-06-21 02:11:35', '2019-06-21 02:11:35'),
(183, 'Efrain Yundt', 'laverna.anderson@example.net', '7MgyEO3aDB', '2019-06-21 07:41:35', '2019-06-21 02:11:35', '2019-06-21 02:11:35'),
(184, 'Lysanne Moore', 'denesik.clementina@example.net', 'kihDRVRA84', '2019-06-21 07:41:35', '2019-06-21 02:11:35', '2019-06-21 02:11:35'),
(185, 'Lauretta Douglas', 'parisian.osvaldo@example.net', 'O8MW431r8J', '2019-06-21 07:41:35', '2019-06-21 02:11:35', '2019-06-21 02:11:35'),
(186, 'Miss Aurore Moore IV', 'denesik.graham@example.net', 'YRuuL8bDf9', '2019-06-21 07:41:35', '2019-06-21 02:11:35', '2019-06-21 02:11:35'),
(187, 'Mr. Leone Halvorson II', 'whegmann@example.org', 'H6DvZm9xu5', '2019-06-21 07:41:35', '2019-06-21 02:11:35', '2019-06-21 02:11:35'),
(188, 'Ms. Edwina Zboncak', 'cquigley@example.org', 'aI8itnV4xE', '2019-06-21 07:41:35', '2019-06-21 02:11:35', '2019-06-21 02:11:35'),
(189, 'Prof. Malvina Stoltenberg', 'awiegand@example.net', 'kkt3VJdgoT', '2019-06-21 07:41:35', '2019-06-21 02:11:35', '2019-06-21 02:11:35'),
(190, 'Merl Donnelly', 'tyshawn.champlin@example.net', 'IkI7sZu42D', '2019-06-21 07:41:35', '2019-06-21 02:11:35', '2019-06-21 02:11:35'),
(191, 'Helena Wolff', 'mauricio24@example.net', 'FNE6D3BAwQ', '2019-06-21 07:41:35', '2019-06-21 02:11:35', '2019-06-21 02:11:35'),
(192, 'Brian Pfeffer', 'rice.emmalee@example.net', 'JvZdxaA9VJ', '2019-06-21 07:41:35', '2019-06-21 02:11:35', '2019-06-21 02:11:35'),
(193, 'Celestine Metz DVM', 'simeon36@example.org', 'xVVw2MIqvb', '2019-06-21 07:41:35', '2019-06-21 02:11:35', '2019-06-21 02:11:35'),
(194, 'Maeve Johnston', 'kris.camylle@example.org', 'NzNsBy5yCw', '2019-06-21 07:41:35', '2019-06-21 02:11:35', '2019-06-21 02:11:35'),
(195, 'Roxanne Abshire', 'sienna56@example.net', 'pszdXMOcUS', '2019-06-21 07:41:35', '2019-06-21 02:11:35', '2019-06-21 02:11:35'),
(196, 'Kristofer Runolfsdottir', 'valerie04@example.com', 'nHqqwsxuxO', '2019-06-21 07:41:35', '2019-06-21 02:11:35', '2019-06-21 02:11:35'),
(197, 'Marlee Monahan', 'jefferey34@example.com', 'ljwgIc3R2w', '2019-06-21 07:41:35', '2019-06-21 02:11:35', '2019-06-21 02:11:35'),
(198, 'Madyson Casper DVM', 'luettgen.maxwell@example.com', 'TT0BXz8Wul', '2019-06-21 07:41:35', '2019-06-21 02:11:35', '2019-06-21 02:11:35'),
(199, 'Scotty Gottlieb', 'chudson@example.net', 'Bn7F8YhBCo', '2019-06-21 07:41:35', '2019-06-21 02:11:35', '2019-06-21 02:11:35'),
(200, 'Georgiana Bruen', 'schuppe.willa@example.org', 'p6agun2vEN', '2019-06-21 07:41:36', '2019-06-21 02:11:36', '2019-06-21 02:11:36');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_06_19_100203_create_products_table', 1),
(5, '2019_06_19_100543_create_orders_table', 1),
(6, '2019_06_19_100604_create_order_items_table', 1),
(7, '2019_06_19_183755_create_bouncer_tables', 1),
(8, '2019_06_19_095336_create_customers_table', 2),
(9, '2019_06_24_090539_create_activity_log_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(20) NOT NULL,
  `invoice_number` bigint(20) NOT NULL,
  `total_amount` double(8,2) NOT NULL,
  `status` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `timestamps` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `invoice_number`, `total_amount`, `status`, `created_at`, `updated_at`, `timestamps`) VALUES
(1, 1, 7, 517.76, '1', '2019-06-22 12:59:54', '2019-06-22 12:59:54', '2019-06-22 18:29:54'),
(2, 2, 87, 1443.29, '1', '2019-06-22 12:59:54', '2019-06-22 12:59:54', '2019-06-22 18:29:54'),
(3, 3, 56, 1080.54, '0', '2019-06-22 12:59:54', '2019-06-22 12:59:54', '2019-06-22 18:29:54'),
(4, 4, 31, 1016.94, '1', '2019-06-22 12:59:54', '2019-06-22 12:59:54', '2019-06-22 18:29:54'),
(5, 5, 44, 25.50, '1', '2019-06-22 12:59:54', '2019-06-22 12:59:54', '2019-06-22 18:29:54'),
(6, 6, 46, 1178.97, '1', '2019-06-22 12:59:54', '2019-06-22 12:59:54', '2019-06-22 18:29:54'),
(7, 7, 16, 1068.17, '0', '2019-06-22 12:59:54', '2019-06-22 12:59:54', '2019-06-22 18:29:54'),
(8, 8, 62, 1238.92, '0', '2019-06-22 12:59:54', '2019-06-22 12:59:54', '2019-06-22 18:29:54'),
(9, 9, 45, 1895.15, '0', '2019-06-22 12:59:54', '2019-06-22 12:59:54', '2019-06-22 18:29:54'),
(10, 10, 65, 191.37, '0', '2019-06-22 12:59:54', '2019-06-22 12:59:54', '2019-06-22 18:29:54'),
(11, 11, 14, 692.17, '0', '2019-06-22 12:59:54', '2019-06-22 12:59:54', '2019-06-22 18:29:54'),
(12, 12, 83, 1283.71, '0', '2019-06-22 12:59:54', '2019-06-22 12:59:54', '2019-06-22 18:29:54'),
(13, 13, 21, 1172.04, '0', '2019-06-22 12:59:54', '2019-06-22 12:59:54', '2019-06-22 18:29:54'),
(14, 14, 11, 62.47, '0', '2019-06-22 12:59:54', '2019-06-22 12:59:54', '2019-06-22 18:29:54'),
(15, 15, 33, 1882.12, '1', '2019-06-22 12:59:54', '2019-06-22 12:59:54', '2019-06-22 18:29:54'),
(16, 16, 24, 1211.26, '1', '2019-06-22 12:59:54', '2019-06-22 12:59:54', '2019-06-22 18:29:54'),
(17, 17, 86, 1678.96, '1', '2019-06-22 12:59:54', '2019-06-22 12:59:54', '2019-06-22 18:29:54'),
(18, 18, 94, 1765.80, '1', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(19, 19, 52, 1734.70, '0', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(20, 20, 57, 1275.15, '1', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(21, 21, 15, 1407.79, '0', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(22, 22, 93, 1599.41, '1', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(23, 23, 6, 1568.03, '0', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(24, 24, 30, 1070.75, '1', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(25, 26, 37, 1920.15, '0', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(26, 25, 43, 543.65, '0', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(27, 27, 85, 698.73, '1', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(28, 27, 79, 1486.18, '1', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(29, 26, 71, 42.43, '1', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(30, 29, 20, 1341.34, '0', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(31, 32, 9, 728.68, '1', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(32, 33, 72, 1677.61, '1', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(33, 35, 36, 1560.08, '1', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(34, 29, 73, 1659.77, '0', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(35, 30, 68, 504.62, '0', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(36, 28, 2, 1461.60, '1', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(37, 31, 67, 1281.65, '0', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(38, 32, 17, 1677.84, '0', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(39, 33, 50, 782.16, '0', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(40, 34, 59, 1002.60, '0', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(41, 35, 8, 322.88, '0', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(42, 45, 69, 1036.63, '1', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(43, 36, 25, 610.60, '1', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(44, 33, 4, 784.13, '1', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(45, 37, 42, 992.36, '1', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(46, 36, 40, 672.48, '0', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(47, 37, 75, 266.98, '1', '2019-06-22 12:59:55', '2019-06-22 12:59:55', '2019-06-22 18:29:55'),
(48, 38, 55, 1583.14, '1', '2019-06-22 12:59:56', '2019-06-22 12:59:56', '2019-06-22 18:29:56'),
(49, 39, 18, 988.65, '1', '2019-06-22 12:59:56', '2019-06-22 12:59:56', '2019-06-22 18:29:56'),
(50, 48, 54, 1855.38, '1', '2019-06-22 12:59:56', '2019-06-22 12:59:56', '2019-06-22 18:29:56');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `quantity` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 1, 1, 3),
(2, 2, 2, 3),
(3, 1, 3, 3),
(4, 3, 4, 6),
(5, 2, 5, 6),
(6, 4, 6, 1),
(7, 5, 7, 1),
(8, 6, 7, 1),
(9, 7, 4, 1),
(10, 9, 8, 1),
(11, 10, 9, 1),
(12, 14, 25, 1),
(13, 13, 16, 1),
(14, 11, 13, 1),
(15, 23, 34, 1),
(16, 15, 21, 1),
(17, 16, 22, 1),
(18, 14, 32, 1),
(19, 17, 12, 1),
(20, 10, 6, 1),
(21, 34, 46, 1),
(22, 42, 26, 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `ability_id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `entity_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forbidden` tinyint(1) NOT NULL DEFAULT 0,
  `scope` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `ability_id`, `entity_id`, `entity_type`, `forbidden`, `scope`) VALUES
(12, 10, 3, 'App\\User', 0, NULL),
(18, 13, 1, 'roles', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pname` varchar(40) CHARACTER SET latin1 NOT NULL,
  `price` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_stock` tinyint(4) NOT NULL DEFAULT 1,
  `timestamps` timestamp NOT NULL DEFAULT current_timestamp(),
  `remember_token` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pname`, `price`, `in_stock`, `timestamps`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'itaque', '1908.25', 1, '2019-06-21 11:29:52', NULL, '2019-06-21 05:59:52', '2019-06-21 05:59:52'),
(2, 'laudantium', '364.34', 0, '2019-06-21 11:29:52', NULL, '2019-06-21 05:59:52', '2019-06-21 05:59:52'),
(3, 'id', '1272.2', 1, '2019-06-21 11:29:52', NULL, '2019-06-21 05:59:52', '2019-06-21 05:59:52'),
(4, 'itaque', '35.78', 0, '2019-06-21 11:29:52', NULL, '2019-06-21 05:59:52', '2019-06-21 05:59:52'),
(5, 'odit', '1735.89', 1, '2019-06-21 11:29:52', NULL, '2019-06-21 05:59:52', '2019-06-21 05:59:52'),
(6, 'officiis', '750.17', 1, '2019-06-21 11:29:52', NULL, '2019-06-21 05:59:52', '2019-06-21 05:59:52'),
(7, 'amet', '1783.26', 0, '2019-06-21 11:29:52', NULL, '2019-06-21 05:59:52', '2019-06-21 05:59:52'),
(8, 'libero', '843.97', 0, '2019-06-21 11:29:52', NULL, '2019-06-21 05:59:52', '2019-06-21 05:59:52'),
(9, 'alias', '522.74', 0, '2019-06-21 11:29:52', NULL, '2019-06-21 05:59:52', '2019-06-21 05:59:52'),
(10, 'praesentium', '450.94', 0, '2019-06-21 11:29:52', NULL, '2019-06-21 05:59:52', '2019-06-21 05:59:52'),
(11, 'reiciendis', '1770.14', 0, '2019-06-21 11:29:52', NULL, '2019-06-21 05:59:52', '2019-06-21 05:59:52'),
(12, 'enim', '1714.57', 0, '2019-06-21 11:29:52', NULL, '2019-06-21 05:59:52', '2019-06-21 05:59:52'),
(13, 'ab', '648.35', 0, '2019-06-21 11:29:52', NULL, '2019-06-21 05:59:52', '2019-06-21 05:59:52'),
(14, 'eos', '716.7', 1, '2019-06-21 11:29:52', NULL, '2019-06-21 05:59:52', '2019-06-21 05:59:52'),
(15, 'corrupti', '1409.5', 0, '2019-06-21 11:29:52', NULL, '2019-06-21 05:59:52', '2019-06-21 05:59:52'),
(16, 'quas', '818.98', 1, '2019-06-21 11:29:52', NULL, '2019-06-21 05:59:52', '2019-06-21 05:59:52'),
(17, 'consequuntur', '256.83', 0, '2019-06-21 11:29:52', NULL, '2019-06-21 05:59:52', '2019-06-21 05:59:52'),
(18, 'a', '1349.28', 1, '2019-06-21 11:29:53', NULL, '2019-06-21 05:59:53', '2019-06-21 05:59:53'),
(19, 'qui', '707.46', 0, '2019-06-21 11:29:53', NULL, '2019-06-21 05:59:53', '2019-06-21 05:59:53'),
(20, 'dolor', '1974.92', 0, '2019-06-21 11:29:53', NULL, '2019-06-21 05:59:53', '2019-06-21 05:59:53'),
(21, 'et', '151.29', 1, '2019-06-21 11:29:53', NULL, '2019-06-21 05:59:53', '2019-06-21 05:59:53'),
(22, 'ut', '878.85', 1, '2019-06-21 11:29:53', NULL, '2019-06-21 05:59:53', '2019-06-21 05:59:53'),
(23, 'facere', '778.25', 1, '2019-06-21 11:29:53', NULL, '2019-06-21 05:59:53', '2019-06-21 05:59:53'),
(24, 'ipsa', '1723.79', 0, '2019-06-21 11:29:53', NULL, '2019-06-21 05:59:53', '2019-06-21 05:59:53'),
(25, 'dolor', '694.52', 1, '2019-06-21 11:29:53', NULL, '2019-06-21 05:59:53', '2019-06-21 05:59:53'),
(26, 'quia', '1487.94', 0, '2019-06-21 11:29:53', NULL, '2019-06-21 05:59:53', '2019-06-21 05:59:53'),
(27, 'quis', '123.65', 0, '2019-06-21 11:29:53', NULL, '2019-06-21 05:59:53', '2019-06-21 05:59:53'),
(28, 'occaecati', '1892.95', 0, '2019-06-21 11:29:53', NULL, '2019-06-21 05:59:53', '2019-06-21 05:59:53'),
(29, 'praesentium', '607.78', 0, '2019-06-21 11:29:53', NULL, '2019-06-21 05:59:53', '2019-06-21 05:59:53'),
(30, 'ut', '1683.97', 0, '2019-06-21 11:29:53', NULL, '2019-06-21 05:59:53', '2019-06-21 05:59:53'),
(31, 'consequatur', '1566.9', 1, '2019-06-21 11:29:53', NULL, '2019-06-21 05:59:53', '2019-06-21 05:59:53'),
(32, 'ut', '1156.9', 1, '2019-06-21 11:29:53', NULL, '2019-06-21 05:59:53', '2019-06-21 05:59:53'),
(33, 'qui', '484', 1, '2019-06-21 11:29:53', NULL, '2019-06-21 05:59:53', '2019-06-21 05:59:53'),
(34, 'suscipit', '933.7', 0, '2019-06-21 11:29:53', NULL, '2019-06-21 05:59:53', '2019-06-21 05:59:53'),
(35, 'vitae', '32.36', 0, '2019-06-21 11:29:53', NULL, '2019-06-21 05:59:53', '2019-06-21 05:59:53'),
(36, 'nisi', '751.8', 0, '2019-06-21 11:29:53', NULL, '2019-06-21 05:59:53', '2019-06-21 05:59:53'),
(37, 'quibusdam', '334.85', 0, '2019-06-21 11:29:53', NULL, '2019-06-21 05:59:53', '2019-06-21 05:59:53'),
(38, 'quam', '849.82', 0, '2019-06-21 11:29:53', NULL, '2019-06-21 05:59:53', '2019-06-21 05:59:53'),
(39, 'eum', '1690.97', 0, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(40, 'sit', '1799.82', 1, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(41, 'dignissimos', '1968.81', 1, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(42, 'libero', '349.97', 1, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(43, 'sint', '463.35', 0, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(44, 'accusantium', '1119.88', 0, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(45, 'rerum', '899.34', 1, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(46, 'et', '973.64', 0, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(47, 'quae', '746.94', 1, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(48, 'at', '165.62', 0, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(49, 'dolorum', '1101.54', 1, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(50, 'quam', '1940.45', 1, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(51, 'non', '1468.46', 1, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(52, 'dolorem', '1867.4', 1, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(53, 'eos', '1424.74', 1, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(54, 'temporibus', '787.12', 0, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(55, 'hic', '31.6', 0, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(56, 'harum', '1143.32', 0, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(57, 'fuga', '519.38', 0, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(58, 'rerum', '1434.5', 0, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(59, 'delectus', '47.65', 1, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(60, 'consequatur', '1602.16', 1, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(61, 'omnis', '1890.37', 0, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(62, 'eius', '74.95', 1, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(63, 'sunt', '300.39', 1, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(64, 'et', '9.17', 1, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(65, 'unde', '210.65', 0, '2019-06-21 11:29:54', NULL, '2019-06-21 05:59:54', '2019-06-21 05:59:54'),
(66, 'aut', '240.12', 0, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(67, 'maxime', '309.95', 0, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(68, 'eum', '1479.81', 0, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(69, 'officia', '1737.64', 1, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(70, 'in', '1060.4', 1, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(71, 'corporis', '1681.58', 1, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(72, 'animi', '583.72', 1, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(73, 'non', '591.61', 1, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(74, 'harum', '1796.25', 0, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(75, 'iste', '1424.56', 1, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(76, 'ut', '707.8', 1, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(77, 'quod', '365.84', 0, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(78, 'odit', '947.82', 1, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(79, 'porro', '1640.78', 0, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(80, 'quos', '226.88', 1, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(81, 'ut', '364.15', 0, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(82, 'voluptatem', '857.98', 0, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(83, 'provident', '1856.46', 0, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(84, 'quidem', '65.98', 1, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(85, 'qui', '991.47', 0, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(86, 'deserunt', '1677.68', 1, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(87, 'beatae', '592.23', 1, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(88, 'aut', '208.96', 1, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(89, 'dolores', '492.85', 0, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(90, 'officiis', '1956.81', 1, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(91, 'aut', '1674.24', 1, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(92, 'ex', '913.35', 1, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(93, 'necessitatibus', '502.93', 0, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(94, 'ex', '1788.11', 0, '2019-06-21 11:29:55', NULL, '2019-06-21 05:59:55', '2019-06-21 05:59:55'),
(95, 'similique', '444.08', 0, '2019-06-21 11:29:56', NULL, '2019-06-21 05:59:56', '2019-06-21 05:59:56'),
(96, 'harum', '1619.01', 1, '2019-06-21 11:29:56', NULL, '2019-06-21 05:59:56', '2019-06-21 05:59:56'),
(97, 'in', '1564.17', 0, '2019-06-21 11:29:56', NULL, '2019-06-21 05:59:56', '2019-06-21 05:59:56'),
(98, 'exercitationem', '1640.05', 1, '2019-06-21 11:29:56', NULL, '2019-06-21 05:59:56', '2019-06-21 05:59:56'),
(99, 'eum', '1048.54', 0, '2019-06-21 11:29:56', NULL, '2019-06-21 05:59:56', '2019-06-21 05:59:56'),
(100, 'temporibus', '1947.71', 0, '2019-06-21 11:29:56', NULL, '2019-06-21 05:59:56', '2019-06-21 05:59:56');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(10) UNSIGNED DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `title`, `level`, `scope`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', NULL, NULL, '2019-06-19 13:31:33', '2019-06-19 13:31:33'),
(3, 'shop-manager', 'Shop Manager', NULL, NULL, '2019-06-22 08:52:01', '2019-06-22 08:52:01'),
(4, 'user-manager', 'User Manager', NULL, NULL, '2019-06-23 14:11:44', '2019-06-23 14:11:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'vineet', 'wt_admin@webuters.com', NULL, '$2y$10$vKkAuvpURaThRe2eDLG4RuL6Q6Ltd7bGZWLUQXni/UF75pTFdMm.m', NULL, '2019-06-20 07:22:01', '2019-06-20 07:22:01'),
(2, 'Josehef', 'wt@webuters.com', NULL, '$2y$10$vvOUyd2iQrxhvksQX3RQWOtSx49WsLruWHebNwRmAsae5rD.p.qnm', NULL, '2019-06-20 07:23:55', '2019-06-20 07:23:55'),
(3, 'Administrator', 'admin@gmail.com', NULL, '$2y$10$K9EB6yWBANHpMJyytDeTR.PpXtLpxHz0yBbVNxMGImNXi6phKGlZm', 'chpsUgw144XZu8kAg68ZsHrspgqYddq86Wpms975zxZdJItdvFvHPQn5ZMPF', '2019-06-22 06:35:14', '2019-06-22 06:35:14'),
(4, 'Shop-manager', 'shop@gmail.com', NULL, '$2y$10$rZ9UGJST1jBqChxPk.aoZerzFN2/6vii79pGecgwOYbPaWFA4ys.6', NULL, '2019-06-22 06:45:01', '2019-06-22 06:45:01'),
(5, 'User-manager', 'user@gmail.com', NULL, '$2y$10$wPhmM3QSsaYjOeNSbzc7GOFuIMx5mgq7Wzp5T2U7AxwlWnLwln2.u', NULL, '2019-06-23 14:10:35', '2019-06-23 14:10:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abilities`
--
ALTER TABLE `abilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abilities_scope_index` (`scope`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_roles_entity_index` (`entity_id`,`entity_type`,`scope`),
  ADD KEY `assigned_roles_role_id_index` (`role_id`),
  ADD KEY `assigned_roles_scope_index` (`scope`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_entity_index` (`entity_id`,`entity_type`,`scope`),
  ADD KEY `permissions_ability_id_index` (`ability_id`),
  ADD KEY `permissions_scope_index` (`scope`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`,`scope`),
  ADD KEY `roles_scope_index` (`scope`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abilities`
--
ALTER TABLE `abilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_ability_id_foreign` FOREIGN KEY (`ability_id`) REFERENCES `abilities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
