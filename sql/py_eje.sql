-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-12-2023 a las 06:24:53
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `py_eje`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(30) NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  `cost_price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `item_type_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `admission_date` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`id`, `description`, `sale_price`, `cost_price`, `stock`, `item_type_id`, `supplier_id`, `admission_date`, `created_at`, `updated_at`) VALUES
(1, 'Leche Gloria', 4.00, 3.85, 8, 2, 1, '2023-11-01', '2023-12-01 06:24:03', '2023-12-19 09:31:34'),
(2, 'Leche Ideal Cremosita', 4.00, 3.80, 38, 2, 2, '2023-11-01', '2023-12-01 06:27:29', '2023-12-12 21:58:38'),
(3, 'Atun Filete A1', 4.80, 4.60, 0, 5, 3, '2023-12-01', '2023-12-09 23:23:16', '2023-12-09 23:38:55'),
(4, 'Atun Trozos A1', 4.80, 4.60, 0, 5, 3, '2023-01-31', '2023-12-09 23:27:56', '2023-12-09 23:39:06'),
(5, 'Leche Condensada Nestle', 5.00, 4.80, 0, 2, 1, '2023-12-01', '2023-12-09 23:28:44', '2023-12-09 23:28:44'),
(6, 'Atun Filete Gloria', 4.80, 4.60, 10, 5, 2, '2023-12-01', '2023-12-09 23:29:35', '2023-12-17 15:22:39'),
(7, 'Atun Trozos Gloria', 4.80, 4.60, 17, 5, 2, '2023-12-01', '2023-12-09 23:31:12', '2023-12-17 15:34:09'),
(8, 'Coca Cola 1L', 4.00, 3.80, 10, 1, 4, '2023-12-01', '2023-12-09 23:31:59', '2023-12-11 14:33:12'),
(9, 'Fanta 1L', 4.00, 3.80, 8, 1, 4, '2023-11-12', '2023-12-09 23:32:35', '2023-12-17 15:03:16'),
(10, 'Escocesa 1L', 5.00, 4.80, 0, 1, 4, '2023-12-01', '2023-12-09 23:33:04', '2023-12-09 23:48:09'),
(11, 'Inca Kola 1L', 4.00, 3.80, 24, 1, 4, '2023-12-01', '2023-12-09 23:34:49', '2023-12-09 23:48:17'),
(12, 'Tallarin Don Vitorio', 2.50, 2.30, 23, 4, 1, '2023-12-01', '2023-12-09 23:35:21', '2023-12-12 21:58:38'),
(13, 'Tallarin Nicolini', 2.40, 2.20, 20, 4, 2, '2023-11-15', '2023-12-10 00:26:30', '2023-12-10 00:26:30'),
(14, 'Cabello de Angel Nicolini', 2.00, 1.90, 24, 4, 2, '2023-11-11', '2023-12-10 00:27:21', '2023-12-17 14:29:11'),
(15, 'Fideos Municiones Lavaggi', 2.80, 2.60, 0, 4, 1, '2023-11-11', '2023-12-10 00:31:12', '2023-12-10 00:31:12'),
(16, 'Paneton Todinno 900g en caja', 24.50, 24.40, 37, 6, 4, '2023-12-02', '2023-12-10 00:41:51', '2023-12-15 19:04:55'),
(17, 'Paneton Gloria 900g en caja', 23.00, 22.90, 40, 6, 1, '2023-12-01', '2023-12-10 00:42:38', '2023-12-10 00:42:38'),
(18, 'Paneton Blanca Flor 900g en bo', 22.00, 21.90, 0, 6, 1, '2023-12-01', '2023-12-10 00:43:38', '2023-12-10 00:43:38'),
(19, 'Paneton Buon Natale 750g en bo', 18.00, 17.90, 0, 6, 1, '2023-12-02', '2023-12-10 00:44:34', '2023-12-10 00:44:34'),
(20, 'Paneton Bimbo 900g en bolsa', 20.00, 19.90, 22, 6, 2, '2023-12-03', '2023-12-10 00:45:24', '2023-12-19 10:14:17'),
(21, 'Lasagna Don Vitorio', 5.00, 4.80, 12, 4, 3, '2023-11-24', '2023-12-11 04:20:12', '2023-12-11 04:20:12'),
(22, 'Arroz Paisana 1K', 3.90, 3.70, 72, 8, 3, '2023-12-01', '2023-12-17 14:12:02', '2023-12-18 09:34:48'),
(23, 'Aceite Primor 700ml', 15.00, 14.80, 59, 8, 3, '2023-12-01', '2023-12-17 14:12:43', '2023-12-18 09:34:48'),
(24, 'Avena 3 Ositos 500g', 5.00, 4.80, 51, 8, 3, '2023-12-01', '2023-12-17 14:13:33', '2023-12-19 10:21:09'),
(25, 'Azucar Chucarapi 1K', 4.50, 4.30, 25, 8, 3, '2023-12-01', '2023-12-17 14:14:34', '2023-12-17 14:14:34'),
(26, 'Cafe Altomayo 90g', 13.00, 12.50, 49, 8, 3, '2023-12-01', '2023-12-17 14:15:12', '2023-12-18 09:43:14'),
(27, 'Nescafe descafeinado 150g', 25.50, 24.50, 43, 8, 6, '2023-12-02', '2023-12-19 10:12:15', '2023-12-19 10:14:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_name` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cities`
--

INSERT INTO `cities` (`id`, `city_name`, `created_at`, `updated_at`) VALUES
(1, 'Arequipa', '2023-12-16 21:42:45', '2023-12-18 07:06:56'),
(2, 'Cusco', '2023-12-16 21:42:45', '2023-12-16 21:42:45'),
(3, 'Lima', '2023-12-16 21:42:45', '2023-12-16 21:42:45'),
(4, 'Puno', '2023-12-16 21:42:45', '2023-12-16 21:42:45'),
(5, 'Camana', '2023-12-17 14:16:39', '2023-12-17 14:16:39'),
(6, 'Mollendo', '2023-12-17 14:16:47', '2023-12-17 14:16:47'),
(7, 'Ayacucho', '2023-12-18 07:06:02', '2023-12-18 07:06:02'),
(8, 'Juliaca', '2023-12-19 10:02:46', '2023-12-19 10:02:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document_number` varchar(15) NOT NULL,
  `document_type_id` bigint(20) UNSIGNED NOT NULL,
  `names` varchar(50) NOT NULL,
  `surnames` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(9) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`id`, `document_number`, `document_type_id`, `names`, `surnames`, `address`, `city_id`, `phone`, `created_at`, `updated_at`) VALUES
(1, '45484679', 1, 'Juan Luis', 'Perez Santos', 'Calle El Sol 526', 1, '956821456', '2023-12-16 21:42:47', '2023-12-17 14:18:22'),
(2, '45487596', 2, 'Luis Alberto', 'Gonzales Pastor', 'Av. El pardo 789', 1, '956978125', '2023-12-16 21:42:47', '2023-12-16 21:42:47'),
(4, '29548672', 1, 'Carlos Miguel', 'Castro Cifuentes', 'Av. El Cural 152', 1, '945786321', '2023-12-10 00:49:40', '2023-12-10 00:49:40'),
(5, '41454687', 1, 'Rodrigo Benito', 'Vargas Sotomayor', 'Urb. La Alameda G-5', 1, '945786221', '2023-12-10 00:50:23', '2023-12-10 00:50:23'),
(6, '04278564', 1, 'Laura Maria', 'Quintanilla Duarte', 'Av. Los Manzanos 456', 4, '954789512', '2023-12-10 02:28:46', '2023-12-10 02:28:46'),
(7, '02684579', 1, 'Jose Miguel', 'Encinas Manrique', 'Jr. Los Proceres 1254', 4, '945986784', '2023-12-10 02:29:31', '2023-12-10 02:29:31'),
(8, '15487935', 1, 'Alberto', 'Takahashi Lumbreras', 'Jr. La Union 456', 2, '945862742', '2023-12-10 02:30:22', '2023-12-10 02:30:22'),
(9, '15487623', 1, 'Lucio David', 'Machado Cornejo', 'Urb Las Peñas L-2', 2, '946978921', '2023-12-10 03:32:36', '2023-12-10 03:32:36'),
(10, '25485761', 1, 'Alfredo', 'Rojas Castro', 'Calle Las Americas 500', 5, '956874213', '2023-12-17 14:19:09', '2023-12-17 14:19:09'),
(11, '31457892', 1, 'Gonzalo', 'Gutierrez Carpio', 'Urb. Alborada F-7', 1, '962845711', '2023-12-19 10:09:25', '2023-12-19 10:09:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `document_types`
--

CREATE TABLE `document_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `document_types`
--

INSERT INTO `document_types` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'DNI', '2023-12-16 21:42:44', '2023-12-16 21:42:44'),
(2, 'RUC', '2023-12-16 21:42:44', '2023-12-16 21:42:44'),
(3, 'Pasaporte', '2023-12-16 21:42:44', '2023-12-16 21:42:44'),
(4, 'CE', '2023-12-16 21:42:45', '2023-12-19 10:02:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `item_types`
--

CREATE TABLE `item_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_type_description` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `item_types`
--

INSERT INTO `item_types` (`id`, `item_type_description`, `created_at`, `updated_at`) VALUES
(1, 'Bebidas', '2023-12-16 21:42:45', '2023-12-16 21:42:45'),
(2, 'Lacteos', '2023-12-16 21:42:46', '2023-12-16 21:42:46'),
(3, 'Pastas', '2023-12-16 21:42:46', '2023-12-16 21:42:46'),
(4, 'Conservas y Enlatados', '2023-12-16 21:42:46', '2023-12-17 14:09:02'),
(5, 'Reposteria y Pasteleria', '2023-12-16 21:42:46', '2023-12-16 21:42:46'),
(6, 'Carnes', '2023-12-16 21:42:46', '2023-12-16 21:42:46'),
(7, 'Frutas y Verduras', '2023-12-17 13:56:20', '2023-12-17 13:56:34'),
(8, 'Abarrotes', '2023-12-17 14:08:33', '2023-12-17 14:08:33'),
(9, 'Botanas', '2023-12-17 14:10:36', '2023-12-17 14:10:36'),
(10, 'Confiteria', '2023-12-17 14:10:48', '2023-12-17 14:10:48'),
(11, 'Harinas', '2023-12-17 14:10:55', '2023-12-17 14:10:55'),
(12, 'Bebidas Alcohólicas', '2023-12-17 14:11:14', '2023-12-17 14:11:14'),
(13, 'Helados', '2023-12-19 10:03:34', '2023-12-19 10:03:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 2),
(6, '2023_12_19_014241_create_document_types_table', 2),
(7, '2023_12_19_014258_create_cities_table', 2),
(8, '2023_12_19_014306_create_item_types_table', 2),
(9, '2023_12_19_014759_create_way_to_pays_table', 2),
(10, '2023_12_19_014837_create_customers_table', 2),
(11, '2023_12_19_015213_create_suppliers_table', 2),
(12, '2023_12_19_015252_create_articles_table', 2),
(13, '2023_12_19_015319_create_sales_table', 2),
(14, '2023_12_19_015416_create_sale_details_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_date` varchar(15) NOT NULL,
  `way_to_pay_id` bigint(20) UNSIGNED NOT NULL,
  `total_invoice` decimal(10,2) NOT NULL,
  `igv` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sales`
--

INSERT INTO `sales` (`id`, `customer_id`, `user_id`, `invoice_date`, `way_to_pay_id`, `total_invoice`, `igv`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-11-10', 1, 9.44, 1.44, '2023-12-01 06:43:52', '2023-12-01 06:43:52'),
(2, 5, 1, '2023-11-27', 4, 10.38, 1.58, '2023-11-28 23:07:10', '2023-11-28 23:07:10'),
(3, 2, 1, '2023-11-27', 5, 11.80, 1.80, '2023-11-28 23:07:10', '2023-11-28 23:07:10'),
(6, 7, 1, '2023-12-10', 1, 42.48, 6.48, '2023-12-11 13:31:27', '2023-12-11 13:31:27'),
(7, 6, 1, '2023-12-10', 1, 20.77, 3.17, '2023-12-11 13:37:08', '2023-12-11 13:37:08'),
(8, 1, 1, '2023-12-10', 4, 20.77, 3.17, '2023-12-11 13:44:24', '2023-12-11 13:44:24'),
(9, 8, 1, '2023-12-15', 5, 2.83, 0.43, '2023-12-11 13:45:24', '2023-12-11 13:45:24'),
(10, 1, 1, '2023-12-10', 1, 23.60, 3.60, '2023-12-11 14:19:45', '2023-12-11 14:19:45'),
(11, 6, 1, '2023-12-10', 5, 9.44, 1.44, '2023-12-11 14:20:20', '2023-12-11 14:20:20'),
(12, 5, 1, '2023-12-10', 1, 14.16, 2.16, '2023-12-11 14:33:12', '2023-12-11 14:33:12'),
(13, 4, 1, '2023-12-11', 2, 68.20, 10.40, '2023-12-12 21:58:37', '2023-12-12 21:58:37'),
(14, 4, 1, '2023-12-14', 1, 86.73, 13.23, '2023-12-15 19:04:55', '2023-12-15 19:04:55'),
(15, 4, 1, '2023-12-16', 3, 15.10, 2.30, '2023-12-17 12:32:06', '2023-12-17 12:32:06'),
(16, 6, 1, '2023-12-16', 1, 47.20, 7.20, '2023-12-17 12:40:30', '2023-12-17 12:40:30'),
(17, 10, 1, '2023-12-16', 2, 48.14, 7.34, '2023-12-17 14:29:11', '2023-12-17 14:29:11'),
(18, 4, 1, '2023-12-16', 4, 35.40, 5.40, '2023-12-17 14:29:52', '2023-12-17 14:29:52'),
(19, 6, 1, '2023-12-17', 1, 10.38, 1.58, '2023-12-17 15:03:16', '2023-12-17 15:03:16'),
(20, 5, 1, '2023-12-17', 4, 5.66, 0.86, '2023-12-17 15:22:39', '2023-12-17 15:22:39'),
(21, 1, 1, '2023-12-17', 4, 5.66, 0.86, '2023-12-17 15:34:09', '2023-12-17 15:34:09'),
(22, 11, 1, '2023-12-18', 4, 113.87, 17.37, '2023-12-19 10:14:16', '2023-12-19 10:14:16'),
(23, 11, 1, '2023-12-18', 1, 23.60, 3.60, '2023-12-19 10:21:09', '2023-12-19 10:21:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale_details`
--

CREATE TABLE `sale_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(10,0) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sale_details`
--

INSERT INTO `sale_details` (`id`, `sale_id`, `article_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 4.00, '2023-11-27 23:04:41', '2023-11-27 23:04:41'),
(2, 1, 2, 1, 4.00, '2023-11-27 23:04:41', '2023-11-27 23:04:41'),
(3, 2, 7, 1, 4.80, '2023-11-28 23:10:06', '2023-11-28 23:10:06'),
(4, 2, 8, 1, 4.00, '2023-11-28 23:10:06', '2023-11-28 23:10:06'),
(5, 3, 11, 2, 4.00, '2023-11-28 23:12:16', '2023-11-28 23:12:16'),
(7, 3, 14, 1, 2.00, '2023-11-28 23:23:00', '2023-11-28 23:23:00'),
(8, 6, 1, 9, 4.00, '2023-12-11 13:31:27', '2023-12-11 13:31:27'),
(9, 7, 6, 2, 4.80, '2023-12-11 13:37:08', '2023-12-11 13:37:08'),
(10, 7, 11, 2, 4.00, '2023-12-11 13:37:09', '2023-12-11 13:37:09'),
(11, 8, 8, 2, 4.00, '2023-12-11 13:44:24', '2023-12-11 13:44:24'),
(12, 8, 13, 4, 2.40, '2023-12-11 13:44:24', '2023-12-11 13:44:24'),
(13, 9, 13, 1, 2.40, '2023-12-11 13:45:24', '2023-12-11 13:45:24'),
(14, 10, 1, 5, 4.00, '2023-12-11 14:19:46', '2023-12-11 14:19:46'),
(15, 11, 1, 2, 4.00, '2023-12-11 14:20:20', '2023-12-11 14:20:20'),
(16, 12, 8, 2, 4.00, '2023-12-11 14:33:12', '2023-12-11 14:33:12'),
(17, 12, 9, 1, 4.00, '2023-12-11 14:33:12', '2023-12-11 14:33:12'),
(18, 13, 2, 2, 4.00, '2023-12-12 21:58:38', '2023-12-12 21:58:38'),
(19, 13, 7, 1, 4.80, '2023-12-12 21:58:38', '2023-12-12 21:58:38'),
(20, 13, 12, 2, 2.50, '2023-12-12 21:58:38', '2023-12-12 21:58:38'),
(21, 13, 20, 2, 20.00, '2023-12-12 21:58:38', '2023-12-12 21:58:38'),
(22, 14, 16, 3, 24.50, '2023-12-15 19:04:55', '2023-12-15 19:04:55'),
(23, 15, 9, 2, 4.00, '2023-12-17 12:32:06', '2023-12-17 12:32:06'),
(24, 15, 7, 1, 4.80, '2023-12-17 12:32:06', '2023-12-17 12:32:06'),
(25, 16, 1, 10, 4.00, '2023-12-17 12:40:30', '2023-12-17 12:40:30'),
(26, 17, 22, 2, 4.00, '2023-12-17 14:29:12', '2023-12-17 14:29:12'),
(27, 17, 14, 1, 2.00, '2023-12-17 14:29:12', '2023-12-17 14:29:12'),
(28, 17, 24, 1, 5.00, '2023-12-17 14:29:12', '2023-12-17 14:29:12'),
(29, 17, 26, 2, 13.00, '2023-12-17 14:29:12', '2023-12-17 14:29:12'),
(30, 18, 23, 2, 15.00, '2023-12-17 14:29:52', '2023-12-17 14:29:52'),
(31, 19, 9, 1, 4.00, '2023-12-17 15:03:16', '2023-12-17 15:03:16'),
(32, 19, 6, 1, 4.80, '2023-12-17 15:03:17', '2023-12-17 15:03:17'),
(33, 20, 6, 1, 4.80, '2023-12-17 15:22:39', '2023-12-17 15:22:39'),
(34, 21, 7, 1, 4.80, '2023-12-17 15:34:09', '2023-12-17 15:34:09'),
(35, 22, 27, 3, 25.50, '2023-12-19 10:14:17', '2023-12-19 10:14:17'),
(36, 22, 20, 1, 20.00, '2023-12-19 10:14:17', '2023-12-19 10:14:17'),
(37, 23, 24, 4, 5.00, '2023-12-19 10:21:09', '2023-12-19 10:21:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document_number` varchar(20) NOT NULL,
  `document_type_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `tradename` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(9) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `suppliers`
--

INSERT INTO `suppliers` (`id`, `document_number`, `document_type_id`, `name`, `surname`, `tradename`, `address`, `city_id`, `phone`, `created_at`, `updated_at`) VALUES
(1, '20451278452', 2, 'Luis', 'Vargas Fernandez', 'Alicorp', 'Av. Industrial 1260', 1, '965842357', '2023-12-01 05:53:32', '2023-12-18 08:23:36'),
(2, '20154648523', 2, 'Ricardo', 'Dominguez', 'Distribuidora Alimentaria', 'Av. Los Incas 1500', 1, '986521475', '2023-12-09 23:36:59', '2023-12-19 10:11:06'),
(3, '20458975462', 2, 'Alfredo', 'Gutierrez Pinto', 'Palmira Distribuciones', 'Av. Colón 1250.', 1, '986752412', '2023-12-09 23:38:01', '2023-12-17 14:23:08'),
(4, '20254678951', 2, 'Katia', 'Alacon Fuentes', 'Distribuidora Katita', 'Av. Los Incas 1520', 1, '965845123', '2023-12-09 23:41:05', '2023-12-09 23:41:05'),
(5, '20457856491', 2, 'Alejandro', 'Cupe Carrasco', 'Especies y Abarrotes SAC', 'Av. Los Incas 1501', 1, '945976457', '2023-12-17 14:22:54', '2023-12-17 14:22:54'),
(6, '20457813492', 2, 'Juan Luis', 'Manrique Medina', 'Distribuidores del Sur', 'Av. Teniente Ferre 125', 1, '953784258', '2023-12-19 10:10:53', '2023-12-19 10:10:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
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

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Emma Edith Ramos Calcina', 'admin@gmail.com', NULL, '$2y$12$2BHwy0rJI5oFU86tIVkX/ObUrAn5v1qcCmqoU1SW3EhWlJ6pfDdga', NULL, '2023-12-19 02:44:18', '2023-12-19 02:44:18'),
(2, 'Jack Peredo', 'jperedo@gmail.com', NULL, '$2y$12$5CBPaM9LdnCIC0noZXVtmOxMj8eTrHCZdJKDMPVNkNems3zfO/9lu', NULL, '2023-12-19 03:15:40', '2023-12-19 03:15:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `way_to_pays`
--

CREATE TABLE `way_to_pays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `way_to_pay_description` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `way_to_pays`
--

INSERT INTO `way_to_pays` (`id`, `way_to_pay_description`, `created_at`, `updated_at`) VALUES
(1, 'Efectivo', '2023-12-16 21:42:46', '2023-12-16 21:42:46'),
(2, 'Tarjeta de débito', '2023-12-16 21:42:46', '2023-12-16 21:42:46'),
(3, 'Tarjeta de crédito', '2023-12-16 21:42:46', '2023-12-16 21:42:46'),
(4, 'Yape', '2023-12-16 21:42:47', '2023-12-16 21:42:47'),
(5, 'Plin', '2023-12-16 21:42:47', '2023-12-17 14:18:04'),
(6, 'Transferencia', '2023-12-17 14:17:45', '2023-12-17 14:17:45'),
(7, 'Depósito', '2023-12-19 10:04:12', '2023-12-19 10:04:20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_description_unique` (`description`),
  ADD KEY `articles_item_type_id_foreign` (`item_type_id`),
  ADD KEY `articles_supplier_id_foreign` (`supplier_id`);

--
-- Indices de la tabla `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cities_city_name_unique` (`city_name`);

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_document_number_unique` (`document_number`),
  ADD KEY `customers_document_type_id_foreign` (`document_type_id`),
  ADD KEY `customers_city_id_foreign` (`city_id`);

--
-- Indices de la tabla `document_types`
--
ALTER TABLE `document_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `document_types_description_unique` (`description`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `item_types`
--
ALTER TABLE `item_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_types_item_type_description_unique` (`item_type_description`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_customer_id_foreign` (`customer_id`),
  ADD KEY `sales_user_id_foreign` (`user_id`),
  ADD KEY `sales_way_to_pay_id_foreign` (`way_to_pay_id`);

--
-- Indices de la tabla `sale_details`
--
ALTER TABLE `sale_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_details_sale_id_foreign` (`sale_id`),
  ADD KEY `sale_details_article_id_foreign` (`article_id`);

--
-- Indices de la tabla `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `suppliers_document_number_unique` (`document_number`),
  ADD KEY `suppliers_document_type_id_foreign` (`document_type_id`),
  ADD KEY `suppliers_city_id_foreign` (`city_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `way_to_pays`
--
ALTER TABLE `way_to_pays`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `way_to_pays_way_to_pay_description_unique` (`way_to_pay_description`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `document_types`
--
ALTER TABLE `document_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `item_types`
--
ALTER TABLE `item_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `sale_details`
--
ALTER TABLE `sale_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `way_to_pays`
--
ALTER TABLE `way_to_pays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_item_type_id_foreign` FOREIGN KEY (`item_type_id`) REFERENCES `item_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `customers_document_type_id_foreign` FOREIGN KEY (`document_type_id`) REFERENCES `document_types` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_way_to_pay_id_foreign` FOREIGN KEY (`way_to_pay_id`) REFERENCES `way_to_pays` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sale_details`
--
ALTER TABLE `sale_details`
  ADD CONSTRAINT `sale_details_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sale_details_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `suppliers_document_type_id_foreign` FOREIGN KEY (`document_type_id`) REFERENCES `document_types` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
