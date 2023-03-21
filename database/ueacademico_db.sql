-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 21-03-2023 a las 15:59:57
-- Versión del servidor: 5.7.33
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
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacion` text COLLATE utf8mb4_unicode_ci,
  `fecha_registro` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `actividad_profesors`
--

INSERT INTO `actividad_profesors` (`id`, `user_id`, `fecha`, `descripcion`, `observacion`, `fecha_registro`, `created_at`, `updated_at`) VALUES
(8, 4, '2023-03-12', 'MODIFCADO 13', '', '2023-03-08', '2023-03-08 14:22:38', '2023-03-08 14:35:53'),
(9, 11, '2023-03-10', 'PRUEBA ACTIVIDAD GRACIELA GOMEZ, MODIFICADO', '', '2023-03-08', '2023-03-08 14:29:43', '2023-03-08 14:36:14'),
(10, 4, '2023-03-12', 'DESCRIPCION MODIFICADO', '', '2023-03-08', '2023-03-08 14:34:07', '2023-03-08 14:34:07'),
(11, 11, '2023-03-08', 'DESC', '', '2023-03-08', '2023-03-08 14:37:06', '2023-03-08 14:37:06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativos`
--

CREATE TABLE `administrativos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paterno` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materno` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ci` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ci_exp` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lugar_nac` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_nac` date NOT NULL,
  `edad` int(11) NOT NULL,
  `sexo` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado_civil` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zona` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avenida` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nro` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fono` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cel` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nro_rda` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `afp` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nua` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_fiscal` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nro_seguro_social` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caja_seguro_social` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulado` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gestiones_trabajo` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cargo` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mes` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observaciones` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_registro` date NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `administrativos`
--

