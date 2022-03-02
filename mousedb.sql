-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 02-03-2022 a las 10:13:41
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mousedb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `tel` varchar(80) NOT NULL,
  `mensaje` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `tel`, `mensaje`) VALUES
(1, 'flavia', 'flavia@mail.com', '223551123', '34f3fr3fr3fr3f34'),
(3, 'Alan', 'alan@mail.net', '1121245521', 'Buenos dias, necesitaria más informacion del FK2, gracias.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE `novedades` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `cuerpo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `cuerpo`) VALUES
(5, 'uno', 'cuaaarroo'),
(6, 'Abrimos', 'Hoy abrimos nuestras puertas, con el Zowie FK2 como producto inicial.  // 12, Diciembre, 2014'),
(7, 'Incluimos razer deathadder Chroma', 'Incluimos el razer deathadder Chroma a nuestros stocks. // 25, Diciembre, 2014'),
(8, 'Steelseries Rival 650 Wireless', 'Ahora tambien tenemos el Rival 650 W.  // 18, febrero, 2019'),
(9, 'Logitech G Pro X Superlight', 'Ya esta disponible el G Pro X Superlight en nuestra tienda.  // 20, Diciembre, 2021');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `url` text NOT NULL,
  `especificaciones` text NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `url`, `especificaciones`, `descripcion`) VALUES
(2, 'Zowie FK2', 'https://image.benq.com/is/image/benqco/01-fk2-top', '-Driverless; plug and play\r\n-3310 sensor\r\n-DPI: 400 / 800 / 1600 / 3200\r\n-Report Rate: 125 / 500 / 1000 Hz\r\n-Size: 124.0 mm / Width: 58 mm / Height: 36.0 mm\r\n-Weight: 81g', 'For palm grip users: The front side of the mouse is widened to provide extra support for lifting the mouse and ensuring a secure grip.\r\nFor claw grip users: The concave curve design provides more support for the fingers that allows claw grip users to lift the mouse with ease. // Release date - 02, Diciembre, 2014'),
(3, 'Razer Deathadder Chroma ', 'https://assets.razerzone.com/eeimages/products/17531/940x573-01-02.png', 'lorem', 'lorem // Release date - 15, Diciembre, 2014'),
(4, 'Logitech G403', 'https://logitechar.vteximg.com.br/arquivos/ids/156568-450-450/910-004823_1.png?v=636973475605970000', 'lorem', 'lorem // Release date - Septiembre 2016 '),
(5, 'Razer Deathadder Elite', 'https://assets.razerzone.com/eeimages/products/25919/daelite_transparency.png', 'lorem', 'lorem // Release date - November 2016'),
(6, 'Logitecg G203', 'https://media.ldlc.com/r1600/ld/products/00/04/11/21/LD0004112162_2.jpg', 'lorem', 'lorem // Release date - Enero 2017 '),
(7, 'Steelseries Sensei 310', 'https://media.steelseriescdn.com/thumbs/filer_public/ad/bd/adbd7c6d-a10c-41aa-98a7-b3b605c7162d/buyrender_sensei310_ninja_002.png__1920x1080_q100_crop-fit_optimize_subsampling-2.png', 'lorem', 'lorem // Release date - Septiembre, 2017'),
(8, 'Logitech G305 Wireless', 'https://images.fravega.com/f500/9fb13ada844ed6c688dc33e8269d204f.jpg', 'lorem', 'lorem // Release date - Mayo 2018'),
(9, 'Steelseries Rival 650 Wireless', 'https://media.steelseriescdn.com/thumbs/filer_public/79/38/793810c0-be38-4840-ab60-0657e7ecd973/purchase-gallery-650wl-top.png__1920x1080_q100_crop-fit_optimize_subsampling-2.png', '-Resolution: 100–12,000 CPI\r\n-Polling Rate: 125–1000 Hz\r\n-Wireless: Yes, 1000 mAH battery\r\n-IPS: 350+, on SteelSeries QcK surfaces\r\n-Acceleration: 50G\r\n-Size: 131 mm x 69 mm x 43 mm\r\n-Weight: Adjustable, 121–153g', 'ERGONOMIC DESIGN:\r\nEvery aspect of the Rival 650 Wireless design meets players\' stringent demands for comfort. Whether you deploy a claw grip or palm grip, the shape will provide perfect comfort for long and intense gaming sessions. // Release date - Abril, 2019'),
(10, 'Zowie FK1-B', 'https://image.benq.com/is/image/benqco/01-fk1-b-fk-black-top', 'lorem', 'lorem // Release date - Febrero, 2020 '),
(11, 'Razer Viper Ultimate', 'https://nissei.com/media/catalog/product/cache/16a9529cefd63504739dab4fc3414065/7/0/70516-3.jpg', 'lorem', 'lorem // Release date - Noviembre 2020'),
(12, 'Zowie EC2-C', 'https://image.benq.com/is/image/benqco/01-ec2-c-top', 'lorem', 'lorem // Release date - 20, Agosto, 2021'),
(13, 'Logitech G Pro X Superlight', 'https://logitechar.vteximg.com.br/arquivos/ids/157821-450-450/910-005879.png?v=637481514041530000', 'lorem', 'lorem // Release date - 3, Diciembre, 2021');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'flavia', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'Lorena', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'alan', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `novedades`
--
ALTER TABLE `novedades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `novedades`
--
ALTER TABLE `novedades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
