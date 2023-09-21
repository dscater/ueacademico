-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 21-09-2023 a las 14:40:17
-- Versión del servidor: 8.0.30
-- Versión de PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ueacademico_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad_profesors`
--

CREATE TABLE `actividad_profesors` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fecha_registro` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `actividad_profesors`
--

INSERT INTO `actividad_profesors` (`id`, `user_id`, `fecha`, `descripcion`, `observacion`, `fecha_registro`, `created_at`, `updated_at`) VALUES
(1, 6, '2023-08-04', 'DESFILE ESCOLAR', 'DESFILE ESCOLAR', '2023-09-20', '2023-09-21 01:56:53', '2023-09-21 02:03:33'),
(2, 6, '2023-08-17', 'DESFILE ESCOLAR', 'DESFILE ESCOLAR', '2023-09-20', '2023-09-21 01:57:05', '2023-09-21 02:03:53'),
(3, 6, '2023-10-31', 'ACTIVIDAD ESCOLAR', 'ACTIVIDAD ESCOLAR', '2023-09-20', '2023-09-21 01:57:27', '2023-09-21 02:05:09'),
(4, 6, '2023-06-06', 'DÍA DEL MAESTRO', 'DÍA DEL MAESTRO', '2023-09-20', '2023-09-21 01:57:56', '2023-09-21 02:02:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativos`
--

CREATE TABLE `administrativos` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paterno` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `materno` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ci` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ci_exp` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lugar_nac` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_nac` date NOT NULL,
  `edad` int NOT NULL,
  `sexo` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado_civil` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zona` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avenida` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nro` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fono` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cel` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nro_rda` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `afp` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nua` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_fiscal` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nro_seguro_social` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `caja_seguro_social` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulado` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gestiones_trabajo` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cargo` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mes` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `observaciones` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_registro` date NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `estado` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `administrativos`
--

INSERT INTO `administrativos` (`id`, `nombre`, `paterno`, `materno`, `ci`, `ci_exp`, `lugar_nac`, `fecha_nac`, `edad`, `sexo`, `estado_civil`, `zona`, `avenida`, `nro`, `fono`, `cel`, `email`, `nro_rda`, `afp`, `nua`, `item_fiscal`, `nro_seguro_social`, `caja_seguro_social`, `titulado`, `gestiones_trabajo`, `cargo`, `mes`, `observaciones`, `foto`, `fecha_registro`, `user_id`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'PABLO', 'PACHECO', 'FLORES', '1023030', 'LP', 'LA PAZ', '1988-09-12', 35, 'M', '345', 'ZONA CENTRAL', 'LITORAL', '234', '2881547', '76544875', '', '8485', '456', '567', '567', '4563223', 'CNS', '1RA FASE', '2015', 'DIRECCIÓN ACADÉMICA', 'ENERO', '', 'PABLO1695255530.jpg', '2023-09-20', 2, 1, '2023-09-21 00:18:51', '2023-09-21 00:18:51'),
(2, 'FELIPE', 'PERES', '', '213123', 'LP', 'LA PAZ', '1995-01-01', 28, 'M', 'SOLTERO', 'LOS OLIVOS', 'AV. 3', '1', '', '777777', '', '111', '11', '222', '333', '444', 'SEGURO', '1RA FASE', '', '', '', '', 'user_default.png', '2023-09-21', NULL, 1, '2023-09-21 13:31:09', '2023-09-21 13:31:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativo_cursos`
--

CREATE TABLE `administrativo_cursos` (
  `id` bigint UNSIGNED NOT NULL,
  `administrativo_id` bigint UNSIGNED NOT NULL,
  `nominacion` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institucion` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duracion` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `administrativo_cursos`
--

INSERT INTO `administrativo_cursos` (`id`, `administrativo_id`, `nominacion`, `institucion`, `duracion`, `fecha`, `created_at`, `updated_at`) VALUES
(1, 1, '', '', '', '0000-00-00', '2023-09-21 00:18:52', '2023-09-21 00:18:52'),
(2, 1, '', '', '', '0000-00-00', '2023-09-21 00:18:52', '2023-09-21 00:18:52'),
(3, 1, '', '', '', '0000-00-00', '2023-09-21 00:18:52', '2023-09-21 00:18:52'),
(4, 2, '', '', '', '0000-00-00', '2023-09-21 13:31:09', '2023-09-21 13:31:33'),
(5, 2, '', '', '', '0000-00-00', '2023-09-21 13:31:09', '2023-09-21 13:31:33'),
(6, 2, '', '', '', '0000-00-00', '2023-09-21 13:31:09', '2023-09-21 13:31:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativo_estudios`
--

CREATE TABLE `administrativo_estudios` (
  `id` bigint UNSIGNED NOT NULL,
  `administrativo_id` bigint UNSIGNED NOT NULL,
  `nivel` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institucion` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anio_egreso` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `especialidad` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nro_titulo` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `administrativo_estudios`
--

INSERT INTO `administrativo_estudios` (`id`, `administrativo_id`, `nivel`, `institucion`, `anio_egreso`, `especialidad`, `nro_titulo`, `created_at`, `updated_at`) VALUES
(1, 1, 'Secundario', 'UE MEJILLONES', '2002', 'UMANIDADES', '45344', '2023-09-21 00:18:51', '2023-09-21 00:18:51'),
(2, 1, 'Normal', '', '', '', '', '2023-09-21 00:18:51', '2023-09-21 00:18:51'),
(3, 1, 'Universitario', '', '', '', '', '2023-09-21 00:18:52', '2023-09-21 00:18:52'),
(4, 1, 'Post Grado', '', '', '', '', '2023-09-21 00:18:52', '2023-09-21 00:18:52'),
(5, 1, 'Post Grado', '', '', '', '', '2023-09-21 00:18:52', '2023-09-21 00:18:52'),
(6, 2, 'SECUNDARIO', '', '', '', '', '2023-09-21 13:31:09', '2023-09-21 13:31:33'),
(7, 2, 'NORMAL', '', '', '', '', '2023-09-21 13:31:09', '2023-09-21 13:31:33'),
(8, 2, 'UNIVERSITARIO', '', '', '', '', '2023-09-21 13:31:09', '2023-09-21 13:31:33'),
(9, 2, 'POST GRADO', '', '', '', '', '2023-09-21 13:31:09', '2023-09-21 13:31:33'),
(10, 2, 'POST GRADO', '', '', '', '', '2023-09-21 13:31:09', '2023-09-21 13:31:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativo_otros`
--

CREATE TABLE `administrativo_otros` (
  `id` bigint UNSIGNED NOT NULL,
  `administrativo_id` bigint UNSIGNED NOT NULL,
  `institucion` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `turno` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zona` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cargo` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_horas` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `administrativo_otros`
--

INSERT INTO `administrativo_otros` (`id`, `administrativo_id`, `institucion`, `turno`, `zona`, `cargo`, `total_horas`, `created_at`, `updated_at`) VALUES
(1, 1, '', '', '', '', 0, '2023-09-21 00:18:53', '2023-09-21 00:18:53'),
(2, 1, '', '', '', '', 0, '2023-09-21 00:18:53', '2023-09-21 00:18:53'),
(3, 1, '', '', '', '', 0, '2023-09-21 00:18:53', '2023-09-21 00:18:53'),
(4, 2, '', '', '', '', 0, '2023-09-21 13:31:09', '2023-09-21 13:31:09'),
(5, 2, '', '', '', '', 0, '2023-09-21 13:31:09', '2023-09-21 13:31:09'),
(6, 2, '', '', '', '', 0, '2023-09-21 13:31:09', '2023-09-21 13:31:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativo_trabajos`
--

CREATE TABLE `administrativo_trabajos` (
  `id` bigint UNSIGNED NOT NULL,
  `administrativo_id` bigint UNSIGNED NOT NULL,
  `institucion` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gestion` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cargo` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `administrativo_trabajos`
--

INSERT INTO `administrativo_trabajos` (`id`, `administrativo_id`, `institucion`, `gestion`, `cargo`, `created_at`, `updated_at`) VALUES
(1, 1, '', '', '', '2023-09-21 00:18:53', '2023-09-21 00:18:53'),
(2, 1, '', '', '', '2023-09-21 00:18:53', '2023-09-21 00:18:53'),
(3, 1, '', '', '', '2023-09-21 00:18:53', '2023-09-21 00:18:53'),
(4, 2, '', '', '', '2023-09-21 13:31:09', '2023-09-21 13:31:09'),
(5, 2, '', '', '', '2023-09-21 13:31:09', '2023-09-21 13:31:09'),
(6, 2, '', '', '', '2023-09-21 13:31:09', '2023-09-21 13:31:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id` bigint UNSIGNED NOT NULL,
  `campo_id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`id`, `campo_id`, `nombre`, `tipo`, `descripcion`, `created_at`, `updated_at`) VALUES
(2, 1, 'CIENCIAS NATURALES', 'HUMANÍSTICA', '', '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(3, 2, 'COMUNICACIÓN Y LENGUAJES, LENGUA ORIGINARIA, LENGUA EXTRANJERA', 'HUMANÍSTICA', '', '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(4, 2, 'COMUNICACIÓN Y LENGUAJES', 'HUMANÍSTICA', '', '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(5, 2, 'CIENCIAS SOCIALES', 'HUMANÍSTICA', '', '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(6, 2, 'EDUACIÓN FÍSICA Y DEPORTES', 'HUMANÍSTICA', '', '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(7, 2, 'EDUCACIÓN MUSICAL', 'HUMANÍSTICA', '', '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(8, 2, 'ARTES PLÁSTICAS Y VISUALES', 'HUMANÍSTICA', '', '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(9, 3, 'COSMOVISIÓN-FILOSOFÍA-PSICOLOGÍA', 'HUMANÍSTICA', '', '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(10, 3, 'VALORES ESPIRITUALES RELIGIONES', 'HUMANÍSTICA', '', '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(11, 4, 'MATEMÁTICA', 'HUMANÍSTICA', '', '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(12, 4, 'TÉCNICA TECNOLÓGICA', 'HUMANÍSTICA', '', '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(15, 4, 'TÉCNICA TECNOLÓGICA', 'TÉCNICA TECNOLÓGICA', '', '2023-05-11 20:13:29', '2023-05-11 20:13:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacions`
--

CREATE TABLE `calificacions` (
  `id` bigint UNSIGNED NOT NULL,
  `inscripcion_id` bigint UNSIGNED NOT NULL,
  `materia_id` bigint UNSIGNED NOT NULL,
  `nota_final` double(8,2) NOT NULL,
  `estado` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_registro` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `calificacions`
--

INSERT INTO `calificacions` (`id`, `inscripcion_id`, `materia_id`, `nota_final`, `estado`, `fecha_registro`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 0.00, 'REPROBADO', '2023-09-20', '2023-09-21 01:53:27', '2023-09-21 01:53:27'),
(2, 1, 3, 0.00, 'REPROBADO', '2023-09-20', '2023-09-21 01:53:29', '2023-09-21 01:53:29'),
(3, 1, 5, 0.00, 'REPROBADO', '2023-09-20', '2023-09-21 01:53:32', '2023-09-21 01:53:32'),
(4, 1, 6, 0.00, 'REPROBADO', '2023-09-20', '2023-09-21 01:53:34', '2023-09-21 01:53:34'),
(5, 1, 7, 0.00, 'REPROBADO', '2023-09-20', '2023-09-21 01:53:36', '2023-09-21 01:53:36'),
(6, 1, 9, 0.00, 'REPROBADO', '2023-09-20', '2023-09-21 01:53:39', '2023-09-21 01:53:39'),
(7, 2, 2, 0.00, 'REPROBADO', '2023-09-21', '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(8, 2, 3, 0.00, 'REPROBADO', '2023-09-21', '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(9, 2, 5, 0.00, 'REPROBADO', '2023-09-21', '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(10, 2, 6, 0.00, 'REPROBADO', '2023-09-21', '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(11, 2, 7, 0.00, 'REPROBADO', '2023-09-21', '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(12, 2, 9, 0.00, 'REPROBADO', '2023-09-21', '2023-09-21 14:22:04', '2023-09-21 14:22:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion_trimestres`
--

CREATE TABLE `calificacion_trimestres` (
  `id` bigint UNSIGNED NOT NULL,
  `calificacion_id` bigint UNSIGNED NOT NULL,
  `trimestre` int NOT NULL,
  `promedio_final` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `calificacion_trimestres`
--

INSERT INTO `calificacion_trimestres` (`id`, `calificacion_id`, `trimestre`, `promedio_final`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0.00, '2023-09-21 01:53:27', '2023-09-21 01:53:27'),
(2, 1, 2, 0.00, '2023-09-21 01:53:28', '2023-09-21 01:53:28'),
(3, 1, 3, 0.00, '2023-09-21 01:53:28', '2023-09-21 01:53:28'),
(4, 2, 1, 0.00, '2023-09-21 01:53:29', '2023-09-21 01:53:29'),
(5, 2, 2, 0.00, '2023-09-21 01:53:30', '2023-09-21 01:53:30'),
(6, 2, 3, 0.00, '2023-09-21 01:53:31', '2023-09-21 01:53:31'),
(7, 3, 1, 0.00, '2023-09-21 01:53:32', '2023-09-21 01:53:32'),
(8, 3, 2, 0.00, '2023-09-21 01:53:32', '2023-09-21 01:53:32'),
(9, 3, 3, 0.00, '2023-09-21 01:53:33', '2023-09-21 01:53:33'),
(10, 4, 1, 0.00, '2023-09-21 01:53:34', '2023-09-21 01:53:34'),
(11, 4, 2, 0.00, '2023-09-21 01:53:35', '2023-09-21 01:53:35'),
(12, 4, 3, 0.00, '2023-09-21 01:53:36', '2023-09-21 01:53:36'),
(13, 5, 1, 0.00, '2023-09-21 01:53:37', '2023-09-21 01:53:37'),
(14, 5, 2, 0.00, '2023-09-21 01:53:37', '2023-09-21 01:53:37'),
(15, 5, 3, 0.00, '2023-09-21 01:53:38', '2023-09-21 01:53:38'),
(16, 6, 1, 0.00, '2023-09-21 01:53:39', '2023-09-21 01:53:39'),
(17, 6, 2, 0.00, '2023-09-21 01:53:40', '2023-09-21 01:53:40'),
(18, 6, 3, 0.00, '2023-09-21 01:53:41', '2023-09-21 01:53:41'),
(19, 7, 1, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(20, 7, 2, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(21, 7, 3, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(22, 8, 1, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(23, 8, 2, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(24, 8, 3, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(25, 9, 1, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(26, 9, 2, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(27, 9, 3, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(28, 10, 1, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(29, 10, 2, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(30, 10, 3, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(31, 11, 1, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(32, 11, 2, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(33, 11, 3, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(34, 12, 1, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(35, 12, 2, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(36, 12, 3, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campos`
--

CREATE TABLE `campos` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `campos`
--

INSERT INTO `campos` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'VIDA TIERRA Y TERRITORIO', '', '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(2, 'COMUNIDAD Y SOCIEDAD', '', '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(3, 'COSMOS Y PENSAMIENTO', '', '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(4, 'CIENCIA TECNOLOGÍA Y PRODUCCIÓN', '', '2023-05-11 20:13:29', '2023-05-11 20:13:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat_desempenos`
--

CREATE TABLE `chat_desempenos` (
  `id` bigint UNSIGNED NOT NULL,
  `desempeno_id` bigint UNSIGNED NOT NULL,
  `emisor_id` bigint UNSIGNED NOT NULL,
  `receptor_id` bigint UNSIGNED NOT NULL,
  `mensaje` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `visto` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `chat_desempenos`
--

INSERT INTO `chat_desempenos` (`id`, `desempeno_id`, `emisor_id`, `receptor_id`, `mensaje`, `visto`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 7, 'Buenas tardes don Ricardo, comunicarle que Daniel no es muy participativo en clases', 1, '2023-09-21 02:06:11', '2023-09-21 14:12:20'),
(2, 1, 6, 7, 'Debe participar más', 1, '2023-09-21 02:06:30', '2023-09-21 14:12:20'),
(3, 1, 7, 6, 'Buenas tardes Profesor Mario', 1, '2023-09-21 02:07:49', '2023-09-21 14:12:40'),
(4, 1, 7, 6, 'Está bien hablare con Daniel', 1, '2023-09-21 02:09:03', '2023-09-21 14:12:40'),
(5, 1, 7, 6, 'A veces es un poco tímido en frente de sus demás compañeros', 1, '2023-09-21 02:09:29', '2023-09-21 14:12:40'),
(6, 1, 6, 8, 'Buenas tardes señora Martha', 1, '2023-09-21 14:12:50', '2023-09-21 14:15:48'),
(7, 1, 6, 8, 'Tengo un mensaje para usted', 1, '2023-09-21 14:13:43', '2023-09-21 14:15:48'),
(8, 1, 8, 6, 'Digame profesor Mario', 1, '2023-09-21 14:14:09', '2023-09-21 14:16:05'),
(9, 1, 6, 8, 'Le comento que su hijo Daniel no participa en clases', 1, '2023-09-21 14:14:34', '2023-09-21 14:15:48'),
(10, 1, 6, 8, 'Y necesito que se apersone al colegio el día de mañana', 1, '2023-09-21 14:15:21', '2023-09-21 14:15:48'),
(11, 1, 8, 6, 'A que hora?', 1, '2023-09-21 14:15:29', '2023-09-21 14:16:05'),
(12, 2, 14, 6, 'Como esta profesor Mario, podría indicarme mas sobre esta situación por favor', 1, '2023-09-21 14:23:13', '2023-09-21 14:40:17'),
(13, 2, 14, 6, 'mensaje de prueba 1', 1, '2023-09-21 14:29:43', '2023-09-21 14:40:17'),
(14, 2, 14, 6, 'mensaje de prueba 2', 1, '2023-09-21 14:29:52', '2023-09-21 14:40:17'),
(15, 2, 14, 6, 'otro mensaje de prueba #3', 1, '2023-09-21 14:30:01', '2023-09-21 14:40:17'),
(16, 2, 14, 6, 'mensaje seguido 1', 1, '2023-09-21 14:30:08', '2023-09-21 14:40:17'),
(17, 2, 14, 6, '2', 1, '2023-09-21 14:30:09', '2023-09-21 14:40:17'),
(18, 2, 14, 6, '3', 1, '2023-09-21 14:30:11', '2023-09-21 14:40:17'),
(19, 2, 14, 6, '4', 1, '2023-09-21 14:30:12', '2023-09-21 14:40:17'),
(20, 2, 14, 6, '5', 1, '2023-09-21 14:30:13', '2023-09-21 14:40:17'),
(21, 2, 14, 6, '6', 1, '2023-09-21 14:30:16', '2023-09-21 14:40:17'),
(22, 2, 14, 6, '7', 1, '2023-09-21 14:30:18', '2023-09-21 14:40:17'),
(23, 2, 14, 6, '8', 1, '2023-09-21 14:30:20', '2023-09-21 14:40:17'),
(24, 2, 14, 6, '9', 1, '2023-09-21 14:30:21', '2023-09-21 14:40:17'),
(25, 2, 14, 6, '10', 1, '2023-09-21 14:30:51', '2023-09-21 14:40:17'),
(26, 2, 14, 6, '11', 1, '2023-09-21 14:30:53', '2023-09-21 14:40:17'),
(27, 2, 14, 6, '12', 1, '2023-09-21 14:30:54', '2023-09-21 14:40:17'),
(28, 2, 14, 6, '13', 1, '2023-09-21 14:30:55', '2023-09-21 14:40:17'),
(29, 2, 14, 6, '14', 1, '2023-09-21 14:30:57', '2023-09-21 14:40:17'),
(30, 2, 14, 6, '15', 1, '2023-09-21 14:30:59', '2023-09-21 14:40:17'),
(31, 2, 14, 6, '16', 1, '2023-09-21 14:31:01', '2023-09-21 14:40:17'),
(32, 2, 14, 6, '17', 1, '2023-09-21 14:31:04', '2023-09-21 14:40:17'),
(33, 2, 14, 6, '18', 1, '2023-09-21 14:31:06', '2023-09-21 14:40:17'),
(34, 2, 14, 6, '19', 1, '2023-09-21 14:31:08', '2023-09-21 14:40:17'),
(35, 2, 14, 6, '20', 1, '2023-09-21 14:31:09', '2023-09-21 14:40:17'),
(36, 2, 14, 6, '21', 1, '2023-09-21 14:31:15', '2023-09-21 14:40:17'),
(37, 2, 6, 14, '22', 1, '2023-09-21 14:31:19', '2023-09-21 14:40:17'),
(38, 2, 6, 14, '23', 1, '2023-09-21 14:31:22', '2023-09-21 14:40:17'),
(39, 2, 6, 14, '24', 1, '2023-09-21 14:31:24', '2023-09-21 14:40:17'),
(40, 2, 6, 14, '25', 1, '2023-09-21 14:31:26', '2023-09-21 14:40:17'),
(41, 2, 6, 14, '26', 1, '2023-09-21 14:31:30', '2023-09-21 14:40:17'),
(42, 2, 6, 14, '27', 1, '2023-09-21 14:31:32', '2023-09-21 14:40:17'),
(43, 2, 6, 14, '28', 1, '2023-09-21 14:31:36', '2023-09-21 14:40:17'),
(44, 2, 6, 14, '29', 1, '2023-09-21 14:31:38', '2023-09-21 14:40:17'),
(45, 2, 6, 14, '30', 1, '2023-09-21 14:31:41', '2023-09-21 14:40:17'),
(46, 2, 6, 14, '31', 1, '2023-09-21 14:31:42', '2023-09-21 14:40:17'),
(47, 2, 14, 6, '32', 1, '2023-09-21 14:31:47', '2023-09-21 14:40:17'),
(48, 2, 14, 6, '33', 1, '2023-09-21 14:38:39', '2023-09-21 14:40:17'),
(49, 2, 6, 14, '34', 1, '2023-09-21 14:38:43', '2023-09-21 14:40:17'),
(50, 2, 14, 6, '35', 1, '2023-09-21 14:38:47', '2023-09-21 14:40:17'),
(51, 2, 14, 6, '36', 1, '2023-09-21 14:38:56', '2023-09-21 14:40:17'),
(52, 2, 14, 6, '37', 1, '2023-09-21 14:39:00', '2023-09-21 14:40:17'),
(53, 2, 6, 14, '38', 1, '2023-09-21 14:39:04', '2023-09-21 14:40:17'),
(54, 2, 14, 6, '39', 1, '2023-09-21 14:39:07', '2023-09-21 14:40:17'),
(55, 2, 6, 14, '40', 1, '2023-09-21 14:39:10', '2023-09-21 14:40:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desempeno_estudiantes`
--

CREATE TABLE `desempeno_estudiantes` (
  `id` bigint UNSIGNED NOT NULL,
  `inscripcion_id` bigint UNSIGNED NOT NULL,
  `materia_id` bigint UNSIGNED NOT NULL,
  `estudiante_id` bigint UNSIGNED NOT NULL,
  `desempeno` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `valoracion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `observacion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` bigint UNSIGNED NOT NULL,
  `materia_profesor` bigint UNSIGNED NOT NULL,
  `fecha_registro` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `desempeno_estudiantes`
--

INSERT INTO `desempeno_estudiantes` (`id`, `inscripcion_id`, `materia_id`, `estudiante_id`, `desempeno`, `valoracion`, `fecha`, `observacion`, `user_id`, `materia_profesor`, `fecha_registro`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 'PARTICIPACIÓN EN CLASES', 'REGULAR', '2023-09-20', 'PARTICIPACIÓN EN CLASES', 6, 1, '2023-09-20', '2023-09-21 01:59:21', '2023-09-21 01:59:21'),
(2, 2, 2, 3, 'NO PRESENTA SUS ACTIVIDADES', 'MALA', '2023-09-21', '', 6, 1, '2023-09-21', '2023-09-21 14:22:44', '2023-09-21 14:22:44');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desempeno_notificacions`
--

CREATE TABLE `desempeno_notificacions` (
  `id` bigint UNSIGNED NOT NULL,
  `desempeno_id` bigint UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `desempeno` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `valoracion` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `visto` int NOT NULL,
  `fecha_registro` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `desempeno_notificacions`
--

INSERT INTO `desempeno_notificacions` (`id`, `desempeno_id`, `fecha`, `hora`, `desempeno`, `valoracion`, `user_id`, `visto`, `fecha_registro`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-09-20', '21:59:00', 'PARTICIPACIÓN EN CLASES', 'REGULAR', 7, 1, '2023-09-20', '2023-09-21 01:59:21', '2023-09-21 13:54:57'),
(2, 1, '2023-09-20', '21:59:00', 'PARTICIPACIÓN EN CLASES', 'REGULAR', 8, 1, '2023-09-20', '2023-09-21 01:59:21', '2023-09-21 14:15:03'),
(3, 2, '2023-09-21', '10:22:00', 'NO PRESENTA SUS ACTIVIDADES', 'MALA', 13, 0, '2023-09-21', '2023-09-21 14:22:44', '2023-09-21 14:22:44'),
(4, 2, '2023-09-21', '10:22:00', 'NO PRESENTA SUS ACTIVIDADES', 'MALA', 14, 1, '2023-09-21', '2023-09-21 14:22:44', '2023-09-21 14:22:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paterno` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `materno` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_doc` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nro_doc` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ci_exp` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pais_nac` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dpto_nac` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provincia_nac` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `localidad_nac` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_nac` date NOT NULL,
  `sexo` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `oficialia` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `libro` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `partida` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `folio` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ue_procedencia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo_sie_ue` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provincia_dir` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zona_dir` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipio_dir` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avenida_dir` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `localidad_dir` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fono_dir` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nro_dir` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idioma_niniez` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `idiomas_estudiante` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pueblo_nacion` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pueblo_nacion_otro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `centro_salud` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `veces_centro_salud` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discapacidad` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discapacidad_otro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_discapacidad` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `agua` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `energia_electrica` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banio` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `actividad` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dias_trabajo` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recibio_pago` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internet` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `frecuencia_internet` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `llega` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `llega_otro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_llega` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ci_padre_tutor` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_padre_tutor` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apm_padre_tutor` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom_padre_tutor` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_tutor_id` bigint UNSIGNED DEFAULT NULL,
  `idioma_padre_tutor` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ocupacion_padre_tutor` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `grado_padre_tutor` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentezco_padre_tutor` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_madre` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_madre` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apm_madre` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom_madre` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_madre_id` bigint UNSIGNED DEFAULT NULL,
  `idioma_madre` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ocupacion_madre` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grado_madre` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lugar` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_registro` date NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `estado` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `nombre`, `paterno`, `materno`, `tipo_doc`, `nro_doc`, `ci_exp`, `pais_nac`, `dpto_nac`, `provincia_nac`, `localidad_nac`, `fecha_nac`, `sexo`, `oficialia`, `libro`, `partida`, `folio`, `ue_procedencia`, `codigo_sie_ue`, `provincia_dir`, `zona_dir`, `municipio_dir`, `avenida_dir`, `localidad_dir`, `fono_dir`, `nro_dir`, `idioma_niniez`, `idiomas_estudiante`, `pueblo_nacion`, `pueblo_nacion_otro`, `centro_salud`, `veces_centro_salud`, `discapacidad`, `discapacidad_otro`, `desc_discapacidad`, `agua`, `energia_electrica`, `banio`, `actividad`, `dias_trabajo`, `recibio_pago`, `internet`, `frecuencia_internet`, `llega`, `llega_otro`, `desc_llega`, `ci_padre_tutor`, `app_padre_tutor`, `apm_padre_tutor`, `nom_padre_tutor`, `user_tutor_id`, `idioma_padre_tutor`, `ocupacion_padre_tutor`, `grado_padre_tutor`, `parentezco_padre_tutor`, `ci_madre`, `app_madre`, `apm_madre`, `nom_madre`, `user_madre_id`, `idioma_madre`, `ocupacion_madre`, `grado_madre`, `lugar`, `foto`, `fecha_registro`, `user_id`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'DANIEL', 'PAREDES', 'CONDE', 'CI', '405060', 'LP', 'LA PAZ', 'LA PAZ', 'MURILLO', 'LA PAZ', '2004-08-15', 'M', '234', '34', '345', '45', 'UNIDAD EDUCATIVA MARISCAL SANTA CRUZ', '234235234', 'MURILLO', 'ZONA NORTE', 'LA PAZ', 'CALLE 4', 'LA PAZ', '76544875', '868', 'CASTELLANO', 'CASTELLANO', 'NO PERTENECE', '', 'SI', '1 A 2 VECES', '', '', '', 'CAÑERÍA DE RED', 'SI', 'ALCANTARILLADO', 'NO TRABAJÓ', '5', 'NO', 'SU DOMICILIO', 'DIARIAMENTE', 'A PIE', '', 'MENOS DE MEDIA HORA', '708090', 'PAREDES', 'TAPIA', 'RICARDO', 7, 'CASTELLANO', 'PROFESOR', 'LICENCIATURA', 'PADRE', '908070', 'CONDE', 'SUAREZ', 'MARTHA', 8, 'CASTELLANO', 'LABORES DE HOGAR', 'SECUNDARIA', '', 'CONDE1695255877.jpg', '2023-09-20', 3, 1, '2023-09-21 00:24:38', '2023-09-21 01:53:08'),
(2, 'CARLOS', 'GONZALES', 'MARTINES', 'CI', '12312', 'LP', 'BOLIVIA', 'LA PAZ', 'LAPAZ', 'LA PAZ', '2010-01-21', 'M', '123123', '12', '2112', '1212', '', '', 'LOS OLIVOS', 'ZONA VILLA', 'SECCION 1|', 'AV. 3', 'LOCALIDAD 1', '7777', '32', 'ESPAÑOL', 'ESPAÑOL', 'NO PERTENECE', '', 'SI', '1 A 2 VECES', 'SENSORIAL Y DE LA COMUNICACIÓN', '', '', 'CAÑERÍA DE RED', 'SI', 'ALCANTARILLADO', 'TRABAJÓ EN AGRICULTURA O AGROINDUSTRIA', '', '', 'EN LA UNIDAD EDUCATIVA', 'MÁS DE UNA VEZ A LA SEMANA', 'A PIE', '', 'MENOS DE MEDIA HORA', '3123', 'GONZALES', '', 'MARTIN', 11, 'ESPAÑOL', 'OCUPACION', 'SECUNDARIA', '', '', '', '', '', NULL, '', '', '', '', 'CARLOS1695303507.jpg', '2023-09-21', 10, 1, '2023-09-21 13:38:27', '2023-09-21 13:38:27'),
(3, 'MAMANI', 'VALENTINA', 'MENDOZA', 'CI', '33223', 'LP', 'BOLIVIA', 'LA PAZ', 'LA PAZ', 'LA PAZ', '2006-01-01', 'F', '1212', '12223', '324234', '123123', '', '', 'LOS OLIVOS', 'LA PAZ', 'LA PAZ', 'AV. 33', 'LA PAZ', '777777', '3', 'ESPAÑOL', 'ESPAÑOL', 'NO PERTENECE', '', 'SI', '1 A 2 VECES', '', '', '', 'CAÑERÍA DE RED', 'SI', 'ALCANTARILLADO', 'NO TRABAJÓ', '', '', 'SU DOMICILIO', 'DIARIAMENTE', 'A PIE', '', 'MENOS DE MEDIA HORA', '88888', 'MENDOZA', 'MARTINES', 'PEDRO', 13, 'ESPAÑOL', 'OCUPACION 1', 'GRADO ALCANZADO', 'PADRE', '77777', 'MAMANI', 'MAMANI', 'MARIA', 14, 'ESPAÑOL', 'OCUPACION 2', 'GRADO 2', '', 'MAMANI1695305977.jpg', '2023-09-21', 12, 1, '2023-09-21 14:19:38', '2023-09-21 14:19:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcions`
--

CREATE TABLE `inscripcions` (
  `id` bigint UNSIGNED NOT NULL,
  `estudiante_id` bigint UNSIGNED NOT NULL,
  `nivel` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `grado` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paralelo_id` bigint UNSIGNED NOT NULL,
  `turno` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gestion` int NOT NULL,
  `estado` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `fecha_registro` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `inscripcions`
--

INSERT INTO `inscripcions` (`id`, `estudiante_id`, `nivel`, `grado`, `paralelo_id`, `turno`, `gestion`, `estado`, `status`, `fecha_registro`, `created_at`, `updated_at`) VALUES
(1, 1, 'SECUNDARIA', '1', 3, 'MAÑANA', 2023, 'REPROBADO', 1, '2023-09-20', '2023-09-21 01:53:27', '2023-09-21 01:53:27'),
(2, 3, 'SECUNDARIA', '1', 3, 'MAÑANA', 2023, 'REPROBADO', 1, '2023-09-21', '2023-09-21 14:22:04', '2023-09-21 14:22:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` bigint UNSIGNED NOT NULL,
  `area_id` bigint UNSIGNED NOT NULL,
  `codigo` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivel` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_registro` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `area_id`, `codigo`, `nivel`, `nombre`, `fecha_registro`, `created_at`, `updated_at`) VALUES
(2, 11, 'M001', 'SECUNDARIA', 'MATEMÁTICAS', '2023-05-11', '2023-05-11 20:13:29', '2023-09-21 01:49:32'),
(3, 2, 'M002', 'SECUNDARIA', 'BIOLOGÍA, GEOGRAFÍA', '2023-05-11', '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(5, 2, 'M003', 'SECUNDARIA', 'FÍSICA - QUÍMICA', '2023-05-11', '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(6, 3, 'CS001', 'SECUNDARIA', 'COMUNICACIÓN Y LENGUAJES', '2023-05-11', '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(7, 3, 'CS002', 'SECUNDARIA', 'LENGUAS CASTELLANA Y ORIGINARIA', '2023-05-11', '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(9, 7, 'TT001', 'SECUNDARIA', 'MUSICA', '2023-05-11', '2023-05-11 20:13:29', '2023-09-21 01:49:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia_grados`
--

CREATE TABLE `materia_grados` (
  `id` bigint UNSIGNED NOT NULL,
  `materia_id` bigint UNSIGNED NOT NULL,
  `grado` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `horas` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `materia_grados`
--

INSERT INTO `materia_grados` (`id`, `materia_id`, `grado`, `horas`, `created_at`, `updated_at`) VALUES
(1, 2, '1', 8, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(2, 2, '2', 8, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(3, 2, '3', 8, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(4, 2, '4', 8, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(5, 2, '5', 8, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(6, 2, '6', 8, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(7, 3, '1', 16, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(8, 3, '2', 16, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(9, 3, '3', 16, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(10, 3, '4', 16, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(11, 3, '5', 16, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(12, 3, '6', 16, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(13, 5, '1', NULL, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(14, 5, '2', NULL, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(15, 5, '3', 12, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(16, 5, '4', 12, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(17, 5, '5', 12, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(18, 5, '6', 12, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(19, 6, '1', 44, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(20, 6, '2', 44, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(21, 6, '3', 36, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(22, 6, '4', 36, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(23, 6, '5', 36, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(24, 6, '6', 36, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(25, 7, '1', 24, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(26, 7, '2', 24, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(27, 7, '3', 24, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(28, 7, '4', 16, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(29, 7, '5', 12, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(30, 7, '6', 12, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(31, 8, '1', 8, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(32, 8, '2', 8, '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(33, 9, '1', 8, '2023-05-11 20:13:29', '2023-09-21 01:49:16'),
(34, 9, '2', 8, '2023-05-11 20:13:29', '2023-09-21 01:49:16'),
(35, 9, '3', 8, '2023-05-11 20:13:29', '2023-09-21 01:49:16'),
(36, 9, '4', 8, '2023-05-11 20:13:29', '2023-09-21 01:49:17'),
(37, 9, '5', 8, '2023-05-11 20:13:29', '2023-09-21 01:49:17'),
(38, 9, '6', 8, '2023-05-11 20:13:29', '2023-09-21 01:49:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paralelos`
--

CREATE TABLE `paralelos` (
  `id` bigint UNSIGNED NOT NULL,
  `paralelo` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `paralelos`
--

INSERT INTO `paralelos` (`id`, `paralelo`, `descripcion`, `created_at`, `updated_at`) VALUES
(3, 'A', '', '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(4, 'B', '', '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(5, 'C', '', '2023-05-11 20:13:29', '2023-05-11 20:13:29'),
(6, 'D', '', '2023-05-11 20:13:29', '2023-05-11 20:13:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesors`
--

CREATE TABLE `profesors` (
  `id` bigint UNSIGNED NOT NULL,
  `nombre` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paterno` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `materno` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ci` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ci_exp` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lugar_nac` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_nac` date NOT NULL,
  `edad` int NOT NULL,
  `sexo` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado_civil` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `zona` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avenida` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nro` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fono` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cel` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nro_rda` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `afp` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nua` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_fiscal` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nro_seguro_social` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `caja_seguro_social` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulado` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gestiones_trabajo` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cargo` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mes` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `observaciones` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_registro` date NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `estado` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `profesors`
--

INSERT INTO `profesors` (`id`, `nombre`, `paterno`, `materno`, `ci`, `ci_exp`, `lugar_nac`, `fecha_nac`, `edad`, `sexo`, `estado_civil`, `zona`, `avenida`, `nro`, `fono`, `cel`, `email`, `nro_rda`, `afp`, `nua`, `item_fiscal`, `nro_seguro_social`, `caja_seguro_social`, `titulado`, `gestiones_trabajo`, `cargo`, `mes`, `observaciones`, `foto`, `fecha_registro`, `user_id`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'MARIO', 'APAZA', 'LLANOS', '302010', 'LP', 'LA PAZ', '1987-11-01', 36, 'M', 'CASADO', 'ZONA CENTRAL', 'SAAVEDRA', '3423', '2887654', '76564312', '', '45345', '343', '343', '343', '3423423', 'CNS', '1RA FASE', '2013', 'PROFESOR', 'EBERO', '', 'MAL2000011695304202.png', '2023-09-20', 6, 1, '2023-09-21 01:41:00', '2023-09-21 13:50:02'),
(2, 'MARIO', 'GONZALES', '', '3232', 'CB', 'LA PAZ', '1999-12-04', 23, 'M', 'SOLTERO', 'LOS OLIVOS', 'AV. 32', '1', '', '67676767', '', '1212', '212', '323', '13212', '3223', 'SEGURO', '2DA FASE', '', '', '', '', 'user_default.png', '2023-09-21', 9, 1, '2023-09-21 13:32:10', '2023-09-21 13:32:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_cursos`
--

CREATE TABLE `profesor_cursos` (
  `id` bigint UNSIGNED NOT NULL,
  `profesor_id` bigint UNSIGNED NOT NULL,
  `nominacion` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institucion` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duracion` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `profesor_cursos`
--

INSERT INTO `profesor_cursos` (`id`, `profesor_id`, `nominacion`, `institucion`, `duracion`, `fecha`, `created_at`, `updated_at`) VALUES
(1, 1, '', '', '', '0000-00-00', '2023-09-21 01:41:01', '2023-09-21 01:41:01'),
(2, 1, '', '', '', '0000-00-00', '2023-09-21 01:41:01', '2023-09-21 01:41:01'),
(3, 1, '', '', '', '0000-00-00', '2023-09-21 01:41:02', '2023-09-21 01:41:02'),
(4, 2, '', '', '', '0000-00-00', '2023-09-21 13:32:10', '2023-09-21 13:32:10'),
(5, 2, '', '', '', '0000-00-00', '2023-09-21 13:32:10', '2023-09-21 13:32:10'),
(6, 2, '', '', '', '0000-00-00', '2023-09-21 13:32:10', '2023-09-21 13:32:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_estudios`
--

CREATE TABLE `profesor_estudios` (
  `id` bigint UNSIGNED NOT NULL,
  `profesor_id` bigint UNSIGNED NOT NULL,
  `nivel` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institucion` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anio_egreso` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `especialidad` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nro_titulo` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `profesor_estudios`
--

INSERT INTO `profesor_estudios` (`id`, `profesor_id`, `nivel`, `institucion`, `anio_egreso`, `especialidad`, `nro_titulo`, `created_at`, `updated_at`) VALUES
(1, 1, 'Secundario', '', '', '', '', '2023-09-21 01:41:01', '2023-09-21 01:41:01'),
(2, 1, 'Normal', '', '', '', '', '2023-09-21 01:41:01', '2023-09-21 01:41:01'),
(3, 1, 'Universitario', 'UNIVERSIDAD MAYOR DE SAN ANDRES', '2008', 'CIENCIAS DE LA EDUCACIÓN', '2324', '2023-09-21 01:41:01', '2023-09-21 01:41:01'),
(4, 1, 'Post Grado', '', '', '', '', '2023-09-21 01:41:01', '2023-09-21 01:41:01'),
(5, 1, 'Post Grado', '', '', '', '', '2023-09-21 01:41:01', '2023-09-21 01:41:01'),
(6, 2, 'Secundario', '', '', '', '', '2023-09-21 13:32:10', '2023-09-21 13:32:10'),
(7, 2, 'Normal', '', '', '', '', '2023-09-21 13:32:10', '2023-09-21 13:32:10'),
(8, 2, 'Universitario', '', '', '', '', '2023-09-21 13:32:10', '2023-09-21 13:32:10'),
(9, 2, 'Post Grado', '', '', '', '', '2023-09-21 13:32:10', '2023-09-21 13:32:10'),
(10, 2, 'Post Grado', '', '', '', '', '2023-09-21 13:32:10', '2023-09-21 13:32:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_materias`
--

CREATE TABLE `profesor_materias` (
  `id` bigint UNSIGNED NOT NULL,
  `profesor_id` bigint UNSIGNED NOT NULL,
  `nivel` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `grado` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paralelo_id` bigint UNSIGNED NOT NULL,
  `turno` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gestion` int NOT NULL,
  `materia_id` bigint UNSIGNED NOT NULL,
  `fecha_registro` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `profesor_materias`
--

INSERT INTO `profesor_materias` (`id`, `profesor_id`, `nivel`, `grado`, `paralelo_id`, `turno`, `gestion`, `materia_id`, `fecha_registro`, `created_at`, `updated_at`) VALUES
(1, 1, 'SECUNDARIA', '1', 3, 'MAÑANA', 2023, 2, '2023-09-20', '2023-09-21 01:55:28', '2023-09-21 01:55:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_otros`
--

CREATE TABLE `profesor_otros` (
  `id` bigint UNSIGNED NOT NULL,
  `profesor_id` bigint UNSIGNED NOT NULL,
  `institucion` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `turno` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zona` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cargo` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_horas` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `profesor_otros`
--

INSERT INTO `profesor_otros` (`id`, `profesor_id`, `institucion`, `turno`, `zona`, `cargo`, `total_horas`, `created_at`, `updated_at`) VALUES
(1, 1, '', '', '', '', 0, '2023-09-21 01:41:02', '2023-09-21 01:41:02'),
(2, 1, '', '', '', '', 0, '2023-09-21 01:41:02', '2023-09-21 01:41:02'),
(3, 1, '', '', '', '', 0, '2023-09-21 01:41:02', '2023-09-21 01:41:02'),
(4, 2, '', '', '', '', 0, '2023-09-21 13:32:10', '2023-09-21 13:32:10'),
(5, 2, '', '', '', '', 0, '2023-09-21 13:32:10', '2023-09-21 13:32:10'),
(6, 2, '', '', '', '', 0, '2023-09-21 13:32:10', '2023-09-21 13:32:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_trabajos`
--

CREATE TABLE `profesor_trabajos` (
  `id` bigint UNSIGNED NOT NULL,
  `profesor_id` bigint UNSIGNED NOT NULL,
  `institucion` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gestion` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cargo` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `profesor_trabajos`
--

INSERT INTO `profesor_trabajos` (`id`, `profesor_id`, `institucion`, `gestion`, `cargo`, `created_at`, `updated_at`) VALUES
(1, 1, '', '', '', '2023-09-21 01:41:02', '2023-09-21 01:41:02'),
(2, 1, '', '', '', '2023-09-21 01:41:02', '2023-09-21 01:41:02'),
(3, 1, '', '', '', '2023-09-21 01:41:02', '2023-09-21 01:41:02'),
(4, 2, '', '', '', '2023-09-21 13:32:10', '2023-09-21 13:32:10'),
(5, 2, '', '', '', '2023-09-21 13:32:10', '2023-09-21 13:32:10'),
(6, 2, '', '', '', '2023-09-21 13:32:10', '2023-09-21 13:32:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `razon_socials`
--

CREATE TABLE `razon_socials` (
  `id` bigint UNSIGNED NOT NULL,
  `codigo` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nro_resolucion` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo_sie` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_ue` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nro_distrito` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_distrito` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dir` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nit` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nro_aut` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fono` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cel` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `casilla` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correo` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `actividad_economica` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `razon_socials`
--

INSERT INTO `razon_socials` (`id`, `codigo`, `nombre`, `alias`, `nro_resolucion`, `codigo_sie`, `tipo_ue`, `ciudad`, `nro_distrito`, `desc_distrito`, `dir`, `nit`, `nro_aut`, `fono`, `cel`, `casilla`, `correo`, `web`, `logo`, `actividad_economica`, `created_at`, `updated_at`) VALUES
(1, 'C1001', 'U. E. GUALBERTO VILLARROEL', 'UE GV', '0', '0', 'PÚBLICA', 'LA PAZ', '1', 'DISTRITO', 'ZONA CENTRAL CALLE 1', '0', '0', '0', '0', '', '', '', 'logo1695235155.png', 'SERVICIO DE ENSEÑANZA', '2023-05-05 20:15:36', '2023-09-20 18:39:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trimestre_actividads`
--

CREATE TABLE `trimestre_actividads` (
  `id` bigint UNSIGNED NOT NULL,
  `ct_id` bigint UNSIGNED NOT NULL,
  `area` int NOT NULL,
  `a1` double(8,2) NOT NULL,
  `a2` double(8,2) NOT NULL,
  `a3` double(8,2) NOT NULL,
  `a4` double(8,2) NOT NULL,
  `a5` double(8,2) NOT NULL,
  `a6` double(8,2) NOT NULL,
  `promedio` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `trimestre_actividads`
--

INSERT INTO `trimestre_actividads` (`id`, `ct_id`, `area`, `a1`, `a2`, `a3`, `a4`, `a5`, `a6`, `promedio`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:27', '2023-09-21 01:53:27'),
(2, 1, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:27', '2023-09-21 01:53:27'),
(3, 1, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:27', '2023-09-21 01:53:27'),
(4, 1, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:28', '2023-09-21 01:53:28'),
(5, 2, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:28', '2023-09-21 01:53:28'),
(6, 2, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:28', '2023-09-21 01:53:28'),
(7, 2, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:28', '2023-09-21 01:53:28'),
(8, 2, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:28', '2023-09-21 01:53:28'),
(9, 3, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:29', '2023-09-21 01:53:29'),
(10, 3, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:29', '2023-09-21 01:53:29'),
(11, 3, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:29', '2023-09-21 01:53:29'),
(12, 3, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:29', '2023-09-21 01:53:29'),
(13, 4, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:30', '2023-09-21 01:53:30'),
(14, 4, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:30', '2023-09-21 01:53:30'),
(15, 4, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:30', '2023-09-21 01:53:30'),
(16, 4, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:30', '2023-09-21 01:53:30'),
(17, 5, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:30', '2023-09-21 01:53:30'),
(18, 5, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:30', '2023-09-21 01:53:30'),
(19, 5, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:31', '2023-09-21 01:53:31'),
(20, 5, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:31', '2023-09-21 01:53:31'),
(21, 6, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:31', '2023-09-21 01:53:31'),
(22, 6, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:31', '2023-09-21 01:53:31'),
(23, 6, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:31', '2023-09-21 01:53:31'),
(24, 6, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:32', '2023-09-21 01:53:32'),
(25, 7, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:32', '2023-09-21 01:53:32'),
(26, 7, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:32', '2023-09-21 01:53:32'),
(27, 7, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:32', '2023-09-21 01:53:32'),
(28, 7, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:32', '2023-09-21 01:53:32'),
(29, 8, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:33', '2023-09-21 01:53:33'),
(30, 8, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:33', '2023-09-21 01:53:33'),
(31, 8, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:33', '2023-09-21 01:53:33'),
(32, 8, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:33', '2023-09-21 01:53:33'),
(33, 9, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:33', '2023-09-21 01:53:33'),
(34, 9, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:34', '2023-09-21 01:53:34'),
(35, 9, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:34', '2023-09-21 01:53:34'),
(36, 9, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:34', '2023-09-21 01:53:34'),
(37, 10, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:34', '2023-09-21 01:53:34'),
(38, 10, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:34', '2023-09-21 01:53:34'),
(39, 10, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:34', '2023-09-21 01:53:34'),
(40, 10, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:35', '2023-09-21 01:53:35'),
(41, 11, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:35', '2023-09-21 01:53:35'),
(42, 11, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:35', '2023-09-21 01:53:35'),
(43, 11, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:35', '2023-09-21 01:53:35'),
(44, 11, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:35', '2023-09-21 01:53:35'),
(45, 12, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:36', '2023-09-21 01:53:36'),
(46, 12, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:36', '2023-09-21 01:53:36'),
(47, 12, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:36', '2023-09-21 01:53:36'),
(48, 12, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:36', '2023-09-21 01:53:36'),
(49, 13, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:37', '2023-09-21 01:53:37'),
(50, 13, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:37', '2023-09-21 01:53:37'),
(51, 13, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:37', '2023-09-21 01:53:37'),
(52, 13, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:37', '2023-09-21 01:53:37'),
(53, 14, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:37', '2023-09-21 01:53:37'),
(54, 14, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:37', '2023-09-21 01:53:37'),
(55, 14, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:38', '2023-09-21 01:53:38'),
(56, 14, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:38', '2023-09-21 01:53:38'),
(57, 15, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:38', '2023-09-21 01:53:38'),
(58, 15, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:38', '2023-09-21 01:53:38'),
(59, 15, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:38', '2023-09-21 01:53:38'),
(60, 15, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:39', '2023-09-21 01:53:39'),
(61, 16, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:39', '2023-09-21 01:53:39'),
(62, 16, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:40', '2023-09-21 01:53:40'),
(63, 16, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:40', '2023-09-21 01:53:40'),
(64, 16, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:40', '2023-09-21 01:53:40'),
(65, 17, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:40', '2023-09-21 01:53:40'),
(66, 17, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:40', '2023-09-21 01:53:40'),
(67, 17, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:40', '2023-09-21 01:53:40'),
(68, 17, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:41', '2023-09-21 01:53:41'),
(69, 18, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:41', '2023-09-21 01:53:41'),
(70, 18, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:41', '2023-09-21 01:53:41'),
(71, 18, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:41', '2023-09-21 01:53:41'),
(72, 18, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 01:53:41', '2023-09-21 01:53:41'),
(73, 19, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(74, 19, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(75, 19, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(76, 19, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(77, 20, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(78, 20, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(79, 20, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(80, 20, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(81, 21, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(82, 21, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(83, 21, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(84, 21, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(85, 22, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(86, 22, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(87, 22, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(88, 22, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(89, 23, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(90, 23, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(91, 23, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(92, 23, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(93, 24, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(94, 24, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(95, 24, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(96, 24, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(97, 25, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(98, 25, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(99, 25, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(100, 25, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(101, 26, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(102, 26, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(103, 26, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(104, 26, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(105, 27, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(106, 27, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(107, 27, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(108, 27, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(109, 28, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(110, 28, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(111, 28, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(112, 28, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(113, 29, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(114, 29, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(115, 29, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(116, 29, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(117, 30, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(118, 30, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(119, 30, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(120, 30, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(121, 31, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(122, 31, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(123, 31, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(124, 31, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(125, 32, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(126, 32, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(127, 32, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(128, 32, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(129, 33, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(130, 33, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(131, 33, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(132, 33, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(133, 34, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(134, 34, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(135, 34, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(136, 34, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(137, 35, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(138, 35, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(139, 35, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(140, 35, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(141, 36, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(142, 36, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(143, 36, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04'),
(144, 36, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-09-21 14:22:04', '2023-09-21 14:22:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('ADMINISTRADOR','SECRETARIA ACADÉMICA','PROFESOR','ESTUDIANTE','TUTOR') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` bigint NOT NULL,
  `estado` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `tipo`, `foto`, `codigo`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$.ERox9PjDF0yccV5sWkWk.Dwvq1rPmaXjOTKrdW4y9adSnCFc4bI6', 'ADMINISTRADOR', 'user_default.png', 0, 1, '2023-09-20 19:33:50', '2023-09-20 19:33:50'),
(2, 'PPF100001', '$2y$10$yA7vdUUQKq5oDSfRHMmaKOFjYi4fMdI6NgR3E3ikSkPg5rs6qlRMm', 'ADMINISTRADOR', 'PABLO1695255530.jpg', 100001, 1, '2023-09-21 00:18:51', '2023-09-21 00:18:51'),
(3, 'CDP500001', '$2y$10$Tswp/Ynexk79GD5sJ2KNtOHcXSZPCz.lFsgYLeF0QZbRUJ/jaDoO6', 'ESTUDIANTE', 'CONDE1695255877.jpg', 500001, 1, '2023-09-21 00:24:37', '2023-09-21 00:24:37'),
(4, '100001RPT', '$2y$10$p8AvIjYWz2lfoSMzA8BT/O3wytptkrb3OYBP0zIKxRnrkx0.gHvDy', 'TUTOR', 'user_default.png', 100001, 1, '2023-09-21 00:24:37', '2023-09-21 00:24:37'),
(5, '100002RPT', '$2y$10$L4cMGorbBgl//RC7yqOThuGMypZrEnyWrh38DiXSGKGF1a4eYqo.W', 'TUTOR', 'user_default.png', 100002, 1, '2023-09-21 00:24:38', '2023-09-21 00:24:38'),
(6, 'MAL200001', '$2y$10$83tAf8wRwQoA9tsnW1Q/4.4A2/fLVJ6WdZ6vhS4WZWwd5zQudewku', 'PROFESOR', 'MAL2000011695304202.png', 200001, 1, '2023-09-21 01:41:00', '2023-09-21 13:50:02'),
(7, '100003RPT', '$2y$10$Bg166wvj0Jp2vatK5cceUe4pJyDunISLjARNHbLwd24La13gqXwfO', 'TUTOR', '100003RPT1695304490.jpg', 100003, 1, '2023-09-21 01:53:08', '2023-09-21 13:54:50'),
(8, '100004MCS', '$2y$10$PCpYS7tGstCH85LnkVNGYu3b6PIxH1CRPoFSNSlvwMZXCBuX5/Luy', 'TUTOR', '100004MCS1695305696.jpg', 100004, 1, '2023-09-21 01:53:08', '2023-09-21 14:14:56'),
(9, 'MG200002', '$2y$10$8f0/wYvYeFZA11QJUliCxe.CCbh2ElG9d6KSRrjbMIUJejRhiafRq', 'PROFESOR', 'user_default.png', 200002, 1, '2023-09-21 13:32:10', '2023-09-21 13:32:10'),
(10, 'CGM500002', '$2y$10$DCz8brGPfvi47VEc50rZHeC356Cd3/6TBhi9ZcnKFfiVQMBUV0lVi', 'ESTUDIANTE', 'CARLOS1695303507.jpg', 500002, 1, '2023-09-21 13:38:27', '2023-09-21 13:38:27'),
(11, '100005MG', '$2y$10$0sZpxDFYAe40ldX4GaO58u0zZpWd5pwVwH66XwR7hI8xpP9iIjiGy', 'TUTOR', '100005MG1695304004.jpg', 100005, 1, '2023-09-21 13:38:27', '2023-09-21 13:46:45'),
(12, 'MVM500003', '$2y$10$nVb07HO8bg/.ReU4SPdYAOGxpQ5ieTSUku3MG4aU65toTDRk5tlp.', 'ESTUDIANTE', 'MAMANI1695305977.jpg', 500003, 1, '2023-09-21 14:19:37', '2023-09-21 14:19:37'),
(13, '100006PMM', '$2y$10$xy7kMJFlCK7/7cuzQ7MmZepSQ5mQvfNu747pwHg7Y3gDvctf5jesC', 'TUTOR', '100006PMM1695306055.jpg', 100006, 1, '2023-09-21 14:19:37', '2023-09-21 14:20:55'),
(14, '100007PMM', '$2y$10$SHrMhNwUP8MnhfQq9t1NeuGuR91x7CyXp3b3EBOA8e9FswPQ5GoYW', 'TUTOR', '100007PMM1695306106.png', 100007, 1, '2023-09-21 14:19:38', '2023-09-21 14:21:46');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad_profesors`
--
ALTER TABLE `actividad_profesors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `administrativos`
--
ALTER TABLE `administrativos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `administrativos_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `administrativo_cursos`
--
ALTER TABLE `administrativo_cursos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `administrativo_cursos_administrativo_id_foreign` (`administrativo_id`);

--
-- Indices de la tabla `administrativo_estudios`
--
ALTER TABLE `administrativo_estudios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `administrativo_estudios_administrativo_id_foreign` (`administrativo_id`);

--
-- Indices de la tabla `administrativo_otros`
--
ALTER TABLE `administrativo_otros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `administrativo_otros_administrativo_id_foreign` (`administrativo_id`);

--
-- Indices de la tabla `administrativo_trabajos`
--
ALTER TABLE `administrativo_trabajos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `administrativo_trabajos_administrativo_id_foreign` (`administrativo_id`);

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `areas_campo_id_foreign` (`campo_id`);

--
-- Indices de la tabla `calificacions`
--
ALTER TABLE `calificacions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calificacions_materia_id_foreign` (`materia_id`);

--
-- Indices de la tabla `calificacion_trimestres`
--
ALTER TABLE `calificacion_trimestres`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `campos`
--
ALTER TABLE `campos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chat_desempenos`
--
ALTER TABLE `chat_desempenos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `desempeno_estudiantes`
--
ALTER TABLE `desempeno_estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `desempeno_notificacions`
--
ALTER TABLE `desempeno_notificacions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estudiantes_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `inscripcions`
--
ALTER TABLE `inscripcions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inscripcions_estudiante_id_foreign` (`estudiante_id`),
  ADD KEY `inscripcions_paralelo_id_foreign` (`paralelo_id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materias_area_id_foreign` (`area_id`);

--
-- Indices de la tabla `materia_grados`
--
ALTER TABLE `materia_grados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materia_grados_materia_id_foreign` (`materia_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paralelos`
--
ALTER TABLE `paralelos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `profesors`
--
ALTER TABLE `profesors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profesors_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `profesor_cursos`
--
ALTER TABLE `profesor_cursos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profesor_cursos_profesor_id_foreign` (`profesor_id`);

--
-- Indices de la tabla `profesor_estudios`
--
ALTER TABLE `profesor_estudios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profesor_estudios_profesor_id_foreign` (`profesor_id`);

--
-- Indices de la tabla `profesor_materias`
--
ALTER TABLE `profesor_materias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profesor_materias_profesor_id_foreign` (`profesor_id`),
  ADD KEY `profesor_materias_paralelo_id_foreign` (`paralelo_id`),
  ADD KEY `profesor_materias_materia_id_foreign` (`materia_id`);

--
-- Indices de la tabla `profesor_otros`
--
ALTER TABLE `profesor_otros`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profesor_otros_profesor_id_foreign` (`profesor_id`);

--
-- Indices de la tabla `profesor_trabajos`
--
ALTER TABLE `profesor_trabajos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profesor_trabajos_profesor_id_foreign` (`profesor_id`);

--
-- Indices de la tabla `razon_socials`
--
ALTER TABLE `razon_socials`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trimestre_actividads`
--
ALTER TABLE `trimestre_actividads`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `actividad_profesors`
--
ALTER TABLE `actividad_profesors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `administrativos`
--
ALTER TABLE `administrativos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `administrativo_cursos`
--
ALTER TABLE `administrativo_cursos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `administrativo_estudios`
--
ALTER TABLE `administrativo_estudios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `administrativo_otros`
--
ALTER TABLE `administrativo_otros`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `administrativo_trabajos`
--
ALTER TABLE `administrativo_trabajos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `calificacions`
--
ALTER TABLE `calificacions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `calificacion_trimestres`
--
ALTER TABLE `calificacion_trimestres`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `campos`
--
ALTER TABLE `campos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `chat_desempenos`
--
ALTER TABLE `chat_desempenos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `desempeno_estudiantes`
--
ALTER TABLE `desempeno_estudiantes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `desempeno_notificacions`
--
ALTER TABLE `desempeno_notificacions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `inscripcions`
--
ALTER TABLE `inscripcions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `materia_grados`
--
ALTER TABLE `materia_grados`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `paralelos`
--
ALTER TABLE `paralelos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `profesors`
--
ALTER TABLE `profesors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `profesor_cursos`
--
ALTER TABLE `profesor_cursos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `profesor_estudios`
--
ALTER TABLE `profesor_estudios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `profesor_materias`
--
ALTER TABLE `profesor_materias`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `profesor_otros`
--
ALTER TABLE `profesor_otros`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `profesor_trabajos`
--
ALTER TABLE `profesor_trabajos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `razon_socials`
--
ALTER TABLE `razon_socials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `trimestre_actividads`
--
ALTER TABLE `trimestre_actividads`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrativos`
--
ALTER TABLE `administrativos`
  ADD CONSTRAINT `administrativos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `administrativo_cursos`
--
ALTER TABLE `administrativo_cursos`
  ADD CONSTRAINT `administrativo_cursos_administrativo_id_foreign` FOREIGN KEY (`administrativo_id`) REFERENCES `administrativos` (`id`);

--
-- Filtros para la tabla `administrativo_estudios`
--
ALTER TABLE `administrativo_estudios`
  ADD CONSTRAINT `administrativo_estudios_administrativo_id_foreign` FOREIGN KEY (`administrativo_id`) REFERENCES `administrativos` (`id`);

--
-- Filtros para la tabla `administrativo_otros`
--
ALTER TABLE `administrativo_otros`
  ADD CONSTRAINT `administrativo_otros_administrativo_id_foreign` FOREIGN KEY (`administrativo_id`) REFERENCES `administrativos` (`id`);

--
-- Filtros para la tabla `administrativo_trabajos`
--
ALTER TABLE `administrativo_trabajos`
  ADD CONSTRAINT `administrativo_trabajos_administrativo_id_foreign` FOREIGN KEY (`administrativo_id`) REFERENCES `administrativos` (`id`);

--
-- Filtros para la tabla `areas`
--
ALTER TABLE `areas`
  ADD CONSTRAINT `areas_campo_id_foreign` FOREIGN KEY (`campo_id`) REFERENCES `campos` (`id`);

--
-- Filtros para la tabla `calificacions`
--
ALTER TABLE `calificacions`
  ADD CONSTRAINT `calificacions_materia_id_foreign` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`);

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `estudiantes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `inscripcions`
--
ALTER TABLE `inscripcions`
  ADD CONSTRAINT `inscripcions_estudiante_id_foreign` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiantes` (`id`),
  ADD CONSTRAINT `inscripcions_paralelo_id_foreign` FOREIGN KEY (`paralelo_id`) REFERENCES `paralelos` (`id`);

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `areas` (`id`);

--
-- Filtros para la tabla `profesors`
--
ALTER TABLE `profesors`
  ADD CONSTRAINT `profesors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
