-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 24-11-2022 a las 01:19:30
-- Versión del servidor: 10.5.8-MariaDB
-- Versión de PHP: 8.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `airbnbtesina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlfoto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'foto.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `slug`, `nombre`, `descripcion`, `urlfoto`, `created_at`, `updated_at`) VALUES
(1, 'cabana', 'Cabaña', 'Hospedajes tipo cabañas', 'categoria_1667102717.png', '2022-10-30 10:05:19', '2022-10-30 10:05:54'),
(2, 'casa', 'Casa', 'Hospedajes tipo casas', 'categoria_1667102746.png', '2022-10-30 10:05:46', '2022-10-30 10:05:46'),
(3, 'hotel', 'Hotel', 'Hospedajes tipo hoteles', 'categoria_1667102791.png', '2022-10-30 10:06:31', '2022-10-30 10:06:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaNac` date NOT NULL,
  `dui` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `slug`, `nombre`, `fechaNac`, `dui`, `telefono`, `correo`, `direccion`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'gabriela-carolina-zamora', 'Gabriela Carolina Zamora', '1999-07-06', '12245678-9', '71757672', 'gabriela@gmail.com', 'Colonia Chaparrastique', 1, '2022-10-31 01:31:51', '2022-10-31 01:31:51'),
(2, 'host2', 'Host2', '1999-07-06', '74758126-4', '75787692', 'host@gmail.com', 'Colonia Presita', 4, '2022-10-31 03:10:07', '2022-10-31 03:10:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlfoto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lugar_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hosts`
--

CREATE TABLE `hosts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlfoto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'foto.jpg',
  `urllogo` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 0,
  `ruta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `hosts`
--

INSERT INTO `hosts` (`id`, `slug`, `nombre`, `descripcion`, `urlfoto`, `urllogo`, `estado`, `ruta_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'mar-y-sol', 'Mar y Sol', 'Empresa Mar y Sol', 'host_1667102845.jpg', 'logo_1667102846.png', 1, 1, 2, '2022-10-30 10:07:26', '2022-10-30 10:07:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugars`
--

CREATE TABLE `lugars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlfoto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'foto.jpg',
  `latitud` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitud` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT 0,
  `precio` decimal(7,2) NOT NULL,
  `numHuesped` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mascotas` tinyint(1) NOT NULL DEFAULT 0,
  `ruta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `categoria_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `lugars`
--

INSERT INTO `lugars` (`id`, `slug`, `nombre`, `descripcion`, `urlfoto`, `latitud`, `longitud`, `estado`, `precio`, `numHuesped`, `mascotas`, `ruta_id`, `user_id`, `categoria_id`, `created_at`, `updated_at`) VALUES
(1, 'hostal-la-posada-de-ataco', 'Hostal la Posada de Ataco', 'Cabañas en Ataco', 'lugar_1668046481.jpg', '13.86948', '-89.84977', 1, '60.00', '5', 0, 3, 2, 1, '2022-11-10 08:14:41', '2022-11-10 08:14:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_09_225815_create_permission_tables', 1),
(8, '2022_10_12_223618_create_rutas_table', 2),
(9, '2022_10_13_040614_create_posts_table', 3),
(10, '2022_10_13_205530_create_hosts_table', 4),
(11, '2022_10_14_013237_create_lugars_table', 5),
(12, '2022_10_14_022109_create_fotos_table', 6),
(13, '2022_10_15_013935_create_lugars_table', 7),
(14, '2022_10_15_014526_create_fotos_table', 7),
(15, '2022_10_30_021758_create_rutas_table', 8),
(16, '2022_10_30_023208_create_categorias_table', 8),
(17, '2022_10_30_024813_create_hosts_table', 8),
(18, '2022_10_30_025059_create_servicios_table', 8),
(19, '2022_10_30_025336_create_lugars_table', 8),
(20, '2022_10_30_025542_create_fotos_table', 8),
(21, '2022_10_30_034206_create_lugars_table', 9),
(22, '2022_10_30_034316_create_fotos_table', 9),
(23, '2022_10_30_045542_create_lugars_table', 10),
(24, '2022_10_30_045840_create_fotos_table', 10),
(25, '2022_10_30_174439_create_clientes_table', 11),
(26, '2022_11_04_005235_create_lugars_table', 12),
(27, '2022_11_04_005936_create_fotos_table', 12),
(28, '2022_11_18_042335_create_serv_lugars_table', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2022-10-10 06:07:57', '2022-10-10 06:07:57'),
(2, 'host', 'web', '2022-10-10 06:07:57', '2022-10-10 06:07:57'),
(3, 'cliente', 'web', '2022-10-10 06:07:58', '2022-10-10 06:07:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas`
--

CREATE TABLE `rutas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rutas`
--

INSERT INTO `rutas` (`id`, `slug`, `nombre`, `descripcion`) VALUES
(1, 'zona-oriental', 'Zona Oriental', 'Zona Oriental de El Salvador'),
(2, 'zona-central', 'Zona Central', 'Zona Central de El Salvador'),
(3, 'zona-occidental', 'Zona Occidental', 'Zona Occidental de El Salvador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urlfoto` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'foto.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `slug`, `nombre`, `descripcion`, `urlfoto`, `created_at`, `updated_at`) VALUES
(1, 'wifi', 'Wifi', 'Internet Inálambrico', 'servicio_1668298977.png', '2022-11-08 07:42:19', '2022-11-13 06:23:00'),
(2, 'piscina', 'Piscina', 'Lugar con piscina incluída', 'servicio_1668299008.png', '2022-11-13 06:23:28', '2022-11-13 06:23:28'),
(3, 'parqueo-exclusivo', 'Parqueo exclusivo', 'Lugar con parqueo exclusivo', 'servicio_1668299039.png', '2022-11-13 06:23:59', '2022-11-13 06:23:59'),
(4, 'cocina', 'Cocina', 'Lugar con cocina incluída', 'servicio_1668299075.png', '2022-11-13 06:24:35', '2022-11-13 06:24:35'),
(5, 'aire-acondicionado', 'Aire Acondicionado', 'Lugar con aire acondicionado incluído', 'servicio_1668299099.png', '2022-11-13 06:24:59', '2022-11-13 06:24:59'),
(6, 'jacuzzi', 'Jacuzzi', 'Lugar con jacuzzi incluido', 'servicio_1668299155.png', '2022-11-13 06:25:55', '2022-11-13 06:25:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serv_lugars`
--

CREATE TABLE `serv_lugars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lugars_id` bigint(20) UNSIGNED NOT NULL,
  `servicio_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `activo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Gabriela', 'gabriela@gmail.com', NULL, '$2y$10$UolgYIQhm9IZ4rvceEpBEuxn.Zkd78eLFMHXA3RUFLYbVr.m8m2ou', 0, NULL, '2022-10-10 06:13:13', '2022-10-15 03:57:45'),
(2, 'Admin', 'admin@gmail.com', NULL, '$2y$10$O5Dzhmq4KRpe1Y488wr42.zbVCJfpIe4n8Ca9aClb6Mmyr2cIpyVK', 0, NULL, '2022-10-13 05:50:02', '2022-10-13 05:50:02'),
(3, 'Cliente2', 'cliente2@gmail.com', NULL, '$2y$10$WtZf.ATD7Ypy9NGIRlVKHu36vytjCNoC1tQE1eLwjqwN5URYyiyhe', 0, NULL, '2022-10-31 02:11:05', '2022-10-31 02:11:05'),
(4, 'Host2', 'host@gmail.com', NULL, '$2y$10$aSVDYzCYmHdXnbem04yhJ.njVe1LK/78o7Ud/.uOIi1cAsY/neJ3K', 0, NULL, '2022-10-31 02:12:18', '2022-10-31 02:12:18');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categorias_slug_unique` (`slug`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clientes_slug_unique` (`slug`),
  ADD UNIQUE KEY `clientes_dui_unique` (`dui`),
  ADD KEY `clientes_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fotos_nombre_unique` (`nombre`),
  ADD KEY `fotos_lugar_id_foreign` (`lugar_id`);

--
-- Indices de la tabla `hosts`
--
ALTER TABLE `hosts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hosts_slug_unique` (`slug`),
  ADD UNIQUE KEY `hosts_nombre_unique` (`nombre`),
  ADD KEY `hosts_ruta_id_foreign` (`ruta_id`),
  ADD KEY `hosts_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `lugars`
--
ALTER TABLE `lugars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lugars_slug_unique` (`slug`),
  ADD UNIQUE KEY `lugars_nombre_unique` (`nombre`),
  ADD KEY `lugars_ruta_id_foreign` (`ruta_id`),
  ADD KEY `lugars_user_id_foreign` (`user_id`),
  ADD KEY `lugars_categoria_id_foreign` (`categoria_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rutas_slug_unique` (`slug`),
  ADD UNIQUE KEY `rutas_nombre_unique` (`nombre`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `servicios_slug_unique` (`slug`),
  ADD UNIQUE KEY `servicios_nombre_unique` (`nombre`);

--
-- Indices de la tabla `serv_lugars`
--
ALTER TABLE `serv_lugars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `serv_lugars_lugars_id_foreign` (`lugars_id`),
  ADD KEY `serv_lugars_servicio_id_foreign` (`servicio_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hosts`
--
ALTER TABLE `hosts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `lugars`
--
ALTER TABLE `lugars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `rutas`
--
ALTER TABLE `rutas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `serv_lugars`
--
ALTER TABLE `serv_lugars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `fotos_lugar_id_foreign` FOREIGN KEY (`lugar_id`) REFERENCES `lugars` (`id`);

--
-- Filtros para la tabla `hosts`
--
ALTER TABLE `hosts`
  ADD CONSTRAINT `hosts_ruta_id_foreign` FOREIGN KEY (`ruta_id`) REFERENCES `rutas` (`id`),
  ADD CONSTRAINT `hosts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `lugars`
--
ALTER TABLE `lugars`
  ADD CONSTRAINT `lugars_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `lugars_ruta_id_foreign` FOREIGN KEY (`ruta_id`) REFERENCES `rutas` (`id`),
  ADD CONSTRAINT `lugars_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `serv_lugars`
--
ALTER TABLE `serv_lugars`
  ADD CONSTRAINT `serv_lugars_lugars_id_foreign` FOREIGN KEY (`lugars_id`) REFERENCES `lugars` (`id`),
  ADD CONSTRAINT `serv_lugars_servicio_id_foreign` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
