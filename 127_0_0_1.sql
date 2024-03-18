-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 18 2024 г., 14:10
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `loginsystem`
--
CREATE DATABASE IF NOT EXISTS `loginsystem` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `loginsystem`;

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `create_datetime`) VALUES
(1, 'admin', 'petrov@yandex.ru', 'admin', '2024-03-18 15:38:42');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `create_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `create_datetime`) VALUES
(8, 'user1', 'user1@mail.ru', 'c4ca4238a0b923820dcc509a6f75849b', '2024-03-18 13:49:20'),
(9, 'user2', 'user2@mail.ru', '202cb962ac59075b964b07152d234b70', '2024-03-18 13:49:36');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- База данных: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Структура таблицы `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Дамп данных таблицы `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"relation_lines\":\"true\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Дамп данных таблицы `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', '1', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"123\",\"456\",\"1111\",\"12345\",\"bolnica\",\"loginsystem\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Структура таблицы @TABLE@\",\"latex_structure_continued_caption\":\"Структура таблицы @TABLE@ (продолжение)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Содержимое таблицы @TABLE@\",\"latex_data_continued_caption\":\"Содержимое таблицы @TABLE@ (продолжение)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

--
-- Дамп данных таблицы `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_nr`, `page_descr`) VALUES
('slusba_perevozok', 1, 'Diagramma');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Дамп данных таблицы `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"slusba_perevozok\",\"table\":\"sotrudnik\"},{\"db\":\"loginsystem\",\"table\":\"admin\"},{\"db\":\"slusba_perevozok\",\"table\":\"klient\"},{\"db\":\"slusba_perevozok\",\"table\":\"gruz\"},{\"db\":\"slusba_perevozok\",\"table\":\"sluzhba_gruzoperevozok\"},{\"db\":\"slusba_perevozok\",\"table\":\"zakaz\"},{\"db\":\"loginsystem\",\"table\":\"users\"},{\"db\":\"slusba_perevozok\",\"table\":\"status\"},{\"db\":\"slusba_perevozok\",\"table\":\"sklad\"},{\"db\":\"slusba_perevozok\",\"table\":\"pol\"}]');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

--
-- Дамп данных таблицы `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('slusba_perevozok', 'gruz', 1, 648, 121),
('slusba_perevozok', 'klient', 1, 93, 43),
('slusba_perevozok', 'nakladnaya', 1, 915, 116),
('slusba_perevozok', 'pol', 1, 343, 419),
('slusba_perevozok', 'sklad', 1, 1217, 107),
('slusba_perevozok', 'sluzhba_gruzoperevozok', 1, 887, 396),
('slusba_perevozok', 'sotrudnik', 1, 611, 335),
('slusba_perevozok', 'status', 1, 327, 530),
('slusba_perevozok', 'zakaz', 1, 330, 86);

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Дамп данных таблицы `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('bolnica', 'vrach', 'fio'),
('slusba_perevozok', 'gruz', 'tip_gruza'),
('slusba_perevozok', 'klient', 'familiya'),
('slusba_perevozok', 'sklad', 'naimenovanie'),
('slusba_perevozok', 'sotrudnik', 'familiya'),
('slusba_perevozok', 'zakaz', 'nazvanie'),
('up_bolnica', 'pacient', 'fio');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Дамп данных таблицы `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'slusba_perevozok', 'sotrudnik', '[]', '2024-03-18 12:32:55');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Дамп данных таблицы `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-03-18 12:40:55', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"ru\"}');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Индексы таблицы `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Индексы таблицы `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Индексы таблицы `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Индексы таблицы `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Индексы таблицы `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Индексы таблицы `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Индексы таблицы `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Индексы таблицы `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Индексы таблицы `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Индексы таблицы `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Индексы таблицы `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Индексы таблицы `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Индексы таблицы `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- База данных: `slusba_perevozok`
--
CREATE DATABASE IF NOT EXISTS `slusba_perevozok` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `slusba_perevozok`;

-- --------------------------------------------------------

--
-- Структура таблицы `gruz`
--

