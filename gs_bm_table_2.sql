-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2024-01-05 03:04:05
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
-- データベース: `gs_bm_table_2`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `bookmark`
--

CREATE TABLE `bookmark` (
  `id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `img_url` varchar(300) NOT NULL,
  `comment` varchar(400) NOT NULL,
  `favorite` tinyint(1) NOT NULL DEFAULT 0,
  `user` int(11) NOT NULL COMMENT 'user_id@user',
  `timestamp` datetime NOT NULL,
  `timestamp_update` datetime NOT NULL,
  `ref_url` varchar(300) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `bookmark`
--

INSERT INTO `bookmark` (`id`, `name`, `img_url`, `comment`, `favorite`, `user`, `timestamp`, `timestamp_update`, `ref_url`, `tag`, `public`) VALUES
(4, '[value-2]2＿うｐｄ', './img/bm_img/スクリーンショット 2023-11-18 165216.png', 'ええええええええｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋｋsdfsdfｋｋｋｋｋｋ', 1, 1, '2024-01-04 12:56:44', '2024-01-05 09:49:00', '', '[value-10]', 0),
(5, '[value-2]3', './img/bm_img/スクリーンショット 2024-01-01 184214.png', '[value-4]', 1, 1, '2024-01-04 12:56:43', '2024-01-05 10:30:50', 'https://qiita.com/okdyy75/items/669dd51b432ee2c1dfbc', '[value-10]', 1),
(6, '[value-2]', './img/bm_img/スクリーンショット 2023-12-28 135705.png', '[value-4]', 1, 2, '2024-01-04 12:56:43', '2024-01-05 10:30:05', '[value-9]', '[value-10]', 0),
(7, '[value-2]2', './img/bm_img/スクリーンショット 2024-01-01 004117.png', '[value-4]kjkiouyhg', 1, 2, '2024-01-04 12:56:43', '2024-01-05 10:30:34', '[value-9]', '[value-10]', 0),
(14, 'ffff', './img/bm_img/スクリーンショット 2023-12-29 090254.png', 'fff', 0, 2, '0000-00-00 00:00:00', '2024-01-05 10:29:30', 'fffd', '', 0),
(15, 'ffff', './img/bm_img/ダウンロード.jpg', 'fff', 0, 2, '0000-00-00 00:00:00', '2024-01-05 10:28:41', 'fffdfsdfsdfs', '', 0),
(16, 'ffff', './img/bm_img/スクリーンショット 2023-11-23 035353.png', 'fffdfghj', 0, 2, '0000-00-00 00:00:00', '2024-01-05 10:29:42', 'fffd', '', 0),
(17, '', './img/bm_img/スクリーンショット 2023-11-18 165216.png', 'kasxdcfvghbjnkm,lsdfsdf', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'sdf', '', 0),
(18, 's', './img/bm_img/スクリーンショット 2024-01-01 184837.png', 's', 0, 2, '2024-01-05 10:28:21', '2024-01-05 10:31:08', 's', '', 0);

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
(1, 'daisuke', '$2y$10$.HJ.ne2cfBmPg9M/BzbhSO.ONgHeFic7m4RtkxSLtNx8yYLUFBFSC', 'daisuke'),
(2, 'test1', '$2y$10$HCoebqpk1qkKodzBZ0QnA.daqqi6HCLlIR9EtPHDvGAddbuvx.enG', 'test1のひと'),
(12, 'father', '$2y$10$7UmXxIfifdnGuZASTwGx0e1XVLHwjUv71reYsTST2rwEkiOkr6.fm', 'ちち'),
(17, 'aaaa', 'aaaa_upd', 'cccc_upd');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `bookmark`
--
ALTER TABLE `bookmark`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user`);

--
-- テーブルのインデックス `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `bookmark`
--
ALTER TABLE `bookmark`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- テーブルの AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `bookmark`
--
ALTER TABLE `bookmark`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
