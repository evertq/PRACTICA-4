CREATE DATABASE practica_4_tqe;
USE practica_4_tqe;
CREATE TABLE `estudiantes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL,
  `grupo` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
INSERT INTO `estudiantes` (`id`, `nombre`, `grupo`) VALUES
(1, 'BORIS CRISTHIAN ARO CHURA', 'S'),
(2, 'CLAUDIA MARISOL CACHI QUISPE', 'S'),
(3, 'MARTIN CACHI QUISPE', 'S'),
(4, 'JHESSICA CHOQUE CONDORI', 'S'),
(5, 'ERIKA AMANDA CONDORI QUISPE', 'S'),
(6, 'JOEL FLORES MAMANI', 'S'),
(7, 'YOLA HUANCA NOA', 'S'),
(8, 'JUAN PAUL LUQUE LLUTA', 'S'),
(9, 'RODRIGO MAMANI ARUQUIPA', 'S'),
(10, 'LUZ NATALIA PARADA MAMANI', 'S'),
(11, 'JUAN RONALDO QUISPE MAMANI', 'S'),
(12, 'ROSSE MARY SAUCEDO ARO', 'S'),
(13, 'EVER TALLACAGUA QUISPE', 'S');
CREATE TABLE `materias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
INSERT INTO `materias` (`id`, `nombre`) VALUES
(1, 'CONTROL Y AUTOMATIZACIÓN INDUSTRIAL II'),
(2, 'TECNOLOGÍA WEB I'),
(3, 'SISTEMAS DE INFORMACIÓN Y LABORATORIO II'),
(4, 'TELEMÁTICA II'),
(5, 'EMPRENDIMIENTO PRODUCTIVO I'),
(6, 'TALLER DE MODALIDAD DE GRADUACIÓN I');
CREATE TABLE `notas_estudiantes_materias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_estudiante` bigint(20) UNSIGNED NOT NULL,
  `id_materia` bigint(20) UNSIGNED NOT NULL,
  `puntaje` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
INSERT INTO `notas_estudiantes_materias` (`id`, `id_estudiante`, `id_materia`, `puntaje`) VALUES
(3, 1, 3, '68.00'),
(4, 1, 4, '70.00'),
(5, 1, 5, '75.00'),
(6, 1, 6, '80.00'),
(7, 1, 1, '62.00'),
(9, 1, 2, '65.00');
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `notas_estudiantes_materias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_estudiante` (`id_estudiante`),
  ADD KEY `id_materia` (`id_materia`);
ALTER TABLE `estudiantes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
ALTER TABLE `materias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
ALTER TABLE `notas_estudiantes_materias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
ALTER TABLE `notas_estudiantes_materias`
  ADD CONSTRAINT `notas_estudiantes_materias_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notas_estudiantes_materias_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `materias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
