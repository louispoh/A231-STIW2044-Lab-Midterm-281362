-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2024 at 08:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookbyte_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_books`
--

CREATE TABLE `tbl_books` (
  `book_id` int(5) NOT NULL,
  `user_id` varchar(5) NOT NULL,
  `book_isbn` varchar(17) NOT NULL,
  `book_title` varchar(200) NOT NULL,
  `book_desc` varchar(2000) NOT NULL,
  `book_author` varchar(100) NOT NULL,
  `book_price` decimal(6,2) NOT NULL,
  `book_qty` int(5) NOT NULL,
  `book_status` varchar(10) NOT NULL,
  `book_date` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_books`
--

INSERT INTO `tbl_books` (`book_id`, `user_id`, `book_isbn`, `book_title`, `book_desc`, `book_author`, `book_price`, `book_qty`, `book_status`, `book_date`) VALUES
(1, '3', '978-0-7475-3269-9', 'Harry Potter and the Philosopher\'s Stone', 'Harry makes close friends and a few enemies during his first year at the school and with the help of his friends, Ron Weasley and Hermione Granger, he faces an attempted comeback by the dark wizard Lord Voldemort, who killed Harry\'s parents, but failed to kill Harry when he was just 15 months old.', 'J.K. Rowling', 200.00, 2, 'Used', '2023-11-27 09:27:18.289638'),
(2, '3', '978-0-439-35548-4', 'The Lord of the Rings', 'One Ring to rule them all, One Ring to find them, One Ring to bring them all, and in the darkness bind them.', 'J.R.R. Tolkien', 500.00, 3, 'Used', '2023-11-27 09:58:52.975503'),
(3, '3', '978-0-316-06529-2', 'The Hitchhiker\'s Guide to the Galaxy', 'Don\'t Panic!', 'Douglas Adams', 250.00, 1, 'Used', '2023-11-27 09:58:52.975503'),
(4, '3', '978-0-099-54281-9', 'Pride and Prejudice', 'It is a truth universally acknowledged, that a single man in possession of a good fortune, must be in want of a wife.', 'Jane Austen', 250.00, 2, 'New', '2023-11-27 09:58:52.975503'),
(5, '3', '978-0-141-00807-0', 'To Kill a Mockingbird', 'In the sleepy town of Maycomb, Alabama, during the 1930s, Scout Finch, a young girl, experiences racial injustice and defends her father, a lawyer defending a black man accused of raping a white woman.', 'Harper Lee', 300.00, 3, 'Used', '2023-11-27 09:58:52.975503'),
(6, '3', '978-0-8052-1128-9', 'The Catcher in the Rye', 'Holden Caulfield is a troubled teenager who is expelled from his boarding school and wanders around New York City, disillusioned with the world around him.', 'J.D. Salinger', 250.00, 1, 'Used', '2023-11-27 09:58:52.975503'),
(7, '3', '978-0-143-03513-8', 'Animal Farm', 'The animals of Manor Farm overthrow their human owners and establish a utopian society, but their ideals are soon corrupted by power and greed.', 'George Orwell', 500.00, 5, 'New', '2023-11-27 09:58:52.975503'),
(8, '3', '978-0-316-06273-0', 'The Great Gatsby', 'The mysterious millionaire Jay Gatsby throws lavish parties in his mansion, hoping to win back his lost love, Daisy Buchanan.', 'F. Scott Fitzgerald', 450.00, 1, 'Used', '2023-11-27 09:58:52.975503'),
(10, '3', '978-0-316-00613-9', 'The Handmaid\'s Tale', 'Offred, a woman forced into sexual servitude, recounts her life in a totalitarian society where women are valued only for their reproductive abilities.', 'Margaret Atwood', 350.00, 2, 'Used', '2023-11-27 09:58:52.975503'),
(11, '3', '978-0-743-29803-2', 'The Thirteenth Tale: A Novel Paperback', 'Reclusive author Vida Winter, famous for her collection of twelve enchanting stories, has spent the past six decades penning a series of alternate lives for herself. ', 'Diane Settlefield', 60.00, 1, 'Used', '2023-11-27 12:46:47.046814'),
(12, '3', '978-0-06-130362-7', 'And Then There Were None', 'Ten strangers are invited to an isolated island and are systematically murdered, one by one. The murderer is among them, but who is it?', 'Agatha Christie', 300.00, 2, 'Used', '2023-11-29 12:06:34.096621'),
(13, '3', '0-399-12321-5', 'Murder on the Orient Express', 'Hercule Poirot is on board the luxurious Orient Express when a murder occurs. He must use his detective skills to solve the case and bring the murderer to justice.', 'Agatha Christie', 350.00, 1, 'Used', '2023-11-29 12:06:34.096621'),
(14, '3', '0-06-092798-7', 'The Hound of the Baskervilles', 'Sherlock Holmes and his partner Dr. Watson investigate a series of strange and deadly events on the moors of Dartmoor.', 'Arthur Conan Doyle', 280.00, 3, 'New', '2023-11-29 12:06:34.096621'),
(15, '3', '0-7475-6320-6', 'The Adventures of Sherlock Holmes', 'A collection of twelve short stories featuring the brilliant detective Sherlock Holmes and his trusted companion Dr. Watson.', 'Arthur Conan Doyle', 400.00, 2, 'New', '2023-11-29 12:06:34.096621'),
(16, '3', '0-14-194949-5', 'The Maltese Falcon', 'Sam Spade, a private investigator in San Francisco, is hired to find a priceless jeweled falcon, but he soon finds himself entangled in a web of deceit and murder.', 'Dashiell Hammett', 320.00, 1, 'Used', '2023-11-29 12:06:34.096621'),
(17, '3', '0-394-55808-X', 'The Big Sleep', 'Raymond Chandler\'s classic detective novel follows Philip Marlowe, a private investigator, as he investigates the mysterious disappearance of a wealthy man\'s daughter.', 'Raymond Chandler', 350.00, 2, 'New', '2023-11-29 12:06:34.096621'),
(18, '3', '0-316-32223-X', 'In Cold Blood', 'Truman Capote\'s non-fiction novel recounts the real-life murder of a wealthy farm family in Kansas and the subsequent trial and execution of the killers.', 'Truman Capote', 400.00, 1, 'Used', '2023-11-29 12:06:34.096621'),
(20, '3', '0-399-12327-3', 'The Postman Always Rings Twice', 'Frank Chambers, a drifter, falls in love with Cora Knapp, a married diner waitress. Together, they plot to kill Cora\'s husband and collect the insurance money.', 'James M. Cain', 300.00, 3, 'Used', '2023-11-29 12:06:34.096621'),
(24, '3', '978-0-316-00723-9', 'The Haunted Token', 'In \"The Haunted Token,\" an enigmatic coin unleashes a spectral tale, blending suspense and the supernatural in a gripping mystery unraveling secrets.', 'J.T. Shadow', 300.00, 5, 'New', '2024-02-16 14:59:34.938192');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(5) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_phone` varchar(12) NOT NULL,
  `user_password` varchar(40) NOT NULL,
  `user_type` varchar(10) NOT NULL,
  `user_address` varchar(800) NOT NULL,
  `user_datereg` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_email`, `user_name`, `user_phone`, `user_password`, `user_type`, `user_address`, `user_datereg`) VALUES
(3, 'louispoh1128@gmail.com', 'Louis Poh', '', 'd7b2fbb51014b9d485332ea231c7af27bcab7dd2', '', '', '2024-02-15 08:01:12.582952'),
(12, 'tommyhil@gmail.com', 'Tom Segura', '', '01982570586a04867a99a1428045152e6010c02c', '', '', '2024-02-16 08:22:25.010587'),
(13, 'rupee@gmail.com', 'Rupert Murdoch', '', '78ff8f25513706b822372afad665fcf60b778537', '', '', '2024-02-16 08:26:16.170155'),
(14, 'roger@gmail.com', 'Roger', '', 'cd1427961c473b1c0351b9ba7eac1a0c0656b278', '', '', '2024-02-16 08:41:28.020307'),
(15, 'ivan@gmail.com', 'Ivan', '', '60bdb0b9e35ab2acad639e4f662d98705e38d58e', '', '', '2024-02-16 09:08:12.408533');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_books`
--
ALTER TABLE `tbl_books`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `book_isbn` (`book_isbn`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_books`
--
ALTER TABLE `tbl_books`
  MODIFY `book_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
