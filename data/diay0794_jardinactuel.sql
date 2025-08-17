-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generated on: Fri, 24 Mar 2023 at 21:37
-- Server version: 10.6.12-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `current_garden`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Guides & Tips'),
(2, 'Permaculture');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `date` datetime NOT NULL,
  `published` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `author_id`, `post_id`, `content`, `date`, `published`) VALUES
(2, 6, 1, 'Great article!', '2023-03-03 00:38:27', 1),
(3, 7, 2, 'Interesting', '2023-03-03 00:38:27', 1),
(4, 6, 3, 'Thank you for all this information', '2023-03-03 00:38:27', 1),
(5, 6, 5, 'Always a pleasure to read your articles', '2023-03-03 00:38:27', 1),
(6, 7, 5, 'Great tips!', '2023-03-03 00:38:27', 1),
(7, 3, 4, 'Thank you for all these products! Looks great', '2023-03-03 00:38:27', 1),
(8, 6, 2, 'For my geraniums, what could I use?', '2023-03-03 00:38:27', 1),
(9, 7, 5, 'Thank you for these tips :)', '2023-03-19 21:34:53', 1),
(15, 3, 13, 'Thank you for these tips, I will try them in my garden!', '2022-06-02 00:00:00', 1),
(16, 6, 14, 'I did not know that aromatic plants had so many benefits, thank you for this article!', '2022-06-06 00:00:00', 1),
(17, 6, 15, 'Great article, very useful for gardening beginners!', '2022-06-11 00:00:00', 1),
(18, 7, 16, 'I love climbing plants, thank you for these variety ideas!', '2022-06-16 00:00:00', 1),
(19, 6, 17, 'The most fragrant flowers, my favorite topic! Thank you for these tips.', '2022-06-21 00:00:00', 1),
(20, 7, 17, 'What a terrible article!', '2022-06-21 00:00:00', 1),
(21, 3, 18, 'Very good article, I was able to create my organic vegetable garden thanks to these tips!', '2022-07-02 00:00:00', 1),
(22, 6, 19, 'Thank you for this list of vegetables, I planted zucchini and tomatoes and they grew well!', '2022-07-06 00:00:00', 1),
(23, 7, 20, 'I was looking for easy-to-maintain indoor plants, thank you for this selection!', '2022-07-11 00:00:00', 1),
(24, 7, 21, 'I created a flowering hedge in my garden and it is magnificent, thank you for the advice!', '2022-07-16 00:00:00', 1),
(25, 6, 22, 'I did not know how to dry my aromatic plants, thank you for this very useful article!', '2022-07-21 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230227002537', '2023-02-27 01:25:44', 206),
('DoctrineMigrations\\Version20230302232925', '2023-03-03 00:29:31', 35),
('DoctrineMigrations\\Version20230313101142', '2023-03-13 11:11:59', 47);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `date` datetime NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `author_id`, `category_id`, `title`, `content`, `date`, `picture`) VALUES
(1, 3, 1, '6 original plants to grow in your apartment', 'Do you dream of a little greenery in your apartment, but do not know what to plant? Do not worry, there are original plants to bring a touch of nature to your home!', '2023-03-03 00:30:23', 'http://localhost:8081/uploads/posts/post1.png'),
(2, 6, 1, 'The different types of soil', 'Heather soil, universal, horticultural, for seedlings, ... Do you feel lost? Do not worry, nothing complicated! To each type of planting its soil.', '2023-03-03 00:30:23', 'http://localhost:8081/uploads/posts/post2.png'),
(3, 6, 1, 'The urban garden guide in shape', 'A garden in the city? This imposes some constraints. Find the best advice for urban gardening in this article!', '2023-03-13 12:34:53', 'http://localhost:8081/uploads/posts/post4.png'),
(4, 7, 2, 'Pots and planters to test this summer', 'Discover the trendiest pots and planters and prepare your 2023 gardening summer!', '2023-03-13 15:34:53', 'http://localhost:8081/uploads/posts/post5.png'),
(5, 7, 2, 'The 7 best tips to maintain your vegetable garden', 'Keeping your vegetable garden in shape all year round is not always very simple... Find the 7 best tips to maintain your vegetable garden!', '2023-03-13 18:37:10', 'http://localhost:8081/uploads/posts/post6.png'),
(13, 3, 1, '10 tips to succeed with your vegetable garden', 'Here are the 10 essential tips to succeed with your vegetable garden this summer...', '2023-06-01 00:00:00', 'http://localhost:8081/uploads/posts/post3.png'),
(14, 3, 2, 'The benefits of aromatic plants', 'Discover the many benefits of aromatic plants for your health...', '2022-06-05 00:00:00', 'http://localhost:8081/uploads/posts/post7.png'),
(15, 3, 1, 'How to plant tomatoes', 'Everything you need to know to plant tomatoes and grow them at home...', '2022-06-10 00:00:00', 'http://localhost:8081/uploads/posts/post8.png'),
(16, 6, 2, 'Climbing plants to beautify your garden', 'Discover the different climbing plants to add greenery and color to your garden...', '2022-06-15 00:00:00', 'http://localhost:8081/uploads/posts/post9.png'),
(17, 7, 1, 'The most fragrant flowers for your garden', 'Discover the most fragrant flowers to add a touch of sweetness to your garden...', '2022-06-20 00:00:00', 'http://localhost:8081/uploads/posts/post10.png'),
(18, 3, 1, 'How to create an organic vegetable garden', 'Discover how to create an organic vegetable garden step by step...', '2022-07-01 00:00:00', 'http://localhost:8081/uploads/posts/post11.png'),
(19, 6, 1, 'Vegetables to plant in summer', 'Discover the vegetables that are planted in summer for a successful harvest...', '2022-07-05 00:00:00', 'http://localhost:8081/uploads/posts/post12.png'),
(20, 7, 2, '10 easy-to-maintain indoor plants', 'Here is a selection of 10 easy-to-maintain indoor plants, even for beginners...', '2022-07-10 00:00:00', 'http://localhost:8081/uploads/posts/post16.png'),
(21, 7, 1, 'How to create a flowering hedge', 'Discover how to create a flowering hedge to beautify your garden...', '2022-07-15 00:00:00', 'http://localhost:8081/uploads/posts/post17.png'),
(22, 6, 2, 'How to dry aromatic plants', 'Discover how to dry your aromatic plants to preserve them longer...', '2022-07-20 00:00:00', 'http://localhost:8081/uploads/posts/post18.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `name`) VALUES
(3, 'admin@admin.fr', '[\"ROLE_USER\", \"ROLE_ADMIN\"]', '$2y$13$.F6QrNbnwe8m.cg0IjGwxOywPJ7QYrsb.eftsfJmbXGUkC1ZgJ4i6', 'Administrator'),
(6, 'john.doe@example.com', '[\"ROLE_USER\", \"ROLE_ADMIN\"]', '$2y$13$.F6QrNbnwe8m.cg0IjGwxOywPJ7QYrsb.eftsfJmbXGUkC1ZgJ4i6', 'John Doe'),
(7, 'jane.smith@example.com', '[\"ROLE_USER\", \"ROLE_ADMIN\"]', '$2y$13$.F6QrNbnwe8m.cg0IjGwxOywPJ7QYrsb.eftsfJmbXGUkC1ZgJ4i6', 'Jane Smith');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526CF675F31B` (`author_id`),
  ADD KEY `IDX_9474526C4B89032C` (`post_id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5A8A6C8DF675F31B` (`author_id`),
  ADD KEY `IDX_5A8A6C8D12469DE2` (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C4B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  ADD CONSTRAINT `FK_9474526CF675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_5A8A6C8D12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_5A8A6C8DF675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;