-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2017 at 04:29 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `posted_at` datetime NOT NULL,
  `post_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `follower_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `user_id`, `follower_id`) VALUES
(3, 5, 1),
(4, 1, 3),
(5, 4, 1),
(10, 3, 2),
(16, 1, 2),
(17, 3, 9),
(19, 3, 1),
(21, 6, 1),
(22, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_tokens`
--

CREATE TABLE `login_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` char(64) NOT NULL DEFAULT '',
  `user_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_tokens`
--

INSERT INTO `login_tokens` (`id`, `token`, `user_id`) VALUES
(18, 'af803fcf45c5d9a276173bba12b17b68a2b31ca9', 4),
(85, 'd9d61bd8a7463acbdfbcf38e8a3429b48036566f', 2),
(86, '406657ffe369a941a8cbb51b53c97e19e314b5db', 2),
(104, '272f4d89c939b37fe699289061a962b364681503', 2),
(105, 'd512db19dbb7331a1f4d57d96e20c7c5ca92dbce', 1),
(106, 'cfa2135915f5423d118580cf51b78d09637020d1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_tokens`
--

CREATE TABLE `password_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` char(64) NOT NULL DEFAULT '',
  `user_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `password_tokens`
--

INSERT INTO `password_tokens` (`id`, `token`, `user_id`) VALUES
(1, '6ab0b567b94490806096baa3fa664449733102e5', 5),
(2, '75bdbf02cf902a9585fb0d125047d040cd0a3fa0', 5);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `body` varchar(160) NOT NULL DEFAULT '',
  `posted_at` datetime NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `likes` int(11) UNSIGNED NOT NULL,
  `topics` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `posted_at`, `user_id`, `likes`, `topics`) VALUES
(1, 'this shit is crazy', '2017-05-24 16:23:42', 1, 0, ''),
(2, 'who has the answers to the 2016 past questions', '2017-05-24 16:23:59', 1, 0, ''),
(3, 'make me win every time i sit here to read', '2017-05-24 16:24:43', 1, 0, ''),
(4, 'this is my life and I\'m gonna do what i want', '2017-05-26 09:07:23', 1, 0, ''),
(5, 'archer is the best tv show ever!', '2017-05-26 09:18:52', 1, 1, ''),
(6, 'this is me', '2017-05-26 09:19:42', 1, 0, ''),
(7, 'damn cake. eat the damn cake anna mae', '2017-05-26 10:07:19', 1, 0, ''),
(8, 'most of this shit is retarded nigga!', '2017-05-26 14:21:48', 1, 0, ''),
(9, 'this is ruth\'s profile\r\n', '2017-05-26 15:08:29', 2, 0, ''),
(10, 'come join me and follow the ladder', '2017-05-26 15:08:41', 2, 0, ''),
(11, 'mostly the exam week is gonna drain me', '2017-05-27 09:14:09', 1, 1, ''),
(12, 'make me a sandwich and make it bigger than life', '2017-05-27 15:47:01', 1, 0, ''),
(13, 'what\'s up homie?! who\'s got questions on the 2017 biology', '2017-05-27 15:47:33', 1, 0, ''),
(14, '<script>', '2017-05-27 15:54:35', 1, 0, ''),
(15, '<b> homie what\'s up </b>', '2017-05-27 15:54:54', 1, 1, ''),
(16, 'moses', '2017-05-28 09:01:27', 1, 0, ''),
(17, ';fkdjgvbf', '2017-05-29 10:41:13', 1, 1, ''),
(18, 'tiwa savage', '2017-05-29 15:31:47', 1, 1, ''),
(19, 'all over me this beat is crazy ', '2017-05-29 15:32:00', 1, 0, ''),
(20, 'all that i have is invested in this examination', '2017-05-29 22:23:03', 2, 1, ''),
(21, 'holy is thy Lord', '2017-05-29 22:23:10', 2, 0, ''),
(22, 'molokoom', '2017-05-29 22:23:17', 2, 1, ''),
(23, 'sia! masa let there be rain', '2017-05-29 22:23:29', 2, 0, ''),
(24, 'oh saaa?!', '2017-05-29 22:23:37', 2, 0, ''),
(25, 'this is good', '2017-05-29 22:38:27', 2, 0, ''),
(27, 'tiwa savage is a savage and she is here on twitter and she follows me', '2017-05-29 22:54:57', 1, 1, ''),
(28, 'holy is the Lord almighty', '2017-06-07 10:14:35', 3, 0, ''),
(29, 'holy is the Lord almighty', '2017-06-07 10:15:45', 3, 2, ''),
(30, 'i am gonna do great in this exams', '2017-06-09 09:18:10', 2, 0, ''),
(31, 'this shit is amazing', '2017-06-09 09:19:00', 2, 3, ''),
(32, '@Ruth is a girl', '2017-06-11 01:09:50', 1, 0, ''),
(36, '@moses is a boy', '2017-06-11 03:17:06', 1, 0, ''),
(37, '#WASSCE 2017', '2017-06-11 03:17:53', 1, 0, ''),
(38, '#BECE exams now', '2017-06-11 03:48:13', 1, 0, 'BECE,'),
(39, 'who has any notes on #Javascript or #C++ ?', '2017-06-11 04:08:43', 1, 1, 'Javascript,C++,'),
(40, 'pls share the notes on #JavaScript', '2017-06-11 04:21:23', 1, 1, 'JavaScript,'),
(41, 'I just got the answers to the #javascript #BECE questions', '2017-06-11 04:27:52', 3, 1, 'javascript,BECE,'),
(42, '@Kenny holla at me for the #javascript questions', '2017-06-11 20:54:03', 2, 0, 'javascript,'),
(43, 'i am new here but i wanna know more about #BECE', '2017-06-12 07:20:33', 6, 0, 'BECE,'),
(44, 'hi, i am new here', '2017-06-21 13:00:10', 9, 0, ''),
(45, 'ergtwergwef', '2017-06-21 14:57:42', 1, 0, ''),
(46, 'hyjhvbb', '2017-07-04 16:18:20', 1, 0, ''),
(47, 'this site is awesome! #NOBAGAWAYA!\r\n', '2017-08-31 13:40:33', 1, 1, 'NOBAGAWAYA!\r\n,'),
(48, 'this is Ruth\'s profile\r\n', '2017-09-02 09:42:11', 2, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`id`, `post_id`, `user_id`) VALUES
(1, 5, 1),
(6, 15, 1),
(12, 18, 1),
(14, 17, 1),
(18, 29, 3),
(28, 31, 2),
(31, 40, 1),
(32, 39, 1),
(33, 41, 1),
(34, 29, 1),
(35, 27, 1),
(36, 11, 1),
(37, 22, 1),
(39, 20, 1),
(41, 47, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` int(11) NOT NULL,
  `quote_by` longtext NOT NULL,
  `quote` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `email` text,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `school` varchar(50) NOT NULL,
  `FullName` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `verified`, `school`, `FullName`) VALUES
