-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2024 at 01:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edufun`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `date_published` date NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `writer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `date_published`, `course_id`, `writer_id`, `created_at`, `updated_at`) VALUES
(1, 'Pattern Software Design', 'Pattern Software Design, atau yang sering disebut sebagai \"Design Patterns,\" adalah pendekatan yang digunakan dalam pengembangan perangkat lunak untuk menyelesaikan masalah-masalah yang sering muncul dengan cara yang terstruktur dan dapat digunakan kembali. Design Patterns adalah solusi generik yang telah terbukti efektif dalam berbagai situasi. Terdapat tiga kategori utama dalam Design Patterns:\r\n\r\nCreational Patterns: Mengatur proses penciptaan objek agar tidak bergantung pada jenis spesifik objek, misalnya dengan menggunakan Singleton atau Factory.\r\nStructural Patterns: Menangani struktur hubungan antara objek, contohnya Adapter, Decorator, dan Composite.\r\nBehavioral Patterns: Mengatur komunikasi antar objek atau alur kendali, seperti Observer, Strategy, dan Command.\r\n\r\nPenggunaan Design Patterns dapat membantu mengurangi kompleksitas, meningkatkan keterbacaan, dan menjaga fleksibilitas sistem. Selain itu, pemahaman yang baik tentang Design Patterns memungkinkan developer untuk menggunakan pendekatan yang sudah diuji, menghemat waktu pengembangan.', '2024-11-05', 1, 1, NULL, NULL),
(7, 'Agile Software Development', 'Agile Software Development adalah pendekatan pengembangan perangkat lunak yang menekankan fleksibilitas, kolaborasi, dan iterasi cepat. Dalam Agile, proyek dibagi menjadi iterasi atau \"sprint\" yang pendek, biasanya dua hingga empat minggu, sehingga tim dapat merespons perubahan kebutuhan dengan lebih cepat. Setiap iterasi mencakup perencanaan, pengembangan, dan pengujian, serta menghasilkan produk yang dapat disesuaikan dan diperbaiki secara berkala. Metode Agile populer seperti Scrum dan Kanban memungkinkan tim bekerja lebih adaptif, mengutamakan komunikasi langsung, serta memberikan nilai yang cepat kepada pengguna akhir dengan siklus perbaikan yang berkelanjutan', '2024-11-05', 2, 1, NULL, NULL),
(8, 'Code Reengineering', 'Code Reengineering adalah proses memodifikasi dan memperbaiki kode perangkat lunak yang sudah ada untuk meningkatkan performa, pemeliharaan, atau skalabilitasnya tanpa mengubah fungsionalitas dasarnya. Tujuan reengineering adalah memperbarui kode lama atau kode yang sulit dipahami agar menjadi lebih efisien dan sesuai dengan standar pengembangan modern. Proses ini bisa mencakup dokumentasi ulang, refactoring, atau bahkan perubahan arsitektur. Dengan Code Reengineering, organisasi dapat memanfaatkan kode yang ada sekaligus meningkatkan keandalan dan efisiensi produk tanpa harus mengembangkan ulang dari awal, sehingga lebih hemat waktu dan biaya.', '2024-11-05', 3, 3, NULL, NULL),
(9, 'Human and Computer Interaction', 'Human and Computer Interaction (HCI) adalah bidang yang mempelajari cara manusia berinteraksi dengan komputer dan teknologi digital. Fokus HCI adalah pada desain dan evaluasi antarmuka yang membuat interaksi dengan perangkat digital menjadi mudah, intuitif, dan nyaman bagi pengguna. Dalam HCI, desainer dan peneliti mengeksplorasi bagaimana membuat teknologi lebih responsif terhadap kebutuhan pengguna melalui pendekatan desain yang berpusat pada manusia. Teknik yang digunakan termasuk riset pengguna, prototyping, dan pengujian antarmuka, sehingga dapat tercipta pengalaman pengguna yang optimal dalam berbagai aplikasi dan perangkat digital', '2024-11-04', 4, 2, NULL, NULL),
(10, 'User Experience', 'User Experience (UX) adalah keseluruhan pengalaman pengguna saat berinteraksi dengan produk digital, termasuk kemudahan penggunaan, aksesibilitas, dan desain visual. UX berfokus pada bagaimana pengguna merasakan produk—apakah mudah dipahami, menarik, dan memuaskan. Untuk menciptakan UX yang baik, desainer menggunakan metode seperti riset pengguna, pembuatan prototipe, serta pengujian yang melibatkan pengguna untuk mengidentifikasi potensi masalah. Tujuan UX adalah menghasilkan produk yang tidak hanya berfungsi dengan baik, tetapi juga memberikan pengalaman yang menyenangkan, sehingga meningkatkan kepuasan dan loyalitas pengguna.', '2024-11-05', 5, 2, NULL, NULL),
(11, 'User Experience for Digital Immersive Technology', 'User Experience for Digital Immersive Technology mengacu pada pengalaman pengguna dalam konteks teknologi yang menawarkan pengalaman imersif, seperti Virtual Reality (VR), Augmented Reality (AR), dan Mixed Reality (MR). Teknologi ini memberikan pengalaman yang mendalam dengan menciptakan lingkungan virtual yang realistis dan interaktif. Desain UX untuk teknologi imersif mencakup perhatian pada aspek fisik seperti kenyamanan perangkat, mengurangi efek motion sickness, dan memastikan interaksi yang intuitif dalam ruang 3D. Tantangannya adalah menciptakan pengalaman yang seamless agar pengguna merasa benar-benar terlibat secara emosional dan fisik, sehingga pengalaman menjadi lebih mendalam dan memuaskan.', '2024-11-05', 6, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Software Engineering', NULL, NULL),
(2, 'Interactive Multimedia', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `category_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pattern Software Design', NULL, NULL),
(2, 1, 'Agile Software Development', NULL, NULL),
(3, 1, 'Code Reengineering', NULL, NULL),
(4, 2, 'Human and Computer Interaction', NULL, NULL),
(5, 2, 'User Experience', NULL, NULL),
(6, 2, 'User Experience for Digital Immersive Technology', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '0001_01_01_000000_create_users_table', 1),
(9, '0001_01_01_000001_create_cache_table', 1),
(10, '0001_01_01_000002_create_jobs_table', 1),
(11, '2024_11_05_062849_create_writers_table', 1),
(12, '2024_11_05_084116_create_categories_table', 2),
(13, '2024_11_05_084150_create_courses_table', 2),
(15, '2024_11_05_084230_create_articles_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('DSIHXL93N3LdsiBxSNqbVbq97efEO3bOo0Hy4lnA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3J4N0RRVWpxUDIzdDYzU0pZNDVyRnFiQ1FMMXVIekx2SExaNkpJTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcnRpY2xlcy8xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730808453);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `name`, `bio`, `created_at`, `updated_at`) VALUES
(1, 'Joko Anwar', 'Spesialis Software Engineering', NULL, NULL),
(2, 'Budiono Siregar', 'Spesialis Interactive Multimedia', NULL, NULL),
(3, 'Mulyono Ikhwan', 'Spesialis Software Engineering', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_course_id_foreign` (`course_id`),
  ADD KEY `articles_writer_id_foreign` (`writer_id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