INSERT INTO `administrativos` (`id`, `nombre`, `paterno`, `materno`, `ci`, `ci_exp`, `lugar_nac`, `fecha_nac`, `edad`, `sexo`, `estado_civil`, `zona`, `avenida`, `nro`, `fono`, `cel`, `email`, `nro_rda`, `afp`, `nua`, `item_fiscal`, `nro_seguro_social`, `caja_seguro_social`, `titulado`, `gestiones_trabajo`, `cargo`, `mes`, `observaciones`, `foto`, `fecha_registro`, `user_id`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'FELIPE', 'MARTINEZ', 'CASAS', '12345678', 'LP', 'PROVINCIA MURILLO', '1990-01-01', 31, 'M', 'SOLTERO', 'ZONA LOS OLIVOS', 'AV. SUCRE', '123', '2314567', '78945612', '', '123', '123', '123', '123', '123', 'CAJA DE SEGURO SOCIAL', '1RA FASE', '2018,2019', 'CARGO', 'FEBRERO', '', 'user_default.png', '2021-05-06', 2, 1, '2021-05-06 15:25:55', '2021-05-06 16:08:04'),
(2, 'MARIA', 'PAREDES', '', '1234567', 'LP', 'PROVINCIA MURILLO', '1995-01-01', 26, 'F', 'SOLTERO', 'ZONA LOS OLIVOS', 'AV. SUCRE', '123', '2314567', '78945612', '', '123', '123', '123', '123', '123', 'CAJA DE SEGURO SOCIAL', '2DA FASE', '', '', '', '', 'user_default.png', '2022-03-28', 16, 1, '2021-05-06 15:27:26', '2022-03-28 18:37:51'),
(3, 'JANETH', 'MAMANI', 'MAMANI', '123456', 'LP', 'PROVINCIA MURILLO', '1994-01-01', 27, 'F', 'SOLTERO', 'ZONA LOS OLIVOS', 'AV. SUCRE', '123', '2314567', '78945612', '', '123', '123', '123', '123', '123', 'CAJA DE SEGURO SOCIAL', '3RA FASE', '', '', '', '', 'user_default.png', '2021-05-06', 3, 1, '2021-05-06 16:36:55', '2021-05-06 16:40:37'),
(4, 'ALEX', 'FLORES', 'GOMEZ', '111111', 'LP', 'PROVINCIA MURILLO', '1990-01-01', 31, 'M', 'SOLTERO', 'ZONA LOS OLIVOS', 'AV. SUCRE', '123', '2314567', '78945612', '', '123', '123', '123', '123', '123', 'CAJA DE SEGURO SOCIAL', '1RA FASE', '', '', '', '', 'user_default.png', '2021-05-18', 10, 1, '2021-05-18 16:03:43', '2021-05-18 16:03:43'),
(5, 'CARLOS', 'PAREDES', 'PACO', '102030', 'LP', 'LA PAZ', '1992-02-10', 29, 'M', 'SOLTERO', 'ZONA CENTRAL CALLE 2', 'AVENIDA CENTRAL', '525', '2885656', '76588587', '', '585522', '652325232', '352352', '6353235652', '652352320', '33352541', '1RA FASE', 'NINGUNO A', 'NINGUNO B', 'A', 'X', 'user_default.png', '2021-06-07', 13, 1, '2021-06-07 23:39:58', '2021-06-07 23:39:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativo_cursos`
--

CREATE TABLE `administrativo_cursos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `administrativo_id` bigint(20) UNSIGNED NOT NULL,
  `nominacion` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institucion` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duracion` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `administrativo_cursos`
--

INSERT INTO `administrativo_cursos` (`id`, `administrativo_id`, `nominacion`, `institucion`, `duracion`, `fecha`, `created_at`, `updated_at`) VALUES
(1, 1, 'NOMINACION CURSO', 'INSTITUCION', '5 AÑOS', '2012-01-01', '2021-05-06 15:25:55', '2021-05-06 16:20:32'),
(2, 1, '', '', '', '0000-00-00', '2021-05-06 15:25:55', '2021-05-06 16:25:32'),
(3, 1, '', '', '', '0000-00-00', '2021-05-06 15:25:55', '2021-05-06 16:25:32'),
(4, 2, '', '', '', '0000-00-00', '2021-05-06 15:27:26', '2022-03-28 18:37:51'),
(5, 2, '', '', '', '0000-00-00', '2021-05-06 15:27:26', '2022-03-28 18:37:51'),
(6, 2, '', '', '', '0000-00-00', '2021-05-06 15:27:26', '2022-03-28 18:37:51'),
(7, 3, 'NOMINACION CURSO', 'INSTITUCION', '5 AÑOS', '2016-01-01', '2021-05-06 16:36:55', '2021-05-06 16:36:55'),
(8, 3, '', '', '', '0000-00-00', '2021-05-06 16:36:55', '2021-05-06 16:40:27'),
(9, 3, '', '', '', '0000-00-00', '2021-05-06 16:36:55', '2021-05-06 16:40:27'),
(10, 4, '', '', '', '0000-00-00', '2021-05-18 16:03:43', '2021-05-18 16:03:43'),
(11, 4, '', '', '', '0000-00-00', '2021-05-18 16:03:43', '2021-05-18 16:03:43'),
(12, 4, '', '', '', '0000-00-00', '2021-05-18 16:03:43', '2021-05-18 16:03:43'),
(13, 5, 'CONTABILIDAD', 'CATÓLICA', '12 MESES', '2016-06-09', '2021-06-07 23:39:58', '2021-06-07 23:39:58'),
(14, 5, '', '', '', '0000-00-00', '2021-06-07 23:39:58', '2021-06-07 23:40:21'),
(15, 5, '', '', '', '0000-00-00', '2021-06-07 23:39:58', '2021-06-07 23:40:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativo_estudios`
--

CREATE TABLE `administrativo_estudios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `administrativo_id` bigint(20) UNSIGNED NOT NULL,
  `nivel` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institucion` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anio_egreso` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `especialidad` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nro_titulo` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `administrativo_estudios`
--

INSERT INTO `administrativo_estudios` (`id`, `administrativo_id`, `nivel`, `institucion`, `anio_egreso`, `especialidad`, `nro_titulo`, `created_at`, `updated_at`) VALUES
(1, 1, 'SECUNDARIO', 'INSTITUCION', '2012', 'BACHILLER', '456465', '2021-05-06 15:25:55', '2021-05-06 16:19:01'),
(2, 1, 'NORMAL', '', '', '', '', '2021-05-06 15:25:55', '2021-05-06 16:19:01'),
(3, 1, 'UNIVERSITARIO', '', '', '', '', '2021-05-06 15:25:55', '2021-05-06 16:19:01'),
(4, 1, 'POST GRADO', '', '', '', '', '2021-05-06 15:25:55', '2021-05-06 16:19:01'),
(5, 1, 'POST GRADO', '', '', '', '', '2021-05-06 15:25:55', '2021-05-06 16:19:01'),
(6, 2, 'SECUNDARIO', '', '', '', '', '2021-05-06 15:27:26', '2022-03-28 18:37:51'),
(7, 2, 'NORMAL', '', '', '', '', '2021-05-06 15:27:26', '2022-03-28 18:37:51'),
(8, 2, 'UNIVERSITARIO', '', '', '', '', '2021-05-06 15:27:26', '2022-03-28 18:37:51'),
(9, 2, 'POST GRADO', '', '', '', '', '2021-05-06 15:27:26', '2022-03-28 18:37:51'),
(10, 2, 'POST GRADO', '', '', '', '', '2021-05-06 15:27:26', '2022-03-28 18:37:51'),
(11, 3, 'SECUNDARIO', 'INSTITUCION', '2012', 'BACHILLER', '456465', '2021-05-06 16:36:55', '2021-05-06 16:37:27'),
(12, 3, 'NORMAL', '', '', '', '', '2021-05-06 16:36:55', '2021-05-06 16:37:28'),
(13, 3, 'UNIVERSITARIO', '', '', '', '', '2021-05-06 16:36:55', '2021-05-06 16:37:28'),
(14, 3, 'POST GRADO', '', '', '', '', '2021-05-06 16:36:55', '2021-05-06 16:37:28'),
(15, 3, 'POST GRADO', '', '', '', '', '2021-05-06 16:36:55', '2021-05-06 16:37:28'),
(16, 4, 'Secundario', '', '', '', '', '2021-05-18 16:03:43', '2021-05-18 16:03:43'),
(17, 4, 'Normal', '', '', '', '', '2021-05-18 16:03:43', '2021-05-18 16:03:43'),
(18, 4, 'Universitario', '', '', '', '', '2021-05-18 16:03:43', '2021-05-18 16:03:43'),
(19, 4, 'Post Grado', '', '', '', '', '2021-05-18 16:03:43', '2021-05-18 16:03:43'),
(20, 4, 'Post Grado', '', '', '', '', '2021-05-18 16:03:43', '2021-05-18 16:03:43'),
(21, 5, 'SECUNDARIO', 'SAN CRISTOBAL', '2015', 'TECNICO EN ADMINISTRACIÓN', '65423', '2021-06-07 23:39:58', '2021-06-07 23:40:21'),
(22, 5, 'NORMAL', '', '', '', '', '2021-06-07 23:39:58', '2021-06-07 23:40:21'),
(23, 5, 'UNIVERSITARIO', '', '', '', '', '2021-06-07 23:39:58', '2021-06-07 23:40:21'),
(24, 5, 'POST GRADO', '', '', '', '', '2021-06-07 23:39:58', '2021-06-07 23:40:21'),
(25, 5, 'POST GRADO', '', '', '', '', '2021-06-07 23:39:58', '2021-06-07 23:40:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativo_otros`
--

CREATE TABLE `administrativo_otros` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `administrativo_id` bigint(20) UNSIGNED NOT NULL,
  `institucion` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `turno` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zona` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cargo` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_horas` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `administrativo_otros`
--

INSERT INTO `administrativo_otros` (`id`, `administrativo_id`, `institucion`, `turno`, `zona`, `cargo`, `total_horas`, `created_at`, `updated_at`) VALUES
(1, 1, 'INSTITUCION', 'MAÑANA', 'ZONA', 'CARGO', 350, '2021-05-06 15:25:55', '2021-05-06 16:24:56'),
(2, 1, '', '', '', '', 0, '2021-05-06 15:25:55', '2021-05-06 16:24:56'),
(3, 1, '', '', '', '', 0, '2021-05-06 15:25:55', '2021-05-06 16:24:56'),
(4, 2, '', '', '', '', 0, '2021-05-06 15:27:26', '2022-03-28 18:37:51'),
(5, 2, '', '', '', '', 0, '2021-05-06 15:27:26', '2022-03-28 18:37:51'),
(6, 2, '', '', '', '', 0, '2021-05-06 15:27:26', '2022-03-28 18:37:51'),
(7, 3, 'INSTITUCION', 'MAÑANA', 'ZONA', 'CARGO', 350, '2021-05-06 16:36:55', '2021-05-06 16:36:55'),
(8, 3, '', '', '', '', 0, '2021-05-06 16:36:55', '2021-05-06 16:36:55'),
(9, 3, '', '', '', '', 0, '2021-05-06 16:36:56', '2021-05-06 16:36:56'),
(10, 4, '', '', '', '', 0, '2021-05-18 16:03:43', '2021-05-18 16:03:43'),
(11, 4, '', '', '', '', 0, '2021-05-18 16:03:43', '2021-05-18 16:03:43'),
(12, 4, '', '', '', '', 0, '2021-05-18 16:03:43', '2021-05-18 16:03:43'),
(13, 5, 'X', 'X', 'X', 'X', 0, '2021-06-07 23:39:58', '2021-06-07 23:40:22'),
(14, 5, '', '', '', '', 0, '2021-06-07 23:39:59', '2021-06-07 23:39:59'),
(15, 5, '', '', '', '', 0, '2021-06-07 23:39:59', '2021-06-07 23:39:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativo_trabajos`
--

CREATE TABLE `administrativo_trabajos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `administrativo_id` bigint(20) UNSIGNED NOT NULL,
  `institucion` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gestion` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cargo` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `administrativo_trabajos`
--

INSERT INTO `administrativo_trabajos` (`id`, `administrativo_id`, `institucion`, `gestion`, `cargo`, `created_at`, `updated_at`) VALUES
(1, 1, 'INSTITUCION', '2016,2017', 'CARGO', '2021-05-06 15:25:55', '2021-05-06 16:24:56'),
(2, 1, '', '', '', '2021-05-06 15:25:55', '2021-05-06 16:19:01'),
(3, 1, '', '', '', '2021-05-06 15:25:55', '2021-05-06 16:25:32'),
(4, 2, '', '', '', '2021-05-06 15:27:26', '2022-03-28 18:37:52'),
(5, 2, '', '', '', '2021-05-06 15:27:27', '2022-03-28 18:37:52'),
(6, 2, '', '', '', '2021-05-06 15:27:27', '2022-03-28 18:37:52'),
(7, 3, 'INSTITUCION', '2016,2017', 'CARGO', '2021-05-06 16:36:56', '2021-05-06 16:36:56'),
(8, 3, 'INSTITUCION', '2018,2019', 'CARGO 2', '2021-05-06 16:36:56', '2021-05-06 16:37:28'),
(9, 3, '', '', '', '2021-05-06 16:36:56', '2021-05-06 16:36:56'),
(10, 4, '', '', '', '2021-05-18 16:03:43', '2021-05-18 16:03:43'),
(11, 4, '', '', '', '2021-05-18 16:03:44', '2021-05-18 16:03:44'),
(12, 4, '', '', '', '2021-05-18 16:03:44', '2021-05-18 16:03:44'),
(13, 5, 'X', 'X', 'X', '2021-06-07 23:39:59', '2021-06-07 23:39:59'),
(14, 5, '', '', '', '2021-06-07 23:39:59', '2021-06-07 23:39:59'),
(15, 5, '', '', '', '2021-06-07 23:39:59', '2021-06-07 23:39:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campo_id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`id`, `campo_id`, `nombre`, `tipo`, `descripcion`, `created_at`, `updated_at`) VALUES
(2, 1, 'CIENCIAS NATURALES', 'HUMANÍSTICA', '', '2021-05-11 20:13:29', '2021-05-11 20:13:29'),
(3, 2, 'COMUNICACIÓN Y LENGUAJES, LENGUA ORIGINARIA, LENGUA EXTRANJERA', 'HUMANÍSTICA', '', '2021-05-11 20:13:54', '2021-05-11 20:13:54'),
(4, 2, 'COMUNICACIÓN Y LENGUAJES', 'HUMANÍSTICA', '', '2021-05-11 20:14:05', '2021-05-11 20:14:05'),
(5, 2, 'CIENCIAS SOCIALES', 'HUMANÍSTICA', '', '2021-05-11 20:14:10', '2021-05-11 20:14:10'),
(6, 2, 'EDUACIÓN FÍSICA Y DEPORTES', 'HUMANÍSTICA', '', '2021-05-11 20:14:18', '2021-05-11 20:14:18'),
(7, 2, 'EDUCACIÓN MUSICAL', 'HUMANÍSTICA', '', '2021-05-11 20:14:27', '2021-05-11 20:14:27'),
(8, 2, 'ARTES PLÁSTICAS Y VISUALES', 'HUMANÍSTICA', '', '2021-05-11 20:14:36', '2021-05-11 20:14:36'),
(9, 3, 'COSMOVISIÓN-FILOSOFÍA-PSICOLOGÍA', 'HUMANÍSTICA', '', '2021-05-11 20:14:44', '2021-05-11 20:16:48'),
(10, 3, 'VALORES ESPIRITUALES RELIGIONES', 'HUMANÍSTICA', '', '2021-05-11 20:14:58', '2021-05-11 20:16:59'),
(11, 4, 'MATEMÁTICA', 'HUMANÍSTICA', '', '2021-05-11 20:15:11', '2021-05-11 20:17:08'),
(12, 4, 'TÉCNICA TECNOLÓGICA', 'HUMANÍSTICA', '', '2021-05-11 20:17:16', '2021-05-11 20:17:16'),
(15, 4, 'TÉCNICA TECNOLÓGICA', 'TÉCNICA TECNOLÓGICA', '', '2021-05-21 21:55:12', '2021-05-21 21:55:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacions`
--

CREATE TABLE `calificacions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inscripcion_id` bigint(20) UNSIGNED NOT NULL,
  `materia_id` bigint(20) UNSIGNED NOT NULL,
  `nota_final` double(8,2) NOT NULL,
  `estado` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_registro` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `calificacions`
--

INSERT INTO `calificacions` (`id`, `inscripcion_id`, `materia_id`, `nota_final`, `estado`, `fecha_registro`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 6.00, 'REPROBADO', '2023-03-17', '2023-03-17 15:44:37', '2023-03-20 14:52:32'),
(2, 1, 5, 0.00, 'REPROBADO', '2023-03-17', '2023-03-17 15:44:37', '2023-03-17 15:44:37'),
(3, 1, 7, 0.00, 'REPROBADO', '2023-03-17', '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(4, 1, 9, 0.00, 'REPROBADO', '2023-03-17', '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(5, 2, 3, 5.00, 'REPROBADO', '2023-03-20', '2023-03-20 14:51:18', '2023-03-20 14:52:33'),
(6, 2, 5, 0.00, 'REPROBADO', '2023-03-20', '2023-03-20 14:51:18', '2023-03-20 14:51:18'),
(7, 2, 7, 0.00, 'REPROBADO', '2023-03-20', '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(8, 2, 9, 0.00, 'REPROBADO', '2023-03-20', '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(9, 3, 3, 0.00, 'REPROBADO', '2023-03-20', '2023-03-20 17:25:37', '2023-03-20 17:25:37'),
(10, 3, 5, 0.00, 'REPROBADO', '2023-03-20', '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(11, 3, 7, 0.00, 'REPROBADO', '2023-03-20', '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(12, 3, 9, 0.00, 'REPROBADO', '2023-03-20', '2023-03-20 17:25:39', '2023-03-20 17:25:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion_trimestres`
--

CREATE TABLE `calificacion_trimestres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `calificacion_id` bigint(20) UNSIGNED NOT NULL,
  `trimestre` int(11) NOT NULL,
  `promedio_final` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `calificacion_trimestres`
--

INSERT INTO `calificacion_trimestres` (`id`, `calificacion_id`, `trimestre`, `promedio_final`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 18.00, '2021-05-17 16:31:21', '2023-03-20 14:52:31'),
(2, 1, 2, 0.00, '2021-05-17 16:31:22', '2021-05-17 16:31:22'),
(3, 1, 3, 0.00, '2021-05-17 16:31:22', '2021-05-17 16:31:22'),
(4, 2, 1, 0.00, '2021-05-17 16:32:10', '2021-05-17 16:32:10'),
(5, 2, 2, 0.00, '2021-05-17 16:32:10', '2021-05-17 16:32:10'),
(6, 2, 3, 0.00, '2021-05-17 16:32:10', '2021-05-17 16:32:10'),
(7, 3, 1, 25.00, '2021-05-17 16:32:11', '2021-05-18 16:23:02'),
(8, 3, 2, 0.00, '2021-05-17 16:32:11', '2021-05-17 16:32:11'),
(9, 3, 3, 0.00, '2021-05-17 16:32:11', '2021-05-17 16:32:11'),
(10, 4, 1, 0.00, '2021-05-17 16:32:19', '2021-05-17 16:32:19'),
(11, 4, 2, 0.00, '2021-05-17 16:32:19', '2021-05-17 16:32:19'),
(12, 4, 3, 0.00, '2021-05-17 16:32:20', '2021-05-17 16:32:20'),
(13, 5, 1, 15.00, '2021-05-17 16:32:20', '2023-03-20 14:52:33'),
(14, 5, 2, 0.00, '2021-05-17 16:32:20', '2021-05-17 16:32:20'),
(15, 5, 3, 0.00, '2021-05-17 16:32:20', '2021-05-17 16:32:20'),
(16, 6, 1, 0.00, '2021-06-08 00:18:06', '2021-06-08 00:18:06'),
(17, 6, 2, 0.00, '2021-06-08 00:18:06', '2021-06-08 00:18:06'),
(18, 6, 3, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(19, 7, 1, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(20, 7, 2, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(21, 7, 3, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(22, 8, 1, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(23, 8, 2, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(24, 8, 3, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(25, 9, 1, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(26, 9, 2, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(27, 9, 3, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(28, 1, 1, 0.00, '2023-03-17 15:44:37', '2023-03-17 15:44:37'),
(29, 1, 2, 0.00, '2023-03-17 15:44:37', '2023-03-17 15:44:37'),
(30, 1, 3, 0.00, '2023-03-17 15:44:37', '2023-03-17 15:44:37'),
(31, 2, 1, 0.00, '2023-03-17 15:44:37', '2023-03-17 15:44:37'),
(32, 2, 2, 0.00, '2023-03-17 15:44:37', '2023-03-17 15:44:37'),
(33, 2, 3, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(34, 3, 1, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(35, 3, 2, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(36, 3, 3, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(37, 4, 1, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(38, 4, 2, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(39, 4, 3, 0.00, '2023-03-17 15:44:39', '2023-03-17 15:44:39'),
(40, 5, 1, 0.00, '2023-03-20 14:51:18', '2023-03-20 14:51:18'),
(41, 5, 2, 0.00, '2023-03-20 14:51:18', '2023-03-20 14:51:18'),
(42, 5, 3, 0.00, '2023-03-20 14:51:18', '2023-03-20 14:51:18'),
(43, 6, 1, 0.00, '2023-03-20 14:51:18', '2023-03-20 14:51:18'),
(44, 6, 2, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(45, 6, 3, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(46, 7, 1, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(47, 7, 2, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(48, 7, 3, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(49, 8, 1, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(50, 8, 2, 0.00, '2023-03-20 14:51:20', '2023-03-20 14:51:20'),
(51, 8, 3, 0.00, '2023-03-20 14:51:20', '2023-03-20 14:51:20'),
(52, 9, 1, 0.00, '2023-03-20 17:25:37', '2023-03-20 17:25:37'),
(53, 9, 2, 0.00, '2023-03-20 17:25:37', '2023-03-20 17:25:37'),
(54, 9, 3, 0.00, '2023-03-20 17:25:37', '2023-03-20 17:25:37'),
(55, 10, 1, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(56, 10, 2, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(57, 10, 3, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(58, 11, 1, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(59, 11, 2, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(60, 11, 3, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(61, 12, 1, 0.00, '2023-03-20 17:25:39', '2023-03-20 17:25:39'),
(62, 12, 2, 0.00, '2023-03-20 17:25:39', '2023-03-20 17:25:39'),
(63, 12, 3, 0.00, '2023-03-20 17:25:39', '2023-03-20 17:25:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campos`
--

CREATE TABLE `campos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `campos`
--

INSERT INTO `campos` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'VIDA TIERRA Y TERRITORIO', '', '2021-05-11 20:06:54', '2021-05-11 20:06:54'),
(2, 'COMUNIDAD Y SOCIEDAD', '', '2021-05-11 20:09:37', '2021-05-11 20:09:37'),
(3, 'COSMOS Y PENSAMIENTO', '', '2021-05-11 20:09:42', '2021-05-11 20:09:42'),
(4, 'CIENCIA TECNOLOGÍA Y PRODUCCIÓN', '', '2021-05-11 20:09:56', '2021-05-11 20:09:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat_desempenos`
--

CREATE TABLE `chat_desempenos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `desempeno_id` bigint(20) UNSIGNED NOT NULL,
  `emisor_id` bigint(20) UNSIGNED NOT NULL,
  `receptor_id` bigint(20) UNSIGNED NOT NULL,
  `mensaje` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `visto` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `chat_desempenos`
--

INSERT INTO `chat_desempenos` (`id`, `desempeno_id`, `emisor_id`, `receptor_id`, `mensaje`, `visto`, `created_at`, `updated_at`) VALUES
(31, 6, 37, 7, 'Mensaje desde tutor', 1, '2023-03-21 15:32:20', '2023-03-21 15:53:56'),
(32, 6, 7, 37, 'Mensaje desde profesor', 1, '2023-03-21 15:32:26', '2023-03-21 15:54:58'),
(33, 7, 37, 7, 'Mensaje de prueba', 1, '2023-03-21 15:38:55', '2023-03-21 15:53:56'),
(34, 6, 7, 37, 'mensaje de prueba', 1, '2023-03-21 15:44:01', '2023-03-21 15:54:58'),
(35, 7, 37, 7, 'prueba mensje', 1, '2023-03-21 15:45:25', '2023-03-21 15:53:56'),
(36, 7, 37, 7, 'otro mensaje', 1, '2023-03-21 15:46:09', '2023-03-21 15:53:56'),
(37, 7, 37, 7, 'mas mensajes', 1, '2023-03-21 15:47:04', '2023-03-21 15:53:56'),
(38, 7, 37, 7, 'otro mensaje', 1, '2023-03-21 15:47:48', '2023-03-21 15:53:56'),
(39, 6, 7, 37, 'prueba mensaje', 1, '2023-03-21 15:48:36', '2023-03-21 15:54:58'),
(40, 7, 37, 7, 'mas pruebas', 1, '2023-03-21 15:51:58', '2023-03-21 15:53:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desempeno_estudiantes`
--

CREATE TABLE `desempeno_estudiantes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inscripcion_id` bigint(20) UNSIGNED NOT NULL,
  `materia_id` bigint(20) UNSIGNED NOT NULL,
  `estudiante_id` bigint(20) UNSIGNED NOT NULL,
  `desempeno` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `valoracion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `observacion` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `materia_profesor` bigint(20) UNSIGNED NOT NULL,
  `fecha_registro` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `desempeno_estudiantes`
--

INSERT INTO `desempeno_estudiantes` (`id`, `inscripcion_id`, `materia_id`, `estudiante_id`, `desempeno`, `valoracion`, `fecha`, `observacion`, `user_id`, `materia_profesor`, `fecha_registro`, `created_at`, `updated_at`) VALUES
(5, 1, 3, 1, 'PRUEBA DESEMPENO', 'BUENA', '2023-03-17', '', 4, 17, '2023-03-17', '2023-03-17 16:16:38', '2023-03-17 16:17:29'),
(6, 3, 7, 3, 'PRUEBA DESEMPEÑO CON NOTIFICACION', 'EXCELENTE', '2023-03-21', '', 7, 21, '2023-03-21', '2023-03-21 14:55:42', '2023-03-21 14:55:42'),
(7, 3, 9, 3, 'OTRA PRUEBA', 'BUENA', '2023-03-21', '', 7, 22, '2023-03-21', '2023-03-21 15:02:27', '2023-03-21 15:02:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desempeno_notificacions`
--

CREATE TABLE `desempeno_notificacions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `desempeno_id` bigint(20) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `desempeno` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `valoracion` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `visto` int(11) NOT NULL,
  `fecha_registro` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `desempeno_notificacions`
--

INSERT INTO `desempeno_notificacions` (`id`, `desempeno_id`, `fecha`, `hora`, `desempeno`, `valoracion`, `user_id`, `visto`, `fecha_registro`, `created_at`, `updated_at`) VALUES
(9, 5, '2023-03-17', '12:16:00', 'PRUEBA DESEMPENO', 'BUENA', 30, 0, '2023-03-17', '2023-03-17 16:16:38', '2023-03-17 16:17:29'),
(10, 5, '2023-03-17', '12:16:00', 'PRUEBA DESEMPENO', 'BUENA', 31, 0, '2023-03-17', '2023-03-17 16:16:38', '2023-03-17 16:17:29'),
(11, 6, '2023-03-21', '10:55:00', 'PRUEBA DESEMPEÑO CON NOTIFICACION', 'EXCELENTE', 26, 1, '2023-03-21', '2023-03-21 14:55:42', '2023-03-21 15:28:45'),
(12, 6, '2023-03-21', '10:55:00', 'PRUEBA DESEMPEÑO CON NOTIFICACION', 'EXCELENTE', 28, 0, '2023-03-21', '2023-03-21 14:55:42', '2023-03-21 14:55:42'),
(13, 7, '2023-03-21', '11:02:00', 'OTRA PRUEBA', 'BUENA', 26, 1, '2023-03-21', '2023-03-21 15:02:27', '2023-03-21 15:28:45'),
(14, 7, '2023-03-21', '11:02:00', 'OTRA PRUEBA', 'BUENA', 28, 0, '2023-03-21', '2023-03-21 15:02:27', '2023-03-21 15:02:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paterno` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materno` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_doc` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nro_doc` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ci_exp` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pais_nac` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dpto_nac` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provincia_nac` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `localidad_nac` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_nac` date NOT NULL,
  `sexo` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oficialia` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `libro` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `partida` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folio` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ue_procedencia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo_sie_ue` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provincia_dir` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zona_dir` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipio_dir` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avenida_dir` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `localidad_dir` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fono_dir` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nro_dir` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idioma_niniez` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idiomas_estudiante` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pueblo_nacion` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pueblo_nacion_otro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `centro_salud` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `veces_centro_salud` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discapacidad` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discapacidad_otro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_discapacidad` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agua` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `energia_electrica` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banio` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actividad` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dias_trabajo` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recibio_pago` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internet` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frecuencia_internet` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `llega` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `llega_otro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_llega` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ci_padre_tutor` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_padre_tutor` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apm_padre_tutor` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom_padre_tutor` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_tutor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `idioma_padre_tutor` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ocupacion_padre_tutor` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grado_padre_tutor` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentezco_padre_tutor` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ci_madre` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_madre` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apm_madre` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nom_madre` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_madre_id` bigint(20) UNSIGNED DEFAULT NULL,
  `idioma_madre` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ocupacion_madre` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grado_madre` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lugar` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_registro` date NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id`, `nombre`, `paterno`, `materno`, `tipo_doc`, `nro_doc`, `ci_exp`, `pais_nac`, `dpto_nac`, `provincia_nac`, `localidad_nac`, `fecha_nac`, `sexo`, `oficialia`, `libro`, `partida`, `folio`, `ue_procedencia`, `codigo_sie_ue`, `provincia_dir`, `zona_dir`, `municipio_dir`, `avenida_dir`, `localidad_dir`, `fono_dir`, `nro_dir`, `idioma_niniez`, `idiomas_estudiante`, `pueblo_nacion`, `pueblo_nacion_otro`, `centro_salud`, `veces_centro_salud`, `discapacidad`, `discapacidad_otro`, `desc_discapacidad`, `agua`, `energia_electrica`, `banio`, `actividad`, `dias_trabajo`, `recibio_pago`, `internet`, `frecuencia_internet`, `llega`, `llega_otro`, `desc_llega`, `ci_padre_tutor`, `app_padre_tutor`, `apm_padre_tutor`, `nom_padre_tutor`, `user_tutor_id`, `idioma_padre_tutor`, `ocupacion_padre_tutor`, `grado_padre_tutor`, `parentezco_padre_tutor`, `ci_madre`, `app_madre`, `apm_madre`, `nom_madre`, `user_madre_id`, `idioma_madre`, `ocupacion_madre`, `grado_madre`, `lugar`, `foto`, `fecha_registro`, `user_id`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'FELIPE', 'VALLEJOS', 'MARTINEZ', 'CI', '741258', 'LP', 'BOLIVIA', 'LA PAZ', 'MURILLO', 'LA PAZ', '2000-01-01', 'M', '123', '123', '123', '123', '', '', 'MURILLO', 'ZONA LOS OLIVOS', 'LA PAZ', 'CALLE 3', 'LA PAZ', '78945612', '12', 'ESPAÑOL', 'ESPAÑOL', 'NO PERTENECE', '', 'SI', 'NINGUNA', 'OTRO', 'SDFSD', '', 'CAÑERÍA DE RED', 'SI', 'ALCANTARILLADO', 'NO TRABAJÓ', '', '', 'SU DOMICILIO', 'DIARIAMENTE', 'EN VEHÍCULO DE TRANSPORTE TERRESTRE', '', 'MENOS DE MEDIA HORA', '78946512', 'VALLEJOS', '', 'JORGE', 43, 'ESPAÑOL', 'OCUPACION LABORAL', 'GRADO ALCANZADO', 'PADRE', '78945612', 'MARTINEZ', '', 'MARIA', 44, 'ESPAÑOL', 'OCUPACION LABORAL', 'GRADO ALCANZADO', '', 'FELIPE1659976549.png', '2021-05-11', 5, 1, '2021-05-11 16:44:14', '2023-03-21 15:31:11'),
(2, 'MARTHA', 'SUAREZ', 'MAMANI', 'CI', '963258', 'LP', 'BOLIVIA', 'LA PAZ', 'MURILLO', 'LA PAZ', '2000-01-01', 'F', '1234', '1234', '1234', '44123', '', '', 'MURILLO', 'ZONA LOS OLIVOS', 'LA PAZ', 'CALLE 3', 'LA PAZ', '78945612', '12', 'ESPAÑOL', 'ESPAÑOL', 'NO PERTENECE', '', 'SI', '1 A 2 VECES', '', '', '', 'CAÑERÍA DE RED', 'SI', 'ALCANTARILLADO', 'NO TRABAJÓ', '', '', 'SU DOMICILIO', 'DIARIAMENTE', 'EN VEHÍCULO DE TRANSPORTE TERRESTRE', '', 'ENTRE MEDIA HORA Y UNA HORA', '78946512', 'SUAREZ', '', 'MARCOS', 42, 'ESPAÑOL', 'OCUPACION LABORAL', 'GRADO ALCANZADO', 'PADRE', '', '', '', '', NULL, '', '', '', '', 'MARTHA1659976537.png', '2021-05-11', 6, 1, '2021-05-11 19:46:12', '2023-03-21 15:31:07'),
(3, 'ELVIS', 'HUANCA', '', 'CI', '753214', 'LP', 'BOLIVIA', 'LA PAZ', 'MURILLO', 'LA PAZ', '2001-01-01', 'M', '123', '123', '123', '123', '', '', 'MURILLO', 'ZONA LOS OLIVOS', 'LA PAZ', 'CALLE 3', 'LA PAZ', '78945612', '12', 'ESPAÑOL', 'ESPAÑOL', 'NO PERTENECE', '', 'SI', '6 O MÁS VECES', '', '', '', 'CAÑERÍA DE RED', 'SI', 'ALCANTARILLADO', 'TRABAJÓ EN AGRICULTURA O AGROINDUSTRIA', '', '', 'SU DOMICILIO', 'DIARIAMENTE', 'A PIE', '', 'MENOS DE MEDIA HORA', '88888', 'HUANCA', '', 'JORGE', 36, 'ESPAÑOL', 'OCUPACION LABORAL', 'GRADO ALCANZADO', '', '77777', 'SALAS', '', 'MARIA', 37, '', '', '', '', 'EH5000031678208110.png', '2021-05-17', 9, 1, '2021-05-17 15:24:47', '2023-03-21 15:30:57'),
(4, 'CHOQUE', 'MARTIN', 'CHOQUE', 'CI', '3333', 'LP', 'BOLIVIA', 'LA PAZ', 'MURILLO', 'LA PAZ', '2002-01-01', 'M', '123', '123', '123', '123', '', '', 'MURILLO', 'ZONA LOS OLIVOS', 'LA PAZ', 'CALLE 3', 'LA PAZ', '78945612', '12', 'ESPAÑOL', 'ESPAÑOL', 'NO PERTENECE', '', 'SI', '1 A 2 VECES', '', '', '', 'CAÑERÍA DE RED', 'SI', 'ALCANTARILLADO', 'NO TRABAJÓ', '', '', 'SU DOMICILIO', 'DIARIAMENTE', 'A PIE', '', 'ENTRE MEDIA HORA Y UNA HORA', '78946512', 'VALLEJOS', '', 'CHOQUE', 38, 'ESPAÑOL', 'OCUPACION LABORAL', 'GRADO ALCANZADO', '', '78945612', 'CHOQUE', '', 'MARIA', 39, 'ESPAÑOL', 'OCUPACION LABORAL', 'GRADO ALCANZADO', '', 'CHOQUE1659976507.png', '2021-05-18', 12, 1, '2021-05-18 16:06:04', '2023-03-21 15:31:01'),
(5, 'FLORES', 'MARYSOL', 'CALLE', 'CI', '405060', 'LP', 'BOLIVIA', 'LA PAZ', 'MURILLO', 'LA PAZ', '2009-06-10', 'F', '2121', '22121', '2121', '5454', 'SAN AGUSTÍN', '45154', 'MURILLO', 'ZONA CENTRAL', 'LA PAZ', 'CALLE 2', 'LA PAZ', '2885585', '6526', 'X', 'X', 'GUARANÍ', 'X', 'SI', '1 A 2 VECES', '', 'X', '', 'CAÑERÍA DE RED', 'SI', 'ALCANTARILLADO', 'AYUDÓ EN EL HOGAR EN LABORES DOMÉSTICAS, COMERCIO O VENTAS', '3', 'SI', 'SU DOMICILIO', 'DIARIAMENTE', 'A PIE', 'X', 'ENTRE MEDIA HORA Y UNA HORA', 'CARLOS', 'CALLE', '', 'VARGAS', 40, 'X', 'X', 'X', 'X', 'NELLY', 'FLORES', '', 'TAPIA', 41, 'X', 'X', 'X', '', 'FLORES1659976522.png', '2021-06-07', 14, 1, '2021-06-07 23:58:10', '2023-03-21 15:31:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcions`
--

CREATE TABLE `inscripcions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `estudiante_id` bigint(20) UNSIGNED NOT NULL,
  `nivel` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grado` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paralelo_id` bigint(20) UNSIGNED NOT NULL,
  `turno` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gestion` int(11) NOT NULL,
  `estado` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `fecha_registro` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `inscripcions`
--

INSERT INTO `inscripcions` (`id`, `estudiante_id`, `nivel`, `grado`, `paralelo_id`, `turno`, `gestion`, `estado`, `status`, `fecha_registro`, `created_at`, `updated_at`) VALUES
(1, 1, 'SECUNDARIA', '1', 3, 'MAÑANA', 2023, 'REPROBADO', 1, '2023-03-17', '2023-03-17 15:44:37', '2023-03-17 15:44:37'),
(2, 2, 'SECUNDARIA', '1', 3, 'MAÑANA', 2023, 'REPROBADO', 1, '2023-03-20', '2023-03-20 14:51:18', '2023-03-20 14:51:18'),
(3, 3, 'SECUNDARIA', '2', 3, 'MAÑANA', 2023, 'REPROBADO', 1, '2023-03-20', '2023-03-20 17:25:37', '2023-03-20 17:25:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `area_id` bigint(20) UNSIGNED NOT NULL,
  `codigo` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nivel` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_registro` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `area_id`, `codigo`, `nivel`, `nombre`, `fecha_registro`, `created_at`, `updated_at`) VALUES
(2, 2, 'M001', 'PRIMARIA', 'CIENCIAS NATURALES', '2021-05-12', '2021-05-12 13:44:29', '2021-05-12 13:44:29'),
(3, 2, 'M002', 'SECUNDARIA', 'BIOLOGÍA, GEOGRAFÍA', '2021-05-12', '2021-05-12 13:45:18', '2021-05-12 13:45:18'),
(5, 2, 'M003', 'SECUNDARIA', 'FÍSICA - QUÍMICA', '2021-05-12', '2021-05-12 13:46:10', '2021-05-12 13:46:10'),
(6, 3, 'CS001', 'PRIMARIA', 'COMUNICACIÓN Y LENGUAJES, LENGUA ORIGINARIA, LENGUA EXTRANJERA', '2021-05-12', '2021-05-12 13:48:16', '2021-05-12 13:48:16'),
(7, 3, 'CS002', 'SECUNDARIA', 'LENGUAS CASTELLANA Y ORIGINARIA', '2021-05-12', '2021-05-12 13:48:48', '2021-05-12 13:48:48'),
(8, 2, 'I001', 'NIVEL INICIAL', 'MATERIA INICIAL', '2021-05-14', '2021-05-14 16:04:20', '2021-05-14 16:04:20'),
(9, 15, 'TT001', 'SECUNDARIA', 'GENERAL', '2021-05-21', '2021-05-21 21:56:19', '2021-05-21 21:56:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia_grados`
--

CREATE TABLE `materia_grados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `materia_id` bigint(20) UNSIGNED NOT NULL,
  `grado` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `horas` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `materia_grados`
--

INSERT INTO `materia_grados` (`id`, `materia_id`, `grado`, `horas`, `created_at`, `updated_at`) VALUES
(1, 2, '1', 8, '2021-05-12 13:44:29', '2021-05-12 13:44:29'),
(2, 2, '2', 8, '2021-05-12 13:44:29', '2021-05-12 13:44:29'),
(3, 2, '3', 8, '2021-05-12 13:44:29', '2021-05-12 13:44:29'),
(4, 2, '4', 8, '2021-05-12 13:44:29', '2021-05-12 13:44:29'),
(5, 2, '5', 8, '2021-05-12 13:44:29', '2021-05-12 13:44:29'),
(6, 2, '6', 8, '2021-05-12 13:44:29', '2021-05-12 13:44:29'),
(7, 3, '1', 16, '2021-05-12 13:45:18', '2021-05-12 13:45:18'),
(8, 3, '2', 16, '2021-05-12 13:45:18', '2021-05-12 13:45:18'),
(9, 3, '3', 16, '2021-05-12 13:45:18', '2021-05-12 13:45:18'),
(10, 3, '4', 16, '2021-05-12 13:45:18', '2021-05-12 13:45:18'),
(11, 3, '5', 16, '2021-05-12 13:45:18', '2021-05-12 13:45:18'),
(12, 3, '6', 16, '2021-05-12 13:45:18', '2021-05-12 13:45:18'),
(13, 5, '1', NULL, '2021-05-12 13:46:11', '2021-05-12 13:46:11'),
(14, 5, '2', NULL, '2021-05-12 13:46:11', '2021-05-12 13:46:11'),
(15, 5, '3', 12, '2021-05-12 13:46:11', '2021-05-12 13:46:11'),
(16, 5, '4', 12, '2021-05-12 13:46:11', '2021-05-12 13:46:11'),
(17, 5, '5', 12, '2021-05-12 13:46:11', '2021-05-12 13:46:11'),
(18, 5, '6', 12, '2021-05-12 13:46:11', '2021-05-12 13:46:11'),
(19, 6, '1', 44, '2021-05-12 13:48:16', '2021-05-12 13:48:16'),
(20, 6, '2', 44, '2021-05-12 13:48:16', '2021-05-12 13:48:16'),
(21, 6, '3', 36, '2021-05-12 13:48:16', '2021-05-12 13:48:16'),
(22, 6, '4', 36, '2021-05-12 13:48:16', '2021-05-12 13:48:16'),
(23, 6, '5', 36, '2021-05-12 13:48:16', '2021-05-12 13:48:16'),
(24, 6, '6', 36, '2021-05-12 13:48:16', '2021-05-12 13:48:16'),
(25, 7, '1', 24, '2021-05-12 13:48:48', '2021-05-12 13:48:48'),
(26, 7, '2', 24, '2021-05-12 13:48:48', '2021-05-12 13:48:48'),
(27, 7, '3', 24, '2021-05-12 13:48:48', '2021-05-12 13:48:48'),
(28, 7, '4', 16, '2021-05-12 13:48:48', '2021-05-12 13:48:48'),
(29, 7, '5', 12, '2021-05-12 13:48:49', '2021-05-12 13:48:49'),
(30, 7, '6', 12, '2021-05-12 13:48:49', '2021-05-12 13:48:49'),
(31, 8, '1', 8, '2021-05-14 16:04:20', '2021-05-14 16:04:20'),
(32, 8, '2', 8, '2021-05-14 16:04:20', '2021-05-21 21:39:03'),
(33, 9, '1', 16, '2021-05-21 21:56:19', '2021-05-21 21:56:19'),
(34, 9, '2', 16, '2021-05-21 21:56:19', '2021-05-21 21:56:19'),
(35, 9, '3', 32, '2021-05-21 21:56:19', '2021-05-21 21:56:19'),
(36, 9, '4', 32, '2021-05-21 21:56:19', '2021-05-21 21:56:19'),
(37, 9, '5', NULL, '2021-05-21 21:56:19', '2021-05-21 21:56:19'),
(38, 9, '6', NULL, '2021-05-21 21:56:19', '2021-05-21 21:56:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2020_11_11_164550_create_razon_socials_table', 1),
(3, '2021_05_04_143314_create_administrativos_table', 1),
(4, '2021_05_04_144139_create_administrativo_estudios_table', 1),
(5, '2021_05_04_144242_create_administrativo_cursos_table', 1),
(6, '2021_05_04_144506_create_administrativo_otros_table', 1),
(7, '2021_05_04_144521_create_administrativo_trabajos_table', 1),
(8, '2021_05_04_144745_create_estudiantes_table', 1),
(9, '2021_05_04_150524_create_profesors_table', 1),
(10, '2021_05_04_150557_create_profesor_estudios_table', 1),
(11, '2021_05_04_150606_create_profesor_cursos_table', 1),
(12, '2021_05_04_150622_create_profesor_otros_table', 1),
(13, '2021_05_04_150630_create_profesor_trabajos_table', 1),
(14, '2021_05_04_150746_create_campos_table', 1),
(15, '2021_05_04_150747_create_areas_table', 1),
(16, '2021_05_04_150932_create_nivels_table', 1),
(17, '2021_05_04_150933_create_grados_table', 1),
(18, '2021_05_04_150934_create_materias_table', 1),
(19, '2021_05_04_151547_create_paralelos_table', 1),
(20, '2021_05_04_151548_create_inscripcions_table', 1),
(21, '2021_05_04_152300_create_profesor_materias_table', 1),
(22, '2021_05_04_152630_create_plan_pagos_table', 1),
(23, '2021_05_04_152853_create_pago_estudiantes_table', 1),
(24, '2021_05_04_153906_create_calificacions_table', 1),
(25, '2021_05_04_154111_create_asistencias_table', 1),
(26, '2021_05_12_092612_create_materia_grados_table', 2),
(27, '2021_05_13_200001_create_inscripcion_materias_table', 3),
(28, '2021_05_13_200839_create_inscripcion_materia_trimestres_table', 4),
(29, '2021_05_13_201057_create_trimestre_actividads_table', 5),
(30, '2021_05_13_200838_create_calificacion_trimestres_table', 6),
(31, '2023_03_06_114351_create_actividad_profesors_table', 7),
(32, '2023_03_06_114515_create_desempeno_estudiantes_table', 8),
(33, '2023_03_06_114554_create_desempeno_notificacions_table', 9),
(34, '2023_03_17_150019_create_chat_desempenos_table', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paralelos`
--

CREATE TABLE `paralelos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paralelo` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `paralelos`
--

INSERT INTO `paralelos` (`id`, `paralelo`, `descripcion`, `created_at`, `updated_at`) VALUES
(3, 'A', '', '2021-05-12 15:14:16', '2021-05-14 12:57:28'),
(4, 'B', '', '2021-05-12 15:14:22', '2021-05-14 12:58:00'),
(5, 'C', '', '2021-05-12 15:14:26', '2021-05-14 12:58:03'),
(6, 'D', '', '2021-05-12 15:14:31', '2021-05-14 12:58:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesors`
--

CREATE TABLE `profesors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paterno` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materno` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ci` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ci_exp` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lugar_nac` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_nac` date NOT NULL,
  `edad` int(11) NOT NULL,
  `sexo` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado_civil` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zona` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avenida` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nro` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fono` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cel` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nro_rda` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `afp` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nua` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_fiscal` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nro_seguro_social` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caja_seguro_social` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titulado` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gestiones_trabajo` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cargo` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mes` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observaciones` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_registro` date NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `profesors`
--

INSERT INTO `profesors` (`id`, `nombre`, `paterno`, `materno`, `ci`, `ci_exp`, `lugar_nac`, `fecha_nac`, `edad`, `sexo`, `estado_civil`, `zona`, `avenida`, `nro`, `fono`, `cel`, `email`, `nro_rda`, `afp`, `nua`, `item_fiscal`, `nro_seguro_social`, `caja_seguro_social`, `titulado`, `gestiones_trabajo`, `cargo`, `mes`, `observaciones`, `foto`, `fecha_registro`, `user_id`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'JAIME', 'ALARCON', 'MARTINEZ', '789456', 'LP', 'PROVINCIA MURILLO', '1990-01-01', 31, 'M', 'SOLTERO', 'ZONA LOS OLIVOS', 'AV. SUCRE', '123', '2314567', '78945612', 'JAIMEALARCON@GMAIL.COM', '123', '123', '123', '123', '123', 'CAJA DE SEGURO SOCIAL', '4TA FASE', '', '', '', '', 'user_default.png', '2022-03-28', 4, 1, '2021-05-06 20:05:54', '2022-03-28 18:43:58'),
(2, 'GEOVANA', 'PEREZ', 'CORTEZ', '1236987', 'LP', 'PROVINCIA MURILLO', '1993-01-01', 28, 'F', 'SOLTERO', 'ZONA LOS OLIVOS', 'AV. SUCRE', '123', '2314567', '78945612', 'GEOVANAPEREZ@GMAIL.COM', '123', '123', '123', '123', '123', 'CAJA DE SEGURO SOCIAL', '4TA FASE', '', '', '', '', 'user_default.png', '2022-03-28', 7, 1, '2021-05-14 16:02:50', '2022-03-28 18:44:22'),
(3, 'MARTHA', 'GONZALES', 'QUISPE', '741233', 'LP', 'PROVINCIA MURILLO', '1990-01-01', 31, 'F', 'SOLTERO', 'ZONA LOS OLIVOS', 'AV. SUCRE', '123', '2314567', '78945612', 'MARTHAGONZALES@GMAIL.COM', '123', '123', '123', '123', '123', 'CAJA DE SEGURO SOCIAL', '4TA FASE', '', '', '', '', 'user_default.png', '2022-03-28', 8, 1, '2021-05-17 15:21:21', '2022-03-28 18:44:43'),
(4, 'GRACIELA', 'GOMEZ', 'PAREDES', '22222', 'LP', 'PROVINCIA MURILLO', '1990-01-01', 31, 'F', 'SOLTERO', 'ZONA LOS OLIVOS', 'AV. SUCRE', '123', '2314567', '78945612', 'GRACIELAGOMEZ@GMAIL.COM', '123', '123', '123', '123', '123', 'CAJA DE SEGURO SOCIAL', '1RA FASE', '', '', '', '', 'user_default.png', '2022-03-28', 11, 1, '2021-05-18 16:04:31', '2022-03-28 18:45:06'),
(5, 'DANIEL', 'CORDOVA', 'VALLEJOS', '708090', 'LP', 'LA PAZ', '1982-06-07', 45, 'M', 'CASADO', 'ZONA CENTRAL CALLE 2', 'AVENIDA CENTRAL', '525', '2885656', '76588587', 'DANICORVALLEJOS@GMAIL.COM', '5854353', '345345', '34545', '4534', '345345', '345346', '3RA FASE', 'XA', 'XA', 'XA', 'XA', 'user_default.png', '2021-06-07', 15, 1, '2021-06-08 00:02:30', '2021-06-08 00:05:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_cursos`
--

CREATE TABLE `profesor_cursos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profesor_id` bigint(20) UNSIGNED NOT NULL,
  `nominacion` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institucion` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duracion` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `profesor_cursos`
--

INSERT INTO `profesor_cursos` (`id`, `profesor_id`, `nominacion`, `institucion`, `duracion`, `fecha`, `created_at`, `updated_at`) VALUES
(1, 1, '', '', '', '0000-00-00', '2021-05-06 20:05:54', '2022-03-28 18:43:58'),
(2, 1, '', '', '', '0000-00-00', '2021-05-06 20:05:54', '2022-03-28 18:43:58'),
(3, 1, '', '', '', '0000-00-00', '2021-05-06 20:05:54', '2022-03-28 18:43:58'),
(4, 2, '', '', '', '0000-00-00', '2021-05-14 16:02:50', '2022-03-28 18:44:22'),
(5, 2, '', '', '', '0000-00-00', '2021-05-14 16:02:50', '2022-03-28 18:44:22'),
(6, 2, '', '', '', '0000-00-00', '2021-05-14 16:02:50', '2022-03-28 18:44:22'),
(7, 3, '', '', '', '0000-00-00', '2021-05-17 15:21:21', '2022-03-28 18:44:43'),
(8, 3, '', '', '', '0000-00-00', '2021-05-17 15:21:21', '2022-03-28 18:44:43'),
(9, 3, '', '', '', '0000-00-00', '2021-05-17 15:21:22', '2022-03-28 18:44:43'),
(10, 4, '', '', '', '0000-00-00', '2021-05-18 16:04:32', '2022-03-28 18:45:07'),
(11, 4, '', '', '', '0000-00-00', '2021-05-18 16:04:32', '2022-03-28 18:45:07'),
(12, 4, '', '', '', '0000-00-00', '2021-05-18 16:04:32', '2022-03-28 18:45:07'),
(13, 5, 'X', 'X', 'X', '2021-06-09', '2021-06-08 00:02:31', '2021-06-08 00:02:31'),
(14, 5, 'A', 'A', 'A', '2021-06-09', '2021-06-08 00:02:31', '2021-06-08 00:05:05'),
(15, 5, '', '', '', '0000-00-00', '2021-06-08 00:02:31', '2021-06-08 00:05:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_estudios`
--

CREATE TABLE `profesor_estudios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profesor_id` bigint(20) UNSIGNED NOT NULL,
  `nivel` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institucion` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anio_egreso` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `especialidad` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nro_titulo` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `profesor_estudios`
--

INSERT INTO `profesor_estudios` (`id`, `profesor_id`, `nivel`, `institucion`, `anio_egreso`, `especialidad`, `nro_titulo`, `created_at`, `updated_at`) VALUES
(1, 1, 'SECUNDARIO', 'INSTITUCION', '2012', 'BACHILLER', '456465', '2021-05-06 20:05:54', '2021-05-06 20:30:56'),
(2, 1, 'NORMAL', '', '', '', '', '2021-05-06 20:05:54', '2021-05-06 20:30:56'),
(3, 1, 'UNIVERSITARIO', '', '', '', '', '2021-05-06 20:05:54', '2021-05-06 20:30:56'),
(4, 1, 'POST GRADO', '', '', '', '', '2021-05-06 20:05:54', '2021-05-06 20:30:56'),
(5, 1, 'POST GRADO', '', '', '', '', '2021-05-06 20:05:54', '2021-05-06 20:30:57'),
(6, 2, 'SECUNDARIO', '', '', '', '', '2021-05-14 16:02:50', '2022-03-28 18:44:22'),
(7, 2, 'NORMAL', '', '', '', '', '2021-05-14 16:02:50', '2022-03-28 18:44:22'),
(8, 2, 'UNIVERSITARIO', '', '', '', '', '2021-05-14 16:02:50', '2022-03-28 18:44:22'),
(9, 2, 'POST GRADO', '', '', '', '', '2021-05-14 16:02:50', '2022-03-28 18:44:22'),
(10, 2, 'POST GRADO', '', '', '', '', '2021-05-14 16:02:50', '2022-03-28 18:44:22'),
(11, 3, 'SECUNDARIO', '', '', '', '', '2021-05-17 15:21:21', '2022-03-28 18:44:43'),
(12, 3, 'NORMAL', '', '', '', '', '2021-05-17 15:21:21', '2022-03-28 18:44:43'),
(13, 3, 'UNIVERSITARIO', '', '', '', '', '2021-05-17 15:21:21', '2022-03-28 18:44:43'),
(14, 3, 'POST GRADO', '', '', '', '', '2021-05-17 15:21:21', '2022-03-28 18:44:43'),
(15, 3, 'POST GRADO', '', '', '', '', '2021-05-17 15:21:21', '2022-03-28 18:44:43'),
(16, 4, 'SECUNDARIO', '', '', '', '', '2021-05-18 16:04:32', '2022-03-28 18:45:07'),
(17, 4, 'NORMAL', '', '', '', '', '2021-05-18 16:04:32', '2022-03-28 18:45:07'),
(18, 4, 'UNIVERSITARIO', '', '', '', '', '2021-05-18 16:04:32', '2022-03-28 18:45:07'),
(19, 4, 'POST GRADO', '', '', '', '', '2021-05-18 16:04:32', '2022-03-28 18:45:07'),
(20, 4, 'POST GRADO', '', '', '', '', '2021-05-18 16:04:32', '2022-03-28 18:45:07'),
(21, 5, 'SECUNDARIO', 'X', 'X', 'X', 'X', '2021-06-08 00:02:31', '2021-06-08 00:05:04'),
(22, 5, 'NORMAL', '', '', '', '', '2021-06-08 00:02:31', '2021-06-08 00:05:04'),
(23, 5, 'UNIVERSITARIO', '', '', '', '', '2021-06-08 00:02:31', '2021-06-08 00:05:04'),
(24, 5, 'POST GRADO', '', '', '', '', '2021-06-08 00:02:31', '2021-06-08 00:05:04'),
(25, 5, 'POST GRADO', '', '', '', '', '2021-06-08 00:02:31', '2021-06-08 00:05:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_materias`
--

CREATE TABLE `profesor_materias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profesor_id` bigint(20) UNSIGNED NOT NULL,
  `nivel` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grado` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paralelo_id` bigint(20) UNSIGNED NOT NULL,
  `turno` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gestion` int(11) NOT NULL,
  `materia_id` bigint(20) UNSIGNED NOT NULL,
  `fecha_registro` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `profesor_materias`
--

INSERT INTO `profesor_materias` (`id`, `profesor_id`, `nivel`, `grado`, `paralelo_id`, `turno`, `gestion`, `materia_id`, `fecha_registro`, `created_at`, `updated_at`) VALUES
(17, 1, 'SECUNDARIA', '1', 3, 'MAÑANA', 2023, 3, '2023-03-09', '2023-03-09 20:36:18', '2023-03-09 20:36:18'),
(19, 1, 'SECUNDARIA', '1', 3, 'MAÑANA', 2023, 7, '2023-03-17', '2023-03-17 15:44:21', '2023-03-17 15:44:21'),
(21, 2, 'SECUNDARIA', '2', 3, 'MAÑANA', 2023, 7, '2023-03-21', '2023-03-21 14:46:28', '2023-03-21 14:46:28'),
(22, 2, 'SECUNDARIA', '2', 3, 'MAÑANA', 2023, 9, '2023-03-21', '2023-03-21 14:46:31', '2023-03-21 14:46:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_otros`
--

CREATE TABLE `profesor_otros` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profesor_id` bigint(20) UNSIGNED NOT NULL,
  `institucion` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `turno` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zona` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cargo` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_horas` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `profesor_otros`
--

INSERT INTO `profesor_otros` (`id`, `profesor_id`, `institucion`, `turno`, `zona`, `cargo`, `total_horas`, `created_at`, `updated_at`) VALUES
(1, 1, '', '', '', '', 0, '2021-05-06 20:05:55', '2021-05-06 20:05:55'),
(2, 1, '', '', '', '', 0, '2021-05-06 20:05:55', '2021-05-06 20:05:55'),
(3, 1, '', '', '', '', 0, '2021-05-06 20:05:55', '2021-05-06 20:05:55'),
(4, 2, '', '', '', '', 0, '2021-05-14 16:02:50', '2021-05-14 16:02:50'),
(5, 2, '', '', '', '', 0, '2021-05-14 16:02:51', '2021-05-14 16:02:51'),
(6, 2, '', '', '', '', 0, '2021-05-14 16:02:51', '2021-05-14 16:02:51'),
(7, 3, '', '', '', '', 0, '2021-05-17 15:21:22', '2021-05-17 15:21:22'),
(8, 3, '', '', '', '', 0, '2021-05-17 15:21:22', '2021-05-17 15:21:22'),
(9, 3, '', '', '', '', 0, '2021-05-17 15:21:22', '2021-05-17 15:21:22'),
(10, 4, '', '', '', '', 0, '2021-05-18 16:04:32', '2021-05-18 16:04:32'),
(11, 4, '', '', '', '', 0, '2021-05-18 16:04:32', '2021-05-18 16:04:32'),
(12, 4, '', '', '', '', 0, '2021-05-18 16:04:32', '2021-05-18 16:04:32'),
(13, 5, 'XA', 'XA', 'XA', 'XA', 0, '2021-06-08 00:02:31', '2021-06-08 00:05:05'),
(14, 5, 'A', 'A', 'A', 'A', 0, '2021-06-08 00:02:31', '2021-06-08 00:05:05'),
(15, 5, '', '', '', '', 0, '2021-06-08 00:02:31', '2021-06-08 00:02:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_trabajos`
--

CREATE TABLE `profesor_trabajos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `profesor_id` bigint(20) UNSIGNED NOT NULL,
  `institucion` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gestion` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cargo` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `profesor_trabajos`
--

INSERT INTO `profesor_trabajos` (`id`, `profesor_id`, `institucion`, `gestion`, `cargo`, `created_at`, `updated_at`) VALUES
(1, 1, '', '', '', '2021-05-06 20:05:55', '2021-05-06 20:05:55'),
(2, 1, '', '', '', '2021-05-06 20:05:55', '2021-05-06 20:05:55'),
(3, 1, '', '', '', '2021-05-06 20:05:55', '2021-05-06 20:05:55'),
(4, 2, '', '', '', '2021-05-14 16:02:51', '2021-05-14 16:02:51'),
(5, 2, '', '', '', '2021-05-14 16:02:51', '2021-05-14 16:02:51'),
(6, 2, '', '', '', '2021-05-14 16:02:51', '2021-05-14 16:02:51'),
(7, 3, '', '', '', '2021-05-17 15:21:22', '2021-05-17 15:21:22'),
(8, 3, '', '', '', '2021-05-17 15:21:22', '2021-05-17 15:21:22'),
(9, 3, '', '', '', '2021-05-17 15:21:22', '2021-05-17 15:21:22'),
(10, 4, '', '', '', '2021-05-18 16:04:32', '2021-05-18 16:04:32'),
(11, 4, '', '', '', '2021-05-18 16:04:32', '2021-05-18 16:04:32'),
(12, 4, '', '', '', '2021-05-18 16:04:32', '2021-05-18 16:04:32'),
(13, 5, 'X', 'X', 'X', '2021-06-08 00:02:31', '2021-06-08 00:02:31'),
(14, 5, 'A', 'A', 'A', '2021-06-08 00:02:31', '2021-06-08 00:05:05'),
(15, 5, '', '', '', '2021-06-08 00:02:32', '2021-06-08 00:02:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `razon_socials`
--

CREATE TABLE `razon_socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codigo` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nro_resolucion` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo_sie` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_ue` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nro_distrito` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc_distrito` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dir` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nit` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nro_aut` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fono` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cel` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `casilla` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correo` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actividad_economica` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `razon_socials`
--

INSERT INTO `razon_socials` (`id`, `codigo`, `nombre`, `alias`, `nro_resolucion`, `codigo_sie`, `tipo_ue`, `ciudad`, `nro_distrito`, `desc_distrito`, `dir`, `nit`, `nro_aut`, `fono`, `cel`, `casilla`, `correo`, `web`, `logo`, `actividad_economica`, `created_at`, `updated_at`) VALUES
(1, 'C1001', 'COLEGIO PARTICULAR BOLIVIA', 'CPB', '0', '0', 'PRIVADA', 'LA PAZ', '1', 'DISTRITO', 'ZONA CENTRAL CALLE 1', '0', '0', '0', '0', '', '', '', 'logo1659975387.png', 'SERVICIO DE ENSEÑANZA', '2021-05-05 20:15:36', '2022-08-08 16:16:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trimestre_actividads`
--

CREATE TABLE `trimestre_actividads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ct_id` bigint(20) UNSIGNED NOT NULL,
  `area` int(11) NOT NULL,
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
(1, 1, 1, 90.00, 90.00, 90.00, 87.00, 70.00, 0.00, 71.00, '2021-05-17 16:31:21', '2023-03-20 14:52:31'),
(2, 1, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:31:21', '2021-05-17 16:31:21'),
(3, 1, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:31:21', '2021-05-17 16:31:21'),
(4, 1, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:31:21', '2021-05-17 16:31:21'),
(5, 2, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:31:22', '2021-05-17 16:31:22'),
(6, 2, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:31:22', '2021-05-17 16:31:22'),
(7, 2, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:31:22', '2021-05-17 16:31:22'),
(8, 2, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:31:22', '2021-05-17 16:31:22'),
(9, 3, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:31:22', '2021-05-17 16:31:22'),
(10, 3, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:31:22', '2021-05-17 16:31:22'),
(11, 3, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:31:22', '2021-05-17 16:31:22'),
(12, 3, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:31:22', '2021-05-17 16:31:22'),
(13, 4, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:10', '2021-05-17 16:32:10'),
(14, 4, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:10', '2021-05-17 16:32:10'),
(15, 4, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:10', '2021-05-17 16:32:10'),
(16, 4, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:10', '2021-05-17 16:32:10'),
(17, 5, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:10', '2021-05-17 16:32:10'),
(18, 5, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:10', '2021-05-17 16:32:10'),
(19, 5, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:10', '2021-05-17 16:32:10'),
(20, 5, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:10', '2021-05-17 16:32:10'),
(21, 6, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:11', '2021-05-17 16:32:11'),
(22, 6, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:11', '2021-05-17 16:32:11'),
(23, 6, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:11', '2021-05-17 16:32:11'),
(24, 6, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:11', '2021-05-17 16:32:11'),
(25, 7, 1, 100.00, 100.00, 100.00, 100.00, 100.00, 90.00, 98.00, '2021-05-17 16:32:11', '2021-05-18 16:23:02'),
(26, 7, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:11', '2021-05-17 16:32:11'),
(27, 7, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:11', '2021-05-17 16:32:11'),
(28, 7, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:11', '2021-05-17 16:32:11'),
(29, 8, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:11', '2021-05-17 16:32:11'),
(30, 8, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:11', '2021-05-17 16:32:11'),
(31, 8, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:11', '2021-05-17 16:32:11'),
(32, 8, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:11', '2021-05-17 16:32:11'),
(33, 9, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:11', '2021-05-17 16:32:11'),
(34, 9, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:11', '2021-05-17 16:32:11'),
(35, 9, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:11', '2021-05-17 16:32:11'),
(36, 9, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:11', '2021-05-17 16:32:11'),
(37, 10, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:19', '2021-05-17 16:32:19'),
(38, 10, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:19', '2021-05-17 16:32:19'),
(39, 10, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:19', '2021-05-17 16:32:19'),
(40, 10, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:19', '2021-05-17 16:32:19'),
(41, 11, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:19', '2021-05-17 16:32:19'),
(42, 11, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:19', '2021-05-17 16:32:19'),
(43, 11, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:19', '2021-05-17 16:32:19'),
(44, 11, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:20', '2021-05-17 16:32:20'),
(45, 12, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:20', '2021-05-17 16:32:20'),
(46, 12, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:20', '2021-05-17 16:32:20'),
(47, 12, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:20', '2021-05-17 16:32:20'),
(48, 12, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:20', '2021-05-17 16:32:20'),
(49, 13, 1, 0.00, 90.00, 90.00, 89.00, 80.00, 0.00, 58.00, '2021-05-17 16:32:20', '2023-03-20 14:52:33'),
(50, 13, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:20', '2021-05-17 16:32:20'),
(51, 13, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:20', '2021-05-17 16:32:20'),
(52, 13, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:20', '2021-05-17 16:32:20'),
(53, 14, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:20', '2021-05-17 16:32:20'),
(54, 14, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:20', '2021-05-17 16:32:20'),
(55, 14, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:20', '2021-05-17 16:32:20'),
(56, 14, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:20', '2021-05-17 16:32:20'),
(57, 15, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:20', '2021-05-17 16:32:20'),
(58, 15, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:20', '2021-05-17 16:32:20'),
(59, 15, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:20', '2021-05-17 16:32:20'),
(60, 15, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-05-17 16:32:20', '2021-05-17 16:32:20'),
(61, 16, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:06', '2021-06-08 00:18:06'),
(62, 16, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:06', '2021-06-08 00:18:06'),
(63, 16, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:06', '2021-06-08 00:18:06'),
(64, 16, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:06', '2021-06-08 00:18:06'),
(65, 17, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:06', '2021-06-08 00:18:06'),
(66, 17, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:06', '2021-06-08 00:18:06'),
(67, 17, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:06', '2021-06-08 00:18:06'),
(68, 17, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:06', '2021-06-08 00:18:06'),
(69, 18, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(70, 18, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(71, 18, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(72, 18, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(73, 19, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(74, 19, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(75, 19, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(76, 19, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(77, 20, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(78, 20, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(79, 20, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(80, 20, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(81, 21, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(82, 21, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(83, 21, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(84, 21, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(85, 22, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(86, 22, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(87, 22, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(88, 22, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(89, 23, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(90, 23, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(91, 23, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(92, 23, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(93, 24, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(94, 24, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(95, 24, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(96, 24, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(97, 25, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(98, 25, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(99, 25, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(100, 25, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(101, 26, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(102, 26, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(103, 26, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(104, 26, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(105, 27, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(106, 27, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(107, 27, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(108, 27, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2021-06-08 00:18:07', '2021-06-08 00:18:07'),
(109, 28, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:37', '2023-03-17 15:44:37'),
(110, 28, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:37', '2023-03-17 15:44:37'),
(111, 28, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:37', '2023-03-17 15:44:37'),
(112, 28, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:37', '2023-03-17 15:44:37'),
(113, 29, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:37', '2023-03-17 15:44:37'),
(114, 29, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:37', '2023-03-17 15:44:37'),
(115, 29, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:37', '2023-03-17 15:44:37'),
(116, 29, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:37', '2023-03-17 15:44:37'),
(117, 30, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:37', '2023-03-17 15:44:37'),
(118, 30, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:37', '2023-03-17 15:44:37'),
(119, 30, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:37', '2023-03-17 15:44:37'),
(120, 30, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:37', '2023-03-17 15:44:37'),
(121, 31, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:37', '2023-03-17 15:44:37'),
(122, 31, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:37', '2023-03-17 15:44:37'),
(123, 31, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:37', '2023-03-17 15:44:37'),
(124, 31, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:37', '2023-03-17 15:44:37'),
(125, 32, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:37', '2023-03-17 15:44:37'),
(126, 32, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(127, 32, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(128, 32, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(129, 33, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(130, 33, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(131, 33, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(132, 33, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(133, 34, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(134, 34, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(135, 34, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(136, 34, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(137, 35, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(138, 35, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(139, 35, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(140, 35, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(141, 36, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(142, 36, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(143, 36, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(144, 36, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(145, 37, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(146, 37, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(147, 37, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(148, 37, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(149, 38, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(150, 38, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(151, 38, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:38', '2023-03-17 15:44:38'),
(152, 38, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:39', '2023-03-17 15:44:39'),
(153, 39, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:39', '2023-03-17 15:44:39'),
(154, 39, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:39', '2023-03-17 15:44:39'),
(155, 39, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:39', '2023-03-17 15:44:39'),
(156, 39, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-17 15:44:39', '2023-03-17 15:44:39'),
(157, 40, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:18', '2023-03-20 14:51:18'),
(158, 40, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:18', '2023-03-20 14:51:18'),
(159, 40, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:18', '2023-03-20 14:51:18'),
(160, 40, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:18', '2023-03-20 14:51:18'),
(161, 41, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:18', '2023-03-20 14:51:18'),
(162, 41, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:18', '2023-03-20 14:51:18'),
(163, 41, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:18', '2023-03-20 14:51:18'),
(164, 41, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:18', '2023-03-20 14:51:18'),
(165, 42, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:18', '2023-03-20 14:51:18'),
(166, 42, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:18', '2023-03-20 14:51:18'),
(167, 42, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:18', '2023-03-20 14:51:18'),
(168, 42, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:18', '2023-03-20 14:51:18'),
(169, 43, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:18', '2023-03-20 14:51:18'),
(170, 43, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:18', '2023-03-20 14:51:18'),
(171, 43, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(172, 43, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(173, 44, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(174, 44, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(175, 44, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(176, 44, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(177, 45, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(178, 45, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(179, 45, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(180, 45, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(181, 46, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(182, 46, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(183, 46, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(184, 46, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(185, 47, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(186, 47, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(187, 47, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(188, 47, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(189, 48, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(190, 48, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(191, 48, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(192, 48, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(193, 49, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(194, 49, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(195, 49, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:19', '2023-03-20 14:51:19'),
(196, 49, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:20', '2023-03-20 14:51:20'),
(197, 50, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:20', '2023-03-20 14:51:20'),
(198, 50, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:20', '2023-03-20 14:51:20'),
(199, 50, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:20', '2023-03-20 14:51:20'),
(200, 50, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:20', '2023-03-20 14:51:20'),
(201, 51, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:20', '2023-03-20 14:51:20'),
(202, 51, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:20', '2023-03-20 14:51:20'),
(203, 51, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:20', '2023-03-20 14:51:20'),
(204, 51, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 14:51:20', '2023-03-20 14:51:20'),
(205, 52, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:37', '2023-03-20 17:25:37'),
(206, 52, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:37', '2023-03-20 17:25:37'),
(207, 52, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:37', '2023-03-20 17:25:37'),
(208, 52, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:37', '2023-03-20 17:25:37'),
(209, 53, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:37', '2023-03-20 17:25:37'),
(210, 53, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:37', '2023-03-20 17:25:37'),
(211, 53, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:37', '2023-03-20 17:25:37'),
(212, 53, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:37', '2023-03-20 17:25:37'),
(213, 54, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:37', '2023-03-20 17:25:37'),
(214, 54, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:37', '2023-03-20 17:25:37'),
(215, 54, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:37', '2023-03-20 17:25:37'),
(216, 54, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(217, 55, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(218, 55, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(219, 55, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(220, 55, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(221, 56, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(222, 56, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(223, 56, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(224, 56, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(225, 57, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(226, 57, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(227, 57, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(228, 57, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(229, 58, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(230, 58, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(231, 58, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(232, 58, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(233, 59, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(234, 59, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(235, 59, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(236, 59, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(237, 60, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(238, 60, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(239, 60, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(240, 60, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:38', '2023-03-20 17:25:38'),
(241, 61, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:39', '2023-03-20 17:25:39'),
(242, 61, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:39', '2023-03-20 17:25:39'),
(243, 61, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:39', '2023-03-20 17:25:39'),
(244, 61, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:39', '2023-03-20 17:25:39'),
(245, 62, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:39', '2023-03-20 17:25:39'),
(246, 62, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:39', '2023-03-20 17:25:39'),
(247, 62, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:39', '2023-03-20 17:25:39'),
(248, 62, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:39', '2023-03-20 17:25:39'),
(249, 63, 1, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:39', '2023-03-20 17:25:39'),
(250, 63, 2, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:39', '2023-03-20 17:25:39'),
(251, 63, 3, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:39', '2023-03-20 17:25:39'),
(252, 63, 4, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '2023-03-20 17:25:39', '2023-03-20 17:25:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` enum('ADMINISTRADOR','SECRETARIA ACADÉMICA','PROFESOR','ESTUDIANTE','TUTOR') COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` bigint(20) NOT NULL,
  `estado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `tipo`, `foto`, `codigo`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$.ERox9PjDF0yccV5sWkWk.Dwvq1rPmaXjOTKrdW4y9adSnCFc4bI6', 'ADMINISTRADOR', 'user_default.png', 0, 1, '2021-05-05 20:15:36', '2021-05-05 20:15:36'),
(2, 'FMC100001', '$2y$10$oUKdSOHu7WFGvFek/khUnet0muK5DQK4hfORThxKmq7DeXN6RG45u', 'ADMINISTRADOR', 'user_default.png', 100001, 1, '2021-05-06 15:25:55', '2021-05-06 20:34:41'),
(3, 'JMM100002', '$2y$10$wUTIyhzBZk.2CxvY.e/gIuIs1BW5YtnV5GR4dTgxZ7Eqpu9pvdwha', 'SECRETARIA ACADÉMICA', 'user_default.png', 100002, 1, '2021-05-06 16:40:15', '2021-05-06 16:40:15'),
(4, 'JAM200001', '$2y$10$DlFN1XkVSYdrT0zVq.aB0uGETUkyTmz8bfHHSTV8pJ9m0nqfaesm.', 'PROFESOR', 'user_default.png', 200001, 1, '2021-05-06 20:05:54', '2021-05-18 16:07:45'),
(5, 'FVM500001', '$2y$10$D3dWBnMMiulBdps27CjqDeOo9.a1nlkn.ZX2J34NREEezltk2k/d6', 'ESTUDIANTE', 'FELIPE1648494673.png', 500001, 1, '2021-05-11 16:44:14', '2022-08-08 16:35:49'),
(6, 'MSM500002', '$2y$10$jIhY.u1NgXdzy4IFuIIdSO6gmr2Rd9Xv7muiwPvQZsGZNaYVjvgiq', 'ESTUDIANTE', 'MARTHA1620762372.jpg', 500002, 1, '2021-05-11 19:46:12', '2021-05-24 21:00:56'),
(7, 'GPC200002', '$2y$10$AR2NwOmo9.hVTljXj8iwhe7QhB9vk9NZtkwYPqa4Dl3dvzZXLT44S', 'PROFESOR', 'user_default.png', 200002, 1, '2021-05-14 16:02:50', '2021-05-14 16:02:50'),
(8, 'MGQ200003', '$2y$10$lj1/8tgbIsg/gcPryeyHq.2asdPdAtKj0vIgi.PcWwdCRp.i5B9Ki', 'PROFESOR', 'user_default.png', 200003, 1, '2021-05-17 15:21:21', '2021-05-17 15:21:21'),
(9, 'EH500003', '$2y$10$GJ1JbXsS3I64NofwDWt5oe8WdOHjWM7TxbxY2MgmyDTbRHDwZ1liC', 'ESTUDIANTE', 'EH5000031678208110.png', 500003, 1, '2021-05-17 15:24:46', '2023-03-07 16:55:10'),
(10, 'AFG100003', '$2y$10$9O76DVJ4chKAxnrs7neVletp0h3pcfSz1CVgs0UjDR54WKuCbYTWS', 'ADMINISTRADOR', 'user_default.png', 100003, 1, '2021-05-18 16:03:43', '2021-05-18 16:03:43'),
(11, 'GGP200004', '$2y$10$lPSeibQbMLuykZKrfExtP.B4EZJJzUD4ymmwZA8NAN2VFi0u1sMci', 'PROFESOR', 'user_default.png', 200004, 1, '2021-05-18 16:04:31', '2021-05-18 16:04:31'),
(12, 'CMC500004', '$2y$10$OzWLBMlmykWgI4PqUGoAVOtP8whbTHWxhKotai7/0S1XK53OcU9Zi', 'ESTUDIANTE', 'CHOQUE1621353964.jpg', 500004, 1, '2021-05-18 16:06:04', '2021-05-24 21:00:57'),
(13, 'CPP100004', '$2y$10$H4.hDdVH3BmYB//hW5L30eCuuCmf1g94oaulCfkk71zfvfu9HvqSi', 'SECRETARIA ACADÉMICA', 'user_default.png', 100004, 1, '2021-06-07 23:39:58', '2021-06-07 23:39:58'),
(14, 'FMC500005', '$2y$10$OABo/OquQM5qXBLlBQY/penTQMTOVZz1eDM8gs7IQejdK90klBXVy', 'ESTUDIANTE', 'FLORES1623110290.png', 500005, 1, '2021-06-07 23:58:10', '2021-06-07 23:58:10'),
(15, 'DCV200005', '$2y$10$8Sj1i9RKHmeGAIRuLf5kueU8jqrZxPnoKiiie0pLZerWVAcMlCRwq', 'PROFESOR', 'user_default.png', 200005, 1, '2021-06-08 00:02:29', '2021-06-08 00:02:29'),
(16, 'MP100005', '$2y$10$J0THlRFdkJUKdVJ.13n18uXaYJdGP53NVlIqH55k2KXozXoKUILjS', 'ADMINISTRADOR', 'user_default.png', 100005, 1, '2022-03-28 18:37:51', '2022-03-28 18:37:51'),
(36, '100001JH', '$2y$10$fn9Kg.wGOpEsmhoHhGGEheuQppmj4LefJL7PJ6B5y54qlwKPrOWkO', 'TUTOR', 'user_default.png', 100001, 1, '2023-03-21 15:30:57', '2023-03-21 15:30:57'),
(37, '100002MS', '$2y$10$NiIAdp1G.e.3skRSXuFnrOMn8Eu1rlOWeqjQMf.W2p5/dPVkZ.O82', 'TUTOR', 'user_default.png', 100002, 1, '2023-03-21 15:30:57', '2023-03-21 15:30:57'),
(38, '100003CV', '$2y$10$1hB5eJx6oI2ypPU1MU2hvOXoEwJouanrPJ5dlUU8Oy8yrtw71XbMi', 'TUTOR', 'user_default.png', 100003, 1, '2023-03-21 15:31:01', '2023-03-21 15:31:01'),
(39, '100004MC', '$2y$10$l1XML.J3tsv249C2LJIAAuZgwK826PV5FIAk5.aJOWDBjvdYkTEhy', 'TUTOR', 'user_default.png', 100004, 1, '2023-03-21 15:31:01', '2023-03-21 15:31:01'),
(40, '100005VC', '$2y$10$H/drSHCiUk0L/CeeZtKTUeNTErl4Bc5eiNJOmHCfFD0m5JWbMHVR6', 'TUTOR', 'user_default.png', 100005, 1, '2023-03-21 15:31:04', '2023-03-21 15:31:04'),
(41, '100006TF', '$2y$10$6BqGYAptq9.XBZYi192rjeQ46WbX55uVGkV8pd9P.6XDjgiy18fdu', 'TUTOR', 'user_default.png', 100006, 1, '2023-03-21 15:31:04', '2023-03-21 15:31:04'),
(42, '100007MS', '$2y$10$SnpmnaW8WWbhE17oa1JHn.ooGTJe1EDce4oo85LF06YbIA/0OF3ry', 'TUTOR', 'user_default.png', 100007, 1, '2023-03-21 15:31:07', '2023-03-21 15:31:07'),
(43, '100008JV', '$2y$10$6pyC5/ds1bw5PmPcFV76jevZFwr.c3j4qfFnME6EqRzTsuPO/O32C', 'TUTOR', 'user_default.png', 100008, 1, '2023-03-21 15:31:11', '2023-03-21 15:31:11'),
(44, '100009MM', '$2y$10$Z3ocDazs4lzhrWatB56fsOETUvInCIGmUOPw3T9DVdmHd.z4nLllm', 'TUTOR', 'user_default.png', 100009, 1, '2023-03-21 15:31:11', '2023-03-21 15:31:11');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `administrativos`
--
ALTER TABLE `administrativos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `administrativo_cursos`
--
ALTER TABLE `administrativo_cursos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `administrativo_estudios`
--
ALTER TABLE `administrativo_estudios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `administrativo_otros`
--
ALTER TABLE `administrativo_otros`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `administrativo_trabajos`
--
ALTER TABLE `administrativo_trabajos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `calificacions`
--
ALTER TABLE `calificacions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `calificacion_trimestres`
--
ALTER TABLE `calificacion_trimestres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `campos`
--
ALTER TABLE `campos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `chat_desempenos`
--
ALTER TABLE `chat_desempenos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `desempeno_estudiantes`
--
ALTER TABLE `desempeno_estudiantes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `desempeno_notificacions`
--
ALTER TABLE `desempeno_notificacions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `inscripcions`
--
ALTER TABLE `inscripcions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `materia_grados`
--
ALTER TABLE `materia_grados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `paralelos`
--
ALTER TABLE `paralelos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `profesors`
--
ALTER TABLE `profesors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `profesor_cursos`
--
ALTER TABLE `profesor_cursos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `profesor_estudios`
--
ALTER TABLE `profesor_estudios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `profesor_materias`
--
ALTER TABLE `profesor_materias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `profesor_otros`
--
ALTER TABLE `profesor_otros`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `profesor_trabajos`
--
ALTER TABLE `profesor_trabajos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `razon_socials`
--
ALTER TABLE `razon_socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `trimestre_actividads`
--
ALTER TABLE `trimestre_actividads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
-- Filtros para la tabla `materia_grados`
--
ALTER TABLE `materia_grados`
  ADD CONSTRAINT `materia_grados_materia_id_foreign` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`);

--
-- Filtros para la tabla `profesors`
--
ALTER TABLE `profesors`
  ADD CONSTRAINT `profesors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `profesor_cursos`
--
ALTER TABLE `profesor_cursos`
  ADD CONSTRAINT `profesor_cursos_profesor_id_foreign` FOREIGN KEY (`profesor_id`) REFERENCES `profesors` (`id`);

--
-- Filtros para la tabla `profesor_estudios`
--
ALTER TABLE `profesor_estudios`
  ADD CONSTRAINT `profesor_estudios_profesor_id_foreign` FOREIGN KEY (`profesor_id`) REFERENCES `profesors` (`id`);

--
-- Filtros para la tabla `profesor_materias`
--
ALTER TABLE `profesor_materias`
  ADD CONSTRAINT `profesor_materias_materia_id_foreign` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `profesor_materias_paralelo_id_foreign` FOREIGN KEY (`paralelo_id`) REFERENCES `paralelos` (`id`),
  ADD CONSTRAINT `profesor_materias_profesor_id_foreign` FOREIGN KEY (`profesor_id`) REFERENCES `profesors` (`id`);

--
-- Filtros para la tabla `profesor_otros`
--
ALTER TABLE `profesor_otros`
  ADD CONSTRAINT `profesor_otros_profesor_id_foreign` FOREIGN KEY (`profesor_id`) REFERENCES `profesors` (`id`);

--
-- Filtros para la tabla `profesor_trabajos`
--
ALTER TABLE `profesor_trabajos`
  ADD CONSTRAINT `profesor_trabajos_profesor_id_foreign` FOREIGN KEY (`profesor_id`) REFERENCES `profesors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