(1, 'kenny', '$2y$10$p1w6rGlW9zA1gXhonLSYGusgJgpy1byA/esWIzy7GAl0zHBSxACZe', 'boamponsemken@yahoo.com', 1, 'Ho poly', 'Ken Boamponsem'),
(2, 'Ruth', '$2y$10$XpEPiWG3wyjjd6ee/UUGaOKwu2O8KOfxRhs9PcP/bdh3Z6qlZZLJK', 'r@gmail.com', 0, 'Ho poly', 'Ruth Owusu'),
(3, 'moses', '$2y$10$NKi00l/zL/r29qaevn8AnetU4yKFQKzMDbejXgSe/.FZNs2HlBMbO', 'mo@gmail.com', 0, 'Infant Jesus', 'Moses Olonka'),
(4, 'Verified', '$2y$10$CQR8njHBaZ28QmmkP7pHD.Yd7Pw7jjinSu50Ok/gqPwfJU3kYn3iO', 'a@gmail.com', 1, '', ''),
(5, 'Christopher', '$2y$10$bdFumNk/FfFHfXNX/ltnY.vm55Odcne7lbd70FgM4/2R0raOpPdtW', 'chris@gmail.com', 0, 'KPOLY', ''),
(6, 'Newcomer', '$2y$10$8X7P7e4MjPTJUlGYXP.Nu.5kPzcYbJw5GVIWhuywdDKAtCb1refbm', 'ok@gmail.com', 0, 'Okess', ''),
(7, 'NkrumahGARRO', '$2y$10$FO/VikuSIeo1G3oF7YNpOerwLHG3h.fYlfqRGtmmez/5PH6tu5iAW', 'NK@GMAIL.COM', 0, 'KPOLY', ''),
(8, 'KhanWest', '$2y$10$Z3fPwRxVSB8bG0PvyiCBSeOJCdTHT0n1MJrbYQHjh1HawauEWnXx2', 'kh@gmail.com', 0, 'OKESS', 'Kenneth Nana Boamponsem'),
(9, 'nkmensah', '$2y$10$M4kXV1B31uetPaU1ITx1jO0C/wVyKy6RwF5IOHLHqtJzP431Q/ovu', 'kn@gmail.com', 0, 'University of Ghana', 'Nkrumah Mensah'),
(10, 'QWsdqwdqw', '$2y$10$rBj0ztl4X/kBB2QgIN.mgu7lAke.9CVKz4TA1QSWuymB2CS1MlLI6', 'sdf@gmail.com', 0, 'wasd', 'wADQASFWQA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_tokens`
--
ALTER TABLE `login_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `password_tokens`
--
ALTER TABLE `password_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `login_tokens`
--
ALTER TABLE `login_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `password_tokens`
--
ALTER TABLE `password_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `login_tokens`
--
ALTER TABLE `login_tokens`
  ADD CONSTRAINT `login_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD CONSTRAINT `post_likes_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_likes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
