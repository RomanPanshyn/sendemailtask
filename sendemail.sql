-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 13 2020 г., 14:04
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `sendemail`
--

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `forms`
--

INSERT INTO `forms` (`id`, `message_content`, `created_at`, `updated_at`) VALUES
(1, 'Hello from Roman Panshyn!', '2020-11-12 09:48:57', '2020-11-12 09:48:57'),
(2, 'Second test from Roman Panshyn', '2020-11-12 09:50:05', '2020-11-12 09:50:05'),
(3, 'Test message 3', '2020-11-12 10:30:53', '2020-11-12 10:30:53'),
(4, 'Hello from Laravel test API', '2020-11-12 11:55:56', '2020-11-12 11:55:56'),
(5, 'Hello from Laravel', '2020-11-12 11:58:25', '2020-11-12 11:58:25'),
(6, 'Hello 3 from Laravel', '2020-11-12 12:01:11', '2020-11-12 12:01:11'),
(7, 'Hello 4 from Laravel', '2020-11-12 12:03:43', '2020-11-12 12:03:43'),
(8, 'Hello 5 from Laravel', '2020-11-12 12:05:25', '2020-11-12 12:05:25'),
(9, 'Hello 6 from Laravel', '2020-11-12 12:20:09', '2020-11-12 12:20:09'),
(10, 'Hello 7 from Laravel', '2020-11-12 12:27:04', '2020-11-12 12:27:04'),
(11, 'Hello 8 from Laravel', '2020-11-12 12:32:10', '2020-11-12 12:32:10'),
(12, 'Hello 9 from Laravel', '2020-11-12 12:36:27', '2020-11-12 12:36:27'),
(13, 'Hello 10 from Laravel', '2020-11-12 12:39:06', '2020-11-12 12:39:06'),
(14, 'Hello 1', '2020-11-12 12:47:20', '2020-11-12 12:47:20'),
(15, 'Hello2', '2020-11-12 12:49:17', '2020-11-12 12:49:17'),
(16, 'Hello 3', '2020-11-12 12:55:08', '2020-11-12 12:55:08'),
(17, 'Hello from my site', '2020-11-12 13:04:22', '2020-11-12 13:04:22'),
(18, 'Hello from my site 2', '2020-11-12 13:05:34', '2020-11-12 13:05:34'),
(19, 'Hello 11', '2020-11-12 13:09:41', '2020-11-12 13:09:41'),
(20, 'Hello from site 33', '2020-11-12 13:15:41', '2020-11-12 13:15:41'),
(21, 'from laravel 54', '2020-11-12 13:23:13', '2020-11-12 13:23:13'),
(22, 'from Laravel 67', '2020-11-12 13:24:24', '2020-11-12 13:24:24'),
(23, 'from 33', '2020-11-12 13:25:54', '2020-11-12 13:25:54'),
(24, 'from my site 88', '2020-11-12 13:27:58', '2020-11-12 13:27:58'),
(25, 'hello from site 541', '2020-11-12 13:31:31', '2020-11-12 13:31:31'),
(26, 'test message1', '2020-11-12 13:37:38', '2020-11-12 13:37:38'),
(27, 'test mes3', '2020-11-12 15:55:42', '2020-11-12 15:55:42'),
(28, 'mes34', '2020-11-12 16:01:56', '2020-11-12 16:01:56'),
(29, 'sed5', '2020-11-12 16:04:21', '2020-11-12 16:04:21'),
(30, 'vfe4', '2020-11-12 16:05:57', '2020-11-12 16:05:57'),
(31, 'bhy4', '2020-11-12 16:09:43', '2020-11-12 16:09:43'),
(32, 'test message 45', '2020-11-12 16:10:47', '2020-11-12 16:10:47'),
(33, 'bnm', '2020-11-12 16:12:34', '2020-11-12 16:12:34'),
(34, 'привет, как дела?', '2020-11-12 16:17:53', '2020-11-12 16:17:53'),
(35, 'привет, как жизнь?', '2020-11-12 16:30:17', '2020-11-12 16:30:17'),
(36, 'mes 3', '2020-11-12 16:46:31', '2020-11-12 16:46:31'),
(37, 'test message 33', '2020-11-13 08:54:28', '2020-11-13 08:54:28'),
(38, 'hello world 34', '2020-11-13 08:56:34', '2020-11-13 08:56:34');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_11_11_190001_create_forms_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
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
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
