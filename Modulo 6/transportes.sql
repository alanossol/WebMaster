-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 26-02-2022 a las 20:53:52
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
-- Base de datos: `transportes`
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
(2, '54ff5t', '54tf54tftf54', '54tft54f54tf', '454tf54t4tf554tf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE `novedades` (
  `id` int(11) NOT NULL,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(1, 'Conflicto Rusia-Ucrania: Kiev declaró el estado de emergencia y el Kremlin inició la evacuación de su personal diplomático en Kiev', 'La Cancillería rusa prometió una respuesta \"fuerte\" y \"dolorosa\" a las sanciones finacieras de Washington, que este miércoles anunció que va a penalizar a las empresas que participaron en la construcción del estratégico gasoducto Nord Stream 2.', 'El Parlamento ucraniano aprobó este miércoles por amplia mayoría la declaración del estado de emergencia nacional al considerar como una \"agresión armada\" el reconocimiento por parte de Rusia de las autoproclamadas repúblicas de Donetsk y Lugansk. La medida, propuesta por el presidente Volodimir Zelenski, fue votada horas después de que Rusia iniciara la evacuación de su personal diplomático en Kiev y de que Ucrania llamara a sus ciudadanos a abandonar territorio ruso.\r\n\r\nLas esperanzas de una salida diplomática a la crisis parecieron desvanecerse luego de que Estados Unidos y sus aliados acusaran a Rusia de violar la soberanía de Ucrania al reconocer la independencia de las dos provincias separatistas del este ucraniano y ordenar al Ejército ruso \"mantener la paz\" en ellas. Estados Unidos calificó esto como un \"inicio de invasión\", impuso sanciones a entidades financieras rusas y personas cercanas al Kremlin y reposicionó tropas adicionales en el flanco este de la OTAN. La Cancillería rusa, en tanto, prometió una respuesta \"fuerte\" y \"dolorosa\" a las sanciones de Washington.'),
(2, 'Misterio revelado: qué le ocurre a nuestro cerebro justo antes de morir', 'Una nueva investigación estudió la actividad cerebral de un hombre moribundo. Los resultados sugieren que las personas pueden “reproducir” los mejores momentos de su vida durante sus momentos finales ', '¿Qué sucede en el momento de la muerte? Nadie lo sabe con exactitud y, aunque los científicos tienen algunas respuestas, ese sigue siendo uno de los grandes misterios. Tratar de resolverlo es un camino plagado de dificultades prácticas y éticas. Sin embargo, un estudio aporta nuevos conocimientos sobre una posible organización del cerebro durante la muerte y sugiere una explicación para los recuerdos vívidos que tienen las personas en experiencias cercanas a la muerte.\r\n\r\nNeurocientíficos grabaron por primera vez la actividad de un cerebro humano moribundo y descubrieron patrones rítmicos de ondas cerebrales alrededor del momento de la muerte que son similares a los que ocurren durante los sueños, el recuerdo y la meditación. Con esto, se podrían contestar algunas preguntas sobre qué sucede mientras morimos.\r\n\r\nLa investigación, publicada en la revista Frontiers in Aging Neuroscience, sugiere que el cerebro puede permanecer activo y coordinado durante e incluso después de la transición a la muerte, y que también puede estar programado para realizar todo el proceso.\r\n\r\nCuando un paciente de 87 años desarrolló epilepsia, el doctor Raúl Vicente de la Universidad de Tartu, Estonia, y sus colegas utilizaron electroencefalografía (EEG) continua para detectar las convulsiones y tratar al paciente. Durante estas grabaciones, el paciente tuvo un infarto y falleció. Este evento inesperado permitió a los científicos registrar la actividad de un cerebro humano moribundo por primera vez.\r\n\r\n“Medimos 900 segundos de actividad cerebral alrededor del momento de la muerte y establecimos un enfoque específico para investigar qué sucedió en los 30 segundos antes y después de que el corazón dejara de latir”, narró el doctor Ajmal Zemmar, neurocirujano de la Universidad de Louisville, Estados Unidos, que organizó el estudio.'),
(3, 'Los octavos quedan definidos en el cuadro femenino', '5 billetes en juego en el cuadro femenino hacia los octavos de final', '\r\n\r\nWorld Padel Tour sigue su camino de la mejor forma posible en el primer torneo del año. Un total de 5 billetes en juego hacia los octavos de final del Blockchain.Com Miami Padel Open 2022 en el cuadro femenino.\r\n\r\nEl primer partido de la jornada en encontrar una pareja ganadora sería el que se disputaría entre Anna Cortiles y Xenia Clasca contra Julia Polo y Ceci Reiter. La dupla Cortiles - Clasca se mostraba contundente desde el inicio del partido y conseguían llevarse el primer set por 6-1. En el segundo episodio, Polo y Reiter conseguían mejorar sobre la pista, pero el nivel de sus rivales era incontestable en el primer torneo del año. Cortiles y Clasca avanzan a los octavos de final tras vencer 6-1 y 6-4.\r\n\r\nDe igual forma, Carmen Goenaga y Beatriz Caldera se deshacían de sus rivales en una exhibición sobre el 20x10 azul. Noa Cánovas y Raquel Piltcher no eran capaces de frenar al tándem Goenaga- Caldera, que sellan su pase a octavos al vencer 6-1 y 6-3. Las Gemelas Atómikas también conseguían la victoria en su enfrentamiento contra Vero Virseda y Bárbara Las Heras por 6-2 y 7-6, y se enfrentarán en la siguiente ronda del Blockchain.Com Miami Padel Open 2022 a Sofía Saiz y Marina Martínez. \r\n\r\nCerraban por la vía rápida su pase a la siguiente fase en Miami Jessica Castelló y Alix Collombón. La dupla hispano francesa lograba vencer 6-4 y 6-1 a Claudia Fernández y Araceli Martínez en una hora de lucha y se enfrentarán a Brea y Bidahorria en octavos. El último partido de la jornada matinal enfrentaba a Esther Carnicero y Jimena Velasco contra Carolina Navarro y Eli Amatriaín. Navarro y Amatriaín se imponían en el tercer set al vencer por 4-6, 6-3 y 6-3 y avanzan a los octavos de final en Miami.\r\n'),
(4, 'España tendrá dos nuevos torneos del DP World Tour', 'El ISPS Handa y el Catalunya Championship, que acogerán Tarragona y Girona respectivamente, se añaden a la nómina de citas en territorio nacional.', '\r\n\r\nEl DP World Tour (antiguo circuito europeo) ha anunciado la incorporación de dos nuevos torneos en España a su calendario de 2022: el ISPS Handa Championship y el Catalunya Championship, que se llevarán a cabo en semanas consecutivas durante el próximo mes de abril, informa la Real Federación Española de Golf (RFEG).\r\n\r\nEl ISPS Handa Championship se jugará en el recorrido tarraconense de Infinitum del 21 al 24 de abril, mientras que el Catalunya Championship se disputará en PGA Catalunya Golf and Wellness, en la provincia de Girona, del 28 de abril al 1 de mayo, agrega la RFEG.\r\n\r\nDebido a las restricciones de viaje causadas por la pandemia, los dos campeonatos españoles, con una bolsa de premios de 2 millones de dólares cada uno, sustituyen en el calendario 2022 del DP World Tour al ISPS Handa Championship y el Volvo China Open previamente planificados. Además, el DP World Tour ha confirmado también que el Commercial Bank Qatar Masters se llevará a cabo en el Doha Golf Club del 24 al 27 de marzo, mientras que un \'torneo asiático\' propuesto inicialmente del 14 al 17 de abril no tendrá finalmente lugar.\r\n'),
(5, 'uno', 'do', 'cuaaarroo');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `novedades`
--
ALTER TABLE `novedades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