CREATE TABLE `gruz` (
  `kod_gruza` int(100) NOT NULL,
  `tip_gruza` varchar(100) NOT NULL,
  `kolichestvo` varchar(100) NOT NULL,
  `kod_slusby` int(100) NOT NULL,
  `kod_zakaza` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `gruz`
--

INSERT INTO `gruz` (`kod_gruza`, `tip_gruza`, `kolichestvo`, `kod_slusby`, `kod_zakaza`) VALUES
(1, 'generalnyu_gruz', '150', 1, 1),
(2, 'generalnyu_gruz', '455', 1, 2),
(3, 'termolabylnyu_gruz', '75', 1, 3),
(4, 'sbornyu_gruz', '57', 1, 4),
(5, 'sbornyu_gruz', '78', 1, 5),
(6, 'negabarytnyu_gruz', '20', 1, 6),
(7, 'generalnyu_gruz', '355', 1, 7),
(8, 'termolabylnyu_gruz', '153', 1, 8),
(9, 'sbornyu_gruz', '38', 1, 9),
(10, 'generalnyu_gruz', '251', 1, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `klient`
--

CREATE TABLE `klient` (
  `kod_klienta` int(100) NOT NULL,
  `familiya` varchar(100) NOT NULL,
  `imya` varchar(100) NOT NULL,
  `otchestvo` varchar(100) NOT NULL,
  `nomer_telefona` int(100) NOT NULL,
  `gorod` varchar(100) NOT NULL,
  `adres` varchar(100) NOT NULL,
  `raschetnyu_chet` int(100) NOT NULL,
  `kod_pola` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `klient`
--

INSERT INTO `klient` (`kod_klienta`, `familiya`, `imya`, `otchestvo`, `nomer_telefona`, `gorod`, `adres`, `raschetnyu_chet`, `kod_pola`) VALUES
(1, 'Алексеев', 'Арсений', 'Николаевич', 791849385, 'Ярославль', 'улица Свободы, дом 1', 407028105, 1),
(2, 'Масленникова', 'Дарина', 'Глебовна', 791849384, 'Ярославль', 'улица Портовая, дом 15', 407028106, 2),
(3, 'Пономарева', 'Юлия', 'Михайловна', 791849381, 'Ярославль', 'улица Первомайская, дом 19', 407028101, 2),
(4, 'Смирнов', 'Ярослав', 'Петрович', 791129385, 'Ярославль', 'улица Чайковская, дом 1', 791249385, 1),
(5, 'Куликов', 'Всеволод', 'Михайлович', 791049385, 'Ярославль', 'улица Торфяная, дом 2', 407022108, 1),
(6, 'Борисов', 'Петр', 'Львович', 791849123, 'Ярославль', 'улица Победы, дом 23', 402028105, 1),
(7, 'Матвеева', 'Ксения', 'Олеговна', 791149385, 'Ярославль', 'улица Советская, дом 50', 407015105, 2),
(8, 'Афанасьев', 'Михаил', 'Иванович', 791849923, 'Ярославль', 'улица Ветвинская, дом 1', 407054205, 1),
(9, 'Морозов', 'Иван', 'Михайлович', 791849124, 'Ярославль', 'улица Пожарского, дом 12', 407028100, 1),
(10, 'Сидоров', 'Андрей', 'Михайлович', 791849125, 'Ярославль', 'улица Маяковского, дом 14', 407028119, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `nakladnaya`
--

CREATE TABLE `nakladnaya` (
  `kod_nakladnoy` int(100) NOT NULL,
  `kod_gruza` int(100) NOT NULL,
  `kod_sklada` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `nakladnaya`
--

INSERT INTO `nakladnaya` (`kod_nakladnoy`, `kod_gruza`, `kod_sklada`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 1),
(5, 5, 2),
(6, 6, 1),
(7, 7, 2),
(8, 8, 3),
(9, 9, 1),
(10, 10, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `pol`
--

CREATE TABLE `pol` (
  `kod_pola` int(100) NOT NULL,
  `naimenovanie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `pol`
--

INSERT INTO `pol` (`kod_pola`, `naimenovanie`) VALUES
(1, 'Мужской'),
(2, 'Женский');

-- --------------------------------------------------------

--
-- Структура таблицы `sklad`
--

CREATE TABLE `sklad` (
  `kod_sklada` int(100) NOT NULL,
  `naimenovanie` varchar(100) NOT NULL,
  `adres` varchar(100) NOT NULL,
  `vmestitelnost` varchar(100) NOT NULL,
  `oborudovanye` varchar(100) NOT NULL,
  `kod_slusby` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `sklad`
--

INSERT INTO `sklad` (`kod_sklada`, `naimenovanie`, `adres`, `vmestitelnost`, `oborudovanye`, `kod_slusby`) VALUES
(1, 'Склад №1', 'город Ярославль, улица Низовая, дом 1', '1000 единиц груза', '15 грузовиков, 10 погрузчиков', 1),
(2, 'Склад №2', 'город Ярославль, улица Жилая, дом 15', '2000 единиц груза', '25 грузовиков, 35 погрузчиков', 1),
(3, 'Склад №3', 'город Ярославль, улица Рабочая, дом 25', '5000 единиц груза', '55 грузовиков, 100 погрузчиков', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `sluzhba_gruzoperevozok`
--

CREATE TABLE `sluzhba_gruzoperevozok` (
  `kod_slusby` int(100) NOT NULL,
  `nazvanie` varchar(100) NOT NULL,
  `inn` int(100) NOT NULL,
  `adres` varchar(100) NOT NULL,
  `nomer_telefona` int(100) NOT NULL,
  `elektronnaya_pochta` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `sluzhba_gruzoperevozok`
--

INSERT INTO `sluzhba_gruzoperevozok` (`kod_slusby`, `nazvanie`, `inn`, `adres`, `nomer_telefona`, `elektronnaya_pochta`) VALUES
(1, 'Служба перевозок \"Груз-логистик\"', 987654321, 'город Ярославль, улица Свободы, дом 90', 80405, 'gruz@mail.ru');

-- --------------------------------------------------------

--
-- Структура таблицы `sotrudnik`
--

CREATE TABLE `sotrudnik` (
  `kod_sotrudnika` int(100) NOT NULL,
  `familiya` varchar(100) NOT NULL,
  `imya` varchar(100) NOT NULL,
  `otchestvo` varchar(100) NOT NULL,
  `dolzhnost` varchar(100) NOT NULL,
  `dyen_rozhdenya` varchar(100) NOT NULL,
  `nomer_telefona` int(100) NOT NULL,
  `pochta` varchar(100) NOT NULL,
  `kod_pola` int(100) NOT NULL,
  `kod_statusa` int(100) NOT NULL,
  `kod_slusby` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `sotrudnik`
--

INSERT INTO `sotrudnik` (`kod_sotrudnika`, `familiya`, `imya`, `otchestvo`, `dolzhnost`, `dyen_rozhdenya`, `nomer_telefona`, `pochta`, `kod_pola`, `kod_statusa`, `kod_slusby`) VALUES
(1, 'Столяров', 'Михаил', 'Иванович', 'менеджер', '01.01.1994', 791912828, 'user1@mail.ru', 1, 1, 1),
(2, 'Бородин', 'Алексей', 'Викторович', 'менеджер', '02.07.1982', 791912829, 'user2@yandex.ru', 1, 1, 1),
(3, 'Смирнова', 'Анастасия', 'Михайловна', 'менеджер', '05.05.1992', 791912821, 'user3@mail.ru', 2, 2, 1),
(4, 'Сергеев', 'Михаил', 'Иванович', 'менеджер', '09.02.1992', 791912321, 'user4@mail.ru', 1, 1, 1),
(5, 'Антипова', 'Юлия', 'Матвеевна', 'менеджер', '08.02.1983', 791323828, 'user5@mail.ru', 2, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `status`
--

CREATE TABLE `status` (
  `kod_statusa` int(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `status`
--

INSERT INTO `status` (`kod_statusa`, `status`) VALUES
(1, 'не уволен'),
(2, 'уволен');

-- --------------------------------------------------------

--
-- Структура таблицы `zakaz`
--

CREATE TABLE `zakaz` (
  `kod_zakaza` int(100) NOT NULL,
  `nazvanie` varchar(100) NOT NULL,
  `data_oformlenya` varchar(100) NOT NULL,
  `obshaya_summa` varchar(100) NOT NULL,
  `status_zakaza` varchar(100) NOT NULL,
  `kod_klienta` int(100) NOT NULL,
  `kod_sotrudnika` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `zakaz`
--

INSERT INTO `zakaz` (`kod_zakaza`, `nazvanie`, `data_oformlenya`, `obshaya_summa`, `status_zakaza`, `kod_klienta`, `kod_sotrudnika`) VALUES
(1, 'Заказ №1', '01.03.2024', '1000', 'принят', 1, 1),
(2, 'Заказ №2', '02.03.2024', '1500', 'оплачен', 2, 2),
(3, 'Заказ №3', '04.03.2024', '15000', 'принят', 3, 3),
(4, 'Заказ №4', '05.03.2024', '100000', 'принят', 4, 4),
(5, 'Заказ №5', '06.03.2024', '150000', 'принят', 5, 5),
(6, 'Заказ №6', '07.03.2024', '200000', 'оплачен', 6, 1),
(7, 'Заказ №7', '08.03.2024', '300000', 'принят', 7, 2),
(8, 'Заказ №8', '10.03.2024', '17000', 'принят', 8, 4),
(9, 'Заказ №9', '11.03.2024', '25000', 'принят', 9, 1),
(10, 'Заказ №10', '14.03.2024', '10000', 'принят', 10, 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `gruz`
--
ALTER TABLE `gruz`
  ADD PRIMARY KEY (`kod_gruza`),
  ADD KEY `kod_slusby` (`kod_slusby`),
  ADD KEY `kod_zakaza` (`kod_zakaza`);

--
-- Индексы таблицы `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`kod_klienta`),
  ADD KEY `kod_pola` (`kod_pola`);

--
-- Индексы таблицы `nakladnaya`
--
ALTER TABLE `nakladnaya`
  ADD PRIMARY KEY (`kod_nakladnoy`),
  ADD KEY `kod_gruza` (`kod_gruza`),
  ADD KEY `kod_sklada` (`kod_sklada`);

--
-- Индексы таблицы `pol`
--
ALTER TABLE `pol`
  ADD PRIMARY KEY (`kod_pola`);

--
-- Индексы таблицы `sklad`
--
ALTER TABLE `sklad`
  ADD PRIMARY KEY (`kod_sklada`),
  ADD KEY `kod_slusby` (`kod_slusby`);

--
-- Индексы таблицы `sluzhba_gruzoperevozok`
--
ALTER TABLE `sluzhba_gruzoperevozok`
  ADD PRIMARY KEY (`kod_slusby`);

--
-- Индексы таблицы `sotrudnik`
--
ALTER TABLE `sotrudnik`
  ADD PRIMARY KEY (`kod_sotrudnika`),
  ADD KEY `kod_pola` (`kod_pola`),
  ADD KEY `kod_statusa` (`kod_statusa`),
  ADD KEY `kod_slusby` (`kod_slusby`);

--
-- Индексы таблицы `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`kod_statusa`);

--
-- Индексы таблицы `zakaz`
--
ALTER TABLE `zakaz`
  ADD PRIMARY KEY (`kod_zakaza`),
  ADD KEY `kod_klienta` (`kod_klienta`),
  ADD KEY `kod_sotrudnika` (`kod_sotrudnika`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `klient`
--
ALTER TABLE `klient`
  MODIFY `kod_klienta` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `sklad`
--
ALTER TABLE `sklad`
  MODIFY `kod_sklada` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `sluzhba_gruzoperevozok`
--
ALTER TABLE `sluzhba_gruzoperevozok`
  MODIFY `kod_slusby` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `sotrudnik`
--
ALTER TABLE `sotrudnik`
  MODIFY `kod_sotrudnika` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `status`
--
ALTER TABLE `status`
  MODIFY `kod_statusa` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `zakaz`
--
ALTER TABLE `zakaz`
  MODIFY `kod_zakaza` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `gruz`
--
ALTER TABLE `gruz`
  ADD CONSTRAINT `gruz_ibfk_1` FOREIGN KEY (`kod_slusby`) REFERENCES `sluzhba_gruzoperevozok` (`kod_slusby`),
  ADD CONSTRAINT `gruz_ibfk_2` FOREIGN KEY (`kod_zakaza`) REFERENCES `zakaz` (`kod_zakaza`);

--
-- Ограничения внешнего ключа таблицы `klient`
--
ALTER TABLE `klient`
  ADD CONSTRAINT `klient_ibfk_1` FOREIGN KEY (`kod_pola`) REFERENCES `pol` (`kod_pola`);

--
-- Ограничения внешнего ключа таблицы `nakladnaya`
--
ALTER TABLE `nakladnaya`
  ADD CONSTRAINT `nakladnaya_ibfk_1` FOREIGN KEY (`kod_gruza`) REFERENCES `gruz` (`kod_gruza`),
  ADD CONSTRAINT `nakladnaya_ibfk_2` FOREIGN KEY (`kod_sklada`) REFERENCES `sklad` (`kod_sklada`);

--
-- Ограничения внешнего ключа таблицы `sklad`
--
ALTER TABLE `sklad`
  ADD CONSTRAINT `sklad_ibfk_1` FOREIGN KEY (`kod_slusby`) REFERENCES `sluzhba_gruzoperevozok` (`kod_slusby`);

--
-- Ограничения внешнего ключа таблицы `sotrudnik`
--
ALTER TABLE `sotrudnik`
  ADD CONSTRAINT `sotrudnik_ibfk_1` FOREIGN KEY (`kod_pola`) REFERENCES `pol` (`kod_pola`),
  ADD CONSTRAINT `sotrudnik_ibfk_2` FOREIGN KEY (`kod_statusa`) REFERENCES `status` (`kod_statusa`),
  ADD CONSTRAINT `sotrudnik_ibfk_3` FOREIGN KEY (`kod_slusby`) REFERENCES `sluzhba_gruzoperevozok` (`kod_slusby`);

--
-- Ограничения внешнего ключа таблицы `zakaz`
--
ALTER TABLE `zakaz`
  ADD CONSTRAINT `zakaz_ibfk_1` FOREIGN KEY (`kod_klienta`) REFERENCES `klient` (`kod_klienta`),
  ADD CONSTRAINT `zakaz_ibfk_2` FOREIGN KEY (`kod_sotrudnika`) REFERENCES `sotrudnik` (`kod_sotrudnika`);
--
-- База данных: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
