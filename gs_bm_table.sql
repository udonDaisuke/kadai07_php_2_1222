-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-12-16 04:04:54
-- サーバのバージョン： 10.4.32-MariaDB
-- PHP のバージョン: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_bm_table`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `bm_main`
--

CREATE TABLE `bm_main` (
  `id` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `URL` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `summary` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `postby` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `bm_main`
--

INSERT INTO `bm_main` (`id`, `name`, `URL`, `summary`, `postby`, `date`) VALUES
(1, 'ああ', 'あああ', 'ああああ', 'daisuke', '0000-00-00 00:00:00'),
(2, 'ああ', 'あああ', 'ああああ', 'daisuke', '0000-00-00 00:00:00'),
(3, 'ああ', 'あああ', 'ああああ', 'daisuke', '0000-00-00 00:00:00'),
(4, 'ｄｓ', 'ｓｄ', 'ｄｓ', 'daisuke', '0000-00-00 00:00:00'),
(5, 'あそこのおにく', 'tesrt', 'そんなにうまくない', 'daisuke', '0000-00-00 00:00:00'),
(6, 'そこのケーキ', 'tesrt', 'まぁまぁうまい', 'daisuke', '0000-00-00 00:00:00'),
(7, 'おにく', 'oniku.com', 'まぁまぁ', 'daisuke', '0000-00-00 00:00:00'),
(8, 'そば', 'そなななな', 'さいきょおおう', 'daisuke', '0000-00-00 00:00:00'),
(9, 'ｚ', 'ｚ', 'ｚ', 'daisuke', '0000-00-00 00:00:00'),
(10, 'ｓ', 'ｓ', 'ｓ', 'daisuke', '0000-00-00 00:00:00'),
(11, 'ｄふぉｋｈ', 'ｓｄｌｋｆｊ', 'ｓｄ；ｌｆｊ', 'daisuke', '0000-00-00 00:00:00'),
(12, 'ｄｌｆｌ', 'ｌｄｆｋｇ', 'ｌｄｆｊ', 'daisuke', '0000-00-00 00:00:00'),
(13, 'ｓｄ', 'ｓｄ', 'ｓｄ', 'daisuke', '0000-00-00 00:00:00'),
(14, 'あｓｊｋ', 'あｓｄｌｋｊ', 'あｓｄ；ｊ', 'daisuke', '0000-00-00 00:00:00'),
(15, 'ｓ', 'ｓ', 'ｓ', 'daisuke', '0000-00-00 00:00:00'),
(16, 'ｆｓｋｊｈ', 'あｄｊｆｈｆｊ', 'ｋｊｄｓｆｈ', 'daisuke', '0000-00-00 00:00:00'),
(17, 'alshd', 'kjh', 'kj', 'daisuke', '0000-00-00 00:00:00'),
(18, 'lksjd', 'lkj', 'lkj', 'daisuke', '0000-00-00 00:00:00'),
(19, 'lk', 'dfk', 'slkj', 'daisuke', '0000-00-00 00:00:00'),
(20, 'kkjg', 'kjhk', 'kjh', 'daisuke', '0000-00-00 00:00:00'),
(21, 'skldfjkl', 'hjkld', 'sd', 'daisuke', '0000-00-00 00:00:00'),
(22, 'skldfjkl', 'hjkld', 'sdc', 'daisuke', '0000-00-00 00:00:00'),
(23, 'kljds', 'asd', 'asd', 'daisuke', '0000-00-00 00:00:00'),
(24, 'kljds', 'asd', 'asd', 'daisuke', '0000-00-00 00:00:00'),
(25, 'kljsadqs', 'asd', 'asd', 'daisuke', '0000-00-00 00:00:00'),
(26, 'asd', 'sd', 'sd', 'daisuke', '0000-00-00 00:00:00'),
(27, 'sklahd', 'lkj', 'lk', 'daisuke', '0000-00-00 00:00:00'),
(28, 'kjh', 'lkj', 'lk', 'daisuke', '0000-00-00 00:00:00'),
(29, 'kjh', 'lkj', 'lk;lk', 'daisuke', '0000-00-00 00:00:00'),
(30, 'kjh', 'lkj', 'lk;lk', 'daisuke', '0000-00-00 00:00:00'),
(31, 'kjh', 'lkj', 'lk;lk', 'daisuke', '0000-00-00 00:00:00'),
(32, ';l', ':;l:', ':;l', 'daisuke', '0000-00-00 00:00:00'),
(33, 'イイね機能', 'むり', 'たどりつけず・・・', 'daisuke', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `bm_tag`
--

CREATE TABLE `bm_tag` (
  `id` int(11) NOT NULL,
  `tag_1` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tag_2` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tag_3` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `user`
--

INSERT INTO `user` (`id`, `user_id`, `pass`, `nickname`) VALUES
(6, 'test2', '$2y$10$8ekIOKKZYfPYeXkIYWvfC.u6OYrlmWkfBq3GtAYPDFgsDSZ0vSMQi', 'daisuke'),
(8, 'daisuke', '$2y$10$.HJ.ne2cfBmPg9M/BzbhSO.ONgHeFic7m4RtkxSLtNx8yYLUFBFSC', 'daisuke');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `bm_main`
--
ALTER TABLE `bm_main`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `bm_main`
--
ALTER TABLE `bm_main`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- テーブルの AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
