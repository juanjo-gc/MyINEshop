-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 09-11-2021 a las 07:32:35
-- Versión del servidor: 8.0.17
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ine21dgr`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgurl` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `discountPercent` double NOT NULL,
  `discountStart_at` datetime DEFAULT NULL,
  `discountEnd_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id`, `company_id`, `name`, `description`, `imgurl`, `price`, `discountPercent`, `discountStart_at`, `discountEnd_at`, `created_at`, `updated_at`) VALUES
(1, 3, 'Samsung Galaxy S21', 'Móvil de última generación de la marca Samsung', 'img/card-000001.jpg', 859.99, 15, '2021-10-10 19:00:00', '2022-10-24 19:00:00', '2021-10-18 15:44:46', '2021-10-18 15:44:46'),
(2, 1, 'iPhone 13', 'Móvil de última generación de Apple', 'img/card-000002.jpg', 909.99, 20, '2021-10-22 19:00:00', '2022-10-29 19:00:00', '2021-10-18 16:13:51', '2021-10-18 16:13:51'),
(3, 6, 'Xiaomi 11T Pro', 'Móvil de última generación de Xiaomi', 'img/card-000003.jpg', 700.00, 7, '2021-10-12 00:00:00', '2022-10-26 00:00:00', NULL, NULL),
(4, 7, 'Sony Xperia 5 III', 'Móvil de última generación de Sony', 'img/card-000004.jpg', 1000.00, 15, '2021-10-17 00:00:00', '2021-10-20 00:00:00', NULL, NULL),
(5, 6, 'Poco X3 Pro', 'Móvil de gama media de Xiaomi', 'img/card-000005.jpg', 200.00, 5, '2021-10-04 00:00:00', '2021-10-12 00:00:00', NULL, NULL),
(6, 4, 'Huawei Mate XS', 'Móvil de última generación Huawei', 'img/card-000006.jpg', 1650.00, 20, NULL, NULL, '2021-10-25 16:05:05', '2021-10-25 16:05:05'),
(7, 5, 'OnePlus Nord 2 5G', 'Móvil de última generación de la marca OnePlus.', 'img/card-000007.jpg', 399.00, 10, '2021-10-24 19:00:00', '2022-01-19 19:00:00', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_name_unique` (`name`),
  ADD UNIQUE KEY `product_imgurl_unique` (`imgurl`),
  ADD KEY `product_company_id_foreign` (`company_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
