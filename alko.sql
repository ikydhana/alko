-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2020 at 06:39 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alko`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `responses` longtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `screetkey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_attachments` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2019-12-17 13:31:31', NULL),
(2, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2020-01-08 20:14:43', NULL),
(3, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2020-01-28 23:38:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ipaddress` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-12-17 14:34:02', NULL),
(2, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-12-24 07:26:45', NULL),
(3, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/12', 'Delete data Data Petugas at Module Generator', '', 1, '2019-12-24 07:27:13', NULL),
(4, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost:8000/admin/module_generator/delete/13', 'Delete data Lapor Kendala at Module Generator', '', 1, '2019-12-24 07:27:20', NULL),
(5, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-12-24 07:31:51', NULL),
(6, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-12-24 07:32:28', NULL),
(7, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost:8000/admin/users/add-save', 'Add New Data Helmi Mahditia Adam at Users Management', '', 1, '2019-12-24 07:36:30', NULL),
(8, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost:8000/admin/users/add-save', 'Add New Data Reza Muttaqien at Users Management', '', 1, '2019-12-24 07:38:37', NULL),
(9, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost:8000/admin/users/delete-image', 'Delete the image of Helmi Mahditia Adam at Users Management', '', 1, '2019-12-24 07:38:48', NULL),
(10, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost:8000/admin/users/edit-save/2', 'Update data Helmi Mahditia Adam at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2019-12/07_22_0805.jpg</td></tr><tr><td>password</td><td>$2y$10$RBjuTuXs0t6YXXoN94Ed/OMd5veujRx5qeYRSPRrGJggM9gqNFPbO</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-12-24 07:38:59', NULL),
(11, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost:8000/admin/users/delete-image', 'Delete the image of Helmi Mahditia Adam at Users Management', '', 1, '2019-12-24 07:39:41', NULL),
(12, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost:8000/admin/users/edit-save/2', 'Update data Helmi Mahditia Adam at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2019-12/07_22_0805.jpg</td></tr><tr><td>password</td><td>$2y$10$RBjuTuXs0t6YXXoN94Ed/OMd5veujRx5qeYRSPRrGJggM9gqNFPbO</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-12-24 07:39:54', NULL),
(13, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost:8000/admin/users/add-save', 'Add New Data Fikri Haryadi at Users Management', '', 1, '2019-12-24 07:40:49', NULL),
(14, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost:8000/admin/users/delete-image', 'Delete the image of Helmi Mahditia Adam at Users Management', '', 1, '2019-12-24 07:41:49', NULL),
(15, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost:8000/admin/users/edit-save/2', 'Update data Helmi Mahditia Adam at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>photo</td><td></td><td>uploads/1/2019-12/04_02_5239.jpg</td></tr><tr><td>password</td><td>$2y$10$RBjuTuXs0t6YXXoN94Ed/OMd5veujRx5qeYRSPRrGJggM9gqNFPbO</td><td></td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2019-12-24 07:41:57', NULL),
(16, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost:8000/admin/users/add-save', 'Add New Data Sigit Suhartono at Users Management', '', 1, '2019-12-24 07:42:53', NULL),
(17, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost:8000/admin/users/edit-save/1', 'Update data Operator at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Super Admin</td><td>Operator</td></tr><tr><td>photo</td><td></td><td>uploads/1/2019-12/picture.jpg</td></tr><tr><td>password</td><td>$2y$10$45aeOamCfQfLjzTCgsXzvOoF581mNc.Yy57gveyJwjU/XVRrIWANS</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr></tbody></table>', 1, '2019-12-24 07:44:10', NULL),
(18, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-12-24 07:44:23', NULL),
(19, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-12-24 07:44:28', NULL),
(20, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.87 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-12-24 07:44:36', NULL),
(21, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2019-12-27 13:23:07', NULL),
(22, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Admin Area at Menu Management', '', 1, '2019-12-27 13:23:45', NULL),
(23, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/3', 'Update data Admin Area at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-12-27 13:24:02', NULL),
(24, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Menu Petugas at Menu Management', '', 1, '2019-12-27 13:25:00', NULL),
(25, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Update data Menu Petugas at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2019-12-27 13:25:10', NULL),
(26, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/7', 'Update data Langkah Penanganan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Tambah Jenis Penanganan</td><td>Langkah Penanganan</td></tr><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>3</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2019-12-27 13:39:06', NULL),
(27, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Update data Menu Petugas at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-12-27 13:43:40', NULL),
(28, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/3', 'Update data Admin Area at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2019-12-27 13:43:49', NULL),
(29, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/4', 'Update data Menu Petugas at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>normal</td><td>aqua</td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2019-12-27 13:44:00', NULL),
(30, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2019-12-27 13:44:24', NULL),
(31, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-04 12:24:40', NULL),
(32, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 02:01:47', NULL),
(33, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_lapor/add-save', 'Add New Data Admin Jaringan at Tambah Laporan', '', 1, '2020-01-05 02:18:16', NULL),
(34, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-05 02:27:39', NULL),
(35, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 02:27:49', NULL),
(36, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-05 02:27:59', NULL),
(37, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fikriharyadi@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-01-05 02:28:08', NULL),
(38, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan', 'Try view the data :name at Langkah Penanganan', '', 4, '2020-01-05 02:28:13', NULL),
(39, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fikriharyadi@gmail.com logout', '', 4, '2020-01-05 02:28:19', NULL),
(40, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 02:28:24', NULL),
(41, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-05 02:30:31', NULL),
(42, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fikriharyadi@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-01-05 02:30:40', NULL),
(43, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/add-save', 'Add New Data  at Langkah Penanganan', '', 4, '2020-01-05 02:31:25', NULL),
(44, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/delete/1', 'Delete data 1 at Langkah Penanganan', '', 4, '2020-01-05 02:31:51', NULL),
(45, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/add-save', 'Add New Data  at Langkah Penanganan', '', 4, '2020-01-05 02:37:03', NULL),
(46, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fikriharyadi@gmail.com logout', '', 4, '2020-01-05 03:02:18', NULL),
(47, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 03:02:23', NULL),
(48, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-05 03:03:13', NULL),
(49, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 03:03:19', NULL),
(50, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-05 03:03:30', NULL),
(51, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sigitsuhartono@gmail.com login with IP Address 127.0.0.1', '', 5, '2020-01-05 03:03:35', NULL),
(52, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'sigitsuhartono@gmail.com logout', '', 5, '2020-01-05 03:04:00', NULL),
(53, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 03:04:13', NULL),
(54, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_lapor/add-save', 'Add New Data Admin Jaringan at Tambah Laporan', '', 1, '2020-01-05 03:09:56', NULL),
(55, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-05 07:10:13', NULL),
(56, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/add-save', 'Add New Data  at Langkah Penanganan', '', 1, '2020-01-05 07:20:32', NULL),
(57, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/delete/3', 'Delete data 3 at Langkah Penanganan', '', 1, '2020-01-05 07:20:35', NULL),
(58, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/delete/2', 'Delete data 2 at Langkah Penanganan', '', 1, '2020-01-05 07:20:40', NULL),
(59, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/add-save', 'Add New Data  at Langkah Penanganan', '', 1, '2020-01-05 07:20:51', NULL),
(60, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-06 21:11:36', NULL),
(61, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-07 05:13:43', NULL),
(62, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-07 05:14:18', NULL),
(63, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-07 05:14:26', NULL),
(64, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_lapor/add-save', 'Add New Data Admin Jaringan at Tambah Laporan', '', 1, '2020-01-07 05:43:55', NULL),
(65, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/add-save', 'Add New Data  at Langkah Penanganan', '', 1, '2020-01-07 05:44:25', NULL),
(66, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-07 06:01:57', NULL),
(67, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-07 06:02:21', NULL),
(68, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-07 21:24:20', NULL),
(69, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/statistic_builder/add-save', 'Add New Data Rekap Laporan at Statistic Builder', '', 1, '2020-01-07 22:13:11', NULL),
(70, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-08 05:29:25', NULL),
(71, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_lapor/add-save', 'Add New Data Budi Hartono at Tambah Laporan', '', 1, '2020-01-07 05:44:31', NULL),
(72, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-07 05:44:47', NULL),
(73, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'rezamuttaqien@gmail.com login with IP Address 127.0.0.1', '', 3, '2020-01-07 05:44:52', NULL),
(74, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'rezamuttaqien@gmail.com logout', '', 3, '2020-01-07 05:47:56', NULL),
(75, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sigitsuhartono@gmail.com login with IP Address 127.0.0.1', '', 5, '2020-01-07 05:47:59', NULL),
(76, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/add-save', 'Add New Data  at Langkah Penanganan', '', 5, '2020-01-07 05:48:47', NULL),
(77, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'sigitsuhartono@gmail.com logout', '', 5, '2020-01-07 05:48:57', NULL),
(78, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-07 05:49:00', NULL),
(79, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/delete/6', 'Delete data 6 at Langkah Penanganan', '', 1, '2020-01-07 05:59:02', NULL),
(80, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sigitsuhartono@gmail.com login with IP Address 127.0.0.1', '', 5, '2020-01-07 06:01:03', NULL),
(81, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/add-save', 'Add New Data  at Langkah Penanganan', '', 5, '2020-01-07 06:01:20', NULL),
(82, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'rezamuttaqien@gmail.com login with IP Address 127.0.0.1', '', 3, '2020-01-07 06:28:29', NULL),
(83, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/delete/7', 'Delete data 7 at Langkah Penanganan', '', 3, '2020-01-07 06:31:49', NULL),
(84, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/add-save', 'Add New Data  at Langkah Penanganan', '', 3, '2020-01-07 06:31:56', NULL),
(85, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-08 19:51:18', NULL),
(86, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/edit-save/8', 'Update data  at Langkah Penanganan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>permasalahan</td><td>Kabel Putus</td><td>Core Patah</td></tr><tr><td>pic_lap</td><td></td><td>uploads/1/2020-01/screenshot_from_2019_10_19_09_27_06.png</td></tr></tbody></table>', 1, '2020-01-08 20:17:45', NULL),
(87, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Badan Penanggulangan Bencana Daerah at Data SKPD', '', 1, '2020-01-08 20:20:00', NULL),
(88, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Bagian Ekobang Setdako	 at Data SKPD', '', 1, '2020-01-08 20:20:38', NULL),
(89, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Bagian Hukum Setdako at Data SKPD', '', 1, '2020-01-08 20:20:52', NULL),
(90, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Bagian Humas Setdako at Data SKPD', '', 1, '2020-01-08 20:21:02', NULL),
(91, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Bagian Kerjasama Keagrariaan Setdako at Data SKPD', '', 1, '2020-01-08 20:21:16', NULL),
(92, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Bagian Kesejahteraan Rakyat Setdako at Data SKPD', '', 1, '2020-01-08 20:21:31', NULL),
(93, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Bagian Organisasi Setdako	 at Data SKPD', '', 1, '2020-01-08 20:21:40', NULL),
(94, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Bagian Pemerintahan Setdako at Data SKPD', '', 1, '2020-01-08 20:21:50', NULL),
(95, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Bagian Pengadaan Barang & Jasa Setdako	 at Data SKPD', '', 1, '2020-01-08 20:21:59', NULL),
(96, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Bagian Umum Setdako at Data SKPD', '', 1, '2020-01-08 20:22:12', NULL),
(97, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data BAKESBANGPOL at Data SKPD', '', 1, '2020-01-08 20:22:18', NULL),
(98, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data BAPPEDA	 at Data SKPD', '', 1, '2020-01-08 20:22:26', NULL),
(99, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data BKPP at Data SKPD', '', 1, '2020-01-08 20:22:43', NULL),
(100, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data BPKAD at Data SKPD', '', 1, '2020-01-08 20:22:51', NULL),
(101, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data BPPRD at Data SKPD', '', 1, '2020-01-08 20:23:01', NULL),
(102, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Dinas Arsip & Perpustakaan Daerah at Data SKPD', '', 1, '2020-01-08 20:23:12', NULL),
(103, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Dinas Kesehatan	 at Data SKPD', '', 1, '2020-01-08 20:23:31', NULL),
(104, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Dinas Lingkungan Hidup at Data SKPD', '', 1, '2020-01-08 20:23:39', NULL),
(105, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Dinas Pendidikan at Data SKPD', '', 1, '2020-01-08 20:23:47', NULL),
(106, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Dinas Perdagangan at Data SKPD', '', 1, '2020-01-08 20:24:00', NULL),
(107, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Dinas Perhubungan at Data SKPD', '', 1, '2020-01-08 20:24:13', NULL),
(108, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Dinas Sosial	 at Data SKPD', '', 1, '2020-01-08 20:24:22', NULL),
(109, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data DISDALDUKKBPMPPA at Data SKPD', '', 1, '2020-01-08 20:24:29', NULL),
(110, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data DISDUKCAPIL	 at Data SKPD', '', 1, '2020-01-08 20:24:41', NULL),
(111, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data DISKOMINFO at Data SKPD', '', 1, '2020-01-08 20:24:48', NULL),
(112, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data DISKOPUMKMNAKER at Data SKPD', '', 1, '2020-01-08 20:25:01', NULL),
(113, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data DISPERKIM at Data SKPD', '', 1, '2020-01-08 20:25:09', NULL),
(114, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data DISPORABUDPAR at Data SKPD', '', 1, '2020-01-08 20:25:18', NULL),
(115, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data DISPUPR at Data SKPD', '', 1, '2020-01-08 20:25:25', NULL),
(116, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data DKP3 at Data SKPD', '', 1, '2020-01-08 20:25:33', NULL),
(117, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data DPMPTSP at Data SKPD', '', 1, '2020-01-08 20:25:44', NULL),
(118, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data DPRD at Data SKPD', '', 1, '2020-01-08 20:25:51', NULL),
(119, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Inspektorat at Data SKPD', '', 1, '2020-01-08 20:26:00', NULL),
(120, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kecamatan Banjarbaru Selatan at Data SKPD', '', 1, '2020-01-08 20:26:11', NULL),
(121, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kecamatan Banjarbaru Utara at Data SKPD', '', 1, '2020-01-08 20:26:20', NULL),
(122, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kecamatan Cempaka at Data SKPD', '', 1, '2020-01-08 20:26:31', NULL),
(123, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kecamatan Landasan Ulin at Data SKPD', '', 1, '2020-01-08 20:26:40', NULL),
(124, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kecamatan Liang Anggang	 at Data SKPD', '', 1, '2020-01-08 20:26:52', NULL),
(125, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kelurahan Bangkal	 at Data SKPD', '', 1, '2020-01-08 20:26:58', NULL),
(126, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kelurahan Cempaka	 at Data SKPD', '', 1, '2020-01-08 20:27:07', NULL),
(127, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kelurahan Guntung Manggis	 at Data SKPD', '', 1, '2020-01-08 20:27:16', NULL),
(128, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kelurahan Guntung Paikat	 at Data SKPD', '', 1, '2020-01-08 20:27:23', NULL),
(129, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kelurahan Guntung Payung	 at Data SKPD', '', 1, '2020-01-08 20:27:37', NULL),
(130, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kelurahan Kemuning	 at Data SKPD', '', 1, '2020-01-08 20:27:55', NULL),
(131, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kelurahan Komet	 at Data SKPD', '', 1, '2020-01-08 20:28:07', NULL),
(132, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kelurahan Landasan Ulin Barat at Data SKPD', '', 1, '2020-01-08 20:28:14', NULL),
(133, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kelurahan Landasan Ulin Selatan at Data SKPD', '', 1, '2020-01-08 20:28:25', NULL),
(134, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kelurahan Landasan Ulin Tengah	 at Data SKPD', '', 1, '2020-01-08 20:28:34', NULL),
(135, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kelurahan Landasan Ulin Timur	 at Data SKPD', '', 1, '2020-01-08 20:28:43', NULL),
(136, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kelurahan Landasan Ulin Utara	 at Data SKPD', '', 1, '2020-01-08 20:28:53', NULL),
(137, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kelurahan Loktabat Selatan at Data SKPD', '', 1, '2020-01-08 20:29:03', NULL),
(138, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kelurahan Loktabat Utara	 at Data SKPD', '', 1, '2020-01-08 20:29:15', NULL),
(139, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kelurahan Mentaos at Data SKPD', '', 1, '2020-01-08 20:29:22', NULL),
(140, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kelurahan Palam	 at Data SKPD', '', 1, '2020-01-08 20:29:30', NULL),
(141, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kelurahan Sungai Besar	 at Data SKPD', '', 1, '2020-01-08 20:29:36', NULL),
(142, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kelurahan Sungai Tiung	 at Data SKPD', '', 1, '2020-01-08 20:29:48', NULL),
(143, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kelurahan Sungai Ulin	 at Data SKPD', '', 1, '2020-01-08 20:30:03', NULL),
(144, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Kelurahan Syamsudinnoor	 at Data SKPD', '', 1, '2020-01-08 20:30:09', NULL),
(145, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data RS Idaman at Data SKPD', '', 1, '2020-01-08 20:30:22', NULL),
(146, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_skpd/add-save', 'Add New Data Satpol PP	 at Data SKPD', '', 1, '2020-01-08 20:30:29', NULL),
(147, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_lapor/add-save', 'Add New Data Budianto at Tambah Laporan', '', 1, '2020-01-08 21:01:27', NULL),
(148, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_lapor/delete/4', 'Delete data Budi Hartono at Tambah Laporan', '', 1, '2020-01-08 21:01:49', NULL),
(149, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_lapor/delete/3', 'Delete data Admin Jaringan at Tambah Laporan', '', 1, '2020-01-08 21:01:52', NULL),
(150, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/delete/8', 'Delete data 8 at Langkah Penanganan', '', 1, '2020-01-08 21:02:04', NULL),
(151, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Khairurrijaal at Users Management', '', 1, '2020-01-08 21:25:40', NULL),
(152, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/6', 'Update data Khairurrijaal at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>password</td><td>$2y$10$Oj8fnF48vTRqD4R51buyUeIfF1Hc/gqTmp8qB3zM.Uta2pGuL4.S.</td><td></td></tr><tr><td>id_cms_privileges</td><td>2</td><td>3</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-08 21:26:41', NULL),
(153, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-08 21:26:48', NULL),
(154, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'rijalbangets@gmail.com login with IP Address 127.0.0.1', '', 6, '2020-01-08 21:27:01', NULL),
(155, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'rijalbangets@gmail.com logout', '', 6, '2020-01-08 21:27:32', NULL),
(156, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-08 21:27:40', NULL),
(157, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_lapor/add-save', 'Add New Data Ahsan at Tambah Laporan', '', 1, '2020-01-08 21:34:35', NULL),
(158, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-08 21:34:54', NULL),
(159, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'rezamuttaqien@gmail.com login with IP Address 127.0.0.1', '', 3, '2020-01-08 21:35:00', NULL),
(160, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'rezamuttaqien@gmail.com logout', '', 3, '2020-01-08 21:35:22', NULL),
(161, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-08 21:35:26', NULL),
(162, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_lapor/add-save', 'Add New Data Budi Hartono at Tambah Laporan', '', 1, '2020-01-08 21:36:10', NULL),
(163, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-08 21:36:19', NULL),
(164, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fikriharyadi@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-01-08 21:36:27', NULL),
(165, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/users', 'Try view the data :name at Users Management', '', 4, '2020-01-08 21:38:16', NULL),
(166, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/add-save', 'Add New Data  at Langkah Penanganan', '', 4, '2020-01-08 21:41:47', NULL),
(167, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fikriharyadi@gmail.com logout', '', 4, '2020-01-08 21:41:58', NULL),
(168, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-08 21:42:17', NULL),
(169, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-08 21:43:28', NULL),
(170, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-08 21:47:19', NULL),
(171, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_lapor/add-save', 'Add New Data Admin Jaringan at Tambah Laporan', '', 1, '2020-01-08 21:49:00', NULL),
(172, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-08 21:49:11', NULL),
(173, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fikriharyadi@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-01-08 21:49:17', NULL),
(174, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/add-save', 'Add New Data  at Langkah Penanganan', '', 4, '2020-01-08 21:50:18', NULL),
(175, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fikriharyadi@gmail.com logout', '', 4, '2020-01-08 21:50:53', NULL),
(176, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-08 21:51:04', NULL),
(177, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-08 22:18:54', NULL),
(178, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fikriharyadi@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-01-08 22:19:00', NULL),
(179, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fikriharyadi@gmail.com logout', '', 4, '2020-01-08 22:19:08', NULL),
(180, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sigitsuhartono@gmail.com login with IP Address 127.0.0.1', '', 5, '2020-01-08 22:19:14', NULL),
(181, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'sigitsuhartono@gmail.com logout', '', 5, '2020-01-08 22:21:17', NULL),
(182, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-08 22:21:21', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(183, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-08 22:22:56', NULL),
(184, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fikriharyadi@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-01-08 22:23:08', NULL),
(185, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fikriharyadi@gmail.com logout', '', 4, '2020-01-08 22:25:01', NULL),
(186, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fikriharyadi@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-01-08 22:25:16', NULL),
(187, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fikriharyadi@gmail.com logout', '', 4, '2020-01-08 22:27:22', NULL),
(188, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-08 22:27:53', NULL),
(189, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_lapor/add-save', 'Add New Data Budianto at Tambah Laporan', '', 1, '2020-01-08 22:30:51', NULL),
(190, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_lapor/action-selected', 'Delete data 9,8 at Tambah Laporan', '', 1, '2020-01-09 00:30:10', NULL),
(191, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-09 00:58:08', NULL),
(192, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-09 00:58:09', NULL),
(193, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-09 05:04:54', NULL),
(194, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_lapor/add-save', 'Add New Data Budi Hartono at Tambah Laporan', '', 1, '2020-01-09 05:07:29', NULL),
(195, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-09 05:40:00', NULL),
(196, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sigitsuhartono@gmail.com login with IP Address 127.0.0.1', '', 5, '2020-01-09 05:40:03', NULL),
(197, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'sigitsuhartono@gmail.com logout', '', 5, '2020-01-09 05:50:38', NULL),
(198, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-09 05:50:43', NULL),
(199, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_lapor/add-save', 'Add New Data Budianto at Tambah Laporan', '', 1, '2020-01-09 06:10:23', NULL),
(200, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_disposisi/add-save', 'Add New Data  at Disposisi Laporan', '', 1, '2020-01-09 06:13:43', NULL),
(201, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_disposisi/add-save', 'Add New Data  at Disposisi Laporan', '', 1, '2020-01-09 06:16:10', NULL),
(202, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/module_generator/delete/15', 'Delete data Tambah Petugas at Module Generator', '', 1, '2020-01-09 06:19:45', NULL),
(203, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_disposisi/add-save', 'Add New Data  at Disposisi Laporan', '', 1, '2020-01-09 06:21:41', NULL),
(204, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-09 06:22:01', NULL),
(205, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fikriharyadi@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-01-09 06:22:06', NULL),
(206, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fikriharyadi@gmail.com logout', '', 4, '2020-01-09 06:22:20', NULL),
(207, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fikriharyadi@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-01-09 06:22:34', NULL),
(208, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/delete/3', 'Delete data 3 at Langkah Penanganan', '', 4, '2020-01-09 06:22:49', NULL),
(209, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fikriharyadi@gmail.com logout', '', 4, '2020-01-09 06:23:03', NULL),
(210, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-09 06:23:12', NULL),
(211, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_disposisi/add-save', 'Add New Data  at Disposisi Laporan', '', 1, '2020-01-09 06:23:30', NULL),
(212, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-09 06:23:36', NULL),
(213, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fikriharyadi@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-01-09 06:23:42', NULL),
(214, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fikriharyadi@gmail.com logout', '', 4, '2020-01-09 06:29:06', NULL),
(215, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sigitsuhartono@gmail.com login with IP Address 127.0.0.1', '', 5, '2020-01-09 06:29:14', NULL),
(216, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'sigitsuhartono@gmail.com logout', '', 5, '2020-01-09 06:32:17', NULL),
(217, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sigitsuhartono@gmail.com login with IP Address 127.0.0.1', '', 5, '2020-01-09 06:32:19', NULL),
(218, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-09 06:32:36', NULL),
(219, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/10', 'Update data Disposisi Laporan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2020-01-09 06:35:08', NULL),
(220, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/10', 'Update data Disposisi Laporan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2020-01-09 06:35:28', NULL),
(221, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-09 06:38:04', NULL),
(222, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-09 06:38:14', NULL),
(223, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/edit-save/4', 'Update data  at Langkah Penanganan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_tindak_lanjut</td><td></td><td>1</td></tr><tr><td>permasalahan</td><td></td><td>Redaman Tinggi</td></tr><tr><td>langkah_penanganan</td><td></td><td>Sambung Ulang</td></tr><tr><td>pic_lap</td><td></td><td>uploads/5/2020-01/ppzahar.jpg</td></tr><tr><td>id_petugas</td><td>5</td><td></td></tr></tbody></table>', 5, '2020-01-09 06:38:25', NULL),
(224, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/4', 'Delete data Menu Petugas at Menu Management', '', 1, '2020-01-09 06:40:01', NULL),
(225, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/3', 'Delete data Admin Area at Menu Management', '', 1, '2020-01-09 06:40:06', NULL),
(226, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/5', 'Delete data Tambah Bidang at Menu Management', '', 1, '2020-01-09 06:40:11', NULL),
(227, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/edit-save/4', 'Update data  at Langkah Penanganan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_petugas</td><td>5</td><td></td></tr></tbody></table>', 5, '2020-01-09 07:27:20', NULL),
(228, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_disposisi/add-save', 'Add New Data  at Disposisi Laporan', '', 1, '2020-01-09 07:29:48', NULL),
(229, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/edit-save/5', 'Update data  at Langkah Penanganan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_tindak_lanjut</td><td></td><td>1</td></tr><tr><td>permasalahan</td><td></td><td>Redaman Tinggi</td></tr><tr><td>langkah_penanganan</td><td></td><td>Tarik Ulang</td></tr><tr><td>pic_lap</td><td></td><td>uploads/5/2020-01/ppzahar.jpg</td></tr><tr><td>id_petugas</td><td>5</td><td></td></tr><tr><td>status</td><td></td><td>11</td></tr></tbody></table>', 5, '2020-01-09 07:30:15', NULL),
(230, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-10 21:02:06', NULL),
(231, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/10', 'Update data Disposisi Laporan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-hand-paper-o</td><td>fa fa-newspaper-o</td></tr><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2020-01-10 21:02:31', NULL),
(232, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/7', 'Update data Langkah Penanganan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>icon</td><td>fa fa-plus</td><td>fa fa-check</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2020-01-10 21:02:44', NULL),
(233, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/10', 'Update data Disposisi Laporan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td>6</td><td></td></tr></tbody></table>', 1, '2020-01-10 21:03:00', NULL),
(234, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Rekap Laporan at Menu Management', '', 1, '2020-01-10 21:14:39', NULL),
(235, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/11', 'Update data Rekap Laporan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>sorting</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-10 21:14:51', NULL),
(236, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-12 16:57:51', NULL),
(237, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-12 20:21:53', NULL),
(238, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_lapor/add-save', 'Add New Data Ahsan at Tambah Laporan', '', 1, '2020-01-12 20:39:23', NULL),
(239, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_disposisi/edit-save/6', 'Update data  at Disposisi Laporan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_tindak_lanjut</td><td></td><td></td></tr><tr><td>permasalahan</td><td></td><td></td></tr><tr><td>langkah_penanganan</td><td></td><td></td></tr><tr><td>pic_lap</td><td></td><td></td></tr><tr><td>id_petugas</td><td></td><td>3</td></tr><tr><td>status</td><td></td><td></td></tr></tbody></table>', 1, '2020-01-12 20:39:57', NULL),
(240, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-12 20:40:06', NULL),
(241, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'rezamuttaqien@gmail.com login with IP Address 127.0.0.1', '', 3, '2020-01-12 20:40:10', NULL),
(242, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/edit-save/6', 'Update data  at Langkah Penanganan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_tindak_lanjut</td><td></td><td>1</td></tr><tr><td>permasalahan</td><td></td><td>Redaman Tinggi</td></tr><tr><td>langkah_penanganan</td><td></td><td>Tarik Ulang</td></tr><tr><td>pic</td><td></td><td>uploads/3/2020-01/haha.jpg</td></tr><tr><td>id_petugas</td><td>3</td><td></td></tr></tbody></table>', 3, '2020-01-12 21:11:21', NULL),
(243, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/delete/6', 'Delete data 6 at Langkah Penanganan', '', 3, '2020-01-12 21:11:39', NULL),
(244, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/delete/6', 'Delete data 6 at Langkah Penanganan', '', 3, '2020-01-12 21:12:38', NULL),
(245, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/delete/6', 'Delete data 6 at Langkah Penanganan', '', 3, '2020-01-12 21:12:39', NULL),
(246, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/delete/6', 'Delete data 6 at Langkah Penanganan', '', 3, '2020-01-12 21:12:44', NULL),
(247, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/edit-save/6', 'Update data  at Langkah Penanganan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_petugas</td><td>3</td><td></td></tr></tbody></table>', 3, '2020-01-12 21:19:16', NULL),
(248, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'rezamuttaqien@gmail.com logout', '', 3, '2020-01-12 21:19:43', NULL),
(249, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-12 21:19:46', NULL),
(250, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/delete/11', 'Delete data Rekap Laporan at Menu Management', '', 1, '2020-01-12 21:19:59', NULL),
(251, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-12 21:20:35', NULL),
(252, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-12 21:20:39', NULL),
(253, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-12 21:20:46', NULL),
(254, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'rijalbangets@gmail.com login with IP Address 127.0.0.1', '', 6, '2020-01-12 21:20:54', NULL),
(255, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'rijalbangets@gmail.com logout', '', 6, '2020-01-12 21:22:54', NULL),
(256, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sigitsuhartono@gmail.com login with IP Address 127.0.0.1', '', 5, '2020-01-12 21:23:13', NULL),
(257, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'sigitsuhartono@gmail.com logout', '', 5, '2020-01-12 21:46:39', NULL),
(258, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-12 21:46:43', NULL),
(259, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_lapor/add-save', 'Add New Data Budianto at Tambah Laporan', '', 1, '2020-01-12 21:57:47', NULL),
(260, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_disposisi/edit-save/7', 'Update data  at Disposisi Laporan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_tindak_lanjut</td><td></td><td></td></tr><tr><td>permasalahan</td><td></td><td></td></tr><tr><td>langkah_penanganan</td><td></td><td></td></tr><tr><td>pic</td><td></td><td></td></tr><tr><td>id_petugas</td><td></td><td>5</td></tr><tr><td>status</td><td>Belum Selesai</td><td></td></tr></tbody></table>', 1, '2020-01-12 21:58:03', NULL),
(261, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-12 21:58:46', NULL),
(262, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sigitsuhartono@gmail.com login with IP Address 127.0.0.1', '', 5, '2020-01-12 21:58:49', NULL),
(263, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/edit-save/7', 'Update data  at Langkah Penanganan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_tindak_lanjut</td><td></td><td>1</td></tr><tr><td>permasalahan</td><td></td><td>Redaman Tinggi</td></tr><tr><td>langkah_penanganan</td><td></td><td>Tarik Ulang</td></tr><tr><td>pic</td><td></td><td>uploads/5/2020-01/haha.jpg</td></tr><tr><td>id_petugas</td><td>5</td><td></td></tr></tbody></table>', 5, '2020-01-12 21:59:14', NULL),
(264, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-12 21:59:34', NULL),
(265, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/edit-save/7', 'Update data  at Langkah Penanganan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>permasalahan</td><td>Redaman Tinggi</td><td>Redaman Ketinggian</td></tr><tr><td>id_petugas</td><td>5</td><td></td></tr></tbody></table>', 5, '2020-01-12 22:00:26', NULL),
(266, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_disposisi/edit-save/7', 'Update data  at Disposisi Laporan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_tindak_lanjut</td><td>1</td><td></td></tr><tr><td>permasalahan</td><td>Redaman Ketinggian</td><td></td></tr><tr><td>langkah_penanganan</td><td>Tarik Ulang</td><td></td></tr><tr><td>pic</td><td>uploads/5/2020-01/haha.jpg</td><td></td></tr><tr><td>id_petugas</td><td>5</td><td>3</td></tr><tr><td>status</td><td>Selesai</td><td></td></tr></tbody></table>', 1, '2020-01-12 22:01:04', NULL),
(267, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'sigitsuhartono@gmail.com logout', '', 5, '2020-01-12 22:01:12', NULL),
(268, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'rezamuttaqien@gmail.com login with IP Address 127.0.0.1', '', 3, '2020-01-12 22:01:16', NULL),
(269, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/edit-save/7', 'Update data  at Langkah Penanganan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_petugas</td><td>3</td><td></td></tr></tbody></table>', 3, '2020-01-12 22:01:32', NULL),
(270, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-13 16:49:21', NULL),
(271, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-13 19:42:24', NULL),
(272, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_lapor/add-save', 'Add New Data Hartono at Tambah Laporan', '', 1, '2020-01-13 20:12:27', NULL),
(273, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-13 20:12:35', NULL),
(274, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'rijalbangets@gmail.com login with IP Address 127.0.0.1', '', 6, '2020-01-13 20:12:38', NULL),
(275, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_disposisi/edit-save/8', 'Update data  at Disposisi Laporan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_tindak_lanjut</td><td></td><td></td></tr><tr><td>permasalahan</td><td></td><td></td></tr><tr><td>langkah_penanganan</td><td></td><td></td></tr><tr><td>pic</td><td></td><td></td></tr><tr><td>nama_petugas</td><td></td><td>5</td></tr><tr><td>status</td><td>Belum Selesai</td><td></td></tr></tbody></table>', 6, '2020-01-13 20:14:13', NULL),
(276, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'rijalbangets@gmail.com logout', '', 6, '2020-01-13 20:14:38', NULL),
(277, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sigitsuhartono@gmail.com login with IP Address 127.0.0.1', '', 5, '2020-01-13 20:14:48', NULL),
(278, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/edit-save/8', 'Update data  at Langkah Penanganan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_tindak_lanjut</td><td></td><td>1</td></tr><tr><td>permasalahan</td><td></td><td>Core Patah</td></tr><tr><td>langkah_penanganan</td><td></td><td>Sambung Ulang</td></tr><tr><td>pic</td><td></td><td>uploads/5/2020-01/e_booking_futsal.png</td></tr><tr><td>nama_petugas</td><td>5</td><td></td></tr></tbody></table>', 5, '2020-01-13 20:16:10', NULL),
(279, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'sigitsuhartono@gmail.com logout', '', 5, '2020-01-13 20:16:19', NULL),
(280, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-13 20:16:24', NULL),
(281, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-13 20:17:39', NULL),
(282, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sigitsuhartono@gmail.com login with IP Address 127.0.0.1', '', 5, '2020-01-13 20:17:44', NULL),
(283, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'sigitsuhartono@gmail.com logout', '', 5, '2020-01-13 20:28:49', NULL),
(284, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-13 20:28:52', NULL),
(285, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-15 04:24:25', NULL),
(286, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-15 16:39:05', NULL),
(287, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_lapor/add-save', 'Add New Data Admin Jaringan at Tambah Laporan', '', 1, '2020-01-15 17:10:18', NULL),
(288, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_lapor/add-save', 'Add New Data Budi Hartono at Tambah Laporan', '', 1, '2020-01-15 17:16:24', NULL),
(289, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_lapor/add-save', 'Add New Data Budi Hartono at Tambah Laporan', '', 1, '2020-01-15 17:30:15', NULL),
(290, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_disposisi/add-save', 'Add New Data  at Disposisi Laporan', '', 1, '2020-01-15 17:30:38', NULL),
(291, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-15 17:30:46', NULL),
(292, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sigitsuhartono@gmail.com login with IP Address 127.0.0.1', '', 5, '2020-01-15 17:30:50', NULL),
(293, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/edit-save/16', 'Update data  at Langkah Penanganan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_tindak_lanjut</td><td></td><td>1</td></tr><tr><td>permasalahan</td><td></td><td>Redaman Tinggi</td></tr><tr><td>langkah_penanganan</td><td></td><td>Tarik Ulang</td></tr><tr><td>pic</td><td></td><td>uploads/5/2020-01/haha.jpg</td></tr><tr><td>nama_petugas</td><td>5</td><td></td></tr></tbody></table>', 5, '2020-01-15 17:31:20', NULL),
(294, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'sigitsuhartono@gmail.com logout', '', 5, '2020-01-15 17:38:07', NULL),
(295, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-15 17:38:11', NULL),
(296, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_disposisi/add-save', 'Add New Data  at Disposisi Laporan', '', 1, '2020-01-15 17:38:26', NULL),
(297, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-15 17:38:30', NULL),
(298, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sigitsuhartono@gmail.com login with IP Address 127.0.0.1', '', 5, '2020-01-15 17:38:35', NULL),
(299, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-15 17:39:17', NULL),
(300, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_disposisi/add-save', 'Add New Data  at Disposisi Laporan', '', 1, '2020-01-15 17:40:53', NULL),
(301, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/edit-save/18', 'Update data  at Langkah Penanganan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_tindak_lanjut</td><td></td><td>1</td></tr><tr><td>permasalahan</td><td></td><td>Redaman Tinggi</td></tr><tr><td>langkah_penanganan</td><td></td><td>Tarik Ulang</td></tr><tr><td>pic</td><td></td><td>uploads/5/2020-01/haha.jpg</td></tr><tr><td>nama_petugas</td><td>5</td><td></td></tr></tbody></table>', 5, '2020-01-15 17:41:46', NULL),
(302, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/edit-save/18', 'Update data  at Langkah Penanganan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>permasalahan</td><td>Redaman Tinggi</td><td>Redaman Tinggi 1</td></tr><tr><td>id_petugas</td><td>5</td><td></td></tr></tbody></table>', 5, '2020-01-15 17:54:27', NULL),
(303, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-19 19:47:16', NULL),
(304, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_lapor/add-save', 'Add New Data Budianto at Tambah Laporan', '', 1, '2020-01-19 20:00:31', NULL),
(305, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_disposisi/add-save', 'Add New Data  at Disposisi Laporan', '', 1, '2020-01-19 20:00:58', NULL),
(306, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-19 20:01:02', NULL),
(307, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'fikriharyadi@gmail.com login with IP Address 127.0.0.1', '', 4, '2020-01-19 20:01:06', NULL),
(308, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/edit-save/19', 'Update data  at Langkah Penanganan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_tindak_lanjut</td><td></td><td>1</td></tr><tr><td>permasalahan</td><td></td><td>Core Patah</td></tr><tr><td>langkah_penanganan</td><td></td><td>Sambung Ulang</td></tr><tr><td>pic</td><td></td><td>uploads/4/2020-01/ppzahar.jpg</td></tr><tr><td>id_petugas</td><td>4</td><td></td></tr></tbody></table>', 4, '2020-01-19 20:01:28', NULL),
(309, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'fikriharyadi@gmail.com logout', '', 4, '2020-01-19 20:02:06', NULL),
(310, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-19 20:02:09', NULL),
(311, '182.1.179.9', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36', 'https://projects.borneokoding.org/dana/alko/public/admin/login', 'admin@crudbooster.com login with IP Address 182.1.179.9', '', 1, '2020-01-20 00:24:25', NULL),
(312, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-28 23:38:31', NULL),
(313, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-30 04:22:45', NULL),
(314, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/add-save', 'Add New Data Data Bidang Keahlian at Menu Management', '', 1, '2020-01-30 04:47:11', NULL),
(315, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/13', 'Update data Data Bidang Keahlian at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>12</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-01-30 04:47:24', NULL),
(316, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_lapor/add-save', 'Add New Data Budi Hartono at Tambah Laporan', '', 1, '2020-01-30 05:19:55', NULL),
(317, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-30 05:20:10', NULL),
(318, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'rijalbangets@gmail.com login with IP Address 127.0.0.1', '', 6, '2020-01-30 05:20:28', NULL),
(319, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_disposisi/add-save', 'Add New Data  at Disposisi Laporan', '', 6, '2020-01-30 05:33:45', NULL),
(320, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'rijalbangets@gmail.com logout', '', 6, '2020-01-30 05:33:55', NULL),
(321, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'sigitsuhartono@gmail.com login with IP Address 127.0.0.1', '', 5, '2020-01-30 05:34:04', NULL),
(322, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_langkah_penanganan/edit-save/20', 'Update data  at Langkah Penanganan', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>id_tindak_lanjut</td><td></td><td>1</td></tr><tr><td>tanggal_selesai</td><td></td><td>2020-01-15</td></tr><tr><td>permasalahan</td><td></td><td>Redaman Tinggi</td></tr><tr><td>langkah_penanganan</td><td></td><td>Tarik Ulang</td></tr><tr><td>pic</td><td></td><td>uploads/5/2020-01/logo.png</td></tr><tr><td>id_petugas</td><td>5</td><td></td></tr></tbody></table>', 5, '2020-01-30 05:35:07', NULL),
(323, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'sigitsuhartono@gmail.com logout', '', 5, '2020-01-30 05:35:14', NULL),
(324, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-30 05:35:16', NULL),
(325, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/13', 'Update data Data Bidang Keahlian at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td>light-blue</td><td>normal</td></tr><tr><td>parent_id</td><td>12</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-01-30 06:06:25', NULL),
(326, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-30 06:29:41', NULL),
(327, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-30 16:42:04', NULL),
(328, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-30 19:50:39', NULL),
(329, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/8', 'Update data Tambah Laporan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>type</td><td>Route</td><td>URL</td></tr><tr><td>path</td><td>AdminTbLaporControllerGetIndex</td><td>tb_lapor/add?return_url=http%3A%2F%2F127.0.0.1%3A8000%2Fadmin%2Ftb_lapor&parent_id=&parent_field=</td></tr><tr><td>color</td><td></td><td>normal</td></tr></tbody></table>', 1, '2020-01-30 21:41:27', NULL),
(330, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/tb_lapor/add', 'Try add data at Tambah Laporan', '', 1, '2020-01-30 21:41:48', NULL),
(331, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/8', 'Update data Tambah Laporan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>path</td><td>tb_lapor/add?return_url=http%3A%2F%2F127.0.0.1%3A8000%2Fadmin%2Ftb_lapor&parent_id=&parent_field=</td><td>tb_lapor/add?</td></tr></tbody></table>', 1, '2020-01-30 21:42:32', NULL),
(332, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-30 21:53:17', NULL),
(333, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-30 21:53:19', NULL),
(334, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/users/edit-save/1', 'Update data Super Admin at Users Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>name</td><td>Operator</td><td>Super Admin</td></tr><tr><td>password</td><td>$2y$10$45aeOamCfQfLjzTCgsXzvOoF581mNc.Yy57gveyJwjU/XVRrIWANS</td><td></td></tr><tr><td>status</td><td>Active</td><td></td></tr><tr><td>point</td><td>0</td><td></td></tr></tbody></table>', 1, '2020-01-30 21:55:12', NULL),
(335, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/users/add-save', 'Add New Data Operator at Users Management', '', 1, '2020-01-30 21:56:53', NULL),
(336, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-30 21:56:59', NULL),
(337, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'operator@gmail.com login with IP Address 127.0.0.1', '', 7, '2020-01-30 21:57:06', NULL),
(338, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'operator@gmail.com logout', '', 7, '2020-01-30 21:57:12', NULL),
(339, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', 1, '2020-01-30 21:57:17', NULL);
INSERT INTO `cms_logs` (`id`, `ipaddress`, `useragent`, `url`, `description`, `details`, `id_cms_users`, `created_at`, `updated_at`) VALUES
(340, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/12', 'Update data Report at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2020-01-30 21:57:51', NULL),
(341, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/8', 'Update data Tambah Laporan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody></tbody></table>', 1, '2020-01-30 21:57:59', NULL),
(342, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/9', 'Update data Data SKPD at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>12</td><td></td></tr></tbody></table>', 1, '2020-01-30 21:58:12', NULL),
(343, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/13', 'Update data Data Bidang Keahlian at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>parent_id</td><td>12</td><td></td></tr><tr><td>sorting</td><td>2</td><td></td></tr></tbody></table>', 1, '2020-01-30 21:58:20', NULL),
(344, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/14', 'Update data Data Priority at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>12</td><td></td></tr><tr><td>sorting</td><td>3</td><td></td></tr></tbody></table>', 1, '2020-01-30 21:58:28', NULL),
(345, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/15', 'Update data Data Petugas at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>12</td><td></td></tr><tr><td>sorting</td><td>4</td><td></td></tr></tbody></table>', 1, '2020-01-30 21:58:37', NULL),
(346, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/menu_management/edit-save/16', 'Update data Data Laporan at Menu Management', '<table class=\"table table-striped\"><thead><tr><th>Key</th><th>Old Value</th><th>New Value</th></thead><tbody><tr><td>color</td><td></td><td>normal</td></tr><tr><td>parent_id</td><td>12</td><td></td></tr><tr><td>sorting</td><td>5</td><td></td></tr></tbody></table>', 1, '2020-01-30 21:58:46', NULL),
(347, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'admin@crudbooster.com logout', '', 1, '2020-01-30 21:59:06', NULL),
(348, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/login', 'operator@gmail.com login with IP Address 127.0.0.1', '', 7, '2020-01-30 21:59:16', NULL),
(349, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'http://127.0.0.1:8000/admin/logout', 'operator@gmail.com logout', '', 7, '2020-01-30 22:00:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `is_dashboard` tinyint(1) NOT NULL DEFAULT 0,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(7, 'Langkah Penanganan', 'Route', 'AdminTbLangkahPenangananControllerGetIndex', 'normal', 'fa fa-check', 0, 1, 0, 1, 2, '2019-12-27 13:31:28', '2020-01-10 21:02:44'),
(8, 'Tambah Laporan', 'URL', 'tb_lapor/add?', 'normal', 'fa fa-plus', 0, 1, 0, 1, 1, '2019-12-27 13:39:50', '2020-01-30 21:57:59'),
(9, 'Data SKPD', 'Route', 'AdminTbSkpdControllerGetIndex', 'normal', 'fa fa-database', 12, 1, 0, 1, 1, '2020-01-08 20:19:16', '2020-01-30 21:58:12'),
(10, 'Disposisi Laporan', 'Route', 'AdminTbDisposisiControllerGetIndex', 'normal', 'fa fa-newspaper-o', 0, 1, 0, 1, 3, '2020-01-09 00:51:41', '2020-01-10 21:03:00'),
(12, 'Report', 'Route', 'AdminReportControllerGetIndex', 'normal', 'fa fa-download', 0, 1, 0, 1, 4, '2020-01-13 16:56:16', '2020-01-30 21:57:50'),
(13, 'Data Bidang Keahlian', 'Module', 'tb_bidang_keahlian', 'normal', 'fa fa-database', 12, 1, 0, 1, 2, '2020-01-30 04:47:10', '2020-01-30 21:58:19'),
(14, 'Data Priority', 'Route', 'AdminTbPriorityControllerGetIndex', 'normal', 'fa fa-database', 12, 1, 0, 1, 3, '2020-01-30 04:59:08', '2020-01-30 21:58:27'),
(15, 'Data Petugas', 'Route', 'AdminTbPetugas22ControllerGetIndex', 'normal', 'fa fa-database', 12, 1, 0, 1, 4, '2020-01-30 05:04:46', '2020-01-30 21:58:37'),
(16, 'Data Laporan', 'Route', 'AdminTbLapor23ControllerGetIndex', 'normal', 'fa fa-database', 12, 1, 0, 1, 5, '2020-01-30 05:15:09', '2020-01-30 21:58:46');

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus_privileges`
--

CREATE TABLE `cms_menus_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_menus_privileges`
--

INSERT INTO `cms_menus_privileges` (`id`, `id_cms_menus`, `id_cms_privileges`) VALUES
(1, 1, 1),
(2, 2, 1),
(9, 5, 1),
(10, 6, 1),
(17, 3, 1),
(18, 4, 2),
(19, 4, 1),
(26, 7, 2),
(27, 7, 1),
(28, 10, 3),
(29, 10, 1),
(31, 11, 1),
(33, NULL, 1),
(41, 12, 4),
(42, 12, 1),
(43, 8, 4),
(44, 8, 1),
(45, 9, 4),
(46, 9, 1),
(47, 13, 4),
(48, 13, 1),
(49, 14, 4),
(50, 14, 1),
(51, 15, 4),
(52, 15, 1),
(53, 16, 4),
(54, 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1, '2019-12-17 13:31:31', NULL, NULL),
(2, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1, '2019-12-17 13:31:31', NULL, NULL),
(3, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1, '2019-12-17 13:31:31', NULL, NULL),
(4, 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1, '2019-12-17 13:31:31', NULL, NULL),
(5, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1, '2019-12-17 13:31:31', NULL, NULL),
(6, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1, '2019-12-17 13:31:31', NULL, NULL),
(7, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1, '2019-12-17 13:31:31', NULL, NULL),
(8, 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1, '2019-12-17 13:31:31', NULL, NULL),
(9, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1, '2019-12-17 13:31:31', NULL, NULL),
(10, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1, '2019-12-17 13:31:31', NULL, NULL),
(11, 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1, '2019-12-17 13:31:31', NULL, NULL),
(12, 'Data Petugas', 'fa fa-user', 'petugas', 'tb_petugas', 'AdminPetugasController', 0, 0, '2019-12-17 14:37:16', NULL, '2019-12-24 07:27:13'),
(13, 'Lapor Kendala', 'fa fa-database', 'lapor', 'tb_lapor', 'AdminLaporController', 0, 0, '2019-12-17 14:40:19', NULL, '2019-12-24 07:27:20'),
(14, 'Data Bidang Keahlian', 'fa fa-database', 'tb_bidang_keahlian', 'tb_bidang_keahlian', 'AdminTbBidangKeahlianController', 0, 0, '2019-12-27 13:25:52', NULL, NULL),
(15, 'Tambah Petugas', 'fa fa-plus', 'tb_petugas', 'tb_petugas', 'AdminTbPetugasController', 0, 0, '2019-12-27 13:27:05', NULL, '2020-01-09 06:19:45'),
(16, 'Langkah Penanganan', 'fa fa-plus', 'tb_langkah_penanganan', 'tb_langkah_penanganan', 'AdminTbLangkahPenangananController', 0, 0, '2019-12-27 13:31:28', NULL, NULL),
(17, 'Tambah Laporan', 'fa fa-plus', 'tb_lapor', 'tb_lapor', 'AdminTbLaporController', 0, 0, '2019-12-27 13:39:50', NULL, NULL),
(18, 'Data SKPD', 'fa fa-database', 'tb_skpd', 'tb_skpd', 'AdminTbSkpdController', 0, 0, '2020-01-08 20:19:16', NULL, NULL),
(19, 'Disposisi Laporan', 'fa fa-newspaper-o', 'tb_disposisi', 'tb_disposisi', 'AdminTbDisposisiController', 0, 0, '2020-01-09 00:51:41', NULL, NULL),
(20, 'Report', 'fa fa-download', 'report', 'tb_petugas', 'AdminReportController', 0, 0, '2020-01-13 16:56:16', NULL, NULL),
(21, 'Data Priority', 'fa fa-database', 'tb_priority', 'tb_priority', 'AdminTbPriorityController', 0, 0, '2020-01-30 04:59:07', NULL, NULL),
(22, 'Data Petugas', 'fa fa-database', 'tb_petugas22', 'tb_petugas', 'AdminTbPetugas22Controller', 0, 0, '2020-01-30 05:04:46', NULL, NULL),
(23, 'Data Laporan', 'fa fa-database', 'tb_lapor23', 'tb_lapor', 'AdminTbLapor23Controller', 0, 0, '2020-01-30 05:15:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_notifications`
--

INSERT INTO `cms_notifications` (`id`, `id_cms_users`, `content`, `url`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pekerjaan telah selesai', 'http://127.0.0.1:8000/admin/../tb_lapor/add?id=[id]', 1, '2020-01-07 06:31:56', NULL),
(2, 1, 'Pekerjaan CRUDBooster::myId() telah selesai', 'http://127.0.0.1:8000/admin/../tb_lapor/add?id=[id]', 1, '2020-01-08 21:41:47', NULL),
(3, 1, 'Pekerjaan telah selesai', 'http://127.0.0.1:8000/admin/../tb_lapor/add?id=[id]', 1, '2020-01-08 21:50:18', NULL),
(4, 5, 'Pekerjaan telah selesai13', 'http://127.0.0.1:8000/admin/../tb_lapor/add?id=[id]', 1, '2020-01-12 21:11:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `name`, `is_superadmin`, `theme_color`, `created_at`, `updated_at`) VALUES
(1, 'Super Administrator', 1, 'skin-red', '2019-12-17 13:31:31', NULL),
(2, 'Petugas', 0, 'skin-blue-light', NULL, NULL),
(3, 'Pimpinan', 0, 'skin-blue', NULL, NULL),
(4, 'Operator', 0, 'skin-purple-light', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 0, 0, 1, 1, '2019-12-17 13:31:31', NULL),
(2, 1, 1, 1, 1, 1, 1, 2, '2019-12-17 13:31:31', NULL),
(3, 0, 1, 1, 1, 1, 1, 3, '2019-12-17 13:31:31', NULL),
(4, 1, 1, 1, 1, 1, 1, 4, '2019-12-17 13:31:31', NULL),
(5, 1, 1, 1, 1, 1, 1, 5, '2019-12-17 13:31:31', NULL),
(6, 1, 1, 1, 1, 1, 1, 6, '2019-12-17 13:31:31', NULL),
(7, 1, 1, 1, 1, 1, 1, 7, '2019-12-17 13:31:31', NULL),
(8, 1, 1, 1, 1, 1, 1, 8, '2019-12-17 13:31:31', NULL),
(9, 1, 1, 1, 1, 1, 1, 9, '2019-12-17 13:31:31', NULL),
(10, 1, 1, 1, 1, 1, 1, 10, '2019-12-17 13:31:31', NULL),
(11, 1, 0, 1, 0, 1, 1, 11, '2019-12-17 13:31:31', NULL),
(12, 1, 1, 1, 1, 1, 1, 12, NULL, NULL),
(13, 1, 1, 1, 1, 1, 1, 13, NULL, NULL),
(14, 1, 1, 1, 1, 1, 1, 14, NULL, NULL),
(15, 1, 1, 1, 1, 1, 1, 15, NULL, NULL),
(16, 1, 1, 1, 1, 1, 1, 16, NULL, NULL),
(17, 1, 1, 1, 1, 1, 1, 17, NULL, NULL),
(18, 1, 1, 1, 1, 1, 2, 16, NULL, NULL),
(19, 1, 1, 1, 1, 1, 1, 18, NULL, NULL),
(21, 1, 1, 1, 1, 1, 1, 19, NULL, NULL),
(22, 1, 1, 1, 1, 1, 3, 18, NULL, NULL),
(23, 1, 1, 1, 1, 1, 3, 19, NULL, NULL),
(24, 1, 1, 1, 1, 1, 1, 20, NULL, NULL),
(25, 1, 1, 1, 1, 1, 1, 21, NULL, NULL),
(26, 1, 1, 1, 1, 1, 1, 22, NULL, NULL),
(27, 1, 1, 1, 1, 1, 1, 23, NULL, NULL),
(28, 1, 1, 1, 1, 1, 4, 14, NULL, NULL),
(29, 1, 1, 1, 1, 1, 4, 23, NULL, NULL),
(30, 1, 1, 1, 1, 1, 4, 22, NULL, NULL),
(31, 1, 1, 1, 1, 1, 4, 21, NULL, NULL),
(32, 1, 1, 1, 1, 1, 4, 18, NULL, NULL),
(33, 1, 1, 1, 1, 1, 4, 20, NULL, NULL),
(34, 1, 1, 1, 1, 1, 4, 17, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_input_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `created_at`, `updated_at`, `group_setting`, `label`) VALUES
(1, 'login_background_color', '', 'text', NULL, 'Input hexacode', '2019-12-17 13:31:31', NULL, 'Login Register Style', 'Login Background Color'),
(2, 'login_font_color', '', 'text', NULL, 'Input hexacode', '2019-12-17 13:31:31', NULL, 'Login Register Style', 'Login Font Color'),
(3, 'login_background_image', NULL, 'upload_image', NULL, NULL, '2019-12-17 13:31:31', NULL, 'Login Register Style', 'Login Background Image'),
(4, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, '2019-12-17 13:31:31', NULL, 'Email Setting', 'Email Sender'),
(5, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, '2019-12-17 13:31:31', NULL, 'Email Setting', 'Mail Driver'),
(6, 'smtp_host', '', 'text', NULL, NULL, '2019-12-17 13:31:31', NULL, 'Email Setting', 'SMTP Host'),
(7, 'smtp_port', '25', 'text', NULL, 'default 25', '2019-12-17 13:31:31', NULL, 'Email Setting', 'SMTP Port'),
(8, 'smtp_username', '', 'text', NULL, NULL, '2019-12-17 13:31:31', NULL, 'Email Setting', 'SMTP Username'),
(9, 'smtp_password', '', 'text', NULL, NULL, '2019-12-17 13:31:31', NULL, 'Email Setting', 'SMTP Password'),
(10, 'appname', 'ALKO', 'text', NULL, NULL, '2019-12-17 13:31:31', NULL, 'Application Setting', 'Application Name'),
(11, 'default_paper_size', 'A4', 'text', NULL, 'Paper size, ex : A4, Legal, etc', '2019-12-17 13:31:31', NULL, 'Application Setting', 'Default Paper Print Size'),
(12, 'logo', 'uploads/2019-12/ad31edb4a621ed7c2fe4fdd859992168.png', 'upload_image', NULL, NULL, '2019-12-17 13:31:31', NULL, 'Application Setting', 'Logo'),
(13, 'favicon', 'uploads/2019-12/884048a597e560b8f1dbe51df06489b0.png', 'upload_image', NULL, NULL, '2019-12-17 13:31:31', NULL, 'Application Setting', 'Favicon'),
(14, 'api_debug_mode', 'true', 'select', 'true,false', NULL, '2019-12-17 13:31:31', NULL, 'Application Setting', 'API Debug Mode'),
(15, 'google_api_key', '', 'text', NULL, NULL, '2019-12-17 13:31:31', NULL, 'Application Setting', 'Google API Key'),
(16, 'google_fcm_key', '', 'text', NULL, NULL, '2019-12-17 13:31:31', NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Rekap Laporan', 'rekap-laporan', '2020-01-07 22:13:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, 'c2c727d1cdda85a998be5cfefae1de01', 'smallbox', 'area1', 0, NULL, '{\"name\":\"Data Laporan\",\"icon\":\"ion-analytics\",\"color\":\"bg-green\",\"link\":\"..\\/tb_lapor\\/add\",\"sql\":\"select count(*) from tb_lapor;\"}', '2020-01-07 22:13:26', NULL),
(2, 1, 'f3b0d887fb51953f66941a9294a8011d', 'smallbox', 'area4', 0, NULL, '{\"name\":\"Data Petugas\",\"icon\":\"ion-user\",\"color\":\"bg-yellow\",\"link\":\"..\\/tb_petugas\\/add\",\"sql\":\"select count(*) from tb_petugas;\"}', '2020-01-07 22:21:30', NULL),
(3, 1, 'a8a2e5746a362d61f90bc53c309967a6', 'smallbox', NULL, 0, 'Untitled', NULL, '2020-01-07 22:22:57', NULL),
(4, 1, 'a8a2e5746a362d61f90bc53c309967a6', 'smallbox', NULL, 0, 'Untitled', NULL, '2020-01-07 22:22:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `point` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `created_at`, `updated_at`, `status`, `point`) VALUES
(1, 'Super Admin', 'uploads/1/2019-12/picture.jpg', 'admin@crudbooster.com', '$2y$10$45aeOamCfQfLjzTCgsXzvOoF581mNc.Yy57gveyJwjU/XVRrIWANS', 1, '2019-12-17 13:31:31', '2020-01-30 21:55:12', 'Active', 0),
(2, 'Helmi Mahditia Adam, S.Kom', 'uploads/1/2019-12/04_02_5239.jpg', 'helmiadam@gmail.com', '$2y$10$RBjuTuXs0t6YXXoN94Ed/OMd5veujRx5qeYRSPRrGJggM9gqNFPbO', 2, '2019-12-24 07:36:30', '2019-12-24 07:41:57', NULL, 0),
(3, 'Reza Muttaqien, S.Kom', 'uploads/1/2019-12/haha.jpg', 'rezamuttaqien@gmail.com', '$2y$10$CBrMGdwrnZ3LjeDMQTjXRuWfOpFDJTWSyKC69R/MKCkXJBKLf7x1i', 2, '2019-12-24 07:38:37', NULL, NULL, 0),
(4, 'Fikri Haryadi, A.Md', 'uploads/1/2019-12/images.jpeg', 'fikriharyadi@gmail.com', '$2y$10$Wxj20asUBXh9ZHf3FyOs1uV7yxl/BVqUNry3LAQDlBotAJiCUY.MC', 2, '2019-12-24 07:40:49', NULL, NULL, 0),
(5, 'Sigit Suhartono, A.Md', 'uploads/1/2019-12/mlpysiwm.jpg', 'sigitsuhartono@gmail.com', '$2y$10$jY4R4b7eeofZnHHd6bxc/.7LhwTc0W1XeLZFjINbOOXItDlXTGi5i', 2, '2019-12-24 07:42:53', NULL, NULL, 1),
(6, 'Khairurrijaal, S.Stp', 'uploads/1/2020-01/ppzahar.jpg', 'rijalbangets@gmail.com', '$2y$10$Oj8fnF48vTRqD4R51buyUeIfF1Hc/gqTmp8qB3zM.Uta2pGuL4.S.', 3, '2020-01-08 21:25:40', '2020-01-08 21:26:41', NULL, 0),
(7, 'Operator', 'uploads/1/2020-01/logojer600.png', 'operator@gmail.com', '$2y$10$cBnGPLcPDLh.AYy2welmT.fGdO2lCStPnenKTU0UygBdY4SSopduu', 4, '2020-01-30 21:56:53', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_151211_add_details_cms_logs', 1),
(5, '2016_08_07_152014_add_table_cms_privileges', 1),
(6, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(7, '2016_08_07_152320_add_table_cms_settings', 1),
(8, '2016_08_07_152421_add_table_cms_users', 1),
(9, '2016_08_07_154624_add_table_cms_menus_privileges', 1),
(10, '2016_08_07_154624_add_table_cms_moduls', 1),
(11, '2016_08_17_225409_add_status_cms_users', 1),
(12, '2016_08_20_125418_add_table_cms_notifications', 1),
(13, '2016_09_04_033706_add_table_cms_email_queues', 1),
(14, '2016_09_16_035347_add_group_setting', 1),
(15, '2016_09_16_045425_add_label_setting', 1),
(16, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(17, '2016_10_01_141740_add_method_type_apicustom', 1),
(18, '2016_10_01_141846_add_parameters_apicustom', 1),
(19, '2016_10_01_141934_add_responses_apicustom', 1),
(20, '2016_10_01_144826_add_table_apikey', 1),
(21, '2016_11_14_141657_create_cms_menus', 1),
(22, '2016_11_15_132350_create_cms_email_templates', 1),
(23, '2016_11_15_190410_create_cms_statistics', 1),
(24, '2016_11_17_102740_create_cms_statistic_components', 1),
(25, '2017_06_06_164501_add_deleted_at_cms_moduls', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_bidang_keahlian`
--

CREATE TABLE `tb_bidang_keahlian` (
  `id` int(11) NOT NULL,
  `bidang_keahlian` varchar(225) NOT NULL,
  `point_bidang` varchar(225) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_bidang_keahlian`
--

INSERT INTO `tb_bidang_keahlian` (`id`, `bidang_keahlian`, `point_bidang`) VALUES
(1, 'Sistem Informasi', '0'),
(2, 'Jaringan', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_disposisi`
--

CREATE TABLE `tb_disposisi` (
  `id` int(11) NOT NULL,
  `id_lapor` int(11) DEFAULT NULL,
  `id_tindak_lanjut` int(11) DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `permasalahan` varchar(225) DEFAULT NULL,
  `langkah_penanganan` varchar(225) DEFAULT NULL,
  `pic` varchar(225) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_disposisi`
--

INSERT INTO `tb_disposisi` (`id`, `id_lapor`, `id_tindak_lanjut`, `tanggal_selesai`, `permasalahan`, `langkah_penanganan`, `pic`, `id_petugas`) VALUES
(20, 21, 1, '2020-01-15', 'Redaman Tinggi', 'Tarik Ulang', 'uploads/5/2020-01/logo.png', 5);

--
-- Triggers `tb_disposisi`
--
DELIMITER $$
CREATE TRIGGER `ubah_status` AFTER UPDATE ON `tb_disposisi` FOR EACH ROW BEGIN
UPDATE tb_lapor SET status='Selesai' WHERE id=OLD.id_lapor;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `verifikasi_kerja` AFTER UPDATE ON `tb_disposisi` FOR EACH ROW BEGIN
UPDATE cms_users SET point=point+1 WHERE id=OLD.id_petugas;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_lapor`
--

CREATE TABLE `tb_lapor` (
  `id` int(11) NOT NULL,
  `no_ticket` varchar(255) NOT NULL,
  `nama_pelapor` varchar(225) NOT NULL,
  `id_skpd` int(11) NOT NULL,
  `isi_ticket` varchar(225) NOT NULL,
  `id_bidang_keahlian` int(11) NOT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `status` varchar(225) NOT NULL,
  `id_priority` int(11) NOT NULL,
  `tanggal_selesai` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_lapor`
--

INSERT INTO `tb_lapor` (`id`, `no_ticket`, `nama_pelapor`, `id_skpd`, `isi_ticket`, `id_bidang_keahlian`, `tanggal_masuk`, `status`, `id_priority`, `tanggal_selesai`) VALUES
(21, '45618793636', 'Budi Hartono', 60, 'Internet Lelet', 2, '2020-01-30', 'Selesai', 2, '2020-01-15');

--
-- Triggers `tb_lapor`
--
DELIMITER $$
CREATE TRIGGER `point_bidang` AFTER UPDATE ON `tb_lapor` FOR EACH ROW BEGIN
UPDATE tb_bidang_keahlian SET point_bidang=point_bidang+1 WHERE id=OLD.id_bidang_keahlian;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `point_priority` AFTER UPDATE ON `tb_lapor` FOR EACH ROW BEGIN
UPDATE tb_priority SET point_priority=point_priority+1 WHERE id=OLD.id_priority;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `point_skpd` AFTER UPDATE ON `tb_lapor` FOR EACH ROW BEGIN
UPDATE tb_skpd SET point_skpd=point_skpd+1 WHERE id=OLD.id_skpd;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `id` int(11) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `nama_petugas` varchar(225) NOT NULL,
  `id_users` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_petugas`
--

INSERT INTO `tb_petugas` (`id`, `nip`, `nama_petugas`, `id_users`) VALUES
(2, '198604192010011007', 'Helmi Mahditia Adam, S.Kom', NULL),
(3, '198504192010011011', 'Reza Muttaqien, S.Kom', NULL),
(4, '198602242010011008', 'Fikri Haryadi, A.Md', NULL),
(5, '0218211', 'Sigit Suhartono, A.Md', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_priority`
--

CREATE TABLE `tb_priority` (
  `id` int(11) NOT NULL,
  `tingkat_priority` varchar(225) NOT NULL,
  `point_priority` varchar(225) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_priority`
--

INSERT INTO `tb_priority` (`id`, `tingkat_priority`, `point_priority`) VALUES
(1, 'Rendah', '0'),
(2, 'Sedang', '1'),
(3, 'Tinggi', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_skpd`
--

CREATE TABLE `tb_skpd` (
  `id` int(11) NOT NULL,
  `satuan_kerja` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `point_skpd` varchar(225) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_skpd`
--

INSERT INTO `tb_skpd` (`id`, `satuan_kerja`, `email`, `point_skpd`) VALUES
(1, 'Badan Penanggulangan Bencana Daerah', 'admin@bpbd.banjarbarukota.go.id', '0'),
(2, 'Bagian Ekobang Setdako	', 'admin@ekobang.banjarbarukota.go.id', '0'),
(3, 'Bagian Hukum Setdako', 'hukum@banjarbarukota.go.id', '0'),
(4, 'Bagian Humas Setdako', 'admin@humas.banjarbarukota.go.id', '0'),
(5, 'Bagian Kerjasama Keagrariaan Setdako', 'kerjasama-keagrariaan@banjarbarukota.go.id', '0'),
(6, 'Bagian Kesejahteraan Rakyat Setdako', 'kesra@banjarbarukota.go.id', '0'),
(7, 'Bagian Organisasi Setdako	', 'organisasi@banjarbarukota.go.id', '0'),
(8, 'Bagian Pemerintahan Setdako', 'pem@banjarbarukota.go.id', '0'),
(9, 'Bagian Pengadaan Barang & Jasa Setdako	', 'ulp@banjarbarukota.go.id', '0'),
(10, 'Bagian Umum Setdako', 'umum@banjarbarukota.go.id', '0'),
(11, 'BAKESBANGPOL', 'kesbangpol@banjarbarukota.go.id', '0'),
(12, 'BAPPEDA	', 'bappeda@banjarbarukota.go.id', '0'),
(13, 'BKPP', 'layanan@bkpp.banjarbarukota.go.id', '0'),
(14, 'BPKAD', 'bpkad@banjarbarukota.go.id', '0'),
(15, 'BPPRD', 'bpprd@banjarbarukota.go.id', '0'),
(16, 'Dinas Arsip & Perpustakaan Daerah', 'darpusda@banjarbarukota.go.id', '0'),
(17, 'Dinas Kesehatan	', 'admin@dinkes.banjarbarukota.go.id', '0'),
(18, 'Dinas Lingkungan Hidup', 'admin@dlh.banjarbarukota.go.id', '0'),
(19, 'Dinas Pendidikan', 'kepegawaian@disdik.banjarbarukota.go.id', '0'),
(20, 'Dinas Perdagangan', 'disdag@banjarbarukota.go.id', '0'),
(21, 'Dinas Perhubungan', 'admin@dishub.banjarbarukota.go.id', '0'),
(22, 'Dinas Sosial	', 'dinsos@banjarbarukota.go.id', '0'),
(23, 'DISDALDUKKBPMPPA', 'disdaldukkbpmppa@banjarbarukota.go.id', '0'),
(24, 'DISDUKCAPIL	', 'admincapil@disdukcapil.banjarbarukota.go.id', '0'),
(25, 'DISKOMINFO', 'kominfobjb@banjarbarukota.go.id', '0'),
(26, 'DISKOPUMKMNAKER', 'admin@diskopukmnaker.banjarbarukota.go.id', '0'),
(27, 'DISPERKIM', 'admin@disperkim.banjarbarukota.go.id', '0'),
(28, 'DISPORABUDPAR', 'admin@disporabudpar.banjarbarukota.go.id', '0'),
(29, 'DISPUPR', 'admin@dispupr.banjarbarukota.go.id', '0'),
(30, 'DKP3', 'dkp3@banjarbarukota.go.id', '0'),
(31, 'DPMPTSP', 'dpmptsp@banjarbarukota.go.id', '0'),
(32, 'DPRD', 'dprd@banjarbarukota.go.id', '0'),
(33, 'Inspektorat', 'inspektorat@banjarbarukota.go.id', '0'),
(34, 'Kecamatan Banjarbaru Selatan', 'admin@kec-bbs.banjarbarukota.go.id', '0'),
(35, 'Kecamatan Banjarbaru Utara', 'admin@kec-bbu.banjarbarukota.go.id', '0'),
(36, 'Kecamatan Cempaka', 'admin@kec-cempaka.banjarbarukota.go.id', '0'),
(37, 'Kecamatan Landasan Ulin', 'admin@kec-landasanulin.banjarbarukota.go.id', '0'),
(38, 'Kecamatan Liang Anggang	', 'kec-lianganggang@banjarbarukota.go.id', '0'),
(39, 'Kelurahan Bangkal	', 'kel-bangkal@banjarbarukota.go.id', '0'),
(40, 'Kelurahan Cempaka	', 'kel-cempaka@banjarbarukota.go.id', '0'),
(41, 'Kelurahan Guntung Manggis	', 'kel-gtmanggis@banjarbarukota.go.id', '0'),
(42, 'Kelurahan Guntung Paikat	', 'admin@kel-gtpaikat.banjarbarukota.go.id', '0'),
(43, 'Kelurahan Guntung Payung	', 'kel-gtpayung@banjarbarukota.go.id', '0'),
(44, 'Kelurahan Kemuning	', 'kel-kemuning@banjarbarukota.go.id', '0'),
(45, 'Kelurahan Komet	', 'admin@kel-komet.banjarbarukota.go.id', '0'),
(46, 'Kelurahan Landasan Ulin Barat', 'kel-landasanulinbarat@banjarbarukota.go.id', '0'),
(47, 'Kelurahan Landasan Ulin Selatan', 'kel-landasanulinselatan@banjarbarukota.go.id', '0'),
(48, 'Kelurahan Landasan Ulin Tengah	', 'admin08@kel-landasanulintengah.banjarbarukota.go.id', '0'),
(49, 'Kelurahan Landasan Ulin Timur	', 'kel-landasanulintimur@banjarbarukota.go.id', '0'),
(50, 'Kelurahan Landasan Ulin Utara	', 'pem@kel-landasanulinutara.banjarbarukota.go.id', '0'),
(51, 'Kelurahan Loktabat Selatan', 'kel-loktabatselatan@banjarbarukota.go.id', '0'),
(52, 'Kelurahan Loktabat Utara	', 'kel-loktabatutara@banjarbarukota.go.id', '0'),
(53, 'Kelurahan Mentaos', 'admin@kel-mentaos.banjarbarukota.go.id', '0'),
(54, 'Kelurahan Palam	', 'admin@kel-palam.banjarbarukota.go.id', '0'),
(55, 'Kelurahan Sungai Besar	', 'kel-sungaibesar@banjarbarukota.go.id', '0'),
(56, 'Kelurahan Sungai Tiung	', 'kel-sungaitiung@banjarbarukota.go.id', '0'),
(57, 'Kelurahan Sungai Ulin	', 'kel-sungaiulin@banjarbarukota.go.id', '0'),
(58, 'Kelurahan Syamsudinnoor	', 'admin@kel-syamsudinnoor.banjarbarukota.go.id', '0'),
(59, 'RS Idaman', 'support@rsidaman.banjarbarukota.go.id', '0'),
(60, 'Satpol PP	', 'admin@satpolpp.banjarbarukota.go.id', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tindak_lanjut`
--

CREATE TABLE `tb_tindak_lanjut` (
  `id` int(11) NOT NULL,
  `nama_tindak_lanjut` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_tindak_lanjut`
--

INSERT INTO `tb_tindak_lanjut` (`id`, `nama_tindak_lanjut`) VALUES
(1, 'On Site'),
(2, 'Via Telepon'),
(3, 'Remote');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_bidang_keahlian`
--
ALTER TABLE `tb_bidang_keahlian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_disposisi`
--
ALTER TABLE `tb_disposisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_lapor`
--
ALTER TABLE `tb_lapor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_priority`
--
ALTER TABLE `tb_priority`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_skpd`
--
ALTER TABLE `tb_skpd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tindak_lanjut`
--
ALTER TABLE `tb_tindak_lanjut`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;

--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_menus_privileges`
--
ALTER TABLE `cms_menus_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_bidang_keahlian`
--
ALTER TABLE `tb_bidang_keahlian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_disposisi`
--
ALTER TABLE `tb_disposisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_lapor`
--
ALTER TABLE `tb_lapor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_petugas`
--
ALTER TABLE `tb_petugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_priority`
--
ALTER TABLE `tb_priority`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
