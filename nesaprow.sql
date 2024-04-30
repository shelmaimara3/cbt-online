-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 30, 2024 at 12:58 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nesaprow`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('shelma@owners.com|127.0.0.1', 'i:1;', 1714479123),
('shelma@owners.com|127.0.0.1:timer', 'i:1714479123;', 1714479123),
('shelmas@owner.com|127.0.0.1', 'i:1;', 1714479513),
('shelmas@owner.com|127.0.0.1:timer', 'i:1714479513;', 1714479513),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:4:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:12:\"view courses\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:14:\"create courses\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:12:\"edit courses\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:14:\"delete courses\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:1;}}}s:5:\"roles\";a:2:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:7:\"teacher\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:7:\"student\";s:1:\"c\";s:3:\"web\";}}}', 1713946363);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'HTML', 'html', 'images/icon-default.png', NULL, '2024-04-23 01:11:26', '2024-04-23 01:11:26'),
(2, 'CSS', 'css', 'images/icon-default.png', NULL, '2024-04-23 01:11:26', '2024-04-23 01:11:26'),
(3, 'JAVASCRIPT', 'javascript', 'images/icon-default.png', NULL, '2024-04-23 01:11:26', '2024-04-23 01:11:26'),
(4, 'POST-TEST', 'post-test', 'images/icon-default.png', NULL, '2024-04-23 01:11:26', '2024-04-23 01:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `path_trailer` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `cover` varchar(255) NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `slug`, `path_trailer`, `about`, `cover`, `category_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Struktur Dasar Dokumen HTML', 'struktur-dasar-dokumen-html', 'iFw-AB4iAnQ', 'HTML merupakan Hypertext Markup Language', 'product_covers/vlpCxFXNJksWEgWnn5bl1TzxFLWTs1oGeJN4UJbQ.png', 1, NULL, '2024-04-27 20:08:33', '2024-04-27 20:08:33'),
(2, 'Konsep CSS', 'konsep-css', '-B17ATAt9vA', 'CSS adalah Cascading Style Sheet', 'product_covers/JGGGeqoNFk5NbYL40ODE8NTjVlqbj5hY4sK0QcSz.png', 2, NULL, '2024-04-27 21:22:02', '2024-04-27 21:22:02'),
(3, 'Soal Post Test 2', 'soal-post-test-2', 'phWxA89Dy94', 'Soal Untuk mengukur penilaian kognitif', 'product_covers/6VreZTsMZjoQI9TznCIkP85hjw4J0DHJ5urRXEeC.png', 4, '2024-04-28 01:11:41', '2024-04-27 22:03:49', '2024-04-28 01:11:41'),
(4, 'Soal Post Test', 'soal-post-test', 'phWxA89Dy94', 'Soal Untuk mengukur penilaian kognitif', 'product_covers/EBtZzD7IJykP5BMlSjlGbQoApVaqB31G4NJ5p9fw.png', 4, NULL, '2024-04-28 04:08:31', '2024-04-28 04:08:31');

-- --------------------------------------------------------

--
-- Table structure for table `course_answers`
--

CREATE TABLE `course_answers` (
  `id` bigint UNSIGNED NOT NULL,
  `answer` varchar(255) NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `course_question_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `course_answers`
--

INSERT INTO `course_answers` (`id`, `answer`, `is_correct`, `course_question_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '<strong>', 0, 1, NULL, '2024-04-28 05:13:50', '2024-04-28 05:13:50'),
(2, '<h6>', 0, 1, NULL, '2024-04-28 05:13:50', '2024-04-28 05:13:50'),
(3, '<p>', 0, 1, NULL, '2024-04-28 05:13:50', '2024-04-28 05:13:50'),
(4, '<title>', 0, 1, NULL, '2024-04-28 05:13:50', '2024-04-28 05:13:50'),
(5, '<h1>', 1, 1, NULL, '2024-04-28 05:13:50', '2024-04-28 05:13:50'),
(6, 'Themes', 0, 2, NULL, '2024-04-28 05:18:51', '2024-04-28 05:18:51'),
(7, 'Lang', 0, 2, NULL, '2024-04-28 05:18:51', '2024-04-28 05:18:51'),
(8, 'Style', 1, 2, NULL, '2024-04-28 05:18:51', '2024-04-28 05:18:51'),
(9, 'Styling', 0, 2, NULL, '2024-04-28 05:18:51', '2024-04-28 05:18:51'),
(10, 'Title', 0, 2, NULL, '2024-04-28 05:18:51', '2024-04-28 05:18:51'),
(11, 'alt', 0, 3, NULL, '2024-04-28 05:19:30', '2024-04-28 05:19:30'),
(12, 'href', 1, 3, NULL, '2024-04-28 05:19:30', '2024-04-28 05:19:30'),
(13, 'link', 0, 3, NULL, '2024-04-28 05:19:30', '2024-04-28 05:19:30'),
(14, 'go', 0, 3, NULL, '2024-04-28 05:19:30', '2024-04-28 05:19:30'),
(15, 'src', 0, 3, NULL, '2024-04-28 05:19:30', '2024-04-28 05:19:30'),
(16, '<a>', 1, 4, NULL, '2024-04-28 05:20:37', '2024-04-28 05:20:37'),
(17, '<strong>', 0, 4, NULL, '2024-04-28 05:20:37', '2024-04-28 05:20:37'),
(18, '<span>', 0, 4, NULL, '2024-04-28 05:20:37', '2024-04-28 05:20:37'),
(19, '<p>', 0, 4, NULL, '2024-04-28 05:20:37', '2024-04-28 05:20:37'),
(20, '<h1>', 0, 4, NULL, '2024-04-28 05:20:37', '2024-04-28 05:20:37'),
(21, '1', 1, 5, '2024-04-28 05:47:08', '2024-04-28 05:20:58', '2024-04-28 05:47:08'),
(22, '2', 0, 5, '2024-04-28 05:47:08', '2024-04-28 05:20:58', '2024-04-28 05:47:08'),
(23, '3', 0, 5, '2024-04-28 05:47:08', '2024-04-28 05:20:58', '2024-04-28 05:47:08'),
(24, '4', 0, 5, '2024-04-28 05:47:08', '2024-04-28 05:20:58', '2024-04-28 05:47:08'),
(25, '5', 0, 5, '2024-04-28 05:47:08', '2024-04-28 05:20:58', '2024-04-28 05:47:08'),
(26, '<ul>', 0, 6, NULL, '2024-04-28 05:21:55', '2024-04-28 05:21:55'),
(27, '<div>', 0, 6, NULL, '2024-04-28 05:21:55', '2024-04-28 05:21:55'),
(28, '<span>', 1, 6, NULL, '2024-04-28 05:21:55', '2024-04-28 05:21:55'),
(29, '<p>', 0, 6, NULL, '2024-04-28 05:21:55', '2024-04-28 05:21:55'),
(30, '<dl>', 0, 6, NULL, '2024-04-28 05:21:55', '2024-04-28 05:21:55'),
(31, '1', 0, 5, '2024-04-28 05:47:17', '2024-04-28 05:47:08', '2024-04-28 05:47:17'),
(32, '2', 0, 5, '2024-04-28 05:47:17', '2024-04-28 05:47:08', '2024-04-28 05:47:17'),
(33, '3', 1, 5, '2024-04-28 05:47:17', '2024-04-28 05:47:08', '2024-04-28 05:47:17'),
(34, '4', 0, 5, '2024-04-28 05:47:17', '2024-04-28 05:47:08', '2024-04-28 05:47:17'),
(35, '5', 0, 5, '2024-04-28 05:47:17', '2024-04-28 05:47:08', '2024-04-28 05:47:17'),
(36, '1', 0, 5, NULL, '2024-04-28 05:47:17', '2024-04-28 05:47:17'),
(37, '2', 0, 5, NULL, '2024-04-28 05:47:17', '2024-04-28 05:47:17'),
(38, '3', 0, 5, NULL, '2024-04-28 05:47:17', '2024-04-28 05:47:17'),
(39, '4', 1, 5, NULL, '2024-04-28 05:47:17', '2024-04-28 05:47:17'),
(40, '5', 0, 5, NULL, '2024-04-28 05:47:17', '2024-04-28 05:47:17'),
(41, '1', 0, 7, NULL, '2024-04-30 00:59:12', '2024-04-30 00:59:12'),
(42, '2', 0, 7, NULL, '2024-04-30 00:59:12', '2024-04-30 00:59:12'),
(43, '3', 0, 7, NULL, '2024-04-30 00:59:12', '2024-04-30 00:59:12'),
(44, '4', 0, 7, NULL, '2024-04-30 00:59:12', '2024-04-30 00:59:12'),
(45, '5', 1, 7, NULL, '2024-04-30 00:59:12', '2024-04-30 00:59:12'),
(46, '5', 0, 8, NULL, '2024-04-30 00:59:38', '2024-04-30 00:59:38'),
(47, '4', 1, 8, NULL, '2024-04-30 00:59:38', '2024-04-30 00:59:38'),
(48, '3', 0, 8, NULL, '2024-04-30 00:59:38', '2024-04-30 00:59:38'),
(49, '2', 0, 8, NULL, '2024-04-30 00:59:38', '2024-04-30 00:59:38'),
(50, '1', 0, 8, NULL, '2024-04-30 00:59:38', '2024-04-30 00:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `course_keypoints`
--

CREATE TABLE `course_keypoints` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_questions`
--

CREATE TABLE `course_questions` (
  `id` bigint UNSIGNED NOT NULL,
  `question` varchar(255) NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `course_questions`
--

INSERT INTO `course_questions` (`id`, `question`, `course_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Ketika Anda hendak menampilkan teks yang merupakan judul besar dari keseluruhan konten, elemen apa yang tepat untuk membungkus teks tersebut?', 4, NULL, '2024-04-28 05:13:50', '2024-04-28 05:13:50'),
(2, 'Agar dapat menentukan styling satu baris pada elemen kita harus menambahkan attribute?', 4, NULL, '2024-04-28 05:18:51', '2024-04-28 05:18:51'),
(3, 'Ketika menggunakan elemen <a>, atribut apa yang dapat menampung target URL?', 4, NULL, '2024-04-28 05:19:30', '2024-04-28 05:19:30'),
(4, 'HTML elemen apa yang tepat untuk membuat tautan atau link?', 4, NULL, '2024-04-28 05:20:37', '2024-04-28 05:20:37'),
(5, 'coba hapus dan edit 3', 4, '2024-04-28 05:56:48', '2024-04-28 05:20:58', '2024-04-28 05:56:48'),
(6, 'Elemen mana yang digunakan sebagai phrase elements, namun tidak terdapat line breaks?', 4, NULL, '2024-04-28 05:21:55', '2024-04-28 05:21:55'),
(7, 'ini pertanyaan coba2', 2, NULL, '2024-04-30 00:59:12', '2024-04-30 00:59:12'),
(8, 'Tes QnA', 2, NULL, '2024-04-30 00:59:38', '2024-04-30 00:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `course_students`
--

CREATE TABLE `course_students` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `course_students`
--

INSERT INTO `course_students` (`id`, `user_id`, `course_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 4, NULL, NULL, NULL),
(2, 3, 4, NULL, NULL, NULL),
(3, 3, 2, NULL, NULL, NULL),
(4, 4, 4, NULL, NULL, NULL),
(5, 5, 4, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_videos`
--

CREATE TABLE `course_videos` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `path_video` varchar(255) NOT NULL,
  `course_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_04_23_034134_create_permission_tables', 1),
(5, '2024_04_23_071459_create_categories_table', 1),
(6, '2024_04_23_071535_create_courses_table', 1),
(7, '2024_04_23_071602_create_course_students_table', 1),
(8, '2024_04_23_071654_create_course_questions_table', 1),
(9, '2024_04_23_071721_create_course_answers_table', 1),
(10, '2024_04_23_071750_create_student_answers_table', 1),
(11, '2024_04_23_071843_create_course_videos_table', 1),
(12, '2024_04_23_071908_create_course_keypoints_table', 1),
(13, '2024_04_23_071934_create_project_students_table', 1),
(14, '2024_04_23_072114_create_teachers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view courses', 'web', '2024-04-23 01:11:25', '2024-04-23 01:11:25'),
(2, 'create courses', 'web', '2024-04-23 01:11:25', '2024-04-23 01:11:25'),
(3, 'edit courses', 'web', '2024-04-23 01:11:25', '2024-04-23 01:11:25'),
(4, 'delete courses', 'web', '2024-04-23 01:11:25', '2024-04-23 01:11:25');

-- --------------------------------------------------------

--
-- Table structure for table `project_students`
--

CREATE TABLE `project_students` (
  `id` bigint UNSIGNED NOT NULL,
  `name_team` varchar(255) NOT NULL,
  `title_project` varchar(255) NOT NULL,
  `desc_project` text NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `proof_project` varchar(255) NOT NULL,
  `project_start_date` date DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `is_done` tinyint(1) NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'teacher', 'web', '2024-04-23 01:11:25', '2024-04-23 01:11:25'),
(2, 'student', 'web', '2024-04-23 01:11:25', '2024-04-23 01:11:25');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `payload` longtext NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('FuCV7MAtfxn5h6NC7XsDvYzp9QHk5STmE9GPykCa', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidjI1VEJGWlV5S0F3R0RpMGZqTjZsQTJ4akJwSXV6b2NjdndLdjQ0ZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQvbGVhcm5pbmciO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo2O30=', 1714481334);

-- --------------------------------------------------------

--
-- Table structure for table `student_answers`
--

CREATE TABLE `student_answers` (
  `id` bigint UNSIGNED NOT NULL,
  `answer` varchar(255) NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `course_question_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student_answers`
--

INSERT INTO `student_answers` (`id`, `answer`, `user_id`, `course_question_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'correct', 2, 1, NULL, '2024-04-29 10:09:28', '2024-04-29 10:09:28'),
(2, 'correct', 2, 2, NULL, '2024-04-29 10:09:38', '2024-04-29 10:09:38'),
(3, 'correct', 2, 3, NULL, '2024-04-29 10:09:45', '2024-04-29 10:09:45'),
(4, 'correct', 2, 4, NULL, '2024-04-29 10:09:50', '2024-04-29 10:09:50'),
(5, 'wrong', 2, 6, NULL, '2024-04-29 10:09:55', '2024-04-29 10:09:55'),
(6, 'correct', 3, 1, NULL, '2024-04-29 22:43:09', '2024-04-29 22:43:09'),
(7, 'correct', 3, 2, NULL, '2024-04-29 22:43:14', '2024-04-29 22:43:14'),
(8, 'correct', 3, 3, NULL, '2024-04-29 22:43:18', '2024-04-29 22:43:18'),
(9, 'correct', 3, 4, NULL, '2024-04-29 22:43:22', '2024-04-29 22:43:22'),
(10, 'correct', 3, 7, NULL, '2024-04-30 01:00:30', '2024-04-30 01:00:30'),
(11, 'correct', 3, 8, NULL, '2024-04-30 01:00:35', '2024-04-30 01:00:35'),
(12, 'wrong', 3, 6, NULL, '2024-04-30 02:03:21', '2024-04-30 02:03:21'),
(13, 'correct', 5, 1, NULL, '2024-04-30 04:45:37', '2024-04-30 04:45:37'),
(14, 'correct', 5, 2, NULL, '2024-04-30 04:45:45', '2024-04-30 04:45:45'),
(15, 'correct', 5, 3, NULL, '2024-04-30 04:45:49', '2024-04-30 04:45:49'),
(16, 'correct', 5, 4, NULL, '2024-04-30 04:45:53', '2024-04-30 04:45:53'),
(17, 'correct', 5, 6, NULL, '2024-04-30 04:46:33', '2024-04-30 04:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Shelma Bakir', 'images/default-avatar.png', 'shelma@owner.com', NULL, '$2y$12$pK.PkIsfqaVgF0J1QbiqrOJvEyKQ22ZZ/57OY5GO/oYSM5o7TSLjO', 'HvypqIbeWDqZLMKVgbufIQ7aLC5KG0euMccejsbSMHHwoq4VMF2vmKuvWNgQ', '2024-04-23 01:11:26', '2024-04-23 01:11:26'),
(2, 'Navyyah', 'avatars/45yIf5wUXhrYX3R5kM0PQooshly1xhjBBsy1lo3c.png', 'navy@gmail.com', NULL, '$2y$12$.qWJ.FXfMfJ6ac6QntkNAeVpmN4eNI6X14XHWCekHSmNCWSj9HyYW', NULL, '2024-04-27 08:02:27', '2024-04-27 08:02:27'),
(3, 'nanab', 'avatars/vGEeVLM6PfrBoJZ8h5lWp3iU6oBoRtqnjl9u7E4g.jpg', 'nanab@student.com', NULL, '$2y$12$Lls9ELHLCSuostyj7DvdH.sm8EJBEuJpalpVM5A0qkNVDaqGbbpbO', NULL, '2024-04-29 22:41:33', '2024-04-29 22:41:33'),
(4, 'chel', 'avatars/k82UgfH82SltqootdxnBJMSiLMS94kgvZyzqZ3LP.jpg', 'chel@gmail.com', NULL, '$2y$12$JoIxpZEvP1BxJhmxl4l/He.WgBEVxuvP3fS./niiJcxJrzFeh4e4W', NULL, '2024-04-30 01:31:47', '2024-04-30 01:31:47'),
(5, 'ella', 'avatars/plRd6txFCEeupMoclmVpmifqub7jATEnrGxrZafY.png', 'ella@student.com', NULL, '$2y$12$Ds7Am4UlGg3Y6vf5FrWPfOA2h9xiQaPE2yxRAypB8qZphvVpTZ1WG', NULL, '2024-04-30 04:44:45', '2024-04-30 04:44:45'),
(6, 'Nabila', 'avatars/0vDTQSJGD0mD4BQhtxVoxGrjOZmqBTOxiQG2hwy9.png', 'nabila@gmail.com', NULL, '$2y$12$WKysvWLFnupVAhtedN4SZuGGB1cIZWgTLV5t89vtQVMhzTXCug6cq', NULL, '2024-04-30 05:48:51', '2024-04-30 05:48:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_category_id_foreign` (`category_id`);

--
-- Indexes for table `course_answers`
--
ALTER TABLE `course_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_answers_course_question_id_foreign` (`course_question_id`);

--
-- Indexes for table `course_keypoints`
--
ALTER TABLE `course_keypoints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_keypoints_course_id_foreign` (`course_id`);

--
-- Indexes for table `course_questions`
--
ALTER TABLE `course_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_questions_course_id_foreign` (`course_id`);

--
-- Indexes for table `course_students`
--
ALTER TABLE `course_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_students_user_id_foreign` (`user_id`),
  ADD KEY `course_students_course_id_foreign` (`course_id`);

--
-- Indexes for table `course_videos`
--
ALTER TABLE `course_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_videos_course_id_foreign` (`course_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `project_students`
--
ALTER TABLE `project_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_students_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `student_answers`
--
ALTER TABLE `student_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_answers_user_id_foreign` (`user_id`),
  ADD KEY `student_answers_course_question_id_foreign` (`course_question_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teachers_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course_answers`
--
ALTER TABLE `course_answers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `course_keypoints`
--
ALTER TABLE `course_keypoints`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_questions`
--
ALTER TABLE `course_questions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `course_students`
--
ALTER TABLE `course_students`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `course_videos`
--
ALTER TABLE `course_videos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `project_students`
--
ALTER TABLE `project_students`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_answers`
--
ALTER TABLE `student_answers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_answers`
--
ALTER TABLE `course_answers`
  ADD CONSTRAINT `course_answers_course_question_id_foreign` FOREIGN KEY (`course_question_id`) REFERENCES `course_questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_keypoints`
--
ALTER TABLE `course_keypoints`
  ADD CONSTRAINT `course_keypoints_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_questions`
--
ALTER TABLE `course_questions`
  ADD CONSTRAINT `course_questions_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_students`
--
ALTER TABLE `course_students`
  ADD CONSTRAINT `course_students_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_videos`
--
ALTER TABLE `course_videos`
  ADD CONSTRAINT `course_videos_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_students`
--
ALTER TABLE `project_students`
  ADD CONSTRAINT `project_students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_answers`
--
ALTER TABLE `student_answers`
  ADD CONSTRAINT `student_answers_course_question_id_foreign` FOREIGN KEY (`course_question_id`) REFERENCES `course_questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_answers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
