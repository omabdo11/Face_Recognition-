-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2025 at 08:48 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smart_attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `period_id` bigint(20) UNSIGNED NOT NULL,
  `location_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `week_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`student_id`, `course_id`, `day`, `period_id`, `location_name`, `created_at`, `updated_at`, `week_id`) VALUES
(74, '19042554-1c58-3c50-bb7d-4cbc1210d93b', 'Tuesday', 4, 'commodi Hall', '2025-02-20 18:11:45', '2025-02-20 18:11:45', 1),
(40, '000d458a-c354-3e6a-9544-bd776b3cfc77', 'Saturday', 2, 'fugiat Hall', '2025-02-20 18:16:00', '2025-02-20 18:16:00', 1),
(15, '000d458a-c354-3e6a-9544-bd776b3cfc77', 'Saturday', 2, 'fugiat Hall', '2025-02-20 18:16:26', '2025-02-20 18:16:26', 2),
(15, '000d458a-c354-3e6a-9544-bd776b3cfc77', 'Saturday', 2, 'fugiat Hall', '2025-02-20 18:18:51', '2025-02-20 18:18:51', 1),
(41, '000d458a-c354-3e6a-9544-bd776b3cfc77', 'Saturday', 2, 'fugiat Hall', '2025-02-20 18:18:51', '2025-02-20 18:18:51', 1),
(63, '000d458a-c354-3e6a-9544-bd776b3cfc77', 'Saturday', 2, 'fugiat Hall', '2025-02-20 18:18:52', '2025-02-20 18:18:52', 1),
(41, '000d458a-c354-3e6a-9544-bd776b3cfc77', 'Saturday', 2, 'fugiat Hall', '2025-02-20 18:47:11', '2025-02-20 18:47:11', 3),
(63, '000d458a-c354-3e6a-9544-bd776b3cfc77', 'Saturday', 2, 'fugiat Hall', '2025-02-20 18:47:11', '2025-02-20 18:47:11', 2),
(40, '000d458a-c354-3e6a-9544-bd776b3cfc77', 'Saturday', 2, 'fugiat Hall', '2025-02-20 18:47:11', '2025-02-20 18:47:11', 3),
(53, '19042554-1c58-3c50-bb7d-4cbc1210d93b', 'Tuesday', 4, 'commodi Hall', '2025-02-20 18:51:32', '2025-02-20 18:51:32', 1),
(97, '19042554-1c58-3c50-bb7d-4cbc1210d93b', 'Tuesday', 4, 'commodi Hall', '2025-02-20 18:51:33', '2025-02-20 18:51:33', 1),
(74, '19042554-1c58-3c50-bb7d-4cbc1210d93b', 'Tuesday', 4, 'commodi Hall', '2025-02-20 19:00:59', '2025-02-20 19:00:59', 2),
(53, '19042554-1c58-3c50-bb7d-4cbc1210d93b', 'Tuesday', 4, 'commodi Hall', '2025-02-20 19:00:59', '2025-02-20 19:00:59', 2),
(97, '19042554-1c58-3c50-bb7d-4cbc1210d93b', 'Tuesday', 4, 'commodi Hall', '2025-02-20 19:00:59', '2025-02-20 19:00:59', 2),
(85, '19042554-1c58-3c50-bb7d-4cbc1210d93b', 'Tuesday', 4, 'commodi Hall', '2025-02-20 19:01:00', '2025-02-20 19:01:00', 2),
(120, 'b8f876a9-0d9d-323c-83a8-8ed3a3fe52e8', 'Monday', 5, 'commodi Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 8),
(206, 'ff6d6dff-7080-3311-992b-64778811f032', 'Tuesday', 4, 'maxime Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 9),
(264, '2a762d09-3914-355a-9c0c-ce6f417ade0f', 'Wednesday', 1, 'ex Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 5),
(87, '478c31ab-018c-3c30-bdb6-d28cd6e9feb0', 'Tuesday', 4, 'ipsam Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 1),
(116, '132513f4-e36f-3d3c-9c82-d89180f0f0fc', 'Monday', 1, 'fugiat Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 7),
(292, '41d6ed21-83d0-32bd-a974-d7f067e82b19', 'Monday', 4, 'earum Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 13),
(242, '55797b6b-014f-3617-b4ec-b4555fff2fad', 'Thursday', 4, 'ipsam Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 9),
(34, '40e4eb6e-f457-3080-ac59-ad6d720904cf', 'Sunday', 1, 'eligendi Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 8),
(191, '5f8e83dd-0b47-31fc-b47f-3aa8013ddbd5', 'Wednesday', 3, 'laudantium Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 2),
(174, '5bdb4d01-5818-3b46-b90e-70bec964eeb7', 'Saturday', 2, 'fuga Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 8),
(27, 'ff6d6dff-7080-3311-992b-64778811f032', 'Tuesday', 4, 'ipsam Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 1),
(137, '132513f4-e36f-3d3c-9c82-d89180f0f0fc', 'Sunday', 3, 'laudantium Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 12),
(161, '3ea86a46-baf0-3d6e-97fb-6bc4ac2af48d', 'Tuesday', 3, 'aliquam Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 6),
(105, 'ff6d6dff-7080-3311-992b-64778811f032', 'Saturday', 1, 'fugiat Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 4),
(240, 'd03e9026-7deb-3897-8f09-ff1c438dd6c0', 'Wednesday', 4, 'veritatis Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 12),
(13, '69f3bc25-700b-3a1e-a3d9-82aa6958fc42', 'Saturday', 5, 'incidunt Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 6),
(286, '5bf63d62-d905-36b3-8734-78581cf4a8bd', 'Thursday', 2, 'modi Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 1),
(175, 'cdaa17ec-4b27-35c0-90f2-bd8e2279be58', 'Sunday', 4, 'non Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 7),
(182, '4a1fc97e-a7e3-3ebe-bb4e-1df6baaafb85', 'Tuesday', 1, 'earum Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 8),
(125, '5f8e83dd-0b47-31fc-b47f-3aa8013ddbd5', 'Wednesday', 4, 'modi Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 12),
(45, 'b131c014-2678-3d9d-b6cd-277a72d01266', 'Monday', 1, 'iste Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 7),
(169, '38b32e78-5fb6-3b37-af2b-679dfa604b6a', 'Monday', 2, 'eos Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 4),
(195, '1531cef7-704b-32f3-a304-96ee41d7ed6b', 'Sunday', 5, 'ullam Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 8),
(256, '636465d7-9068-39a8-978b-0a1bdd9da457', 'Tuesday', 4, 'aut Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 6),
(278, 'b8f876a9-0d9d-323c-83a8-8ed3a3fe52e8', 'Saturday', 4, 'modi Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 13),
(143, 'cf783432-317e-3cd8-b659-f08dd55d0c9d', 'Thursday', 3, 'incidunt Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 4),
(127, 'cdaa17ec-4b27-35c0-90f2-bd8e2279be58', 'Wednesday', 4, 'eligendi Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 6),
(163, 'd03e9026-7deb-3897-8f09-ff1c438dd6c0', 'Sunday', 3, 'officia Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 4),
(254, '5bf63d62-d905-36b3-8734-78581cf4a8bd', 'Monday', 3, 'fugiat Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 9),
(73, 'b8f876a9-0d9d-323c-83a8-8ed3a3fe52e8', 'Thursday', 2, 'ex Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 11),
(178, '3ea86a46-baf0-3d6e-97fb-6bc4ac2af48d', 'Saturday', 4, 'hic Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 13),
(99, '39e639a9-8c60-3998-aa2d-e87787a3a700', 'Thursday', 5, 'fugiat Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 2),
(239, 'ba75b1e6-e5cb-326e-a842-6eb1724a5804', 'Tuesday', 3, 'quibusdam Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 9),
(88, '30fd38b0-3165-3c36-9e2e-327a4bd733f9', 'Monday', 5, 'ipsam Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 11),
(54, '000d458a-c354-3e6a-9544-bd776b3cfc77', 'Monday', 3, 'eligendi Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 13),
(3, '55797b6b-014f-3617-b4ec-b4555fff2fad', 'Wednesday', 4, 'inventore Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 13),
(142, 'b8f876a9-0d9d-323c-83a8-8ed3a3fe52e8', 'Wednesday', 1, 'cumque Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 7),
(252, '4a1fc97e-a7e3-3ebe-bb4e-1df6baaafb85', 'Sunday', 5, 'reprehenderit Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 9),
(279, 'b131c014-2678-3d9d-b6cd-277a72d01266', 'Monday', 5, 'cumque Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 13),
(109, '5bdb4d01-5818-3b46-b90e-70bec964eeb7', 'Sunday', 4, 'corrupti Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 13),
(230, '55797b6b-014f-3617-b4ec-b4555fff2fad', 'Saturday', 5, 'ex Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 5),
(247, '6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 'Wednesday', 1, 'eos Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 10),
(211, 'cdaa17ec-4b27-35c0-90f2-bd8e2279be58', 'Sunday', 2, 'qui Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 2),
(46, 'b3cfe281-d605-36fd-b399-311b67e5ce1c', 'Tuesday', 3, 'cumque Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 9),
(109, '5f8e83dd-0b47-31fc-b47f-3aa8013ddbd5', 'Monday', 1, 'non Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 7),
(63, '40e4eb6e-f457-3080-ac59-ad6d720904cf', 'Monday', 4, 'eos Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 5),
(115, 'b3cfe281-d605-36fd-b399-311b67e5ce1c', 'Tuesday', 1, 'maxime Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 13),
(6, '6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 'Thursday', 1, 'dolorum Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 11),
(42, '5bdb4d01-5818-3b46-b90e-70bec964eeb7', 'Thursday', 3, 'iusto Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 13),
(257, '6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 'Monday', 4, 'consequatur Hall', '2025-03-04 22:11:48', '2025-03-04 22:11:48', 5),
(280, '30fd38b0-3165-3c36-9e2e-327a4bd733f9', 'Monday', 4, 'aut Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 6),
(102, '39e639a9-8c60-3998-aa2d-e87787a3a700', 'Wednesday', 5, 'officia Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 6),
(22, 'b8f876a9-0d9d-323c-83a8-8ed3a3fe52e8', 'Tuesday', 2, 'fugiat Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 2),
(189, 'dc4c2767-5b43-3e3f-b485-59ec86f165f5', 'Monday', 2, 'consequatur Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 5),
(217, '478c31ab-018c-3c30-bdb6-d28cd6e9feb0', 'Wednesday', 1, 'incidunt Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 4),
(231, '5bf63d62-d905-36b3-8734-78581cf4a8bd', 'Saturday', 1, 'dignissimos Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 9),
(186, 'c3775d8a-713d-3075-b6e0-e1482f997e1a', 'Monday', 2, 'dolorum Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 7),
(241, '69f3bc25-700b-3a1e-a3d9-82aa6958fc42', 'Sunday', 3, 'ullam Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 13),
(166, '40e4eb6e-f457-3080-ac59-ad6d720904cf', 'Thursday', 3, 'eos Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 8),
(109, 'ff6d6dff-7080-3311-992b-64778811f032', 'Sunday', 4, 'similique Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 10),
(194, '6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 'Monday', 4, 'aut Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 4),
(1, 'b131c014-2678-3d9d-b6cd-277a72d01266', 'Sunday', 5, 'natus Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 4),
(189, '19042554-1c58-3c50-bb7d-4cbc1210d93b', 'Saturday', 5, 'dolorum Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 9),
(235, '4298501f-d084-36b7-acbd-90d0bfcc731c', 'Saturday', 1, 'commodi Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 2),
(272, '1531cef7-704b-32f3-a304-96ee41d7ed6b', 'Sunday', 2, 'ex Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 3),
(276, 'dc4c2767-5b43-3e3f-b485-59ec86f165f5', 'Thursday', 5, 'dolorum Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 2),
(263, '783326d1-d26c-341f-b473-96fd6b13b9bc', 'Monday', 3, 'iusto Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 6),
(162, '783326d1-d26c-341f-b473-96fd6b13b9bc', 'Thursday', 4, 'officia Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 7),
(273, 'b3cfe281-d605-36fd-b399-311b67e5ce1c', 'Saturday', 4, 'non Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 7),
(77, 'aaa4c6b9-b8ab-30d3-8db0-a86c78f361f8', 'Thursday', 3, 'iusto Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 2),
(275, '2afb197a-85d5-307e-8740-9b3bfc5c402a', 'Saturday', 2, 'inventore Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 11),
(91, 'b8f876a9-0d9d-323c-83a8-8ed3a3fe52e8', 'Tuesday', 2, 'non Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 12),
(83, '132513f4-e36f-3d3c-9c82-d89180f0f0fc', 'Wednesday', 4, 'corrupti Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 13),
(145, '4a1fc97e-a7e3-3ebe-bb4e-1df6baaafb85', 'Thursday', 2, 'iste Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 3),
(273, '2c67443f-7018-3781-92ce-0bbe870fdfd4', 'Wednesday', 1, 'qui Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 9),
(240, '5f8e83dd-0b47-31fc-b47f-3aa8013ddbd5', 'Thursday', 2, 'commodi Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 9),
(120, '2a762d09-3914-355a-9c0c-ce6f417ade0f', 'Saturday', 4, 'qui Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 11),
(251, '1531cef7-704b-32f3-a304-96ee41d7ed6b', 'Saturday', 5, 'fugiat Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 6),
(280, '4a1fc97e-a7e3-3ebe-bb4e-1df6baaafb85', 'Monday', 4, 'dolorum Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 6),
(143, 'c3775d8a-713d-3075-b6e0-e1482f997e1a', 'Saturday', 5, 'unde Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 12),
(138, '5bf63d62-d905-36b3-8734-78581cf4a8bd', 'Saturday', 5, 'natus Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 8),
(76, '3ea86a46-baf0-3d6e-97fb-6bc4ac2af48d', 'Tuesday', 3, 'consequatur Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 11),
(277, '38b32e78-5fb6-3b37-af2b-679dfa604b6a', 'Tuesday', 2, 'cumque Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 10),
(116, 'ba75b1e6-e5cb-326e-a842-6eb1724a5804', 'Tuesday', 3, 'aut Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 5),
(10, 'd03e9026-7deb-3897-8f09-ff1c438dd6c0', 'Saturday', 2, 'corrupti Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 11),
(76, '2a762d09-3914-355a-9c0c-ce6f417ade0f', 'Tuesday', 4, 'quibusdam Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 13),
(205, '478c31ab-018c-3c30-bdb6-d28cd6e9feb0', 'Thursday', 2, 'unde Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 8),
(6, 'b8f876a9-0d9d-323c-83a8-8ed3a3fe52e8', 'Tuesday', 2, 'ut Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 4),
(110, '5bdb4d01-5818-3b46-b90e-70bec964eeb7', 'Wednesday', 2, 'eligendi Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 4),
(67, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Saturday', 1, 'aliquid Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 9),
(222, '29cb4fa8-40a9-3100-a3e1-c6a3e72e62d4', 'Monday', 4, 'laudantium Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 4),
(101, '5bdb4d01-5818-3b46-b90e-70bec964eeb7', 'Thursday', 3, 'aliquid Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 10),
(225, 'b8f876a9-0d9d-323c-83a8-8ed3a3fe52e8', 'Tuesday', 5, 'laudantium Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 9),
(240, '2afb197a-85d5-307e-8740-9b3bfc5c402a', 'Wednesday', 4, 'corrupti Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 6),
(76, '636465d7-9068-39a8-978b-0a1bdd9da457', 'Tuesday', 3, 'aut Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 5),
(212, '41d6ed21-83d0-32bd-a974-d7f067e82b19', 'Sunday', 3, 'eos Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 4),
(50, '40e4eb6e-f457-3080-ac59-ad6d720904cf', 'Sunday', 1, 'non Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 3),
(232, '30fd38b0-3165-3c36-9e2e-327a4bd733f9', 'Sunday', 1, 'earum Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 7),
(65, '40e4eb6e-f457-3080-ac59-ad6d720904cf', 'Monday', 2, 'corrupti Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 2),
(75, '1531cef7-704b-32f3-a304-96ee41d7ed6b', 'Tuesday', 4, 'eos Hall', '2025-03-04 22:12:04', '2025-03-04 22:12:04', 5),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Monday', 3, 'fuga Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 10),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Monday', 1, 'consequatur Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 13),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Saturday', 4, 'consequatur Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 1),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Saturday', 3, 'dolorum Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 11),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Monday', 3, 'inventore Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 7),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Monday', 3, 'commodi Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 12),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Monday', 2, 'dolorum Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 13),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Sunday', 5, 'cumque Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 12),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Wednesday', 3, 'officia Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 11),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Saturday', 5, 'iusto Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 2),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Wednesday', 3, 'aut Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 1),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Monday', 1, 'commodi Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 3),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Sunday', 1, 'earum Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 4),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Thursday', 3, 'aliquam Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 3),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Saturday', 1, 'corrupti Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 5),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Tuesday', 5, 'aliquid Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 2),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Wednesday', 2, 'et Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 13),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Sunday', 5, 'ipsam Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 8),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Tuesday', 3, 'ipsam Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 8),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Tuesday', 2, 'cumque Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 8),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Tuesday', 4, 'hic Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 2),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Thursday', 1, 'cumque Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 5),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Sunday', 1, 'quaerat Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 9),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Wednesday', 4, 'et Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 4),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Wednesday', 5, 'quaerat Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 12),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Tuesday', 1, 'qui Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 4),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Wednesday', 3, 'quaerat Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 10),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Sunday', 1, 'inventore Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 5),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Wednesday', 4, 'natus Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 12),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Saturday', 3, 'veritatis Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 13),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Tuesday', 1, 'inventore Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 11),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Wednesday', 4, 'corrupti Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 1),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Monday', 5, 'veritatis Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 9),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Tuesday', 1, 'quibusdam Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 5),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Tuesday', 4, 'incidunt Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 3),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Saturday', 1, 'voluptatem Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 5),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Wednesday', 3, 'ullam Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 11),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Thursday', 5, 'ipsam Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 4),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Saturday', 3, 'quaerat Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 9),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Saturday', 3, 'reprehenderit Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 7),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Monday', 4, 'dolorum Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 8),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Thursday', 1, 'dignissimos Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 1),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Wednesday', 4, 'consequatur Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 7),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Wednesday', 5, 'veritatis Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 8),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Sunday', 1, 'eligendi Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 11),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Monday', 2, 'incidunt Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 10),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Thursday', 4, 'qui Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 11),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Tuesday', 3, 'consequatur Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 13),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Saturday', 5, 'iusto Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 4),
(2, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Wednesday', 5, 'ex Hall', '2025-03-04 22:15:30', '2025-03-04 22:15:30', 6);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('khaled@super-admin.com|127.0.0.1', 'i:1;', 1741443683),
('khaled@super-admin.com|127.0.0.1:timer', 'i:1741443683;', 1741443683);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `instructor_id`, `created_at`, `updated_at`) VALUES
('000d458a-c354-3e6a-9544-bd776b3cfc77', 'Accusamus eius et.', 1, NULL, NULL),
('132513f4-e36f-3d3c-9c82-d89180f0f0fc', 'Et doloribus ut ducimus.', 31, NULL, NULL),
('1531cef7-704b-32f3-a304-96ee41d7ed6b', 'Dolore nostrum magnam consectetur.', 28, NULL, NULL),
('19042554-1c58-3c50-bb7d-4cbc1210d93b', 'A velit molestias.', 1, NULL, NULL),
('29cb4fa8-40a9-3100-a3e1-c6a3e72e62d4', 'Nihil quia deleniti.', 45, NULL, NULL),
('2a762d09-3914-355a-9c0c-ce6f417ade0f', 'Corporis nihil.', 1, NULL, NULL),
('2afb197a-85d5-307e-8740-9b3bfc5c402a', 'Id tempora soluta qui.', 55, NULL, NULL),
('2c67443f-7018-3781-92ce-0bbe870fdfd4', 'Eius omnis aliquid magnam.', 46, NULL, NULL),
('30fd38b0-3165-3c36-9e2e-327a4bd733f9', 'Ab esse laboriosam illum.', 32, NULL, NULL),
('38b32e78-5fb6-3b37-af2b-679dfa604b6a', 'Minima quia similique.', 9, NULL, NULL),
('39e639a9-8c60-3998-aa2d-e87787a3a700', 'Porro facere dolorem necessitatibus.', 26, NULL, NULL),
('3ea86a46-baf0-3d6e-97fb-6bc4ac2af48d', 'Vel molestiae vel corrupti.', 53, NULL, NULL),
('40e4eb6e-f457-3080-ac59-ad6d720904cf', 'Inventore necessitatibus voluptas.', 31, NULL, NULL),
('41d6ed21-83d0-32bd-a974-d7f067e82b19', 'Quasi asperiores doloribus quo.', 50, NULL, NULL),
('4298501f-d084-36b7-acbd-90d0bfcc731c', 'Laborum perspiciatis et.', 31, NULL, NULL),
('478c31ab-018c-3c30-bdb6-d28cd6e9feb0', 'Velit ea rem omnis.', 59, NULL, NULL),
('48c2e387-2851-3ace-b73b-80d1716251e9', 'Laboriosam voluptas ut.', 3, NULL, NULL),
('4a1fc97e-a7e3-3ebe-bb4e-1df6baaafb85', 'Quibusdam ducimus eos.', 26, NULL, NULL),
('55797b6b-014f-3617-b4ec-b4555fff2fad', 'Et sunt.', 42, NULL, NULL),
('5bdb4d01-5818-3b46-b90e-70bec964eeb7', 'Ea rerum beatae aperiam.', 40, NULL, NULL),
('5bf63d62-d905-36b3-8734-78581cf4a8bd', 'Voluptatem illo odio repudiandae.', 4, NULL, NULL),
('5f8e83dd-0b47-31fc-b47f-3aa8013ddbd5', 'Et sed quia perspiciatis.', 28, NULL, NULL),
('636465d7-9068-39a8-978b-0a1bdd9da457', 'Illo accusamus ut sit.', 31, NULL, NULL),
('69f3bc25-700b-3a1e-a3d9-82aa6958fc42', 'Dolor sunt vel.', 7, NULL, NULL),
('6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 'Autem error doloremque unde.', 20, NULL, NULL),
('783326d1-d26c-341f-b473-96fd6b13b9bc', 'Deleniti iusto quisquam placeat aut.', 1, NULL, NULL),
('aaa4c6b9-b8ab-30d3-8db0-a86c78f361f8', 'Reprehenderit nihil ut.', 27, NULL, NULL),
('b131c014-2678-3d9d-b6cd-277a72d01266', 'Dolor dolore maxime laborum.', 27, NULL, NULL),
('b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'Sed sed maiores qui.', 16, NULL, NULL),
('b3cfe281-d605-36fd-b399-311b67e5ce1c', 'Expedita incidunt velit ratione.', 34, NULL, NULL),
('b8f876a9-0d9d-323c-83a8-8ed3a3fe52e8', 'Aperiam impedit dolore.', 22, NULL, NULL),
('ba75b1e6-e5cb-326e-a842-6eb1724a5804', 'Enim qui.', 60, NULL, NULL),
('bede35fd-b339-3d2f-964d-4b88e43936dd', 'Omnis natus inventore.', 62, NULL, NULL),
('c3775d8a-713d-3075-b6e0-e1482f997e1a', 'In maxime rerum similique.', 8, NULL, NULL),
('cdaa17ec-4b27-35c0-90f2-bd8e2279be58', 'Ut accusantium quo reprehenderit.', 47, NULL, NULL),
('cf783432-317e-3cd8-b659-f08dd55d0c9d', 'Magni rerum hic accusantium.', 31, NULL, NULL),
('d03e9026-7deb-3897-8f09-ff1c438dd6c0', 'Odit in esse.', 18, NULL, NULL),
('dc4c2767-5b43-3e3f-b485-59ec86f165f5', 'Autem neque enim provident vero.', 3, NULL, NULL),
('f7768266-83ed-394a-b625-ed1fdcc0e8a6', 'Molestiae fuga aliquid suscipit.', 27, NULL, NULL),
('ff6d6dff-7080-3311-992b-64778811f032', 'Consequatur facere perspiciatis.', 17, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('super-admin','admin','instructor') NOT NULL DEFAULT 'instructor',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `name`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Khaled abd albasit', 'khaled@super-admin.com', '$2y$12$XymrbK7HJDkBe7MsYve4m./RE7UJBuLKXxE1lSSP8aZiLN/bopBEm', 'instructor', '2025-02-20 15:22:19', '2025-02-20 15:22:19'),
(3, 'Maybell Kessler', 'howell.susan@example.com', '$2y$12$fxAmXHaH7xZMwgt2mAOTouK7GHm8zr8peJADC6fzZJsc.GZL3u2r.', 'instructor', NULL, NULL),
(4, 'Burley Breitenberg', 'stoltenberg.stanford@example.org', '$2y$12$WA2f.aL9xiPEtjln4MDj2eBgRWtCFQOPqczTNaZfH1XW9PQKz0kIm', 'admin', NULL, NULL),
(5, 'Dr. Adam McCullough III', 'hodkiewicz.nakia@example.org', '$2y$12$dguC9L9iCE6ieND8TVAfwu7cmNvbHNwU50rmdOLcyiu8n8zOr.uLS', 'super-admin', NULL, NULL),
(6, 'Nickolas West MD', 'amayer@example.com', '$2y$12$zn9IFup2dpzJcdJzUV3ktuNb3NIUfp3WzUsLrmCi90bP6/vqt1l6W', 'super-admin', NULL, NULL),
(7, 'Meggie Ledner', 'tromp.diana@example.com', '$2y$12$dzFkHP9BumaF3RqJYz7GvOrVSo5gMkL15TxS9WTFMPYHqCfv9K7M.', 'super-admin', NULL, NULL),
(8, 'Bridie Baumbach DDS', 'dortha.schowalter@example.com', '$2y$12$YGe28u2S8smadg.gcqjx4ef/u30ut34Uur4WQ2laVBCshQAexyVBW', 'instructor', NULL, NULL),
(9, 'Elza Borer', 'zharris@example.net', '$2y$12$grLxqm0VTyYzGyIOtczsceokgHV5NbMRpYS3fYjZLtwOC6i.ymAnO', 'instructor', NULL, NULL),
(10, 'Maria Schroeder', 'clay.trantow@example.com', '$2y$12$SITEsDYiHtxYllKVGkrsfuWmv8noHSN4RkaB40ZvkM8CjhNpfp.6m', 'instructor', NULL, NULL),
(11, 'Mrs. Cordia Spencer', 'evalyn75@example.com', '$2y$12$h1TqX953exVIZBr5TTBi2ebTjgPe4kfxpF1qGX8SR4Vbi5rNmjzPO', 'admin', NULL, NULL),
(12, 'Elta Morissette', 'altenwerth.tiffany@example.org', '$2y$12$qLDBT49HiQQxKuIchG66HeYXzctfT0yv7fa3H/HZRJLStSeeuPsry', 'instructor', NULL, NULL),
(13, 'Grayson Muller', 'liam84@example.com', '$2y$12$Qijd9YQVen6oRRx0FNUnC.opGNxkK9awS6IoWzeExyWIZsbJmd2P6', 'instructor', NULL, NULL),
(14, 'Prof. Tyler Schaden', 'coralie.toy@example.com', '$2y$12$QHjBTSSg6czjk/zA9FFfY.mFrr5zvIi4yCXQvInHwYvrzM9qMYJT6', 'instructor', NULL, NULL),
(15, 'Mylene O\'Hara', 'ross31@example.net', '$2y$12$Sz9V3AOQXXK5.wgyE2PC8O2XVGbusdF7yWRUdJlDimbKfRvsB5pRC', 'super-admin', NULL, NULL),
(16, 'Darren Orn MD', 'norris97@example.com', '$2y$12$h/Mp6u.rjLKmsbRPQYPSQuWIn.Lu5sLnGMLBAMGrCrL4HiGQlgGvK', 'instructor', NULL, NULL),
(17, 'Jensen O\'Connell', 'lue45@example.com', '$2y$12$if5KOckqXewfvAgR8nxerOVFIzBExWWsVEIy0iG8IxX8GWrE3RIeS', 'super-admin', NULL, NULL),
(18, 'Ms. Carolina Ankunding', 'tania34@example.net', '$2y$12$7Fps8IGj9vlNceOQALnOBeFS4vuryPLi/buF2aYSyCdG2ftKJpl3m', 'super-admin', NULL, NULL),
(19, 'Hulda Lockman', 'mbauch@example.com', '$2y$12$WPsJU0iurAVexuZnTHYLlevwGUB5zUaBGUdJzKqvI21p7v3hjNnHC', 'instructor', NULL, NULL),
(20, 'Mr. Wilton Konopelski V', 'heather.lockman@example.net', '$2y$12$NFlVxuQv4OdHSIVHILSGuOz2vnDiEHJsbmefvfCK4ofbRT2KiBiSW', 'super-admin', NULL, NULL),
(21, 'Lyric Boyer', 'muller.carol@example.org', '$2y$12$ofhQKf2aVqcDzT7zevZ9ueFcPaFIfxgxTNCd8vC2PPKNfIEgL6ixC', 'admin', NULL, NULL),
(22, 'Grady Dickinson', 'rogahn.treva@example.org', '$2y$12$8d.uiRoT.pFZzc.by.j8IO73qQtOp.MmYkofqMgtMu9IBlB.0Q7nS', 'admin', NULL, NULL),
(23, 'Teresa Wisozk', 'meggie.bayer@example.org', '$2y$12$aC782pasfoCku1kXy8Cg.uOhCvJHsLRQnwwbyRsFRMgrS.UON9lCy', 'super-admin', NULL, NULL),
(24, 'Nick Jenkins', 'paolo.stokes@example.org', '$2y$12$ezgh66ajMtkiWJY7MFsqwehRqubyNl.g5ORkBnBRze7c3o7hrWyHy', 'instructor', NULL, NULL),
(25, 'Halie Graham', 'turcotte.caterina@example.com', '$2y$12$SHdDQG9rwj8m3PX/cG/qmeuBVVBt2uUOqhDcwCzQN.V/hG1Io8ZVa', 'super-admin', NULL, NULL),
(26, 'Jennyfer Harber', 'gkoepp@example.com', '$2y$12$3CyXSkxXf55i11dLFI53MecEUjJwABWP8laF45EfME8gQP0rxoemO', 'admin', NULL, NULL),
(27, 'Jaron Schoen', 'apurdy@example.net', '$2y$12$BcZSDFqN3WLrB15gAKdP7.asgcJGK2NKsHNIigqNrlaAHpGgjf0sO', 'instructor', NULL, NULL),
(28, 'Mrs. Jolie Schinner', 'ebailey@example.com', '$2y$12$cNrSd8DHKotK/0ugM4d2YOcar7TPGXZtqWy2xa1naYO/dr8qvRyT.', 'admin', NULL, NULL),
(29, 'Mrs. Natalia Feeney', 'bchristiansen@example.net', '$2y$12$QrjSY6JK4UZDkYT1Hq516uGNQ7VG56ZtsLTIlRGd24JT44VD08Knm', 'admin', NULL, NULL),
(30, 'Prof. Oswald Swaniawski', 'dixie04@example.org', '$2y$12$AX0IqDnsKz/CxdKWr7BTtekNR8OdaLFuMKzdNG9vYCEqouN66oKv6', 'super-admin', NULL, NULL),
(31, 'Mrs. Elody Reinger Sr.', 'maggio.nathanael@example.com', '$2y$12$U/oNKeVwWUuSg1AF3mWpz.zlHBLDFfJrvTyS0TA1VQm9OE/4jvNAa', 'instructor', NULL, NULL),
(32, 'Vickie Mertz', 'isabella.sipes@example.org', '$2y$12$hDvTmQrBOb6kzMLwZZMf1Ox3AFdS8HRgnlVkQAQrOdWBVCLGsL24G', 'admin', NULL, NULL),
(34, 'Ms. Violet Gusikowski III', 'giovanna.hoeger@example.org', '$2y$12$aWNVM5I5qOq/0owjH4xCwulCqIXuREDMPk5FDAtiIhAs2erYBCtuS', 'admin', NULL, NULL),
(35, 'Mrs. Joanne Prosacco', 'hazel.walker@example.net', '$2y$12$0V/VsPpD7Yi7/06F5cfixuLq40MzMAcfjJqr82nxJWkU7fD9k7F4m', 'admin', NULL, NULL),
(36, 'Mr. Cedrick West', 'wokeefe@example.net', '$2y$12$YV8C5QdC.Tot28G58Ny/fe6lX694J9TA3DuBt7VAqkFiXCXnOGI9e', 'super-admin', NULL, NULL),
(37, 'Kenya Jones', 'schimmel.garnet@example.com', '$2y$12$ua/oU0f76t9Ok.TnIVIeDunB8f68pRQ2nadOSXS1TWcAU0emqpb7G', 'super-admin', NULL, NULL),
(38, 'Ashton Bode', 'dickinson.annabell@example.com', '$2y$12$m7Kq3FGNsWXOyvsQD5pNHux0b4x0pN4mmAuEjAGr1/2R7igmVL91i', 'admin', NULL, NULL),
(39, 'Jabari Pacocha', 'garrick56@example.com', '$2y$12$kbR5lxiPq5R3j1MocRMLVOBhf9kZS4hTrdeF9h7eJAw5zaVEFeEse', 'admin', NULL, NULL),
(40, 'Kennedy Walsh', 'cbauch@example.org', '$2y$12$Y/8LoON8ricSYDpDbLdrGOyfCwd3WJKjuan5lJ5jORSf2KJShraWy', 'super-admin', NULL, NULL),
(41, 'Rosa Fisher', 'bspinka@example.org', '$2y$12$15CItTtdS8DctIqkFV4qluxGTtSRHrfCSvKUUcRyrSlvxSeSTNhRa', 'instructor', NULL, NULL),
(42, 'Douglas Sanford', 'bernardo.okon@example.com', '$2y$12$SYt6Mess0TLdqoU1itLyJOfVJfdOnrFpWZfbHFCV8uDn5DiGNFfKW', 'instructor', NULL, NULL),
(43, 'Ashly Hagenes', 'nolan.roy@example.net', '$2y$12$Nd1cK1iYNIpJ154sN3SBRu9pwrd2Ncz2y4HlMo.kpp89TUssSIRDi', 'instructor', NULL, NULL),
(44, 'Norwood Hills V', 'unique03@example.org', '$2y$12$hWF7dUQw9s8cXZRD4wntQuPaSQ7p0lrKIY//skz6pZJlpjJfX.LMi', 'admin', NULL, NULL),
(45, 'Beaulah Effertz', 'ladarius86@example.com', '$2y$12$vy8YMjQOIwejFMBPXf4FV.Zv4yvy9J0DV4b7VBqDNrEFf1im12Vg.', 'super-admin', NULL, NULL),
(46, 'Maryjane Sipes DVM', 'gaylord.fiona@example.net', '$2y$12$8nbxNYwiDtYtxiZQZi7WQO5U/fGGY1NXGRFUBGR8YR8pJ2i6.4Nc.', 'instructor', NULL, NULL),
(47, 'Jammie Paucek Sr.', 'morissette.isaias@example.org', '$2y$12$3IjifxSpyIZGnMILwXqd7ecLiAt/wHHMdLrlwajWwLQp0MN02dD22', 'admin', NULL, NULL),
(48, 'Prof. Tremayne Bernier', 'ariane.runolfsson@example.net', '$2y$12$iIjryCRa2SLdeYgtI9MNpeqoI2vhu0KDseIQqiOmACUWAH2YndnV2', 'admin', NULL, NULL),
(49, 'Mr. Zack Bayer DDS', 'jason59@example.net', '$2y$12$f5yVcRvig1jQlI5xacZMb.ROB5bzL59YfHf9DVsiwptqTW.2/vWAa', 'instructor', NULL, NULL),
(50, 'Fay Schmeler', 'goyette.triston@example.net', '$2y$12$6ydlnMLTyPUt3HKFMPfCyOxVEZWhb/Jigsyy84UsMKrNIGNCYFWoG', 'instructor', NULL, NULL),
(51, 'Julio Schroeder', 'eoconner@example.org', '$2y$12$6/.tbyeTTpX4WdcdyH40BOWMhf/jRjNpuilw1rkmNi2jRzR6.WBeu', 'super-admin', NULL, NULL),
(52, 'Zachary Johnston', 'camren80@example.org', '$2y$12$CFXl/ys/CrZQMxswYjw6U.C6oLDiEdXL1sNUSKXLCkL7oG0tjVHFG', 'admin', NULL, NULL),
(53, 'Wellington Stokes', 'fritz42@example.org', '$2y$12$sZxgEodSRb4whGKJsTH05O.U0Y90zCb/lIX9jnmEXTNlo6LoYmFtu', 'admin', NULL, NULL),
(54, 'Meghan Cummerata', 'dahlia.christiansen@example.net', '$2y$12$vnbQSfnDWOANw52WC5Y5Ve/qb9mzK.s.nLmsDfqD8uXRz9R0/EUD.', 'instructor', NULL, NULL),
(55, 'Dorothea Shields MD', 'toni90@example.com', '$2y$12$8Ys9ZVg4IovnP64hpLu1.erTU3JqgLwm0MFFktzEIOYIvaaGp1eay', 'instructor', NULL, NULL),
(56, 'Prof. Darlene Smitham DVM', 'cmedhurst@example.net', '$2y$12$Aljv2C3l9gYb.uUX/tuhp.J5cDHCzuhtsd9HJrnsHObB2GUBaMGDm', 'instructor', NULL, NULL),
(57, 'Lamar Rau', 'ludie01@example.com', '$2y$12$k0R4nm/cemAmyBcJaK34W.aCQqnffx/qbJweR1OXA63vtmS.2IyyW', 'admin', NULL, NULL),
(58, 'Zackery Donnelly', 'ethompson@example.net', '$2y$12$lBCsYCU3Tgm9xrLjiLOKUex2laKEbSwbCyV2mz/2AgnFaUNUquuCW', 'super-admin', NULL, NULL),
(59, 'Newell Streich', 'bjacobson@example.org', '$2y$12$dFKxpFaSpdm22fucGYANIuhHNspgBKDCX65IWBtSTvHuxlXK0uf0q', 'instructor', NULL, NULL),
(60, 'Scotty Ledner', 'mpaucek@example.org', '$2y$12$1LmEKfnMsVdZkRG8AP5voe8AqxcB5oNdVVSOv2oqUWUGCBYM6JhnG', 'instructor', NULL, NULL),
(61, 'Leonor Hills', 'mittie82@example.org', '$2y$12$MNct.pdsLnoFDswg4eN4T.zl8GeeVbIgeFbpKZ2tDU89tipa4X1km', 'instructor', NULL, NULL),
(62, 'Weston Schneider', 'gaylord.greyson@example.net', '$2y$12$o0PNDXlYO5c8kkmZu63fauT1ipznl4ROgEKfZcOY7dDtUvta6937i', 'admin', NULL, NULL),
(63, 'Matilda Harber', 'ylockman@example.com', '$2y$12$BortWriUHSAuWaBNC9HpLewP4FyZDr7l3qXl7uQJ0R7.N3mAB9qpS', 'instructor', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `location_name` varchar(255) NOT NULL,
  `capacity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`location_name`, `capacity`, `created_at`, `updated_at`) VALUES
('aliquam Hall', 128, NULL, NULL),
('aliquid Hall', 25, NULL, NULL),
('aut Hall', 26, NULL, NULL),
('commodi Hall', 156, NULL, NULL),
('consequatur Hall', 143, NULL, NULL),
('corrupti Hall', 144, NULL, NULL),
('cumque Hall', 117, NULL, NULL),
('dignissimos Hall', 92, NULL, NULL),
('dolorum Hall', 49, NULL, NULL),
('earum Hall', 155, NULL, NULL),
('eligendi Hall', 132, NULL, NULL),
('eos Hall', 30, NULL, NULL),
('et Hall', 86, NULL, NULL),
('ex Hall', 179, NULL, NULL),
('fuga Hall', 178, NULL, NULL),
('fugiat Hall', 87, NULL, NULL),
('hic Hall', 29, NULL, NULL),
('incidunt Hall', 161, NULL, NULL),
('inventore Hall', 190, NULL, NULL),
('ipsam Hall', 165, NULL, NULL),
('iste Hall', 69, NULL, NULL),
('iusto Hall', 157, NULL, NULL),
('laudantium Hall', 144, NULL, NULL),
('maxime Hall', 27, NULL, NULL),
('modi Hall', 155, NULL, NULL),
('natus Hall', 155, NULL, NULL),
('non Hall', 171, NULL, NULL),
('officia Hall', 67, NULL, NULL),
('quaerat Hall', 45, NULL, NULL),
('qui Hall', 63, NULL, NULL),
('quibusdam Hall', 46, NULL, NULL),
('quod Hall', 155, NULL, NULL),
('reprehenderit Hall', 24, NULL, NULL),
('similique Hall', 61, NULL, NULL),
('sit Hall', 102, NULL, NULL),
('ullam Hall', 199, NULL, NULL),
('unde Hall', 30, NULL, NULL),
('ut Hall', 182, NULL, NULL),
('veritatis Hall', 37, NULL, NULL),
('voluptatem Hall', 27, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(42, '2025_02_15_235554_create_permission_tables', 1),
(43, '2025_02_19_143603_create_student_subject_table', 2),
(46, '0001_01_01_000000_create_users_table', 3),
(47, '0001_01_01_000001_create_cache_table', 3),
(48, '0001_01_01_000002_create_jobs_table', 3),
(49, '2025_02_15_175646_create_instructors_table', 3),
(50, '2025_02_15_180205_create_courses_table', 3),
(51, '2025_02_15_181104_create_student_instructor_table', 3),
(52, '2025_02_15_181602_create_locations_table', 3),
(53, '2025_02_15_182028_create_periods_table', 3),
(54, '2025_02_15_183120_create_schedules_table', 3),
(55, '2025_02_15_183121_create_registrations_table', 3),
(56, '2025_02_15_183340_create_schedule_subjects_table', 3),
(57, '2025_02_15_184655_create_attendances_table', 3),
(58, '2025_02_19_145405_create_student_courses_table', 3),
(59, '2025_02_20_164921_create_weeks_table', 4),
(60, '2025_02_20_170229_add_week_id_to_attendances_table', 4),
(61, '2025_02_25_215939_create_personal_access_tokens_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Instructor', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `periods`
--

CREATE TABLE `periods` (
  `period_number` bigint(20) UNSIGNED NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `periods`
--

INSERT INTO `periods` (`period_number`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(1, '08:00:00', '09:30:00', NULL, NULL),
(2, '09:45:00', '11:15:00', NULL, NULL),
(3, '11:30:00', '13:00:00', NULL, NULL),
(4, '13:15:00', '14:45:00', NULL, NULL),
(5, '15:00:00', '16:30:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'instructors', '2025-02-19 10:01:20', '2025-02-19 10:01:20'),
(2, 'role-create', 'instructors', '2025-02-19 10:01:20', '2025-02-19 10:01:20'),
(3, 'role-edit', 'instructors', '2025-02-19 10:01:20', '2025-02-19 10:01:20'),
(4, 'role-delete', 'instructors', '2025-02-19 10:01:21', '2025-02-19 10:01:21'),
(5, 'manage instructors', 'instructors', '2025-02-19 10:01:21', '2025-02-19 10:01:21'),
(6, 'add students', 'instructors', '2025-02-19 10:01:21', '2025-02-19 10:01:21'),
(7, 'manage student registration', 'instructors', '2025-02-19 10:01:21', '2025-02-19 10:01:21'),
(8, 'take attendance', 'instructors', '2025-02-19 10:01:21', '2025-02-19 10:01:21'),
(9, 'remove subject from student', 'instructors', '2025-02-19 10:01:21', '2025-02-19 10:01:21'),
(10, 'role-list', 'web', '2025-02-19 10:01:24', '2025-02-19 10:01:24'),
(11, 'role-create', 'web', '2025-02-19 10:01:25', '2025-02-19 10:01:25'),
(12, 'role-edit', 'web', '2025-02-19 10:01:25', '2025-02-19 10:01:25'),
(13, 'role-delete', 'web', '2025-02-19 10:01:25', '2025-02-19 10:01:25');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'auth_student_token', '43846d2c578a73afb68dbaffe51a3011f4180468e52694b17aa70162d4717cfe', '[\"*\"]', '2025-03-04 22:23:11', NULL, '2025-03-04 19:55:23', '2025-03-04 22:23:11');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `course_id` varchar(255) NOT NULL,
  `location_name` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `period_id` bigint(20) UNSIGNED NOT NULL,
  `level` varchar(255) NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`course_id`, `location_name`, `day`, `period_id`, `level`, `student_id`, `created_at`, `updated_at`) VALUES
('4298501f-d084-36b7-acbd-90d0bfcc731c', 'veritatis Hall', 'Thursday', 3, 'Beginner', 28, '2025-02-20 15:25:46', '2025-02-20 15:25:46'),
('b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'non Hall', 'Tuesday', 3, 'Advanced', 54, '2025-02-20 15:25:46', '2025-02-20 15:25:46'),
('4298501f-d084-36b7-acbd-90d0bfcc731c', 'consequatur Hall', 'Wednesday', 1, 'Intermediate', 40, '2025-02-20 15:25:46', '2025-02-20 15:25:46'),
('30fd38b0-3165-3c36-9e2e-327a4bd733f9', 'commodi Hall', 'Sunday', 1, 'Advanced', 5, '2025-02-20 15:25:46', '2025-02-20 15:25:46'),
('b131c014-2678-3d9d-b6cd-277a72d01266', 'unde Hall', 'Sunday', 2, 'Intermediate', 73, '2025-02-20 15:25:46', '2025-02-20 15:25:46'),
('5f8e83dd-0b47-31fc-b47f-3aa8013ddbd5', 'natus Hall', 'Sunday', 1, 'Intermediate', 47, '2025-02-20 15:25:46', '2025-02-20 15:25:46'),
('000d458a-c354-3e6a-9544-bd776b3cfc77', 'similique Hall', 'Sunday', 2, 'Advanced', 15, '2025-02-20 15:25:46', '2025-02-20 15:25:46'),
('f7768266-83ed-394a-b625-ed1fdcc0e8a6', 'natus Hall', 'Saturday', 3, 'Advanced', 64, '2025-02-20 15:25:46', '2025-02-20 15:25:46'),
('4298501f-d084-36b7-acbd-90d0bfcc731c', 'natus Hall', 'Wednesday', 4, 'Advanced', 27, '2025-02-20 15:25:46', '2025-02-20 15:25:46'),
('19042554-1c58-3c50-bb7d-4cbc1210d93b', 'quaerat Hall', 'Monday', 2, 'Intermediate', 74, '2025-02-20 15:25:46', '2025-02-20 15:25:46'),
('cf783432-317e-3cd8-b659-f08dd55d0c9d', 'eos Hall', 'Sunday', 5, 'Beginner', 10, '2025-02-20 15:25:46', '2025-02-20 15:25:46'),
('38b32e78-5fb6-3b37-af2b-679dfa604b6a', 'commodi Hall', 'Monday', 1, 'Intermediate', 44, '2025-02-20 15:25:46', '2025-02-20 15:25:46'),
('ff6d6dff-7080-3311-992b-64778811f032', 'similique Hall', 'Saturday', 2, 'Intermediate', 6, '2025-02-20 15:25:46', '2025-02-20 15:25:46'),
('6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 'laudantium Hall', 'Tuesday', 2, 'Intermediate', 84, '2025-02-20 15:25:46', '2025-02-20 15:25:46'),
('000d458a-c354-3e6a-9544-bd776b3cfc77', 'quod Hall', 'Monday', 2, 'Intermediate', 41, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('000d458a-c354-3e6a-9544-bd776b3cfc77', 'earum Hall', 'Tuesday', 2, 'Beginner', 63, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 'iste Hall', 'Monday', 5, 'Advanced', 21, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('dc4c2767-5b43-3e3f-b485-59ec86f165f5', 'quaerat Hall', 'Monday', 3, 'Advanced', 60, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('ff6d6dff-7080-3311-992b-64778811f032', 'natus Hall', 'Monday', 1, 'Beginner', 14, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('19042554-1c58-3c50-bb7d-4cbc1210d93b', 'commodi Hall', 'Wednesday', 4, 'Intermediate', 53, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('cf783432-317e-3cd8-b659-f08dd55d0c9d', 'quibusdam Hall', 'Saturday', 3, 'Intermediate', 66, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('39e639a9-8c60-3998-aa2d-e87787a3a700', 'natus Hall', 'Tuesday', 4, 'Advanced', 98, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('38b32e78-5fb6-3b37-af2b-679dfa604b6a', 'cumque Hall', 'Saturday', 3, 'Beginner', 24, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('ff6d6dff-7080-3311-992b-64778811f032', 'earum Hall', 'Tuesday', 5, 'Intermediate', 77, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('69f3bc25-700b-3a1e-a3d9-82aa6958fc42', 'sit Hall', 'Saturday', 3, 'Advanced', 90, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('c3775d8a-713d-3075-b6e0-e1482f997e1a', 'voluptatem Hall', 'Sunday', 3, 'Advanced', 37, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('aaa4c6b9-b8ab-30d3-8db0-a86c78f361f8', 'sit Hall', 'Saturday', 3, 'Intermediate', 78, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('aaa4c6b9-b8ab-30d3-8db0-a86c78f361f8', 'earum Hall', 'Tuesday', 3, 'Beginner', 37, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('38b32e78-5fb6-3b37-af2b-679dfa604b6a', 'maxime Hall', 'Sunday', 2, 'Advanced', 48, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('b131c014-2678-3d9d-b6cd-277a72d01266', 'ex Hall', 'Tuesday', 3, 'Intermediate', 91, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 'et Hall', 'Saturday', 4, 'Beginner', 81, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('30fd38b0-3165-3c36-9e2e-327a4bd733f9', 'laudantium Hall', 'Thursday', 3, 'Beginner', 73, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('ff6d6dff-7080-3311-992b-64778811f032', 'et Hall', 'Sunday', 1, 'Intermediate', 73, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('aaa4c6b9-b8ab-30d3-8db0-a86c78f361f8', 'maxime Hall', 'Sunday', 4, 'Advanced', 88, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'commodi Hall', 'Monday', 3, 'Intermediate', 91, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('dc4c2767-5b43-3e3f-b485-59ec86f165f5', 'reprehenderit Hall', 'Thursday', 1, 'Advanced', 94, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('aaa4c6b9-b8ab-30d3-8db0-a86c78f361f8', 'quod Hall', 'Wednesday', 5, 'Beginner', 11, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('19042554-1c58-3c50-bb7d-4cbc1210d93b', 'maxime Hall', 'Tuesday', 5, 'Beginner', 97, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('dc4c2767-5b43-3e3f-b485-59ec86f165f5', 'laudantium Hall', 'Saturday', 5, 'Beginner', 57, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('f7768266-83ed-394a-b625-ed1fdcc0e8a6', 'quod Hall', 'Tuesday', 5, 'Beginner', 77, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('38b32e78-5fb6-3b37-af2b-679dfa604b6a', 'sit Hall', 'Saturday', 3, 'Intermediate', 90, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('b131c014-2678-3d9d-b6cd-277a72d01266', 'et Hall', 'Saturday', 5, 'Beginner', 31, '2025-02-20 15:25:47', '2025-02-20 15:25:47'),
('000d458a-c354-3e6a-9544-bd776b3cfc77', 'sit Hall', 'Thursday', 2, 'Advanced', 40, '2025-02-20 15:25:51', '2025-02-20 15:25:51'),
('48c2e387-2851-3ace-b73b-80d1716251e9', 'maxime Hall', 'Sunday', 1, 'Intermediate', 53, '2025-02-20 15:25:52', '2025-02-20 15:25:52'),
('cf783432-317e-3cd8-b659-f08dd55d0c9d', 'natus Hall', 'Tuesday', 2, 'Beginner', 84, '2025-02-20 15:25:52', '2025-02-20 15:25:52'),
('b131c014-2678-3d9d-b6cd-277a72d01266', 'similique Hall', 'Saturday', 2, 'Advanced', 52, '2025-02-20 15:25:52', '2025-02-20 15:25:52'),
('d03e9026-7deb-3897-8f09-ff1c438dd6c0', 'fugiat Hall', 'Sunday', 2, 'Beginner', 51, '2025-02-20 15:25:52', '2025-02-20 15:25:52'),
('39e639a9-8c60-3998-aa2d-e87787a3a700', 'consequatur Hall', 'Sunday', 5, 'Advanced', 100, '2025-02-20 15:25:52', '2025-02-20 15:25:52'),
('38b32e78-5fb6-3b37-af2b-679dfa604b6a', 'iste Hall', 'Monday', 4, 'Advanced', 15, '2025-02-20 15:25:52', '2025-02-20 15:25:52'),
('6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 'unde Hall', 'Saturday', 5, 'Advanced', 46, '2025-02-20 15:25:52', '2025-02-20 15:25:52'),
('478c31ab-018c-3c30-bdb6-d28cd6e9feb0', 'laudantium Hall', 'Thursday', 3, 'Advanced', 109, '2025-02-20 15:39:15', '2025-02-20 15:39:15'),
('19042554-1c58-3c50-bb7d-4cbc1210d93b', 'ullam Hall', 'Saturday', 2, 'Intermediate', 85, '2025-02-20 15:39:15', '2025-02-20 15:39:15'),
('4298501f-d084-36b7-acbd-90d0bfcc731c', 'earum Hall', 'Tuesday', 2, 'Beginner', 189, '2025-02-20 15:39:16', '2025-02-20 15:39:16'),
('55797b6b-014f-3617-b4ec-b4555fff2fad', 'dolorum Hall', 'Wednesday', 3, 'Intermediate', 170, '2025-02-20 15:39:16', '2025-02-20 15:39:16'),
('132513f4-e36f-3d3c-9c82-d89180f0f0fc', 'cumque Hall', 'Sunday', 4, 'Intermediate', 193, '2025-02-20 15:39:16', '2025-02-20 15:39:16'),
('38b32e78-5fb6-3b37-af2b-679dfa604b6a', 'laudantium Hall', 'Thursday', 2, 'Intermediate', 47, '2025-02-20 15:39:16', '2025-02-20 15:39:16'),
('d03e9026-7deb-3897-8f09-ff1c438dd6c0', 'veritatis Hall', 'Sunday', 3, 'Beginner', 142, '2025-02-20 15:39:16', '2025-02-20 15:39:16'),
('aaa4c6b9-b8ab-30d3-8db0-a86c78f361f8', 'aliquam Hall', 'Thursday', 1, 'Intermediate', 24, '2025-02-20 15:39:16', '2025-02-20 15:39:16'),
('5f8e83dd-0b47-31fc-b47f-3aa8013ddbd5', 'commodi Hall', 'Wednesday', 4, 'Beginner', 24, '2025-02-20 15:39:17', '2025-02-20 15:39:17'),
('1531cef7-704b-32f3-a304-96ee41d7ed6b', 'officia Hall', 'Sunday', 4, 'Advanced', 140, '2025-02-20 15:39:17', '2025-02-20 15:39:17'),
('39e639a9-8c60-3998-aa2d-e87787a3a700', 'officia Hall', 'Saturday', 2, 'Advanced', 108, '2025-02-20 15:39:18', '2025-02-20 15:39:18'),
('d03e9026-7deb-3897-8f09-ff1c438dd6c0', 'iste Hall', 'Tuesday', 3, 'Advanced', 54, '2025-02-20 15:39:18', '2025-02-20 15:39:18'),
('6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 'ut Hall', 'Tuesday', 5, 'Beginner', 130, '2025-02-20 15:39:18', '2025-02-20 15:39:18'),
('6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 'corrupti Hall', 'Sunday', 1, 'Intermediate', 134, '2025-02-20 15:39:18', '2025-02-20 15:39:18'),
('48c2e387-2851-3ace-b73b-80d1716251e9', 'quaerat Hall', 'Tuesday', 2, 'Advanced', 43, '2025-02-20 15:39:18', '2025-02-20 15:39:18'),
('55797b6b-014f-3617-b4ec-b4555fff2fad', 'similique Hall', 'Saturday', 3, 'Intermediate', 102, '2025-02-20 15:39:18', '2025-02-20 15:39:18'),
('19042554-1c58-3c50-bb7d-4cbc1210d93b', 'corrupti Hall', 'Sunday', 2, 'Beginner', 144, '2025-02-20 15:39:18', '2025-02-20 15:39:18'),
('636465d7-9068-39a8-978b-0a1bdd9da457', 'laudantium Hall', 'Wednesday', 1, 'Intermediate', 158, '2025-02-20 15:39:18', '2025-02-20 15:39:18'),
('3ea86a46-baf0-3d6e-97fb-6bc4ac2af48d', 'unde Hall', 'Wednesday', 4, 'Intermediate', 57, '2025-02-20 15:39:19', '2025-02-20 15:39:19'),
('48c2e387-2851-3ace-b73b-80d1716251e9', 'incidunt Hall', 'Wednesday', 4, 'Intermediate', 40, '2025-02-20 15:39:19', '2025-02-20 15:39:19'),
('783326d1-d26c-341f-b473-96fd6b13b9bc', 'non Hall', 'Thursday', 4, 'Advanced', 106, '2025-02-20 15:39:19', '2025-02-20 15:39:19'),
('ba75b1e6-e5cb-326e-a842-6eb1724a5804', 'maxime Hall', 'Thursday', 5, 'Advanced', 83, '2025-02-20 15:39:19', '2025-02-20 15:39:19'),
('132513f4-e36f-3d3c-9c82-d89180f0f0fc', 'dolorum Hall', 'Sunday', 3, 'Intermediate', 104, '2025-02-20 15:39:19', '2025-02-20 15:39:19'),
('39e639a9-8c60-3998-aa2d-e87787a3a700', 'dolorum Hall', 'Sunday', 3, 'Beginner', 171, '2025-02-20 15:39:19', '2025-02-20 15:39:19'),
('5f8e83dd-0b47-31fc-b47f-3aa8013ddbd5', 'officia Hall', 'Saturday', 3, 'Beginner', 173, '2025-02-20 15:39:19', '2025-02-20 15:39:19'),
('1531cef7-704b-32f3-a304-96ee41d7ed6b', 'fugiat Hall', 'Saturday', 2, 'Advanced', 186, '2025-02-20 15:39:19', '2025-02-20 15:39:19'),
('c3775d8a-713d-3075-b6e0-e1482f997e1a', 'reprehenderit Hall', 'Thursday', 3, 'Beginner', 78, '2025-02-20 15:39:19', '2025-02-20 15:39:19'),
('c3775d8a-713d-3075-b6e0-e1482f997e1a', 'maxime Hall', 'Thursday', 3, 'Beginner', 180, '2025-02-20 15:39:19', '2025-02-20 15:39:19'),
('132513f4-e36f-3d3c-9c82-d89180f0f0fc', 'hic Hall', 'Tuesday', 5, 'Advanced', 113, '2025-02-20 15:39:19', '2025-02-20 15:39:19'),
('3ea86a46-baf0-3d6e-97fb-6bc4ac2af48d', 'quod Hall', 'Saturday', 1, 'Advanced', 46, '2025-02-20 15:39:20', '2025-02-20 15:39:20'),
('2afb197a-85d5-307e-8740-9b3bfc5c402a', 'cumque Hall', 'Sunday', 3, 'Intermediate', 37, '2025-02-20 15:39:20', '2025-02-20 15:39:20'),
('2afb197a-85d5-307e-8740-9b3bfc5c402a', 'modi Hall', 'Saturday', 2, 'Advanced', 87, '2025-02-20 15:39:20', '2025-02-20 15:39:20'),
('3ea86a46-baf0-3d6e-97fb-6bc4ac2af48d', 'quod Hall', 'Thursday', 5, 'Intermediate', 145, '2025-02-20 15:39:20', '2025-02-20 15:39:20'),
('55797b6b-014f-3617-b4ec-b4555fff2fad', 'maxime Hall', 'Thursday', 3, 'Advanced', 16, '2025-02-20 15:39:20', '2025-02-20 15:39:20'),
('b8f876a9-0d9d-323c-83a8-8ed3a3fe52e8', 'consequatur Hall', 'Saturday', 5, 'Advanced', 173, '2025-02-20 15:39:20', '2025-02-20 15:39:20'),
('b3cfe281-d605-36fd-b399-311b67e5ce1c', 'aut Hall', 'Saturday', 5, 'Beginner', 179, '2025-02-20 15:39:20', '2025-02-20 15:39:20'),
('636465d7-9068-39a8-978b-0a1bdd9da457', 'aliquid Hall', 'Tuesday', 1, 'Advanced', 133, '2025-02-20 15:39:20', '2025-02-20 15:39:20'),
('dc4c2767-5b43-3e3f-b485-59ec86f165f5', 'modi Hall', 'Saturday', 2, 'Beginner', 64, '2025-02-20 15:39:21', '2025-02-20 15:39:21'),
('cdaa17ec-4b27-35c0-90f2-bd8e2279be58', 'commodi Hall', 'Sunday', 3, 'Intermediate', 181, '2025-02-20 15:39:21', '2025-02-20 15:39:21'),
('2afb197a-85d5-307e-8740-9b3bfc5c402a', 'et Hall', 'Sunday', 1, 'Intermediate', 195, '2025-02-20 15:39:21', '2025-02-20 15:39:21'),
('d03e9026-7deb-3897-8f09-ff1c438dd6c0', 'non Hall', 'Thursday', 2, 'Intermediate', 72, '2025-02-20 15:39:21', '2025-02-20 15:39:21'),
('6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 'ex Hall', 'Tuesday', 4, 'Beginner', 140, '2025-02-20 15:39:21', '2025-02-20 15:39:21'),
('3ea86a46-baf0-3d6e-97fb-6bc4ac2af48d', 'non Hall', 'Sunday', 4, 'Beginner', 175, '2025-02-20 15:39:21', '2025-02-20 15:39:21'),
('ff6d6dff-7080-3311-992b-64778811f032', 'modi Hall', 'Saturday', 2, 'Beginner', 7, '2025-02-20 15:39:21', '2025-02-20 15:39:21'),
('132513f4-e36f-3d3c-9c82-d89180f0f0fc', 'veritatis Hall', 'Tuesday', 4, 'Advanced', 82, '2025-02-20 15:39:21', '2025-02-20 15:39:21'),
('6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 'modi Hall', 'Tuesday', 4, 'Beginner', 136, '2025-02-20 15:39:22', '2025-02-20 15:39:22'),
('b131c014-2678-3d9d-b6cd-277a72d01266', 'earum Hall', 'Tuesday', 1, 'Intermediate', 163, '2025-02-20 15:39:22', '2025-02-20 15:39:22'),
('39e639a9-8c60-3998-aa2d-e87787a3a700', 'unde Hall', 'Tuesday', 4, 'Advanced', 145, '2025-02-20 15:39:22', '2025-02-20 15:39:22'),
('48c2e387-2851-3ace-b73b-80d1716251e9', 'inventore Hall', 'Wednesday', 1, 'Advanced', 200, '2025-02-20 15:39:22', '2025-02-20 15:39:22'),
('b8f876a9-0d9d-323c-83a8-8ed3a3fe52e8', 'quod Hall', 'Wednesday', 2, 'Advanced', 123, '2025-02-20 15:39:22', '2025-02-20 15:39:22'),
('4298501f-d084-36b7-acbd-90d0bfcc731c', 'fuga Hall', 'Thursday', 2, 'Advanced', 232, '2025-03-04 20:22:14', '2025-03-04 20:22:14'),
('5bdb4d01-5818-3b46-b90e-70bec964eeb7', 'non Hall', 'Wednesday', 4, 'Advanced', 3, '2025-03-04 20:22:14', '2025-03-04 20:22:14'),
('69f3bc25-700b-3a1e-a3d9-82aa6958fc42', 'ipsam Hall', 'Wednesday', 2, 'Beginner', 241, '2025-03-04 20:22:15', '2025-03-04 20:22:15'),
('cdaa17ec-4b27-35c0-90f2-bd8e2279be58', 'veritatis Hall', 'Saturday', 1, 'Advanced', 241, '2025-03-04 20:22:15', '2025-03-04 20:22:15'),
('2a762d09-3914-355a-9c0c-ce6f417ade0f', 'veritatis Hall', 'Saturday', 1, 'Intermediate', 106, '2025-03-04 20:22:15', '2025-03-04 20:22:15'),
('4298501f-d084-36b7-acbd-90d0bfcc731c', 'et Hall', 'Wednesday', 1, 'Advanced', 194, '2025-03-04 20:22:15', '2025-03-04 20:22:15'),
('aaa4c6b9-b8ab-30d3-8db0-a86c78f361f8', 'ullam Hall', 'Monday', 5, 'Advanced', 93, '2025-03-04 20:22:15', '2025-03-04 20:22:15'),
('000d458a-c354-3e6a-9544-bd776b3cfc77', 'natus Hall', 'Tuesday', 1, 'Advanced', 131, '2025-03-04 20:22:15', '2025-03-04 20:22:15'),
('cf783432-317e-3cd8-b659-f08dd55d0c9d', 'incidunt Hall', 'Tuesday', 2, 'Beginner', 240, '2025-03-04 20:22:15', '2025-03-04 20:22:15'),
('b131c014-2678-3d9d-b6cd-277a72d01266', 'dignissimos Hall', 'Monday', 5, 'Advanced', 193, '2025-03-04 20:22:15', '2025-03-04 20:22:15'),
('2afb197a-85d5-307e-8740-9b3bfc5c402a', 'ut Hall', 'Saturday', 3, 'Intermediate', 165, '2025-03-04 20:22:15', '2025-03-04 20:22:15'),
('dc4c2767-5b43-3e3f-b485-59ec86f165f5', 'veritatis Hall', 'Sunday', 2, 'Advanced', 149, '2025-03-04 20:22:15', '2025-03-04 20:22:15'),
('b131c014-2678-3d9d-b6cd-277a72d01266', 'dignissimos Hall', 'Tuesday', 4, 'Advanced', 246, '2025-03-04 20:22:15', '2025-03-04 20:22:15'),
('19042554-1c58-3c50-bb7d-4cbc1210d93b', 'ipsam Hall', 'Thursday', 4, 'Beginner', 262, '2025-03-04 20:22:15', '2025-03-04 20:22:15'),
('6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 'ex Hall', 'Tuesday', 1, 'Advanced', 217, '2025-03-04 20:22:15', '2025-03-04 20:22:15'),
('5f8e83dd-0b47-31fc-b47f-3aa8013ddbd5', 'fugiat Hall', 'Tuesday', 2, 'Advanced', 259, '2025-03-04 20:22:15', '2025-03-04 20:22:15'),
('2c67443f-7018-3781-92ce-0bbe870fdfd4', 'modi Hall', 'Monday', 2, 'Beginner', 260, '2025-03-04 20:22:15', '2025-03-04 20:22:15'),
('2a762d09-3914-355a-9c0c-ce6f417ade0f', 'officia Hall', 'Monday', 4, 'Intermediate', 81, '2025-03-04 20:22:16', '2025-03-04 20:22:16'),
('bede35fd-b339-3d2f-964d-4b88e43936dd', 'aliquam Hall', 'Tuesday', 5, 'Advanced', 35, '2025-03-04 20:22:16', '2025-03-04 20:22:16'),
('41d6ed21-83d0-32bd-a974-d7f067e82b19', 'reprehenderit Hall', 'Monday', 5, 'Intermediate', 252, '2025-03-04 20:22:16', '2025-03-04 20:22:16'),
('2c67443f-7018-3781-92ce-0bbe870fdfd4', 'quibusdam Hall', 'Tuesday', 3, 'Intermediate', 187, '2025-03-04 20:22:16', '2025-03-04 20:22:16'),
('48c2e387-2851-3ace-b73b-80d1716251e9', 'consequatur Hall', 'Monday', 2, 'Intermediate', 153, '2025-03-04 20:22:16', '2025-03-04 20:22:16'),
('b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'quod Hall', 'Thursday', 3, 'Advanced', 2, '2025-03-04 20:22:16', '2025-03-04 20:22:16'),
('41d6ed21-83d0-32bd-a974-d7f067e82b19', 'cumque Hall', 'Monday', 3, 'Advanced', 282, '2025-03-04 20:22:16', '2025-03-04 20:22:16'),
('cdaa17ec-4b27-35c0-90f2-bd8e2279be58', 'fugiat Hall', 'Wednesday', 3, 'Advanced', 237, '2025-03-04 20:22:16', '2025-03-04 20:22:16'),
('bede35fd-b339-3d2f-964d-4b88e43936dd', 'reprehenderit Hall', 'Sunday', 3, 'Advanced', 10, '2025-03-04 20:22:16', '2025-03-04 20:22:16'),
('b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'dolorum Hall', 'Tuesday', 1, 'Advanced', 225, '2025-03-04 20:22:16', '2025-03-04 20:22:16'),
('4a1fc97e-a7e3-3ebe-bb4e-1df6baaafb85', 'cumque Hall', 'Tuesday', 4, 'Beginner', 209, '2025-03-04 20:22:16', '2025-03-04 20:22:16'),
('39e639a9-8c60-3998-aa2d-e87787a3a700', 'eligendi Hall', 'Sunday', 1, 'Advanced', 156, '2025-03-04 20:22:16', '2025-03-04 20:22:16'),
('cf783432-317e-3cd8-b659-f08dd55d0c9d', 'aut Hall', 'Saturday', 2, 'Beginner', 176, '2025-03-04 20:22:16', '2025-03-04 20:22:16'),
('39e639a9-8c60-3998-aa2d-e87787a3a700', 'veritatis Hall', 'Tuesday', 2, 'Intermediate', 6, '2025-03-04 20:22:16', '2025-03-04 20:22:16'),
('d03e9026-7deb-3897-8f09-ff1c438dd6c0', 'sit Hall', 'Wednesday', 5, 'Advanced', 178, '2025-03-04 20:22:16', '2025-03-04 20:22:16'),
('cdaa17ec-4b27-35c0-90f2-bd8e2279be58', 'ipsam Hall', 'Thursday', 5, 'Intermediate', 130, '2025-03-04 20:22:16', '2025-03-04 20:22:16'),
('bede35fd-b339-3d2f-964d-4b88e43936dd', 'quibusdam Hall', 'Saturday', 5, 'Intermediate', 49, '2025-03-04 20:22:16', '2025-03-04 20:22:16'),
('aaa4c6b9-b8ab-30d3-8db0-a86c78f361f8', 'aliquam Hall', 'Thursday', 1, 'Intermediate', 11, '2025-03-04 20:22:16', '2025-03-04 20:22:16'),
('2a762d09-3914-355a-9c0c-ce6f417ade0f', 'modi Hall', 'Wednesday', 3, 'Intermediate', 105, '2025-03-04 20:22:17', '2025-03-04 20:22:17'),
('d03e9026-7deb-3897-8f09-ff1c438dd6c0', 'dolorum Hall', 'Saturday', 4, 'Intermediate', 53, '2025-03-04 20:22:17', '2025-03-04 20:22:17'),
('c3775d8a-713d-3075-b6e0-e1482f997e1a', 'quibusdam Hall', 'Saturday', 2, 'Intermediate', 208, '2025-03-04 20:22:17', '2025-03-04 20:22:17'),
('f7768266-83ed-394a-b625-ed1fdcc0e8a6', 'quaerat Hall', 'Saturday', 5, 'Advanced', 205, '2025-03-04 20:22:17', '2025-03-04 20:22:17'),
('b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 'officia Hall', 'Tuesday', 3, 'Advanced', 148, '2025-03-04 20:22:17', '2025-03-04 20:22:17'),
('478c31ab-018c-3c30-bdb6-d28cd6e9feb0', 'aut Hall', 'Thursday', 1, 'Intermediate', 74, '2025-03-04 20:22:17', '2025-03-04 20:22:17'),
('f7768266-83ed-394a-b625-ed1fdcc0e8a6', 'incidunt Hall', 'Thursday', 5, 'Advanced', 290, '2025-03-04 20:22:17', '2025-03-04 20:22:17'),
('b3cfe281-d605-36fd-b399-311b67e5ce1c', 'similique Hall', 'Thursday', 3, 'Intermediate', 239, '2025-03-04 20:22:17', '2025-03-04 20:22:17'),
('39e639a9-8c60-3998-aa2d-e87787a3a700', 'ut Hall', 'Thursday', 4, 'Intermediate', 2, '2025-03-04 20:22:17', '2025-03-04 20:22:17'),
('2c67443f-7018-3781-92ce-0bbe870fdfd4', 'dolorum Hall', 'Monday', 2, 'Beginner', 96, '2025-03-04 20:22:17', '2025-03-04 20:22:17'),
('19042554-1c58-3c50-bb7d-4cbc1210d93b', 'sit Hall', 'Saturday', 1, 'Advanced', 177, '2025-03-04 20:22:17', '2025-03-04 20:22:17'),
('ba75b1e6-e5cb-326e-a842-6eb1724a5804', 'ipsam Hall', 'Saturday', 3, 'Intermediate', 215, '2025-03-04 20:22:17', '2025-03-04 20:22:17'),
('4298501f-d084-36b7-acbd-90d0bfcc731c', 'voluptatem Hall', 'Thursday', 4, 'Intermediate', 11, '2025-03-04 20:22:17', '2025-03-04 20:22:17'),
('bede35fd-b339-3d2f-964d-4b88e43936dd', 'ullam Hall', 'Thursday', 3, 'Advanced', 249, '2025-03-04 20:22:17', '2025-03-04 20:22:17'),
('dc4c2767-5b43-3e3f-b485-59ec86f165f5', 'fugiat Hall', 'Thursday', 3, 'Intermediate', 17, '2025-03-04 20:22:17', '2025-03-04 20:22:17'),
('2afb197a-85d5-307e-8740-9b3bfc5c402a', 'eos Hall', 'Wednesday', 3, 'Beginner', 2, '2025-03-04 20:23:21', '2025-03-04 20:23:21'),
('4298501f-d084-36b7-acbd-90d0bfcc731c', 'et Hall', 'Saturday', 1, 'Beginner', 2, '2025-03-04 20:23:21', '2025-03-04 20:23:21'),
('41d6ed21-83d0-32bd-a974-d7f067e82b19', 'eligendi Hall', 'Thursday', 5, 'Intermediate', 2, '2025-03-04 20:23:21', '2025-03-04 20:23:21'),
('2afb197a-85d5-307e-8740-9b3bfc5c402a', 'officia Hall', 'Tuesday', 5, 'Advanced', 2, '2025-03-04 20:23:21', '2025-03-04 20:23:21'),
('29cb4fa8-40a9-3100-a3e1-c6a3e72e62d4', 'eos Hall', 'Thursday', 3, 'Intermediate', 2, '2025-03-04 20:23:21', '2025-03-04 20:23:21'),
('2afb197a-85d5-307e-8740-9b3bfc5c402a', 'eligendi Hall', 'Thursday', 4, 'Advanced', 2, '2025-03-04 20:23:21', '2025-03-04 20:23:21');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'instructors', '2025-02-19 10:01:22', '2025-02-19 10:01:22'),
(2, 'admin', 'instructors', '2025-02-19 10:01:22', '2025-02-19 10:01:22'),
(3, 'instructor', 'instructors', '2025-02-19 10:01:22', '2025-02-19 10:01:22');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 3),
(9, 1),
(9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `day` varchar(255) NOT NULL,
  `period_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`day`, `period_id`, `created_at`, `updated_at`) VALUES
('Monday', 1, NULL, NULL),
('Monday', 2, NULL, NULL),
('Monday', 3, NULL, NULL),
('Monday', 4, NULL, NULL),
('Monday', 5, NULL, NULL),
('Saturday', 1, NULL, NULL),
('Saturday', 2, NULL, NULL),
('Saturday', 3, NULL, NULL),
('Saturday', 4, NULL, NULL),
('Saturday', 5, NULL, NULL),
('Sunday', 1, NULL, NULL),
('Sunday', 2, NULL, NULL),
('Sunday', 3, NULL, NULL),
('Sunday', 4, NULL, NULL),
('Sunday', 5, NULL, NULL),
('Thursday', 1, NULL, NULL),
('Thursday', 2, NULL, NULL),
('Thursday', 3, NULL, NULL),
('Thursday', 4, NULL, NULL),
('Thursday', 5, NULL, NULL),
('Tuesday', 1, NULL, NULL),
('Tuesday', 2, NULL, NULL),
('Tuesday', 3, NULL, NULL),
('Tuesday', 4, NULL, NULL),
('Tuesday', 5, NULL, NULL),
('Wednesday', 1, NULL, NULL),
('Wednesday', 2, NULL, NULL),
('Wednesday', 3, NULL, NULL),
('Wednesday', 4, NULL, NULL),
('Wednesday', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_subjects`
--

CREATE TABLE `schedule_subjects` (
  `level` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `period_id` bigint(20) UNSIGNED NOT NULL,
  `location_name` varchar(255) NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedule_subjects`
--

INSERT INTO `schedule_subjects` (`level`, `day`, `period_id`, `location_name`, `student_id`, `course_id`, `instructor_id`, `created_at`, `updated_at`) VALUES
('Level 2', 'Thursday', 4, 'maxime Hall', 83, '48c2e387-2851-3ace-b73b-80d1716251e9', 32, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 3', 'Saturday', 2, 'quod Hall', 46, '39e639a9-8c60-3998-aa2d-e87787a3a700', 11, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Monday', 4, 'earum Hall', 4, '39e639a9-8c60-3998-aa2d-e87787a3a700', 13, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 3', 'Tuesday', 1, 'earum Hall', 75, 'd03e9026-7deb-3897-8f09-ff1c438dd6c0', 15, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Thursday', 1, 'earum Hall', 30, '39e639a9-8c60-3998-aa2d-e87787a3a700', 13, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Tuesday', 2, 'quibusdam Hall', 56, '48c2e387-2851-3ace-b73b-80d1716251e9', 1, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Saturday', 5, 'consequatur Hall', 84, '1531cef7-704b-32f3-a304-96ee41d7ed6b', 27, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Tuesday', 2, 'veritatis Hall', 93, 'ff6d6dff-7080-3311-992b-64778811f032', 32, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Sunday', 5, 'fugiat Hall', 68, 'c3775d8a-713d-3075-b6e0-e1482f997e1a', 19, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Wednesday', 4, 'consequatur Hall', 87, 'b131c014-2678-3d9d-b6cd-277a72d01266', 5, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Saturday', 5, 'unde Hall', 66, '4298501f-d084-36b7-acbd-90d0bfcc731c', 3, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 3', 'Tuesday', 4, 'veritatis Hall', 16, '6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 5, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Sunday', 2, 'reprehenderit Hall', 15, '39e639a9-8c60-3998-aa2d-e87787a3a700', 21, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 4', 'Thursday', 5, 'natus Hall', 40, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 30, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Tuesday', 3, 'reprehenderit Hall', 63, 'f7768266-83ed-394a-b625-ed1fdcc0e8a6', 18, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 4', 'Tuesday', 4, 'commodi Hall', 54, '19042554-1c58-3c50-bb7d-4cbc1210d93b', 3, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Sunday', 4, 'maxime Hall', 24, 'aaa4c6b9-b8ab-30d3-8db0-a86c78f361f8', 5, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 4', 'Saturday', 1, 'non Hall', 64, 'b131c014-2678-3d9d-b6cd-277a72d01266', 30, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Saturday', 1, 'maxime Hall', 57, '39e639a9-8c60-3998-aa2d-e87787a3a700', 14, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Wednesday', 5, 'sit Hall', 95, '1531cef7-704b-32f3-a304-96ee41d7ed6b', 31, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Tuesday', 2, 'reprehenderit Hall', 21, '69f3bc25-700b-3a1e-a3d9-82aa6958fc42', 4, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 3', 'Sunday', 4, 'earum Hall', 23, 'b131c014-2678-3d9d-b6cd-277a72d01266', 29, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 4', 'Wednesday', 4, 'eos Hall', 51, '38b32e78-5fb6-3b37-af2b-679dfa604b6a', 19, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 4', 'Wednesday', 4, 'sit Hall', 50, '6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 27, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 4', 'Monday', 1, 'veritatis Hall', 11, '38b32e78-5fb6-3b37-af2b-679dfa604b6a', 32, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 4', 'Wednesday', 2, 'unde Hall', 17, 'd03e9026-7deb-3897-8f09-ff1c438dd6c0', 1, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Sunday', 4, 'commodi Hall', 14, '48c2e387-2851-3ace-b73b-80d1716251e9', 14, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Thursday', 2, 'natus Hall', 22, '19042554-1c58-3c50-bb7d-4cbc1210d93b', 9, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 4', 'Sunday', 3, 'unde Hall', 32, '1531cef7-704b-32f3-a304-96ee41d7ed6b', 10, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Thursday', 2, 'quibusdam Hall', 90, '4298501f-d084-36b7-acbd-90d0bfcc731c', 27, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 4', 'Wednesday', 4, 'natus Hall', 76, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 4, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 3', 'Thursday', 3, 'consequatur Hall', 79, '6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 9, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Wednesday', 4, 'iste Hall', 19, '30fd38b0-3165-3c36-9e2e-327a4bd733f9', 30, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Tuesday', 5, 'maxime Hall', 62, '1531cef7-704b-32f3-a304-96ee41d7ed6b', 24, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 3', 'Sunday', 5, 'non Hall', 89, 'cf783432-317e-3cd8-b659-f08dd55d0c9d', 9, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Sunday', 3, 'maxime Hall', 48, 'd03e9026-7deb-3897-8f09-ff1c438dd6c0', 3, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Tuesday', 4, 'earum Hall', 9, 'f7768266-83ed-394a-b625-ed1fdcc0e8a6', 24, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Tuesday', 1, 'cumque Hall', 77, 'cf783432-317e-3cd8-b659-f08dd55d0c9d', 21, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Wednesday', 2, 'ex Hall', 34, '39e639a9-8c60-3998-aa2d-e87787a3a700', 12, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Tuesday', 2, 'earum Hall', 70, '1531cef7-704b-32f3-a304-96ee41d7ed6b', 11, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 4', 'Monday', 2, 'veritatis Hall', 58, '39e639a9-8c60-3998-aa2d-e87787a3a700', 9, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Tuesday', 2, 'non Hall', 33, 'd03e9026-7deb-3897-8f09-ff1c438dd6c0', 21, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Monday', 1, 'unde Hall', 98, '38b32e78-5fb6-3b37-af2b-679dfa604b6a', 20, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 3', 'Tuesday', 5, 'unde Hall', 35, '38b32e78-5fb6-3b37-af2b-679dfa604b6a', 4, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 3', 'Monday', 1, 'unde Hall', 72, '69f3bc25-700b-3a1e-a3d9-82aa6958fc42', 13, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 4', 'Wednesday', 5, 'laudantium Hall', 36, '39e639a9-8c60-3998-aa2d-e87787a3a700', 18, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Saturday', 4, 'quaerat Hall', 12, '38b32e78-5fb6-3b37-af2b-679dfa604b6a', 29, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 4', 'Tuesday', 1, 'sit Hall', 67, 'b131c014-2678-3d9d-b6cd-277a72d01266', 31, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 4', 'Saturday', 5, 'voluptatem Hall', 39, 'd03e9026-7deb-3897-8f09-ff1c438dd6c0', 14, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 4', 'Sunday', 4, 'consequatur Hall', 20, 'b131c014-2678-3d9d-b6cd-277a72d01266', 18, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 4', 'Sunday', 1, 'commodi Hall', 27, '19042554-1c58-3c50-bb7d-4cbc1210d93b', 11, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Sunday', 5, 'voluptatem Hall', 99, '1531cef7-704b-32f3-a304-96ee41d7ed6b', 21, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Saturday', 2, 'earum Hall', 52, 'd03e9026-7deb-3897-8f09-ff1c438dd6c0', 28, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 3', 'Tuesday', 5, 'reprehenderit Hall', 86, '69f3bc25-700b-3a1e-a3d9-82aa6958fc42', 19, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Sunday', 4, 'quaerat Hall', 71, '30fd38b0-3165-3c36-9e2e-327a4bd733f9', 20, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Saturday', 1, 'natus Hall', 81, '19042554-1c58-3c50-bb7d-4cbc1210d93b', 11, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Wednesday', 5, 'sit Hall', 8, '19042554-1c58-3c50-bb7d-4cbc1210d93b', 12, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Monday', 3, 'quibusdam Hall', 44, '48c2e387-2851-3ace-b73b-80d1716251e9', 6, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 4', 'Sunday', 4, 'maxime Hall', 6, '1531cef7-704b-32f3-a304-96ee41d7ed6b', 10, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Wednesday', 5, 'maxime Hall', 1, '4298501f-d084-36b7-acbd-90d0bfcc731c', 3, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Monday', 4, 'maxime Hall', 42, '39e639a9-8c60-3998-aa2d-e87787a3a700', 13, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Monday', 2, 'eos Hall', 37, '30fd38b0-3165-3c36-9e2e-327a4bd733f9', 25, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 4', 'Sunday', 2, 'sit Hall', 69, 'f7768266-83ed-394a-b625-ed1fdcc0e8a6', 28, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 3', 'Wednesday', 2, 'quaerat Hall', 91, 'dc4c2767-5b43-3e3f-b485-59ec86f165f5', 9, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 3', 'Tuesday', 3, 'ex Hall', 55, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 31, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Tuesday', 5, 'eos Hall', 10, '30fd38b0-3165-3c36-9e2e-327a4bd733f9', 20, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Monday', 1, 'voluptatem Hall', 38, 'ff6d6dff-7080-3311-992b-64778811f032', 14, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Thursday', 1, 'similique Hall', 5, 'c3775d8a-713d-3075-b6e0-e1482f997e1a', 31, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 3', 'Sunday', 1, 'fugiat Hall', 41, 'dc4c2767-5b43-3e3f-b485-59ec86f165f5', 21, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 4', 'Sunday', 3, 'quaerat Hall', 94, '5f8e83dd-0b47-31fc-b47f-3aa8013ddbd5', 5, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 3', 'Wednesday', 3, 'maxime Hall', 82, 'b131c014-2678-3d9d-b6cd-277a72d01266', 27, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 3', 'Saturday', 2, 'fugiat Hall', 7, '000d458a-c354-3e6a-9544-bd776b3cfc77', 6, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Tuesday', 2, 'voluptatem Hall', 53, '4298501f-d084-36b7-acbd-90d0bfcc731c', 28, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Wednesday', 1, 'maxime Hall', 96, 'ff6d6dff-7080-3311-992b-64778811f032', 15, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 3', 'Monday', 3, 'cumque Hall', 25, 'b131c014-2678-3d9d-b6cd-277a72d01266', 23, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Saturday', 5, 'unde Hall', 80, '39e639a9-8c60-3998-aa2d-e87787a3a700', 19, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 3', 'Tuesday', 2, 'laudantium Hall', 59, '4298501f-d084-36b7-acbd-90d0bfcc731c', 1, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Sunday', 3, 'reprehenderit Hall', 26, '5f8e83dd-0b47-31fc-b47f-3aa8013ddbd5', 15, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 4', 'Saturday', 5, 'cumque Hall', 65, '6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 18, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Tuesday', 4, 'consequatur Hall', 92, 'c3775d8a-713d-3075-b6e0-e1482f997e1a', 20, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Monday', 3, 'consequatur Hall', 18, '39e639a9-8c60-3998-aa2d-e87787a3a700', 17, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Thursday', 1, 'commodi Hall', 61, '38b32e78-5fb6-3b37-af2b-679dfa604b6a', 16, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Saturday', 4, 'et Hall', 47, '38b32e78-5fb6-3b37-af2b-679dfa604b6a', 15, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 3', 'Thursday', 2, 'earum Hall', 28, 'f7768266-83ed-394a-b625-ed1fdcc0e8a6', 32, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Tuesday', 2, 'similique Hall', 29, 'f7768266-83ed-394a-b625-ed1fdcc0e8a6', 18, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 4', 'Thursday', 2, 'natus Hall', 31, 'ff6d6dff-7080-3311-992b-64778811f032', 21, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 4', 'Tuesday', 4, 'non Hall', 3, '38b32e78-5fb6-3b37-af2b-679dfa604b6a', 22, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Monday', 3, 'quibusdam Hall', 43, 'd03e9026-7deb-3897-8f09-ff1c438dd6c0', 32, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 4', 'Sunday', 2, 'consequatur Hall', 85, '6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 31, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Tuesday', 3, 'sit Hall', 73, 'c3775d8a-713d-3075-b6e0-e1482f997e1a', 4, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Thursday', 3, 'quibusdam Hall', 49, '5f8e83dd-0b47-31fc-b47f-3aa8013ddbd5', 17, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Tuesday', 2, 'et Hall', 60, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 3, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Tuesday', 3, 'quaerat Hall', 97, 'ff6d6dff-7080-3311-992b-64778811f032', 28, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 3', 'Wednesday', 2, 'voluptatem Hall', 74, 'ff6d6dff-7080-3311-992b-64778811f032', 12, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Sunday', 3, 'eos Hall', 100, '30fd38b0-3165-3c36-9e2e-327a4bd733f9', 27, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 3', 'Tuesday', 2, 'et Hall', 88, '39e639a9-8c60-3998-aa2d-e87787a3a700', 4, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 3', 'Saturday', 2, 'natus Hall', 78, 'd03e9026-7deb-3897-8f09-ff1c438dd6c0', 9, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Monday', 3, 'sit Hall', 2, '38b32e78-5fb6-3b37-af2b-679dfa604b6a', 19, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 2', 'Thursday', 2, 'similique Hall', 13, '6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 31, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 1', 'Tuesday', 4, 'quod Hall', 45, 'f7768266-83ed-394a-b625-ed1fdcc0e8a6', 9, '2025-02-20 15:25:45', '2025-02-20 15:25:45'),
('Level 4', 'Thursday', 5, 'laudantium Hall', 83, 'dc4c2767-5b43-3e3f-b485-59ec86f165f5', 50, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Monday', 2, 'iste Hall', 46, 'ff6d6dff-7080-3311-992b-64778811f032', 36, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Tuesday', 2, 'ipsam Hall', 4, '2a762d09-3914-355a-9c0c-ce6f417ade0f', 57, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Monday', 2, 'laudantium Hall', 151, '41d6ed21-83d0-32bd-a974-d7f067e82b19', 60, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Tuesday', 3, 'non Hall', 163, '4298501f-d084-36b7-acbd-90d0bfcc731c', 46, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Thursday', 5, 'quibusdam Hall', 104, 'b3cfe281-d605-36fd-b399-311b67e5ce1c', 53, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Saturday', 5, 'aut Hall', 114, '19042554-1c58-3c50-bb7d-4cbc1210d93b', 46, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Sunday', 3, 'fugiat Hall', 75, '5bf63d62-d905-36b3-8734-78581cf4a8bd', 38, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Monday', 1, 'similique Hall', 30, '40e4eb6e-f457-3080-ac59-ad6d720904cf', 5, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Monday', 2, 'consequatur Hall', 56, 'b3cfe281-d605-36fd-b399-311b67e5ce1c', 9, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Saturday', 3, 'ullam Hall', 84, '2a762d09-3914-355a-9c0c-ce6f417ade0f', 46, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Sunday', 2, 'ullam Hall', 116, '4298501f-d084-36b7-acbd-90d0bfcc731c', 41, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Saturday', 4, 'et Hall', 93, 'ff6d6dff-7080-3311-992b-64778811f032', 11, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Tuesday', 5, 'veritatis Hall', 68, '478c31ab-018c-3c30-bdb6-d28cd6e9feb0', 8, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Tuesday', 1, 'veritatis Hall', 171, 'b131c014-2678-3d9d-b6cd-277a72d01266', 41, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Thursday', 1, 'aliquid Hall', 87, '783326d1-d26c-341f-b473-96fd6b13b9bc', 56, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Thursday', 5, 'unde Hall', 126, '6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 44, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Monday', 5, 'commodi Hall', 133, '4298501f-d084-36b7-acbd-90d0bfcc731c', 27, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Sunday', 5, 'commodi Hall', 146, '2c67443f-7018-3781-92ce-0bbe870fdfd4', 13, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Wednesday', 3, 'commodi Hall', 66, '478c31ab-018c-3c30-bdb6-d28cd6e9feb0', 1, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Sunday', 1, 'modi Hall', 16, '69f3bc25-700b-3a1e-a3d9-82aa6958fc42', 16, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Tuesday', 4, 'voluptatem Hall', 15, '48c2e387-2851-3ace-b73b-80d1716251e9', 12, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Sunday', 5, 'natus Hall', 40, 'ba75b1e6-e5cb-326e-a842-6eb1724a5804', 40, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Saturday', 5, 'quaerat Hall', 148, 'd03e9026-7deb-3897-8f09-ff1c438dd6c0', 11, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Tuesday', 4, 'ipsam Hall', 63, '30fd38b0-3165-3c36-9e2e-327a4bd733f9', 58, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Thursday', 1, 'voluptatem Hall', 131, '636465d7-9068-39a8-978b-0a1bdd9da457', 56, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Tuesday', 2, 'modi Hall', 139, '1531cef7-704b-32f3-a304-96ee41d7ed6b', 35, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Saturday', 4, 'ex Hall', 54, 'ba75b1e6-e5cb-326e-a842-6eb1724a5804', 60, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Sunday', 5, 'maxime Hall', 24, 'f7768266-83ed-394a-b625-ed1fdcc0e8a6', 7, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Monday', 5, 'fugiat Hall', 130, '2a762d09-3914-355a-9c0c-ce6f417ade0f', 7, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Saturday', 3, 'officia Hall', 167, '3ea86a46-baf0-3d6e-97fb-6bc4ac2af48d', 63, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Sunday', 1, 'reprehenderit Hall', 64, '5f8e83dd-0b47-31fc-b47f-3aa8013ddbd5', 49, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Tuesday', 4, 'sit Hall', 57, '55797b6b-014f-3617-b4ec-b4555fff2fad', 49, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Monday', 3, 'officia Hall', 95, '30fd38b0-3165-3c36-9e2e-327a4bd733f9', 55, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Sunday', 2, 'unde Hall', 182, '55797b6b-014f-3617-b4ec-b4555fff2fad', 16, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Monday', 4, 'eligendi Hall', 174, 'dc4c2767-5b43-3e3f-b485-59ec86f165f5', 22, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Thursday', 4, 'quaerat Hall', 21, '55797b6b-014f-3617-b4ec-b4555fff2fad', 39, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Monday', 3, 'dignissimos Hall', 23, '132513f4-e36f-3d3c-9c82-d89180f0f0fc', 17, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Wednesday', 5, 'iusto Hall', 149, '41d6ed21-83d0-32bd-a974-d7f067e82b19', 57, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Tuesday', 3, 'quibusdam Hall', 169, '48c2e387-2851-3ace-b73b-80d1716251e9', 45, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Monday', 1, 'inventore Hall', 51, 'bede35fd-b339-3d2f-964d-4b88e43936dd', 6, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Saturday', 1, 'aliquid Hall', 50, '39e639a9-8c60-3998-aa2d-e87787a3a700', 3, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Thursday', 2, 'hic Hall', 166, '48c2e387-2851-3ace-b73b-80d1716251e9', 55, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Saturday', 1, 'dolorum Hall', 11, '69f3bc25-700b-3a1e-a3d9-82aa6958fc42', 1, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Saturday', 1, 'maxime Hall', 132, '40e4eb6e-f457-3080-ac59-ad6d720904cf', 12, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Tuesday', 2, 'veritatis Hall', 136, 'cdaa17ec-4b27-35c0-90f2-bd8e2279be58', 39, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Saturday', 4, 'sit Hall', 129, '39e639a9-8c60-3998-aa2d-e87787a3a700', 16, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Wednesday', 5, 'laudantium Hall', 17, 'aaa4c6b9-b8ab-30d3-8db0-a86c78f361f8', 32, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Monday', 4, 'quibusdam Hall', 14, '30fd38b0-3165-3c36-9e2e-327a4bd733f9', 47, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Tuesday', 1, 'earum Hall', 194, '55797b6b-014f-3617-b4ec-b4555fff2fad', 15, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Tuesday', 1, 'quibusdam Hall', 150, '55797b6b-014f-3617-b4ec-b4555fff2fad', 38, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Sunday', 5, 'cumque Hall', 153, '5f8e83dd-0b47-31fc-b47f-3aa8013ddbd5', 54, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Thursday', 4, 'laudantium Hall', 101, '4298501f-d084-36b7-acbd-90d0bfcc731c', 7, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Tuesday', 1, 'voluptatem Hall', 108, '000d458a-c354-3e6a-9544-bd776b3cfc77', 10, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Saturday', 5, 'iusto Hall', 22, 'd03e9026-7deb-3897-8f09-ff1c438dd6c0', 61, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Monday', 2, 'similique Hall', 32, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 62, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Sunday', 2, 'hic Hall', 135, '5bdb4d01-5818-3b46-b90e-70bec964eeb7', 41, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Sunday', 5, 'earum Hall', 165, 'b8f876a9-0d9d-323c-83a8-8ed3a3fe52e8', 36, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Saturday', 3, 'sit Hall', 90, '41d6ed21-83d0-32bd-a974-d7f067e82b19', 40, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Tuesday', 1, 'fugiat Hall', 76, '48c2e387-2851-3ace-b73b-80d1716251e9', 44, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Wednesday', 2, 'natus Hall', 122, '5bf63d62-d905-36b3-8734-78581cf4a8bd', 30, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Saturday', 4, 'non Hall', 158, '39e639a9-8c60-3998-aa2d-e87787a3a700', 22, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Thursday', 1, 'iste Hall', 193, '6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 16, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Monday', 1, 'consequatur Hall', 112, '55797b6b-014f-3617-b4ec-b4555fff2fad', 30, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Thursday', 5, 'sit Hall', 168, '000d458a-c354-3e6a-9544-bd776b3cfc77', 16, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Saturday', 3, 'commodi Hall', 79, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 17, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Saturday', 5, 'dolorum Hall', 19, '478c31ab-018c-3c30-bdb6-d28cd6e9feb0', 60, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Sunday', 4, 'aliquam Hall', 62, '5f8e83dd-0b47-31fc-b47f-3aa8013ddbd5', 44, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Thursday', 1, 'aliquam Hall', 89, 'b3cfe281-d605-36fd-b399-311b67e5ce1c', 9, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Sunday', 4, 'natus Hall', 48, 'b8f876a9-0d9d-323c-83a8-8ed3a3fe52e8', 4, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Tuesday', 2, 'dolorum Hall', 9, '48c2e387-2851-3ace-b73b-80d1716251e9', 44, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Tuesday', 2, 'quod Hall', 143, '39e639a9-8c60-3998-aa2d-e87787a3a700', 50, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Saturday', 1, 'ut Hall', 172, 'cf783432-317e-3cd8-b659-f08dd55d0c9d', 63, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Saturday', 4, 'quibusdam Hall', 77, '29cb4fa8-40a9-3100-a3e1-c6a3e72e62d4', 42, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Tuesday', 2, 'eligendi Hall', 164, 'b3cfe281-d605-36fd-b399-311b67e5ce1c', 14, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Wednesday', 3, 'ut Hall', 34, '2c67443f-7018-3781-92ce-0bbe870fdfd4', 27, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Tuesday', 2, 'aut Hall', 180, '4298501f-d084-36b7-acbd-90d0bfcc731c', 14, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Saturday', 3, 'voluptatem Hall', 190, 'cdaa17ec-4b27-35c0-90f2-bd8e2279be58', 28, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Wednesday', 2, 'reprehenderit Hall', 176, '4a1fc97e-a7e3-3ebe-bb4e-1df6baaafb85', 42, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Thursday', 3, 'officia Hall', 70, '6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 13, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Sunday', 1, 'ipsam Hall', 58, '19042554-1c58-3c50-bb7d-4cbc1210d93b', 63, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Wednesday', 1, 'aliquam Hall', 33, '3ea86a46-baf0-3d6e-97fb-6bc4ac2af48d', 47, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Thursday', 5, 'unde Hall', 98, '3ea86a46-baf0-3d6e-97fb-6bc4ac2af48d', 26, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Sunday', 5, 'iusto Hall', 184, 'c3775d8a-713d-3075-b6e0-e1482f997e1a', 59, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Tuesday', 5, 'inventore Hall', 103, 'ba75b1e6-e5cb-326e-a842-6eb1724a5804', 6, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Sunday', 5, 'qui Hall', 179, '5bdb4d01-5818-3b46-b90e-70bec964eeb7', 32, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Saturday', 2, 'ut Hall', 141, '6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 14, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Wednesday', 1, 'laudantium Hall', 35, 'ba75b1e6-e5cb-326e-a842-6eb1724a5804', 63, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Monday', 2, 'quibusdam Hall', 72, '5f8e83dd-0b47-31fc-b47f-3aa8013ddbd5', 35, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Saturday', 5, 'maxime Hall', 191, 'd03e9026-7deb-3897-8f09-ff1c438dd6c0', 44, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Saturday', 5, 'reprehenderit Hall', 115, '55797b6b-014f-3617-b4ec-b4555fff2fad', 34, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Thursday', 2, 'modi Hall', 161, '39e639a9-8c60-3998-aa2d-e87787a3a700', 12, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Saturday', 1, 'dignissimos Hall', 123, 'b3cfe281-d605-36fd-b399-311b67e5ce1c', 40, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Monday', 5, 'unde Hall', 36, '19042554-1c58-3c50-bb7d-4cbc1210d93b', 56, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Tuesday', 3, 'eos Hall', 12, 'aaa4c6b9-b8ab-30d3-8db0-a86c78f361f8', 53, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Tuesday', 2, 'similique Hall', 67, '69f3bc25-700b-3a1e-a3d9-82aa6958fc42', 23, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Monday', 4, 'laudantium Hall', 39, '1531cef7-704b-32f3-a304-96ee41d7ed6b', 32, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Sunday', 4, 'laudantium Hall', 20, 'c3775d8a-713d-3075-b6e0-e1482f997e1a', 24, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Tuesday', 4, 'iste Hall', 134, 'ff6d6dff-7080-3311-992b-64778811f032', 57, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Sunday', 5, 'ut Hall', 27, 'cf783432-317e-3cd8-b659-f08dd55d0c9d', 38, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Monday', 5, 'laudantium Hall', 99, 'bede35fd-b339-3d2f-964d-4b88e43936dd', 35, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Sunday', 2, 'dolorum Hall', 52, '19042554-1c58-3c50-bb7d-4cbc1210d93b', 51, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Wednesday', 3, 'commodi Hall', 86, '5bf63d62-d905-36b3-8734-78581cf4a8bd', 42, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Tuesday', 4, 'unde Hall', 188, '132513f4-e36f-3d3c-9c82-d89180f0f0fc', 29, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Wednesday', 3, 'non Hall', 185, '5bf63d62-d905-36b3-8734-78581cf4a8bd', 27, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Thursday', 2, 'et Hall', 189, 'cf783432-317e-3cd8-b659-f08dd55d0c9d', 39, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Monday', 3, 'inventore Hall', 120, 'bede35fd-b339-3d2f-964d-4b88e43936dd', 31, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Saturday', 4, 'cumque Hall', 187, '48c2e387-2851-3ace-b73b-80d1716251e9', 39, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Wednesday', 3, 'natus Hall', 71, '5bf63d62-d905-36b3-8734-78581cf4a8bd', 5, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Wednesday', 1, 'fugiat Hall', 111, 'c3775d8a-713d-3075-b6e0-e1482f997e1a', 3, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Monday', 4, 'iusto Hall', 109, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 38, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Sunday', 3, 'veritatis Hall', 157, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 52, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Sunday', 5, 'dignissimos Hall', 117, 'c3775d8a-713d-3075-b6e0-e1482f997e1a', 63, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Thursday', 4, 'quod Hall', 81, 'cdaa17ec-4b27-35c0-90f2-bd8e2279be58', 23, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Monday', 4, 'natus Hall', 160, '29cb4fa8-40a9-3100-a3e1-c6a3e72e62d4', 45, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Wednesday', 3, 'ex Hall', 196, '132513f4-e36f-3d3c-9c82-d89180f0f0fc', 38, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Saturday', 2, 'aut Hall', 8, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 43, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Wednesday', 2, 'dolorum Hall', 44, '5bf63d62-d905-36b3-8734-78581cf4a8bd', 22, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Monday', 5, 'dignissimos Hall', 145, '3ea86a46-baf0-3d6e-97fb-6bc4ac2af48d', 16, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Monday', 2, 'earum Hall', 6, '39e639a9-8c60-3998-aa2d-e87787a3a700', 23, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Saturday', 2, 'quibusdam Hall', 124, 'd03e9026-7deb-3897-8f09-ff1c438dd6c0', 21, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Tuesday', 3, 'ex Hall', 1, 'dc4c2767-5b43-3e3f-b485-59ec86f165f5', 44, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Monday', 4, 'aliquid Hall', 192, '41d6ed21-83d0-32bd-a974-d7f067e82b19', 45, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Sunday', 2, 'veritatis Hall', 42, 'b8f876a9-0d9d-323c-83a8-8ed3a3fe52e8', 13, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Thursday', 4, 'natus Hall', 162, '000d458a-c354-3e6a-9544-bd776b3cfc77', 51, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Saturday', 1, 'iusto Hall', 37, '636465d7-9068-39a8-978b-0a1bdd9da457', 43, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Thursday', 4, 'veritatis Hall', 137, '3ea86a46-baf0-3d6e-97fb-6bc4ac2af48d', 19, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Monday', 1, 'quibusdam Hall', 106, 'cf783432-317e-3cd8-b659-f08dd55d0c9d', 51, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Monday', 1, 'hic Hall', 69, 'ba75b1e6-e5cb-326e-a842-6eb1724a5804', 40, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Thursday', 5, 'inventore Hall', 186, '4298501f-d084-36b7-acbd-90d0bfcc731c', 23, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Sunday', 2, 'quibusdam Hall', 91, '2a762d09-3914-355a-9c0c-ce6f417ade0f', 4, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Monday', 1, 'quibusdam Hall', 198, 'b131c014-2678-3d9d-b6cd-277a72d01266', 12, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Thursday', 2, 'voluptatem Hall', 173, 'ff6d6dff-7080-3311-992b-64778811f032', 37, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Thursday', 3, 'consequatur Hall', 156, 'ff6d6dff-7080-3311-992b-64778811f032', 50, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Tuesday', 1, 'cumque Hall', 107, 'bede35fd-b339-3d2f-964d-4b88e43936dd', 42, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Monday', 4, 'incidunt Hall', 55, '5bf63d62-d905-36b3-8734-78581cf4a8bd', 17, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Thursday', 1, 'qui Hall', 140, 'bede35fd-b339-3d2f-964d-4b88e43936dd', 58, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Tuesday', 2, 'modi Hall', 195, 'cf783432-317e-3cd8-b659-f08dd55d0c9d', 27, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Saturday', 4, 'inventore Hall', 147, '41d6ed21-83d0-32bd-a974-d7f067e82b19', 56, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Thursday', 4, 'et Hall', 10, '40e4eb6e-f457-3080-ac59-ad6d720904cf', 57, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Sunday', 5, 'consequatur Hall', 128, '5f8e83dd-0b47-31fc-b47f-3aa8013ddbd5', 28, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Wednesday', 4, 'unde Hall', 38, '55797b6b-014f-3617-b4ec-b4555fff2fad', 48, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Sunday', 2, 'quibusdam Hall', 152, '2afb197a-85d5-307e-8740-9b3bfc5c402a', 36, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Wednesday', 2, 'inventore Hall', 138, 'c3775d8a-713d-3075-b6e0-e1482f997e1a', 23, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Tuesday', 4, 'unde Hall', 118, 'ff6d6dff-7080-3311-992b-64778811f032', 32, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Wednesday', 5, 'cumque Hall', 5, '2c67443f-7018-3781-92ce-0bbe870fdfd4', 30, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Monday', 2, 'quibusdam Hall', 127, '4298501f-d084-36b7-acbd-90d0bfcc731c', 41, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Saturday', 3, 'voluptatem Hall', 41, 'f7768266-83ed-394a-b625-ed1fdcc0e8a6', 37, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Sunday', 5, 'hic Hall', 94, 'c3775d8a-713d-3075-b6e0-e1482f997e1a', 19, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Sunday', 1, 'consequatur Hall', 82, 'cf783432-317e-3cd8-b659-f08dd55d0c9d', 13, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Wednesday', 5, 'qui Hall', 170, 'cdaa17ec-4b27-35c0-90f2-bd8e2279be58', 3, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Sunday', 3, 'inventore Hall', 105, '55797b6b-014f-3617-b4ec-b4555fff2fad', 42, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Wednesday', 4, 'fuga Hall', 7, 'cf783432-317e-3cd8-b659-f08dd55d0c9d', 27, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Sunday', 5, 'unde Hall', 181, 'c3775d8a-713d-3075-b6e0-e1482f997e1a', 48, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Thursday', 4, 'fugiat Hall', 53, '19042554-1c58-3c50-bb7d-4cbc1210d93b', 59, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Wednesday', 5, 'reprehenderit Hall', 142, 'b131c014-2678-3d9d-b6cd-277a72d01266', 28, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Monday', 5, 'et Hall', 96, '6b4b48e8-9a8d-3944-bffc-7f1ee7d864bb', 58, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Tuesday', 4, 'qui Hall', 199, '41d6ed21-83d0-32bd-a974-d7f067e82b19', 21, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Sunday', 3, 'natus Hall', 113, '4a1fc97e-a7e3-3ebe-bb4e-1df6baaafb85', 20, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Tuesday', 4, 'eligendi Hall', 125, '3ea86a46-baf0-3d6e-97fb-6bc4ac2af48d', 30, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Saturday', 5, 'dignissimos Hall', 25, '41d6ed21-83d0-32bd-a974-d7f067e82b19', 15, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Sunday', 3, 'consequatur Hall', 80, '5f8e83dd-0b47-31fc-b47f-3aa8013ddbd5', 55, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Monday', 2, 'ut Hall', 110, '19042554-1c58-3c50-bb7d-4cbc1210d93b', 42, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Sunday', 2, 'officia Hall', 59, '783326d1-d26c-341f-b473-96fd6b13b9bc', 8, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Tuesday', 4, 'fugiat Hall', 26, 'd03e9026-7deb-3897-8f09-ff1c438dd6c0', 21, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Sunday', 4, 'laudantium Hall', 121, '5bf63d62-d905-36b3-8734-78581cf4a8bd', 23, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Wednesday', 3, 'iusto Hall', 65, '2c67443f-7018-3781-92ce-0bbe870fdfd4', 55, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Monday', 5, 'dignissimos Hall', 92, '41d6ed21-83d0-32bd-a974-d7f067e82b19', 12, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Monday', 3, 'quaerat Hall', 18, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 11, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Saturday', 2, 'aliquid Hall', 61, 'f7768266-83ed-394a-b625-ed1fdcc0e8a6', 8, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Tuesday', 3, 'quibusdam Hall', 144, 'd03e9026-7deb-3897-8f09-ff1c438dd6c0', 63, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Thursday', 4, 'fugiat Hall', 47, '132513f4-e36f-3d3c-9c82-d89180f0f0fc', 25, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Wednesday', 5, 'inventore Hall', 28, '783326d1-d26c-341f-b473-96fd6b13b9bc', 35, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Monday', 1, 'veritatis Hall', 29, '41d6ed21-83d0-32bd-a974-d7f067e82b19', 19, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Sunday', 5, 'iusto Hall', 159, '29cb4fa8-40a9-3100-a3e1-c6a3e72e62d4', 42, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Tuesday', 2, 'voluptatem Hall', 31, '478c31ab-018c-3c30-bdb6-d28cd6e9feb0', 44, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Thursday', 2, 'ut Hall', 3, 'ff6d6dff-7080-3311-992b-64778811f032', 35, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Sunday', 4, 'iste Hall', 43, 'b131c014-2678-3d9d-b6cd-277a72d01266', 27, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Wednesday', 3, 'et Hall', 85, '000d458a-c354-3e6a-9544-bd776b3cfc77', 32, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Thursday', 2, 'quaerat Hall', 183, '000d458a-c354-3e6a-9544-bd776b3cfc77', 9, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Thursday', 5, 'inventore Hall', 154, '30fd38b0-3165-3c36-9e2e-327a4bd733f9', 23, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Wednesday', 4, 'earum Hall', 73, '5bf63d62-d905-36b3-8734-78581cf4a8bd', 48, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Sunday', 3, 'quibusdam Hall', 102, 'b131c014-2678-3d9d-b6cd-277a72d01266', 59, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Tuesday', 5, 'aliquam Hall', 155, '4a1fc97e-a7e3-3ebe-bb4e-1df6baaafb85', 29, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Monday', 1, 'maxime Hall', 49, 'cf783432-317e-3cd8-b659-f08dd55d0c9d', 45, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Tuesday', 2, 'cumque Hall', 175, '5bf63d62-d905-36b3-8734-78581cf4a8bd', 20, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Tuesday', 5, 'qui Hall', 178, '478c31ab-018c-3c30-bdb6-d28cd6e9feb0', 18, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Monday', 2, 'eos Hall', 60, 'b131c014-2678-3d9d-b6cd-277a72d01266', 50, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Thursday', 2, 'hic Hall', 97, '2c67443f-7018-3781-92ce-0bbe870fdfd4', 26, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Saturday', 4, 'inventore Hall', 197, 'dc4c2767-5b43-3e3f-b485-59ec86f165f5', 41, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Tuesday', 5, 'aliquid Hall', 74, 'd03e9026-7deb-3897-8f09-ff1c438dd6c0', 36, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Wednesday', 2, 'unde Hall', 119, '132513f4-e36f-3d3c-9c82-d89180f0f0fc', 24, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Monday', 1, 'sit Hall', 100, '39e639a9-8c60-3998-aa2d-e87787a3a700', 25, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Tuesday', 3, 'ullam Hall', 200, '1531cef7-704b-32f3-a304-96ee41d7ed6b', 32, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 1', 'Tuesday', 4, 'dignissimos Hall', 88, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 60, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Wednesday', 1, 'similique Hall', 78, 'b37a9800-8bb4-3032-b4d6-1fe0af6b3845', 47, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 3', 'Saturday', 4, 'aliquid Hall', 2, 'd03e9026-7deb-3897-8f09-ff1c438dd6c0', 41, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Sunday', 3, 'veritatis Hall', 177, 'dc4c2767-5b43-3e3f-b485-59ec86f165f5', 44, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Wednesday', 3, 'non Hall', 13, 'ba75b1e6-e5cb-326e-a842-6eb1724a5804', 21, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 4', 'Wednesday', 1, 'et Hall', 45, '19042554-1c58-3c50-bb7d-4cbc1210d93b', 31, '2025-02-20 15:39:14', '2025-02-20 15:39:14'),
('Level 2', 'Thursday', 4, 'maxime Hall', 40, '55797b6b-014f-3617-b4ec-b4555fff2fad', 1, NULL, NULL),
('Level 2', 'Thursday', 4, 'maxime Hall', 40, '000d458a-c354-3e6a-9544-bd776b3cfc77', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7NAGlutNQbIGkbDazIbQ8iHwAqgJJDLMGtoBrpSf', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36 Edg/133.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic1dWdVh2bTZhMGt6SWxRc29lSjJwcjVzbHo4NFpVUGlJTER6djNXeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9pbnN0cnVjdG9yL3N1YmplY3QvYXR0ZW5kYW5jZS8wMDBkNDU4YS1jMzU0LTNlNmEtOTU0NC1iZDc3NmIzY2ZjNzciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjU4OiJsb2dpbl9pbnN0cnVjdG9yc181OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1741459423),
('OrJcL45BuPPgZXzrUOIhPOpv3HIU57DYdleE6Amh', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR3ZHQTQ5MTV2SUN4TGJmN01xQ0tKbWh4aktJdHYxRkM5MmxCWUxvNyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Nzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zdHVkZW50L2F0dGVuZGFuY2UvMmFmYjE5N2EtODVkNS0zMDdlLTg3NDAtOWIzYmZjNWM0MDJhIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1741463270);

-- --------------------------------------------------------

--
-- Table structure for table `student_courses`
--

CREATE TABLE `student_courses` (
  `course_id` varchar(255) NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_instructor`
--

CREATE TABLE `student_instructor` (
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `instructor_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_instructor`
--

INSERT INTO `student_instructor` (`student_id`, `instructor_id`, `created_at`, `updated_at`) VALUES
(83, 11, NULL, NULL),
(46, 12, NULL, NULL),
(4, 10, NULL, NULL),
(75, 29, NULL, NULL),
(30, 28, NULL, NULL),
(56, 12, NULL, NULL),
(84, 13, NULL, NULL),
(93, 22, NULL, NULL),
(68, 24, NULL, NULL),
(87, 29, NULL, NULL),
(66, 6, NULL, NULL),
(16, 15, NULL, NULL),
(15, 4, NULL, NULL),
(40, 4, NULL, NULL),
(63, 1, NULL, NULL),
(54, 3, NULL, NULL),
(24, 8, NULL, NULL),
(64, 14, NULL, NULL),
(57, 29, NULL, NULL),
(95, 17, NULL, NULL),
(21, 28, NULL, NULL),
(23, 3, NULL, NULL),
(51, 26, NULL, NULL),
(50, 11, NULL, NULL),
(11, 27, NULL, NULL),
(17, 30, NULL, NULL),
(14, 6, NULL, NULL),
(22, 14, NULL, NULL),
(32, 6, NULL, NULL),
(90, 23, NULL, NULL),
(76, 6, NULL, NULL),
(79, 15, NULL, NULL),
(19, 4, NULL, NULL),
(62, 9, NULL, NULL),
(89, 29, NULL, NULL),
(48, 5, NULL, NULL),
(9, 26, NULL, NULL),
(77, 16, NULL, NULL),
(34, 12, NULL, NULL),
(70, 11, NULL, NULL),
(58, 13, NULL, NULL),
(33, 21, NULL, NULL),
(98, 1, NULL, NULL),
(35, 27, NULL, NULL),
(72, 23, NULL, NULL),
(36, 4, NULL, NULL),
(12, 15, NULL, NULL),
(67, 1, NULL, NULL),
(39, 32, NULL, NULL),
(20, 10, NULL, NULL),
(27, 8, NULL, NULL),
(99, 9, NULL, NULL),
(52, 17, NULL, NULL),
(86, 19, NULL, NULL),
(71, 5, NULL, NULL),
(81, 4, NULL, NULL),
(8, 1, NULL, NULL),
(44, 22, NULL, NULL),
(6, 29, NULL, NULL),
(1, 12, NULL, NULL),
(42, 10, NULL, NULL),
(37, 18, NULL, NULL),
(69, 19, NULL, NULL),
(91, 19, NULL, NULL),
(55, 3, NULL, NULL),
(10, 7, NULL, NULL),
(38, 30, NULL, NULL),
(5, 3, NULL, NULL),
(41, 26, NULL, NULL),
(94, 6, NULL, NULL),
(82, 26, NULL, NULL),
(7, 25, NULL, NULL),
(53, 10, NULL, NULL),
(96, 6, NULL, NULL),
(25, 23, NULL, NULL),
(80, 10, NULL, NULL),
(59, 27, NULL, NULL),
(26, 9, NULL, NULL),
(65, 14, NULL, NULL),
(92, 17, NULL, NULL),
(18, 4, NULL, NULL),
(61, 31, NULL, NULL),
(47, 12, NULL, NULL),
(28, 14, NULL, NULL),
(29, 20, NULL, NULL),
(31, 4, NULL, NULL),
(3, 7, NULL, NULL),
(43, 24, NULL, NULL),
(85, 24, NULL, NULL),
(73, 25, NULL, NULL),
(49, 24, NULL, NULL),
(60, 9, NULL, NULL),
(97, 30, NULL, NULL),
(74, 3, NULL, NULL),
(100, 31, NULL, NULL),
(88, 3, NULL, NULL),
(78, 11, NULL, NULL),
(2, 31, NULL, NULL),
(13, 6, NULL, NULL),
(45, 24, NULL, NULL),
(83, 46, NULL, NULL),
(46, 29, NULL, NULL),
(4, 44, NULL, NULL),
(151, 47, NULL, NULL),
(163, 4, NULL, NULL),
(104, 30, NULL, NULL),
(114, 53, NULL, NULL),
(75, 16, NULL, NULL),
(30, 54, NULL, NULL),
(56, 57, NULL, NULL),
(84, 11, NULL, NULL),
(116, 29, NULL, NULL),
(93, 61, NULL, NULL),
(68, 38, NULL, NULL),
(171, 32, NULL, NULL),
(87, 49, NULL, NULL),
(126, 13, NULL, NULL),
(133, 42, NULL, NULL),
(146, 40, NULL, NULL),
(66, 42, NULL, NULL),
(16, 4, NULL, NULL),
(15, 54, NULL, NULL),
(40, 38, NULL, NULL),
(148, 36, NULL, NULL),
(63, 27, NULL, NULL),
(131, 31, NULL, NULL),
(139, 48, NULL, NULL),
(54, 26, NULL, NULL),
(24, 17, NULL, NULL),
(130, 23, NULL, NULL),
(167, 15, NULL, NULL),
(64, 1, NULL, NULL),
(57, 56, NULL, NULL),
(95, 7, NULL, NULL),
(182, 32, NULL, NULL),
(174, 55, NULL, NULL),
(21, 27, NULL, NULL),
(23, 37, NULL, NULL),
(149, 32, NULL, NULL),
(169, 8, NULL, NULL),
(51, 36, NULL, NULL),
(50, 51, NULL, NULL),
(166, 19, NULL, NULL),
(11, 52, NULL, NULL),
(132, 62, NULL, NULL),
(136, 34, NULL, NULL),
(129, 1, NULL, NULL),
(17, 60, NULL, NULL),
(14, 12, NULL, NULL),
(194, 15, NULL, NULL),
(150, 63, NULL, NULL),
(153, 6, NULL, NULL),
(101, 3, NULL, NULL),
(108, 38, NULL, NULL),
(22, 29, NULL, NULL),
(32, 9, NULL, NULL),
(135, 59, NULL, NULL),
(165, 32, NULL, NULL),
(90, 22, NULL, NULL),
(76, 39, NULL, NULL),
(122, 38, NULL, NULL),
(158, 16, NULL, NULL),
(193, 12, NULL, NULL),
(112, 14, NULL, NULL),
(168, 26, NULL, NULL),
(79, 48, NULL, NULL),
(19, 45, NULL, NULL),
(62, 42, NULL, NULL),
(89, 26, NULL, NULL),
(48, 24, NULL, NULL),
(9, 14, NULL, NULL),
(143, 36, NULL, NULL),
(172, 3, NULL, NULL),
(77, 40, NULL, NULL),
(164, 63, NULL, NULL),
(34, 3, NULL, NULL),
(180, 25, NULL, NULL),
(190, 62, NULL, NULL),
(176, 10, NULL, NULL),
(70, 5, NULL, NULL),
(58, 59, NULL, NULL),
(33, 21, NULL, NULL),
(98, 55, NULL, NULL),
(184, 1, NULL, NULL),
(103, 26, NULL, NULL),
(179, 5, NULL, NULL),
(141, 53, NULL, NULL),
(35, 29, NULL, NULL),
(72, 7, NULL, NULL),
(191, 30, NULL, NULL),
(115, 59, NULL, NULL),
(161, 57, NULL, NULL),
(123, 13, NULL, NULL),
(36, 22, NULL, NULL),
(12, 58, NULL, NULL),
(67, 15, NULL, NULL),
(39, 57, NULL, NULL),
(20, 9, NULL, NULL),
(134, 44, NULL, NULL),
(27, 35, NULL, NULL),
(99, 32, NULL, NULL),
(52, 35, NULL, NULL),
(86, 8, NULL, NULL),
(188, 21, NULL, NULL),
(185, 8, NULL, NULL),
(189, 8, NULL, NULL),
(120, 62, NULL, NULL),
(187, 51, NULL, NULL),
(71, 11, NULL, NULL),
(111, 55, NULL, NULL),
(109, 34, NULL, NULL),
(157, 35, NULL, NULL),
(117, 53, NULL, NULL),
(81, 52, NULL, NULL),
(160, 46, NULL, NULL),
(196, 31, NULL, NULL),
(8, 30, NULL, NULL),
(44, 52, NULL, NULL),
(145, 6, NULL, NULL),
(6, 11, NULL, NULL),
(124, 9, NULL, NULL),
(1, 60, NULL, NULL),
(192, 8, NULL, NULL),
(42, 30, NULL, NULL),
(162, 31, NULL, NULL),
(37, 7, NULL, NULL),
(137, 24, NULL, NULL),
(106, 6, NULL, NULL),
(69, 42, NULL, NULL),
(186, 11, NULL, NULL),
(91, 55, NULL, NULL),
(198, 7, NULL, NULL),
(173, 56, NULL, NULL),
(156, 1, NULL, NULL),
(107, 41, NULL, NULL),
(55, 37, NULL, NULL),
(140, 31, NULL, NULL),
(195, 4, NULL, NULL),
(147, 31, NULL, NULL),
(10, 56, NULL, NULL),
(128, 60, NULL, NULL),
(38, 32, NULL, NULL),
(152, 48, NULL, NULL),
(138, 9, NULL, NULL),
(118, 46, NULL, NULL),
(5, 4, NULL, NULL),
(127, 40, NULL, NULL),
(41, 48, NULL, NULL),
(94, 31, NULL, NULL),
(82, 9, NULL, NULL),
(170, 49, NULL, NULL),
(105, 59, NULL, NULL),
(7, 46, NULL, NULL),
(181, 16, NULL, NULL),
(53, 28, NULL, NULL),
(142, 12, NULL, NULL),
(96, 25, NULL, NULL),
(199, 60, NULL, NULL),
(113, 39, NULL, NULL),
(125, 42, NULL, NULL),
(25, 3, NULL, NULL),
(80, 4, NULL, NULL),
(110, 6, NULL, NULL),
(59, 41, NULL, NULL),
(26, 22, NULL, NULL),
(121, 47, NULL, NULL),
(65, 15, NULL, NULL),
(92, 60, NULL, NULL),
(18, 4, NULL, NULL),
(61, 42, NULL, NULL),
(144, 48, NULL, NULL),
(47, 27, NULL, NULL),
(28, 5, NULL, NULL),
(29, 63, NULL, NULL),
(159, 49, NULL, NULL),
(31, 36, NULL, NULL),
(3, 30, NULL, NULL),
(43, 49, NULL, NULL),
(85, 21, NULL, NULL),
(183, 47, NULL, NULL),
(154, 25, NULL, NULL),
(73, 24, NULL, NULL),
(102, 38, NULL, NULL),
(155, 47, NULL, NULL),
(49, 49, NULL, NULL),
(175, 22, NULL, NULL),
(178, 46, NULL, NULL),
(60, 54, NULL, NULL),
(97, 8, NULL, NULL),
(197, 19, NULL, NULL),
(74, 37, NULL, NULL),
(119, 54, NULL, NULL),
(100, 32, NULL, NULL),
(200, 17, NULL, NULL),
(88, 62, NULL, NULL),
(78, 61, NULL, NULL),
(2, 25, NULL, NULL),
(177, 45, NULL, NULL),
(13, 4, NULL, NULL),
(45, 42, NULL, NULL),
(83, 35, NULL, NULL),
(46, 50, NULL, NULL),
(4, 38, NULL, NULL),
(151, 59, NULL, NULL),
(163, 16, NULL, NULL),
(104, 48, NULL, NULL),
(114, 11, NULL, NULL),
(75, 11, NULL, NULL),
(30, 50, NULL, NULL),
(56, 14, NULL, NULL),
(84, 55, NULL, NULL),
(116, 44, NULL, NULL),
(93, 51, NULL, NULL),
(68, 28, NULL, NULL),
(171, 29, NULL, NULL),
(87, 42, NULL, NULL),
(126, 40, NULL, NULL),
(133, 46, NULL, NULL),
(146, 10, NULL, NULL),
(66, 49, NULL, NULL),
(16, 9, NULL, NULL),
(15, 54, NULL, NULL),
(40, 44, NULL, NULL),
(148, 55, NULL, NULL),
(63, 35, NULL, NULL),
(131, 42, NULL, NULL),
(139, 36, NULL, NULL),
(54, 22, NULL, NULL),
(24, 46, NULL, NULL),
(130, 46, NULL, NULL),
(167, 43, NULL, NULL),
(64, 10, NULL, NULL),
(57, 63, NULL, NULL),
(95, 38, NULL, NULL),
(182, 16, NULL, NULL),
(174, 25, NULL, NULL),
(21, 29, NULL, NULL),
(23, 59, NULL, NULL),
(149, 44, NULL, NULL),
(169, 60, NULL, NULL),
(51, 11, NULL, NULL),
(50, 57, NULL, NULL),
(166, 15, NULL, NULL),
(11, 36, NULL, NULL),
(132, 13, NULL, NULL),
(136, 18, NULL, NULL),
(129, 50, NULL, NULL),
(17, 5, NULL, NULL),
(14, 34, NULL, NULL),
(194, 4, NULL, NULL),
(150, 25, NULL, NULL),
(153, 58, NULL, NULL),
(101, 60, NULL, NULL),
(108, 32, NULL, NULL),
(22, 48, NULL, NULL),
(32, 23, NULL, NULL),
(135, 21, NULL, NULL),
(165, 3, NULL, NULL),
(90, 10, NULL, NULL),
(76, 46, NULL, NULL),
(122, 17, NULL, NULL),
(158, 32, NULL, NULL),
(193, 22, NULL, NULL),
(112, 45, NULL, NULL),
(168, 27, NULL, NULL),
(79, 40, NULL, NULL),
(19, 20, NULL, NULL),
(62, 56, NULL, NULL),
(89, 12, NULL, NULL),
(48, 44, NULL, NULL),
(9, 21, NULL, NULL),
(143, 5, NULL, NULL),
(172, 28, NULL, NULL),
(77, 22, NULL, NULL),
(164, 7, NULL, NULL),
(34, 25, NULL, NULL),
(180, 9, NULL, NULL),
(190, 44, NULL, NULL),
(176, 5, NULL, NULL),
(70, 12, NULL, NULL),
(58, 54, NULL, NULL),
(33, 25, NULL, NULL),
(98, 52, NULL, NULL),
(184, 4, NULL, NULL),
(103, 9, NULL, NULL),
(179, 31, NULL, NULL),
(141, 20, NULL, NULL),
(35, 23, NULL, NULL),
(72, 41, NULL, NULL),
(191, 43, NULL, NULL),
(115, 17, NULL, NULL),
(161, 44, NULL, NULL),
(123, 38, NULL, NULL),
(36, 27, NULL, NULL),
(12, 61, NULL, NULL),
(67, 43, NULL, NULL),
(39, 40, NULL, NULL),
(20, 44, NULL, NULL),
(134, 16, NULL, NULL),
(27, 54, NULL, NULL),
(99, 23, NULL, NULL),
(52, 18, NULL, NULL),
(86, 22, NULL, NULL),
(188, 34, NULL, NULL),
(185, 17, NULL, NULL),
(189, 30, NULL, NULL),
(120, 3, NULL, NULL),
(187, 23, NULL, NULL),
(71, 35, NULL, NULL),
(111, 1, NULL, NULL),
(109, 40, NULL, NULL),
(157, 11, NULL, NULL),
(117, 61, NULL, NULL),
(81, 41, NULL, NULL),
(160, 10, NULL, NULL),
(196, 6, NULL, NULL),
(8, 27, NULL, NULL),
(44, 20, NULL, NULL),
(145, 53, NULL, NULL),
(6, 49, NULL, NULL),
(124, 45, NULL, NULL),
(1, 48, NULL, NULL),
(192, 62, NULL, NULL),
(42, 52, NULL, NULL),
(162, 30, NULL, NULL),
(37, 11, NULL, NULL),
(137, 13, NULL, NULL),
(106, 38, NULL, NULL),
(69, 47, NULL, NULL),
(186, 42, NULL, NULL),
(91, 53, NULL, NULL),
(198, 6, NULL, NULL),
(173, 36, NULL, NULL),
(156, 18, NULL, NULL),
(107, 55, NULL, NULL),
(55, 14, NULL, NULL),
(140, 17, NULL, NULL),
(195, 51, NULL, NULL),
(147, 40, NULL, NULL),
(10, 14, NULL, NULL),
(128, 51, NULL, NULL),
(38, 42, NULL, NULL),
(152, 24, NULL, NULL),
(138, 26, NULL, NULL),
(118, 34, NULL, NULL),
(5, 32, NULL, NULL),
(127, 5, NULL, NULL),
(41, 29, NULL, NULL),
(94, 30, NULL, NULL),
(82, 16, NULL, NULL),
(170, 38, NULL, NULL),
(105, 28, NULL, NULL),
(7, 9, NULL, NULL),
(181, 54, NULL, NULL),
(53, 42, NULL, NULL),
(142, 28, NULL, NULL),
(96, 63, NULL, NULL),
(199, 36, NULL, NULL),
(113, 25, NULL, NULL),
(125, 21, NULL, NULL),
(25, 58, NULL, NULL),
(80, 20, NULL, NULL),
(110, 11, NULL, NULL),
(59, 8, NULL, NULL),
(26, 9, NULL, NULL),
(121, 9, NULL, NULL),
(65, 44, NULL, NULL),
(92, 60, NULL, NULL),
(18, 25, NULL, NULL),
(61, 27, NULL, NULL),
(144, 17, NULL, NULL),
(47, 18, NULL, NULL),
(28, 23, NULL, NULL),
(29, 32, NULL, NULL),
(159, 40, NULL, NULL),
(31, 52, NULL, NULL),
(3, 27, NULL, NULL),
(43, 12, NULL, NULL),
(85, 53, NULL, NULL),
(183, 53, NULL, NULL),
(154, 61, NULL, NULL),
(73, 16, NULL, NULL),
(102, 14, NULL, NULL),
(155, 36, NULL, NULL),
(49, 27, NULL, NULL),
(175, 50, NULL, NULL),
(178, 28, NULL, NULL),
(60, 30, NULL, NULL),
(97, 21, NULL, NULL),
(197, 60, NULL, NULL),
(74, 42, NULL, NULL),
(119, 29, NULL, NULL),
(100, 54, NULL, NULL),
(200, 26, NULL, NULL),
(88, 3, NULL, NULL),
(78, 13, NULL, NULL),
(2, 39, NULL, NULL),
(177, 23, NULL, NULL),
(13, 39, NULL, NULL),
(45, 58, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `face_data` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `face_data`, `level`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Khaled-Student', 'khled@student.net', '9b871627080d81daea518f8c753aa9827559144de3b64c49d7f1a8b4002eac92', '1', '$2y$12$ce2OwKuYn/nIm28B3JJMk.R9bkTQmYXjvvnkZVk8FK3...', NULL, NULL, NULL),
(2, 'Harvey Rempel', 'yauer@example.org', '99244a4fa740c33393593ccba38253dd3778111e66c34b1a3a78103ce665730e', '0', '$2y$12$ce2OwKuYn/nIm28B3JJMk.R9bkTQmYXjvvnkZVk8FK3UBlA3hSvfa', NULL, NULL, NULL),
(3, 'Dariana Weimann', 'sylvester.ward@example.com', '9fc52727a554e542b74963ee85fb854606781d581824b2bd105fc0b5bf1d33e0', '0', '$2y$12$IV33s1pWeQoKRU9JyBPFI.bOsKOkO2VIpjlDE1fp/RAdzbd0t/4Z2', NULL, NULL, NULL),
(4, 'Brielle Klocko MD', 'agnes.kris@example.org', '3b3d27fcd6869ec4b7e39d838e0ff0f08895c2d6d25c5e93a09745f26d100e84', '2', '$2y$12$JoZ3CVp/5thu3lQR4R3YQOunTgYOJz4aUg/8V7x/ds0P0ahyUXRze', NULL, NULL, NULL),
(5, 'Prof. Roy Balistreri', 'pdooley@example.org', '28a231633e99697f7717417c26b0dec4bdef4e92faf88484dc927b8a1a51f323', '1', '$2y$12$KUtkSQ3v3H8LJMcKHNm9leUInkK2UNzuz6r6/GjF2vNNriiURbhvm', NULL, NULL, NULL),
(6, 'Mr. Johann Fay', 'margret.feest@example.org', 'b24c64ba5c4b84685796446c582fa2e8008e714fc7c122045e9723137cc71938', '1', '$2y$12$/lqjX38Y/SQcGDckpf03LuTkjINzHPtEWHRLmdrO8Z4lGOqcLh4Me', NULL, NULL, NULL),
(7, 'Prof. Brigitte Botsford', 'retta.rutherford@example.net', '00c680eda00c327e89b270f5eab6584ce6dd7c81a7cd4f0dd0cb0cb4a81dd72b', '1', '$2y$12$yNJot68sbpLoMyTZp39N5u87JaMi/.lkrabAnA7UimCt3KNZrZpRS', NULL, NULL, NULL),
(8, 'Willa Blick', 'mann.dena@example.net', '5bba5f330bfa69c2d6d1900393454c6bd1dcadf16e22b06e2d7ffdb39cddd4b6', '3', '$2y$12$Vxx4F8LBwsVK8o27oWm3h.cpOj2.f1U837OYR1qRFqLV1hwXMu91e', NULL, NULL, NULL),
(9, 'Dayton Bashirian', 'hermiston.josefa@example.com', 'a4f6929903572a13c16bac601ff0241550770cb8dbf7ce007ad16c47acdc6940', '0', '$2y$12$EJRLRjNRmOC.C35l2ccLHu8N.BoMkUxo9NGHB86d.1O4t7svK4MZi', NULL, NULL, NULL),
(10, 'Mrs. Janiya Lynch I', 'nryan@example.com', '878879033d45d606e487041db4cb47299465422672136ed400fcd93d63c174cf', '1', '$2y$12$Kmc/owPi00a5ho/lF8OEQO2UmgVcKZXBm5XU4kY5psntxY6l5ORoi', NULL, NULL, NULL),
(11, 'Dahlia Jacobi', 'devon43@example.net', '5bf5918b0a7e145a1b0c97ce6ca585bb68dcd62245ae0b737f690bc2228f115e', '3', '$2y$12$bSGcnv7Yf9sH32osR79YLOikOQHtIN7dkUlhGuIejimlZLGNB7YuG', NULL, NULL, NULL),
(12, 'Burley Lueilwitz', 'kshlerin.robert@example.com', '9fc5303293a93b069e80fc4e48c7f7454bad53b0363b2dcfc9929af35af406a8', '0', '$2y$12$xSXICAO/haCm3U8mYXUwT.gV4ERY1px/qLnOlHnzz6h57VqJ4EOxK', NULL, NULL, NULL),
(13, 'Dr. Bulah Lang', 'zhintz@example.com', '9196ae9075d8ba2a653ff6839ad0bd8b810b5e6812b41543cd670abb22ab03b3', '2', '$2y$12$7UnEnUmDpBQaL0Kri7EDDOUQdY7THTvJcOhnIZ23FhEV.j72HhZBu', NULL, NULL, NULL),
(14, 'Vida Spinka', 'dyost@example.net', '32207cd2d7a09fdfeb48dc3d8c4e39ac38528ad66dd8d7ebcecb43eedc18e201', '3', '$2y$12$YYIBG6jA.hMYl26GFa/4KujeR6u/rofdmG3UC0fYlMZok0JzevkWe', NULL, NULL, NULL),
(15, 'Myrtis Wisozk', 'blaze.yost@example.org', '23e997fd392d117fced7178be251a60b739a8ce440dbba25ebbf2aff69a53ce8', '0', '$2y$12$3tvXFR33Kpjxc0UHZmoHhuBfpFpVq2SRLqCwecFIFB4XYY2DxBPgW', NULL, NULL, NULL),
(16, 'Kaelyn Flatley', 'bkrajcik@example.org', '6114cfee1b639c8eb39a8cdc979250706834bbfe6ae8facceaee9c93bbd64d6b', '4', '$2y$12$tSV2miSyU/otjTqnvJLzFeEHkngqeQDZ9hNXkB7DHoUUOfOyyEGOi', NULL, NULL, NULL),
(17, 'Jameson Will', 'dwight03@example.com', '6900756f4963b3a418d73d1229d6644fa0df0a7607851bc511405d58ec5f36a4', '1', '$2y$12$HRlobqB1JnMFN7JeTFpmKe/hvRsIUFizhr4JGYT7hQdTQCl31VJWi', NULL, NULL, NULL),
(18, 'Mrs. Alivia Ledner', 'scotty40@example.net', '204ba19bd5d151fb1eb4f18f9039bca1b572c5508c22c51cc2a87dae20de32b0', '0', '$2y$12$DR26vFURO2A01nNS/rCvpOnJd8TgFndeEmki8WRlpUX9YTfUkv6ey', NULL, NULL, NULL),
(19, 'Kayleigh Barrows', 'haylie21@example.net', 'ddba23a6d546ba4dddb9f29d60b8743cf8ba6795a85fc6a7f08a24b72c43bc0c', '0', '$2y$12$FDg6QzbINh3TzQ5w/u2UH.kBZ4z1eJlSCTnJqhWi.IZyRkZUcjnju', NULL, NULL, NULL),
(20, 'Ashtyn Kris', 'kyle.heaney@example.net', 'bbf2d69dc22c17b21971e52fbbe24f169af04e763a9d35f88a0f7fc707e42438', '2', '$2y$12$vlIQENG56qrMc/UlySoTfutzquENmzWWN8/gKbpMKXMXGy.g8iUfW', NULL, NULL, NULL),
(21, 'Kitty Kovacek', 'cremin.kennith@example.org', 'b3bf51d8f9ba9677b761ea3aad671cee7269649a7ae28c5f3dd18ea2f029ceee', '4', '$2y$12$MynPC2jqbyhTOHxWx6mATO6J1Ct84nbuRg8cE3g5EvBrr37.H9dDK', NULL, NULL, NULL),
(22, 'Molly Kub', 'emily.kohler@example.com', '0134709d59d4fa545f9fd02c8a931c41378b898f76e7d74da6afe8283ef884c2', '1', '$2y$12$iYqVf4H9LX5HZgTP7tB3h.AFkikboEZj9dOn5nFMOuH87xmFz1/N2', NULL, NULL, NULL),
(23, 'Sigmund Sipes IV', 'cummings.linda@example.org', '5127e95cf4616ce9bf5d1ee800fa1561d063bd9ce703a2eded4ac5557f318670', '3', '$2y$12$XlCq13lVU8UUv7QK3ESr0unNywZMMehy9KAjZ0BjxbsTbcnYnB5zC', NULL, NULL, NULL),
(24, 'Evans Armstrong Jr.', 'cara07@example.net', 'ac28f680d6228de9de9f621bf9418b96e1c314a3dd74a313e271085298490c02', '3', '$2y$12$XzaLLi3RWNXDt74joBHzpu4raqVJfWBmGLE8cSPrRunr5VrvEDNMq', NULL, NULL, NULL),
(25, 'Holly Mayer', 'rosalia63@example.com', 'bf08035ba55937b700508665fd4718f00c7a2c43fe3799ced30921f11e402b3a', '3', '$2y$12$ziLB9CRuc3nPoBtmDFkhP.wtEkU9TOX8bdS4V6p8uxcn13fajbCwy', NULL, NULL, NULL),
(26, 'Jennifer Altenwerth', 'sadye.christiansen@example.net', '2eb9c570681ded699ba842d59c685d63985b0f1576be6de0ad162d16d7b9813d', '1', '$2y$12$t5xE5KmNQChLBAdDeJPQ3u2TccuFuSVJ9eXTg/oSNsaQQFuVwsZ2y', NULL, NULL, NULL),
(27, 'Berneice Parisian', 'laila98@example.net', '67c0bb996f473c1ec40239a760fc53c4eada5bd0ec1bd77bf92944990caf13c7', '4', '$2y$12$NdOwiEGhUfYKOPshF8/P0.PZWJBt.VUJ6QQiErADI2/LOmsix79nC', NULL, NULL, NULL),
(28, 'Dr. Ilene Olson III', 'shill@example.org', '26423499f8eec7f8a911851931c5e03607f3bf3c42f4bf54f2296f0e43e29fee', '2', '$2y$12$.ldCxcKzXcbevvhcSbndkuPLEQpZj2xGAqpLskbpAtOiwyxBAmmQC', NULL, NULL, NULL),
(29, 'Mrs. Gabrielle Ziemann', 'sonia27@example.com', '3bb389a9f71ae5d9249e11abf2ca168f84409944bb648ddb3d946f701c2f7ca9', '4', '$2y$12$wi3y7uO/l1W.OisMlPQ0ceJgGoagjROYEiN7S.h8bbNQyu15coyPm', NULL, NULL, NULL),
(30, 'Dandre Rice', 'america17@example.net', '593c1bc22d95af3c763a1b81fa393509092dca171f239f6a4c56803d037a1f63', '3', '$2y$12$gUTlIst6uaXzsJmkVTEj7.x6OcYtifmaMepYvXDeLn7MZ9SlYw206', NULL, NULL, NULL),
(31, 'Abby Walter', 'sydni66@example.com', '349653f46d18974d319a44ca5cb87d38fa77322c038f0ebaae41b47d47de7cce', '2', '$2y$12$dRtiOi9LxpYWKuL5YvAdqeM7.OyP38lPTSqN2OkHuYqfcX.DzmnxS', NULL, NULL, NULL),
(32, 'Seth Paucek', 'emory78@example.org', '299adc1e886eecc4b224fa881e57b9aeeb641cf0a1a46b70e09c37fe02e34b75', '1', '$2y$12$PGLDksz0Vwg6udmnb9wchuB07H9/OADy83eKQvyIfb6pBQY7spvK2', NULL, NULL, NULL),
(33, 'Julien Treutel', 'jaden.okon@example.net', 'b92459270a480b7f05ab5353b766eb91e18f14a3989a210dbae68c1db5dd5f45', '3', '$2y$12$hR3AknkDpefai3At86YwCu/0Lr0Ix.8DGaJkJMx/8CLh7NJG6zVs6', NULL, NULL, NULL),
(34, 'Fae Mayert', 'hyatt.marisol@example.net', '0e50d299d527aa20b4f37b6fa2ddf47a3e53ff7c069598387f43af5c6cb17d26', '1', '$2y$12$HmRiTTQce/8kw2XFQwJxB.TEW6QVtja/u.abhAwlFIyJHmpuUv3Xq', NULL, NULL, NULL),
(35, 'Mr. Sammy Muller', 'jschamberger@example.org', '9bc2c81238bdebfa65ea20b2e17df43e1e66ecf4ea14f9728ec278c6a92b09dc', '0', '$2y$12$/A6nM8j6.MW.IFpjFJJYY.IEBMDcWz0YVbvdRlNwDZcIH9W583n7m', NULL, NULL, NULL),
(36, 'Brooke Mueller', 'kmcclure@example.com', 'b4a2b57162502b57dac513be2746fb040a99f8dce09c3f256ecc565e1b72eaba', '1', '$2y$12$xUzNe6QchJIx6vEDI.2x6eZeNWtdN3TMuJ0l4CD/V5PJWZiasvdVW', NULL, NULL, NULL),
(37, 'Morton Schoen', 'mckenzie.kadin@example.net', 'aebef6fab5e531ddf9790d5ae171462efcd4a8c31002c0bb7d38319d5fb45f60', '3', '$2y$12$VNdXalG4xoa1z4NVsCG8EeVr7RetNmhlUoJdajQg93ew/.mxJfhJy', NULL, NULL, NULL),
(38, 'Evan Botsford', 'olga.hermann@example.net', '968eeb86a6bfff28e0ac0dbece0b6bb54a72038bd2f307787cf9ebc051c212bc', '4', '$2y$12$LO9FFDXMNpX51qx7QT/0heDA0fF0y2Gz/4AD.za6l2qZ17O8XvxuC', NULL, NULL, NULL),
(39, 'Leslie Torphy', 'kunze.garett@example.org', 'f98fa2e9969e81cd47cdd55e92b7093f13d6f09e70c202c1a190d4af3d11ab04', '2', '$2y$12$L/K6aUaPO3v9llNhtP7shO52HSyHdqUpUAabsdJh1aGlxe.c2X4iW', NULL, NULL, NULL),
(40, 'Nora Larson', 'bode.edison@example.org', 'c65024526ff8a848cb84174129086cae814400b3e4903f39fae79b5e16576a49', '2', '$2y$12$WGqtV.CbX0Ka7b3ztblYW.ZSpWV2hpQCIvA4B/a82ObOVZsdPaPV6', NULL, NULL, NULL),
(41, 'Kianna Mertz', 'piper.koepp@example.com', 'ae970e71d2af61fa227dc9e74614a986cd1e3130a5d5ea012946da8960548b5e', '2', '$2y$12$upqUA9zkYr93fGRRdpkod.2q6gC8rrtY4OKmEn.PDjzoAmVru9fTO', NULL, NULL, NULL),
(42, 'Mr. Gianni Bins IV', 'mayert.arvid@example.org', '022e584af8dd56d4f9c15f22239380b5cec12181dc247dcdc5507d0ea7669831', '3', '$2y$12$OZOC8HuATp5iUrzj2NB6GurMNXFQS0BuC4JzlomAp/SMiPTgNE8s.', NULL, NULL, NULL),
(43, 'Prof. Jeffery Hills', 'tconroy@example.com', '40d83cf080eb732b66b499624c431c79445b876797af92338c6804e907b3ff58', '1', '$2y$12$Or.cMA.3yz3MoYDFafN9LeNPhXDbiiaKlINcLUXPW.kwWuSAOzx.6', NULL, NULL, NULL),
(44, 'Felipa O\'Hara', 'marco.streich@example.org', '6708ff493227c6dfdc074ed5ce5797e52a65b38f34e8c548b3724cc43c5f702f', '3', '$2y$12$6pazr6Z72M/CxCSInKwcrOfkn2T/lzTDMx1BRn2NQNnMLwyUzgT4y', NULL, NULL, NULL),
(45, 'Stephan Witting', 'zschneider@example.com', 'd70dfeeb67b6f0d8c3463033a7064b8181be8ffdc09eb2e56d815de6b2fe1304', '4', '$2y$12$ceHf7KwyLBCSxtmr8khHReWjPy8GSlTSACk1ykTxIGwi39lvDFSOq', NULL, NULL, NULL),
(46, 'Porter Gibson', 'adrien50@example.com', 'cf8cfec104c0edd18788c9708b4d72befa18de9607b24ffa3373d215506b6843', '4', '$2y$12$d5v3JppIqSRWJpyL7bs6j.UleM8aWLFuprYLqUYwc8bQLg9vrFQUK', NULL, NULL, NULL),
(47, 'Kaylie Effertz', 'shanny30@example.net', '65c65c10f71254d31baa9d547998a2781086210742efcf05ef5f4a4f7b36d401', '0', '$2y$12$jZux0Rdi7soCK7LErNFCgOpH06BY9aknSBk4HSxuKXsPB2kQZm4HS', NULL, NULL, NULL),
(48, 'Earl Crooks', 'herman65@example.org', '20164651becd5b68728cd6bd890fcfd7c2bb1d938898a5131db9f20485830982', '1', '$2y$12$NcH8CUuJucjIzS8S2aRceOB.uui6cgEe4lVV3EnjtmN22sz1PRsFW', NULL, NULL, NULL),
(49, 'Miss Sadye Haag II', 'torrance40@example.net', 'cd046d11142a4459febf2bbd0772f22ec9e2fa256e66728712c0b1c5780ace71', '2', '$2y$12$LMVwq.ll2Iph7UTCzz4fKOyrg7yYwaoz57w5I8p1mw4gdKfjjjUeq', NULL, NULL, NULL),
(50, 'Soledad Leannon', 'daugherty.kennith@example.net', 'c18e33d1e327ec4066fe8e716e3ee7f1d1f262e0b6ae9a2a97aff0a78825d8d0', '1', '$2y$12$BsfsUjfZxP9xmvUvbyw7iehqUOObeF6w1EFrldGuF40GcUIz1wUgy', NULL, NULL, NULL),
(51, 'Bella Stokes', 'dandre.runolfsdottir@example.net', 'c9b049ae85b13d2b254634a20d037072545c24c3386b3cf14151d6d1e595aaab', '4', '$2y$12$0end5zKSHDGdH3hA7RYFeOzF2lql.dRrG48oMKvyCViOqhI62fOnK', NULL, NULL, NULL),
(52, 'Annabel Runolfsson', 'lconnelly@example.org', 'ab72b65680a5d29c9f00e5a76f89825952623d108690108947b0f4f89eaee0e5', '3', '$2y$12$znRV/Qj/tC3pI780BFknVOb69KnueLBnMTktIS7lURHcIxgy8cpOK', NULL, NULL, NULL),
(53, 'Hobart Sanford', 'rico.kulas@example.net', '69e3983da6616ffea6a5af69f37c64de5f158d5630da48dabefe15b884cb742c', '4', '$2y$12$oE05M/bLLf6oOWlJWOuBx.Z6QQxov9bUKEI5Ik0ykHyz3s3lD7lxa', NULL, NULL, NULL),
(54, 'Loraine Bergnaum', 'brielle.jakubowski@example.net', '70fbcfb474ba8e98830f9ade3b6e8708edd770c05d2c91d738b16b74c2ca7607', '3', '$2y$12$cetiaj/zWl92mR4aKhvs9.c/f0rGzMDGmg4YPWYzSa6nmU439a1pq', NULL, NULL, NULL),
(55, 'Rex Gaylord', 'nedra34@example.net', '1d7f6729bcffc3576775f48a0ff1c59721ea89f56d4bb0d2591f1457bb716633', '4', '$2y$12$Iqd9A/UITFbe/MXRzS0lYe1DwvZcpcczp4UPsd5KnPXCiMnDXsWJq', NULL, NULL, NULL),
(56, 'Prof. Nyasia Beier', 'angel.rice@example.net', '677b07c54e9b37a88a8bd1e1ff3054463d01c80142c1af9ede5dcfdbd25fe387', '2', '$2y$12$.z52suWd26juzZugv/zOHePY7K.f4q9rBgSbhuMkLwCJOM75qXCq2', NULL, NULL, NULL),
(57, 'Fausto Reinger', 'coleman99@example.com', '0f7ab9eb605be2c6033cdd439394c612001d55c17e2d99e3e969e301c6b09e59', '2', '$2y$12$GsvBKS6eyj7EJjOqXzyu/ubxz2scs94QkQ.1Bvr5exotHtYtuSm2y', NULL, NULL, NULL),
(58, 'Dr. Araceli Satterfield', 'jacobson.guadalupe@example.com', 'db4917ffcf63813240bd373c440e6846a564aea7b3f0a046e6cdc29006a4b21c', '4', '$2y$12$ijQ2cnOsz6yjDPA5JuQ5POMJ68NvYrnv3DwDBn0JiFgWjlsAzLRWS', NULL, NULL, NULL),
(59, 'Krystal Collins', 'rutherford.kyra@example.com', 'ea89165299df0564c5eef84eec70c07d11dfb0e26da707f64926b88cc8b7124d', '2', '$2y$12$7EA4eNbvWTQMZjxl7F7X/O491DISW7GlxwuPVqsv.WYQxf5n7Dw/C', NULL, NULL, NULL),
(60, 'Prof. Eileen Boyer', 'ustoltenberg@example.com', '637baf5051b74e7661ef26931d342b691fa0be5e7a7ce0b935d0a1b5947a7820', '4', '$2y$12$TGlaR.vGxGWTHa.qG/h4COBCNPtjy899lAAwhd5m2L48Wdv3I6Tw2', NULL, NULL, NULL),
(61, 'Prof. Mackenzie Stiedemann', 'seth.jones@example.org', 'ccc6c4b4194130b17866a0b12105c122a647d7a45505d28e9172d45b26c09c70', '2', '$2y$12$3gs0jvBo8/6omwBw1I5J..97jianDJQbD8UDA/3V0jtCpYyeOaXfW', NULL, NULL, NULL),
(62, 'Linwood Feeney', 'hbraun@example.org', '397e3bf2424017d542e93bc5237de7c23eeb3001fc947073a893197ba415004a', '0', '$2y$12$pdUAKXLUXi3BkWbTVTnldOk54g6uJkFatzMoJP.bPjvt9vaf4NZZi', NULL, NULL, NULL),
(63, 'Ms. Margot Effertz DVM', 'brady.ratke@example.org', '387fca5143b3959c4fb9c77bc1a52e6160001255414d93fb32daa1f3a3235147', '0', '$2y$12$KIA6DZZSO.3PFB7jgYocbeBNi.SR4DmltuUtBYN8kMmWiHxAr6jry', NULL, NULL, NULL),
(64, 'Clemmie Bartell I', 'christop64@example.org', '6fe70d6405d084fde93a7903f78caa0557476c0d5c93797f5e6768b3b9d29704', '0', '$2y$12$.DMpgjgBHsBVkGCnHjUCbeq82B1aTpongFGMtoaOh6VG511fu7EB.', NULL, NULL, NULL),
(65, 'Elnora Buckridge II', 'schmeler.myra@example.org', 'cfe63777f8c521011d870e2b36e40811d5aa16fc107357615808ad926700be77', '2', '$2y$12$ymgFc96hHs4cYyPTwtrNtukkFw40r3726M0PNs.8vdKJ9omE90NY.', NULL, NULL, NULL),
(66, 'Prof. Vesta Ritchie', 'bgraham@example.com', 'b7d77b947ab319962de624a3d39f57c7998bc4302d08e429406daf4713292001', '1', '$2y$12$oIsZTRNBcUnqHGo83FjUbuvTD7PxrLnOoa82SHnA/F3tgsoBkx2H.', NULL, NULL, NULL),
(67, 'Prof. Ignacio Goldner', 'kunze.alisa@example.net', 'b07df0d3940a08d623b11f28d3010524c7518ecf35418b9d61f5cc57953d58d4', '3', '$2y$12$4pUyqoiZoHGAmO2A93i72uCBdcsph5x5/S4DP0IyBL86xgILY4DEm', NULL, NULL, NULL),
(68, 'Alanna Von', 'barton.felipe@example.org', 'cb4cdba3148d022a37f0dd2d938e82e5f3f1f4190916556a2b5df9a0dac6adde', '1', '$2y$12$ZHbDeLWpDVugOx55a8nNgeCgpK5evaG0bKjB2ftq2AKFOoO0iZmnC', NULL, NULL, NULL),
(69, 'Prof. Amanda Fritsch Jr.', 'mohr.antonetta@example.net', '4567178edec1286da08a5d7f1be4bb434f68d11e3438fa957a0a806866e9d6d3', '1', '$2y$12$sjxNrffaSZ/Bs.ZsNdX1rOi5J0kAn4NSgyvo7MVJres98/q4mjzWG', NULL, NULL, NULL),
(70, 'Rafaela Buckridge', 'jace.dare@example.net', '1663796a77466df5f60f0fe9f35f18e3680c0f2e6511eb2fe1d6fe9a40f46dbf', '3', '$2y$12$sgfmObvWEGBzKYsdgJArsOJUJau0p2EvmVvy7Dpuh59Qxu885tA3e', NULL, NULL, NULL),
(71, 'Marlee Harris Sr.', 'lina.konopelski@example.com', '9ad086f79bc6700e38f977808552cfc6c3a1dfd46a68602542e409590148e9e7', '0', '$2y$12$R16nEMipB7ZIeIeUZe1B0OlNAy0fAIAqwUFllDOC437qcAz7nCE4O', NULL, NULL, NULL),
(72, 'Emerson West', 'keith91@example.com', 'abc95d6825aadb4ceb1f01a915c5e3471fdd8da0814ec8b6114135ca637d859c', '2', '$2y$12$nyMLCP6kKjA5czWjYA.GZ.jOYEmKAx85NSRhRsvpayru1e589IDP2', NULL, NULL, NULL),
(73, 'Pink Hessel', 'tfeest@example.com', 'a38bd37ca595e395ecce658caddbb95b1d99c625a5914297ff9ad41fbf0bb241', '2', '$2y$12$doLqgdw975PK00FC4IYyW.CY0I5O30kdujziIBFHFnvdJ7NDsMfsm', NULL, NULL, NULL),
(74, 'Rylee Konopelski', 'waters.ruth@example.com', '971e8a0aaaca39bb9ef9d9dbe13f4959ea188136e7f9c85a13b220276adcd0cc', '1', '$2y$12$GRwQyeT5mmyMp7ALw6Kto.z8PvX6u14smvfPrYiT3O531Lm872fO.', NULL, NULL, NULL),
(75, 'Mr. Theo Predovic', 'amari48@example.net', 'cdfb0cc36841e1f28efcfaf189ae1d26795a3acc4eab7c0f49d5bf4c9bb7b59a', '1', '$2y$12$jFzpvmk1a0Xs0EtyftZcAe9R2F2q6CMAJhCi.vwQzGn.1TC8ihoYq', NULL, NULL, NULL),
(76, 'Ms. Brooklyn Mante', 'francesco.pfeffer@example.org', 'b559c2577706838a98c56d2a8cf2602c6b415cbb33e348b7eca520fbecbb76a6', '1', '$2y$12$O6Wc/faVmr0GYs6uIMbOvu0B3XDFTD85PAW1yKhrssHXlK/sRL5i2', NULL, NULL, NULL),
(77, 'Jovan Nicolas', 'hmurphy@example.org', '95a5f70b335b2de983198fe0c68aab5b6f3b40c24fa9571a7c6fd36477bc6427', '4', '$2y$12$wz/VGGuEPjW4x41KyuB80.Vxmzcwpi/3/6sSj435Y1uIU8n9bzXSe', NULL, NULL, NULL),
(78, 'Lavern Waelchi', 'xreilly@example.net', 'cfe77d6d3fe9f903e9fc32b3c97d9a5d1f8d05000ddde0bfc61930224ea23f4d', '2', '$2y$12$GEW.pi2bS4U86PPoDW7v6OAc3kzegFfMOtJpztaIwgVkIQh8lYc3C', NULL, NULL, NULL),
(79, 'Dr. Santiago Greenfelder IV', 'harvey.padberg@example.org', '3d2e52eb30f8a5c7ace857b083aa654aaab9c859e75190cbc30511e4383ac65d', '4', '$2y$12$mhI1e0rfGMuejXjPSBN9PuuWYPhjpFIWujMBJoo1qUEztbD3uqTm.', NULL, NULL, NULL),
(80, 'Timothy Rosenbaum', 'rosenbaum.mariano@example.com', 'bc6292d1a68942909d5bde1d0afe54e484852a9ff81b514a63ba57396f4f24e6', '4', '$2y$12$WO13h9eQw69G6rTmbi.iTuFdTX3KiMFnirlhRgQCfDOvSLbWCUENW', NULL, NULL, NULL),
(81, 'Rosalinda Schmidt', 'luis23@example.org', '9048cdd1b8986634578f7a3328961f05261935be58231dd96f01fc5df5a37d7d', '3', '$2y$12$3gQFtjparVYNVBe/7hZ2MegS.8zTF9IXW97KQ4Urp7QyMDhS5nqwm', NULL, NULL, NULL),
(82, 'Beatrice Erdman', 'purdy.presley@example.net', 'c42c470c9ef77fbecff4a2566d8a2e6c7d0d748c084a85140fb1ea0b9c84a79e', '1', '$2y$12$ma5MKBE8S64UUCw0FQmTiuOPnpxmqiDAfrhWqpIt1Hv8lU3ux8zSC', NULL, NULL, NULL),
(83, 'Dr. Eldora Turcotte', 'adonnelly@example.com', '0b5b43ab426c12a03771220c6270478f028da105a6ce05b390a50f4a373aae25', '0', '$2y$12$A4IST8VvYuCla4lfb1b.Ve3o2ZzHjRXKgx4fF1SpABDevs5QGk5C6', NULL, NULL, NULL),
(84, 'Gaston Hamill', 'ansley58@example.org', '49a9a60c55df52bae768412fb70f3bddb9533d42025a166ba6b1deacf28385aa', '2', '$2y$12$FGePGvpb2XD0sFwQEGFHFu8opuaTncT7QWWL.hzvF9TV7qOkDpxEy', NULL, NULL, NULL),
(85, 'Angelita Abernathy', 'terrell.keeling@example.com', '033cd6c53b818e6d89cc3c582909d6c53693debe4e799afe7e5f2cfeb33e5222', '2', '$2y$12$/FoPDyNC89sd8CxX0.t3iODPj5H3/2fSyWDYTB4mzgj7m3Yjd3AkO', NULL, NULL, NULL),
(86, 'Dasia Blick', 'lcremin@example.net', '3e47d46e2ad5916d3c1e3e7d3ee15419114b6ee8d64a4c7e30383bdae9271523', '2', '$2y$12$XLXdyyCFGme2wxstUkY5/.pn0yBkRiBql1.Ky1AUdp3QiG3mRVaqC', NULL, NULL, NULL),
(87, 'Dale Deckow', 'bbarton@example.net', '4b204d292ed71a60e8bc986188e3635c67007ed31372c1dab72bbc7d5a37d46d', '2', '$2y$12$KG1/AwfFrG33YdEXiyQ13u0JH4/tvew.tna35jbw7TwMehEHMlTh.', NULL, NULL, NULL),
(88, 'Aubrey Morar', 'xleffler@example.net', '2b57f033dd6ed842f41d0ebdf4c8f942b8221cf8bb3a0fdaa6bb9a7fa700ffcc', '3', '$2y$12$uh0y9/2CIy4F0xBatlHJ.ONg13JQ8vyRvP8nfsNrywmJVyZvEBaeq', NULL, NULL, NULL),
(89, 'Prof. Fernando McCullough V', 'hemard@example.org', 'a161dca8d60bf7d14adeca64954d7fda8faa71085d3973c5cbf9051dfb22c95e', '1', '$2y$12$6Vxfik.ZVsrhboanDQWgZ.l4DX70Hx1wRlL/Okhpg3T68BFkv4IPe', NULL, NULL, NULL),
(90, 'Leonardo Davis', 'fanny.damore@example.com', '06fa1ae00a3d50de8ee87496642948df32e8c109ae1647f53380b9bda0eb6d65', '4', '$2y$12$3yovLi7dsXkGetuHYKzhv.biiUsi9XHJHNMmJt2Wgl30XIKGFIdT2', NULL, NULL, NULL),
(91, 'Ole Harber', 'mschaefer@example.net', '99610f9cd5d2e48f473e1c071b87f41ad15e5b4d1248e0022f6e3e730ba16dc3', '3', '$2y$12$9CmZb1Wo/yza0CpCVBn/jOYJKLsMfnXWF0G40.NxXWsviApsyiP/2', NULL, NULL, NULL),
(92, 'Alvena Kreiger', 'schultz.bennett@example.net', '0f11ac26df2b5f87ed68a7ac697555b9c4f74152dab8b6db9b87a321cb3488e0', '1', '$2y$12$SxeJghQWKHsl4F0iThiTzOj7DQr2Ju8v9XTPikfTrueVQDd4tOYyG', NULL, NULL, NULL),
(93, 'Michael Kovacek', 'barbara84@example.org', '62237c7a8984904bef80631fbb926a1a7013b1cc8e083ee33c3c69a2cab2c3c5', '4', '$2y$12$b1gK2AP2scCzPPfKC5/rN.EZuAsDByQa5Yv6uUORgIqtzn9Pxo/xi', NULL, NULL, NULL),
(94, 'Robb Konopelski Jr.', 'ppagac@example.com', '84e30985ccb92bbbe3f708f139ab0bf3fdd3a67344d63ae7773821f567c4ee66', '1', '$2y$12$T66SXUwl8wPRLs2FZOXQe.BlXWc10wvXO1VclHl/T9Iq4xsIcLVXi', NULL, NULL, NULL),
(95, 'Alfredo Kuphal Jr.', 'colin56@example.org', '2b793250c90b4b99b83c55218f3b579c3ddfee8093959d7d18804df2a748d44b', '3', '$2y$12$oQjDNzKdnJsRX/ipLuiiqO220ZKvt8Fv2HHByO.hjNMRKHHN9LKM2', NULL, NULL, NULL),
(96, 'Meredith Muller', 'rmclaughlin@example.com', 'be4adeb10e22d9c156ba4938bd6bc1066d32aa3572aac1b817c1d7085624f84f', '3', '$2y$12$ZpsiIgS0gKIUjOIyzZlpR.gxvSHMQ6SdDHFGicTJmRploNAMsWrhu', NULL, NULL, NULL),
(97, 'Levi Becker', 'vella68@example.net', '8d96ae62fec6027b64a5802ca416844a70e4719f5638d2c8df268be4b91d2afe', '3', '$2y$12$VMBomJv4dCPhK37bsI.6/eoJi332Q/.sug98IXmSic5Ai.b8Oeyya', NULL, NULL, NULL),
(98, 'Myra Lind I', 'jamir38@example.com', 'eebcb32e6810075fceaea4b6ca56fd65d5dc92f7faec52e45ce5d7f42250770e', '3', '$2y$12$cZhTU8WeEsjl8NvatD0JP.YpY15vPd8xl6JBQdLWWgpd428qTMtuq', NULL, NULL, NULL),
(99, 'Prof. Mike Fritsch', 'lbuckridge@example.com', 'd07e33eee4ab9273979f65027450ee67d34450e7283c4e1ebd6a5fd883ede3ba', '4', '$2y$12$TIjMKImgwmZbsC.yVd5kuOyfnsVSKUcE.zOKONUppttm6kNtxfPbi', NULL, NULL, NULL),
(100, 'Marcel Wintheiser', 'wokuneva@example.org', 'dc7b2d6be8806dfba40b7a6a0f6077b291fe1994a480315561e960c19997b0a1', '0', '$2y$12$6rHzlmIJkW8O.ijbt8266eK3m76rZlUOFSEy61uYGeDAfUCKR2O1G', NULL, NULL, NULL),
(101, 'Jackson Dooley', 'elvera41@example.com', '4418b261e38ceb7725c4d049bbf3f5d45755d72a748c3e1982a5a5f99d89afda', '3', '$2y$12$fnre4HhDlGovMPIw2TgF6.j46CIneIY4OnQkoynLm5H6iu52Kllf6', NULL, NULL, NULL),
(102, 'Prof. Duane Conroy', 'tkeebler@example.org', '73e674f01b803b20fc2ba03fc657a4424cb2a92d37564d5316ec41c267a5d508', '0', '$2y$12$sEfSULV6zXfZhNkzk3eQBuluyNWIvDmk/1Vvt35dQOgouMqc37PVu', NULL, NULL, NULL),
(103, 'Jovan Maggio', 'janice.bergnaum@example.com', '6cb0fa88328bf778b7b6410ebbcfed68a0a6ad55220bbeef847947d343226271', '4', '$2y$12$Azth9qCyYwWcho4EULHGpe30rnh87dMU9.wwl0.s32xq5Icn78G7W', NULL, NULL, NULL),
(104, 'Rylan Schaefer', 'alvis.bashirian@example.com', '8fd4774d9bcdfdffc570499b969965cb69c5898645c125a02df669691a480290', '4', '$2y$12$W1UEfvoxLgfpBNcEfUF7kuJjCMnyrY9OeyEv6nKR42oROlnk.zbsG', NULL, NULL, NULL),
(105, 'Prof. Fay Shields MD', 'reichel.gerson@example.com', 'afb6b3e19343a904700f5e697666509ee20de6e45fe0eefc20624086dabf6303', '4', '$2y$12$VwqVQayGnJIv3mBPvz9aYev.6iL5ZJyaF6XreBk9Q4fbHfUZiS3cS', NULL, NULL, NULL),
(106, 'Geoffrey Ortiz MD', 'meggie10@example.com', '5aad6fe1e6406b742bd7aac6e9b9e5c4e607f8607c2540613546603284c2671f', '3', '$2y$12$cM9hatTwwtx5R9hiINLzOeXzLAO0XJYMLx/d5h7eAjP/OySSybqRO', NULL, NULL, NULL),
(107, 'Laverna Tromp', 'nader.leatha@example.org', '624091698dd3d2c4e980c5c493432161230896b1654e2df5ca3290b4f130f0d1', '2', '$2y$12$lrJ5/c7ZdtZ8qx98snzwE.XIB/6qQAXxGGtzWURAmV5s9qUkfpL3G', NULL, NULL, NULL),
(108, 'Trycia Bartell', 'elyssa.bednar@example.org', '2d602678e0a73b818bc1ad185b333f214306a3f3766928fb9b8bc5acf81855ad', '4', '$2y$12$6KsyMMdkaqiHrUMpE1GZg.tz6Wd3jFogQVmYvF6t.hlM1OGuVEv7.', NULL, NULL, NULL),
(109, 'Dr. Moises Harber Jr.', 'london.hansen@example.net', 'cde9b81e19762027ba473d26abe21851e9c81ca128763eb7d0ad8fd04ed502f1', '2', '$2y$12$f4UDsuqq8HFPAMLIEE.p9OXByiqCCjMnkoAX44oNyfG8vzvWiTBLG', NULL, NULL, NULL),
(110, 'Prof. Cathryn Bailey Sr.', 'ruecker.cyril@example.com', 'c711c0d1860e752be2b572bb1bd9c097f67d32447acc02e57818c04b6481989f', '2', '$2y$12$n0yg2XMqeVAW4cTk4gnc1.DGJKn7d4QmiyHIqyfqEQTuLwuNbFAO2', NULL, NULL, NULL),
(111, 'Tillman Bradtke', 'lizzie.ernser@example.net', '3db5a60465b72425b5a8003a7040fe242e3fad300dc772e32a4e2f59192d69cf', '0', '$2y$12$p8uON15mM215UooYSetWsumcc6S/et9LHeG0xAbCz1fasNyvOhYSG', NULL, NULL, NULL),
(112, 'Rogelio Jakubowski', 'gregorio.luettgen@example.com', 'a2780ab73404480510012170655586d356db79d74801fd43d9120ecc848808d5', '1', '$2y$12$lkIOWJ0wxlKCMG0E9vuvD.M./YIFnAyUU3sDHbLu.OR9ernTvOcm2', NULL, NULL, NULL),
(113, 'Prof. Shannon Heaney PhD', 'rohan.axel@example.net', '2c031cb82ac80a1be5c733601707aa53d8c85f19e1b320a23f43a6408cd4343f', '0', '$2y$12$V2frhgOMUB6cU3Mn9ia/dOOa1HxtuyFJUleqZludBDUiKPg/Ywl/W', NULL, NULL, NULL),
(114, 'Nat Cormier', 'amanda80@example.org', 'bbaf4d92df8d58745ab02ad7b924f058b8b4e36f3d103d04e2f78fa02478958b', '0', '$2y$12$fnr0.blnivtUB00IosA8auKZvzYR7VB1ubVlvripmhMNCCT2UTrX6', NULL, NULL, NULL),
(115, 'Isabel Streich', 'kenton.ward@example.com', 'e9fe19f59b48123dc854b4a0c25e673c7ef21bdc4e9a0a9134c638de47090036', '0', '$2y$12$TvOt1HYkPLLSm0PSybo.JedHIGtsNkK5WMs02nN1q.nI22Y6hZj32', NULL, NULL, NULL),
(116, 'Beatrice Brekke', 'antwan77@example.com', '9c1a14e0a6c6c79f957ceacc49f19aa8b6f1b259245e83b070bbc1192e1271e5', '2', '$2y$12$/Yyn8BcJaw20dGCINMByfOz153QA4fGqtk9jVWjkN/f7pKCS/jkLe', NULL, NULL, NULL),
(117, 'Teagan Conroy', 'lschamberger@example.net', '80f7cd17ecafc20434fb9a3b78ea592a19ae9cfa43fb47655048bddb4b51a93f', '4', '$2y$12$dqGtLp293L1LkNCqnTWptOewAE3ZwH2KgyLH8w/ZLuF/wGqR1FlQW', NULL, NULL, NULL),
(118, 'Vernon Langosh', 'parker.alvah@example.net', '938a6f7857705d0682eb46932628ce9d7a8a167d8c3140de9bda82dff2fb4f90', '0', '$2y$12$KZVY40cc1nejnr.QvOHB0.3tA03M/Og.6x/8g7SAWFDxhE2yJ7TWO', NULL, NULL, NULL),
(119, 'Beatrice Carter', 'watsica.timmothy@example.com', 'd4d977101e632dc66a4437d7e168760b8255836db61099b5b737596645c45b20', '0', '$2y$12$hpZ.ensWk429YKH4h6bVsuKWllqJ/CDIRf2tEvWnVxoA0dtHvZCk.', NULL, NULL, NULL),
(120, 'Ms. Tiara O\'Reilly Sr.', 'lexus37@example.org', 'ca641c4a7ff190dc0dd2ea5f8af4f55182aa5a763a54d987af86c48952b05cd0', '3', '$2y$12$gl9yCxxvv1C0pyleLPdyweBJao0dTRpXkLk4mb7fEaki0BHivpwOS', NULL, NULL, NULL),
(121, 'Prof. Marcel Jakubowski', 'samantha.gulgowski@example.org', 'cffb9b3cab7112fe413f70e07ee4657c69ab15d9d5f6809a7db5c066ad46dbc5', '3', '$2y$12$uyzNrXpL5JkM/7cF/x7vAe99KR56JPflVUhTz3mBZt3Oe2C.B7/7C', NULL, NULL, NULL),
(122, 'Miss Amara Hyatt', 'gcasper@example.net', 'c1d6bef01d65e2d65b3082e99c9714b290617c2467374e221c2c402d27fc6e14', '0', '$2y$12$p1pR4qVBWBgBrC8pYouiyO/XO6Tsou3CnL4dUu.6m7jacTmopE542', NULL, NULL, NULL),
(123, 'Cyrus Murazik', 'klein.jewel@example.net', 'e6f8a52f85179d37ae8c55569f6668d5b6be09da77eb6d2adc88877b7e9614e4', '0', '$2y$12$yZE0YtsweJq7RIjWYtYVge2dnyE6pKmg9y1sQdIESGzIXN5U4lta6', NULL, NULL, NULL),
(124, 'Jeff Ankunding V', 'marvin.alicia@example.com', '0a3c65323217f5f2520f86963176a60a50b61c1da52edcdcebb65eb85adb4352', '0', '$2y$12$BAuM8hwQL/Avv1KhpP7KHe7jUnaE8msluvzWVCWDcdeaiDsao9NLe', NULL, NULL, NULL),
(125, 'River Runte II', 'rollin.schuster@example.com', 'a92102d19ccffe2fc62262b5972f482991c904de63558c7dbac575eb672cf4f9', '1', '$2y$12$VpGewdCi2BXo95Zp7OBOluREMskz/Bm8lre63QK1lKNbOFptREx.S', NULL, NULL, NULL),
(126, 'Dr. Wallace Hilpert V', 'bednar.josiane@example.com', '394d16ff98f6bd313588c7a153ae18e137eb93bbeb90589762a0a3342977c5ee', '0', '$2y$12$yOChO/4437QYPRVL68T7Hu4t/dl5axwoO.ygfjdIboNuGIrQTxALa', NULL, NULL, NULL),
(127, 'Mr. Aiden Turner', 'percy.pollich@example.com', 'ecfc4f91f043dba8a3a909aa811383cf6b1990197b6a71da7411be0e9fbc05dc', '1', '$2y$12$V9rZsIANBwWWHW.jaROpbOfqCIhLuXqCeQII8PGMlds2wi4p0Xgc6', NULL, NULL, NULL),
(128, 'Dr. Nicklaus Williamson DVM', 'nyasia.rogahn@example.org', '275fa9fb3deca11c8f56f58d7fe5615437d5824423e570b475899b7e1562ce53', '1', '$2y$12$X2F4jEQNa7HioVP7l.ohhOmJfeQccyrpTLuivlYviDF0FLGr1QGJG', NULL, NULL, NULL),
(129, 'Sadie Durgan DDS', 'dskiles@example.net', '4b371a9988332bb0b3357e4989e4d3fa37311da45086ffa1775e0e4072f59357', '0', '$2y$12$Y.4Nk/glM8GUSAXBGmhAouOZ/Z.TKfGo2zVO8gGTeF4HxgsI/Jzi6', NULL, NULL, NULL),
(130, 'Mr. Timothy Mitchell II', 'carmel82@example.org', '5e7395463899289ac4df409baf9d68b7203b1ce00ad2d51b117d25af25627182', '2', '$2y$12$kHD7C0EstAvWkFLSt2B4HeTi/Map0eBIWX7P2MPepTR6Qgmlxfqr.', NULL, NULL, NULL),
(131, 'Simone Williamson', 'breitenberg.earnest@example.net', 'f6fa793aadc8f5afabdef88b83adee2c32243720b8a08717bf7bbbcbaf52ccb8', '3', '$2y$12$YSjz9E8MN/edWtwt1f4ubuuWtotndluNzngt8fyeyhjreKuyB9IBW', NULL, NULL, NULL),
(132, 'Miracle West', 'donny.ledner@example.org', 'df8c80342019037b9ad6780f794158e605538e18cc102d449e30722fde45c94d', '1', '$2y$12$Uu913AjggY9btWIHlOthQ.iaEHHehYWeBmrNuZS4LoWRc6UzxonR.', NULL, NULL, NULL),
(133, 'Dr. Jairo Reichel', 'ben.bruen@example.com', '723b96dea105d2e2ea262ea1468df20a33ccf2ae001214c2e73d2238ffdf32b2', '1', '$2y$12$rAC53onEw1yfdl6zM2BFK.ZtNd/Npok.Yx8eMU8lEvWR69Jha8qQe', NULL, NULL, NULL),
(134, 'Damion Schoen', 'labadie.summer@example.net', 'e996b07d0fc4b7f67a65a8df731c815333a732066e72f5c579f9d1005caca09d', '1', '$2y$12$8nXaj0bobH.yYa5rlKZFEe2O8zOuo8oJ2IyZ6h70/fayn9NEPj7TG', NULL, NULL, NULL),
(135, 'Prof. Danial Reilly IV', 'erika.breitenberg@example.com', 'f9fdf86671c46e1b1e2908a33c3ac0d25f5846fb372aa3e2577111d09f513a8f', '0', '$2y$12$hxeeKLUtJv8GEw3.VCRyT..QHntT6RCD15SD3iZYqBw3iXsgJ6Wm6', NULL, NULL, NULL),
(136, 'Zachary Farrell', 'dorcas.olson@example.com', 'cfb14a7023bca22bf5fdf78927c22dea01a7e2e86c00c2c0107ccda4c413a69c', '3', '$2y$12$HNTnWcpI/sjZeeZN4SpFyuBKrVNgPbRnjEl/8Q8dWO2.tD1s/pRj2', NULL, NULL, NULL),
(137, 'Wilfrid Bashirian III', 'mckenzie.schaden@example.org', '7843456955919a70878e54309d869fd53af0f586f283a85bd9c30d82e4b10f54', '3', '$2y$12$4pnndbTWL0MnytPqDX6emu/c0Mxldbs8g9YTIZznTmJtMk9qLVtMW', NULL, NULL, NULL),
(138, 'Tomasa Schroeder', 'omari43@example.com', 'b721541cd2850b7977b6d7523b61679ba063cfb83132c9a707c935ce014cc036', '1', '$2y$12$HRlzTkAEgcCw6FrJDoNlfOuyrA28bk6UOUUYxsDcOK774zSk4oU8C', NULL, NULL, NULL),
(139, 'Sydney Rice', 'brianne.halvorson@example.org', '80e240883480552651cd6a7bcafb1d7d8719f8757fc4346654d81414c882ccf9', '1', '$2y$12$oTGwZ7sSEjqR.rrZHVIOauoG9PBYxOxPGfsGu1qSxy8ZxzwqGap7O', NULL, NULL, NULL),
(140, 'Brent Schumm IV', 'nella64@example.net', '624cf2ea45c2f0ad5673b2a2d5072f6885548b6057222c4212f63a991a35bad8', '3', '$2y$12$rHbo6hQBhGfhlLhuu48bmuGMhIpEIA06/h1UjDQ9lBQXUZAIpTuXG', NULL, NULL, NULL),
(141, 'Jaron Sauer', 'jermaine.bergnaum@example.org', 'a58a071c3db28b0a31709b85bac85b341e48c7fcc77b36a6b94ded06406401d4', '1', '$2y$12$IgG4oWguKrFw04tvpEzO7eSgk.1qc4uwiOudxTvtxWYm7gTXqr5F.', NULL, NULL, NULL),
(142, 'Mr. Adalberto Cartwright', 'rlangosh@example.net', '87abd1d5c10fc5142b023062863c313fcfec8f843660cdfaff4fc5b191ee886c', '0', '$2y$12$wwv9cmV/q/1BzuwVqxzr5uuYcm89ISX.ggycHSi9QL7FtHcebKYHW', NULL, NULL, NULL),
(143, 'Wanda Mueller', 'hertha94@example.net', '2b0f3851d229efa1452536532eb3fb5c5010c50cd3b4a5e709fa864c9b64262d', '1', '$2y$12$neEtDQWJwGYzLUoxglZgzuL7sDUb1RZgJAyis3hG4SWf6wzHpuiTa', NULL, NULL, NULL),
(144, 'Maverick Langworth', 'shanahan.coty@example.org', '35fcd5e825a55689f4ed29e33bd283bee695bba7efbae6f22d865e9e5ec844ed', '0', '$2y$12$EpEOst.X6duqiSSED.VIL.u3pNZFpA9o4SvU2m95bDdDtfs1Df5eG', NULL, NULL, NULL),
(145, 'Aubrey Macejkovic Jr.', 'margie.bradtke@example.net', '91605b844e0c0a6dd4a87fe5cfe99aac9899602fedc28b5568b5353d89a543e4', '2', '$2y$12$THT8F/u5wWx7SxgwPXa60uckjIeXLDM166hdPoIEqFEzMhxHPKHU2', NULL, NULL, NULL),
(146, 'Dr. Antoinette Hayes Jr.', 'bernier.kaela@example.net', 'f46ba12e11bc0c315dd5b074c7ff75e2f7d3079595e02a4b8e96519cefc504e4', '2', '$2y$12$taODkveXfzh4MfhZsgpH3eRLO9ryEOlmSCFbsdk0MCzqPIu3y3eXC', NULL, NULL, NULL),
(147, 'Kay Gibson', 'nicklaus84@example.net', '2e73f0fe70db46e5682b9663be8122192c21a983a2cc351190743fcb76e7be5b', '4', '$2y$12$l0W88YifHbFeP1MzlDBfve5FzJHv.k6GF0cURYnwJegCHQgjhXvUq', NULL, NULL, NULL),
(148, 'Madeline Langworth', 'brad94@example.com', '742e273184de785607d3a3117f9995366ca03702b14b80f578c2285ab4031ba2', '3', '$2y$12$IggCvXwLv4Tt.kzmYJSjSOsh1YyNfmOEfh7XbW268MxheJKMsDYxW', NULL, NULL, NULL),
(149, 'Dr. Isaac Vandervort', 'dakota.yundt@example.org', '29f90a87e6e18290fe3c0ea84ed45af5b0565b301f4ac1d312c7082b3e325f52', '3', '$2y$12$h8PS2Qr4FXbvwgiAQra9d.oCxbvz7NX0iE5/q1tefONdM45fDxuqC', NULL, NULL, NULL),
(150, 'Althea Bartoletti', 'ella.mohr@example.net', 'e944a8033a7f0ca3f590d952bcafd6e9b074cce778d4c46c938aeb3a38be4bb0', '0', '$2y$12$3dmXNdQOPirurA/PWoZFceQoOOcNTKxv3Y8wfcRluA1H/QeVXRe9S', NULL, NULL, NULL),
(151, 'Lonny Schmeler', 'alex.anderson@example.net', '4803c099b26e752031755ec17ea8627231b6dbb4f04e787e7e4bf4c4abe595ab', '3', '$2y$12$WQ4RAfDwI86IoEuOG8KAveYN4uX5Gy6Lspt6yLOtKeZzCByv.sjii', NULL, NULL, NULL),
(152, 'Daron Gutmann', 'oma.considine@example.com', '3e366346baaf4ff097ac772547c18e01ba9f9fa30498200345296e9cd19fdecb', '3', '$2y$12$LyfQuc.iX3zqnoANHIqgte3bmKfAQ7tA/UICobfEgu8F4D.k3ZafG', NULL, NULL, NULL),
(153, 'Prof. Otilia Stanton DVM', 'eloy86@example.com', 'a0579c418d07233fcbdbbb8d0267c8c75710915a2e54b047da6b2883cce9cc93', '4', '$2y$12$4e3/tksb8NpPmd9yZwrGQuEyadp.xT1zfivixiTFmc0sgH3Gm.42G', NULL, NULL, NULL),
(154, 'Mr. Monserrat Harris', 'tessie53@example.com', '43b207ad1a943fcffd0d3f26207bfd7fa0f56f1ab278e23c506109558d322799', '2', '$2y$12$CRVOnPC0NOvfg1pBz96HI.U7PkYUKFnTB8Wv5fZ/IcAdt6I8u0/fa', NULL, NULL, NULL),
(155, 'Ms. Kirstin Simonis', 'tkirlin@example.com', 'e023937100628d696af3f42fb065074cdfe121730b0a957a93bc380ca5220f84', '4', '$2y$12$q0SP5gzr49Dnkf5/s957Vu7byaaRIPXgGZFZXBpbBkC.8rVUi18U2', NULL, NULL, NULL),
(156, 'Lenora Mann V', 'nader.laurence@example.com', '6d8eba1b883f1ba36b12540fbaabb89f0f77d2f166706bb6a8a682b5f58f13af', '4', '$2y$12$SVUvyL8VX5mVRlkY9BV/7egEP94idZNZCgDzLocf3GAMEIqXLKkOu', NULL, NULL, NULL),
(157, 'Kyleigh Hayes', 'loyal80@example.com', '66b1def7bbad0fc1c7bdccd6b9ac628d3d986677bc04882133d72001dbf924fb', '2', '$2y$12$cxsWLAorhc5uG./rJycnjOcBh30QnQVCiM5nwvhsNBLYG6sQCu56a', NULL, NULL, NULL),
(158, 'Arnaldo Schneider IV', 'glover.haven@example.com', '2d8afd21503bf2151407a25128ef911ae879e112bed211520301bc70bd3bd4bc', '4', '$2y$12$I5KPbit0vr57SyqmmVG0Ouidk//9FqmAoCec.qc1SugFlMcTQZnJW', NULL, NULL, NULL),
(159, 'Hershel Lynch', 'sschowalter@example.com', '9012b7a00b60664440f4ee4472522519e407054d8dfcd850c60b4d27689e5413', '1', '$2y$12$TBkteAZJWgJix8AbuKTAjOUvC/kWS/SmriSuDINQdnNisAwXuve4O', NULL, NULL, NULL),
(160, 'Karlie Hintz', 'mabel27@example.org', 'b1082ee5bc7bb106fdf3a031c9c73f0b2f863af20d7ce96a799da7c4e1c0993a', '4', '$2y$12$mpBI5gQTvGYHEteGcFtwgu/riHA8r.BlDebCaFpxiHXg8t3/1O0Fa', NULL, NULL, NULL),
(161, 'Sibyl Pollich', 'king.queen@example.com', '3360de3cba2853ce21cd8917294d933f03ee11c6fbc60943cf503ac1546c4b29', '4', '$2y$12$DtlW0UVxj8gsJ1IqUdkVzu88HOCYIERIRrNR6I6vu1ViFBRtbJPkS', NULL, NULL, NULL),
(162, 'Miss Kenyatta Koss III', 'mcarter@example.com', '50f347d750ef3bed22d89215d22b9a33b56daf13fa3d833d23245cac0a935456', '4', '$2y$12$Cp8rPd5r7xglmP0mLiauVepx/7X4PlDHlJuAMeM/2n2ptxnLWRoW6', NULL, NULL, NULL),
(163, 'Rosanna Morar', 'alvah41@example.com', '7905244ee9e6ac5e2bde2fa124819f44441489f25c820699db562db346eb2da4', '2', '$2y$12$/TvOK0kYiOLSaU8wR6QdhOXMf827PUv9sXYzhEti.cHZTJu6kmwky', NULL, NULL, NULL),
(164, 'Kennedi Mueller', 'holly14@example.net', '7f0df6c7653beff21f8abf11ada102964f55d63d00fa48b182f537015cc764ad', '1', '$2y$12$01W4b5ghe5qhppYYYcKtX.7UNV2tHSiOBCap7rOOb/sKojE1rNihm', NULL, NULL, NULL),
(165, 'Mr. Tristin Greenholt', 'eulalia.trantow@example.com', '48365ee02804989338088cbe57bff779e7b59565a70dd951447dc39fa4fc1123', '3', '$2y$12$aZIqW0szF3QoimlW.Slu1eO6iEXO3OjAePQA3.At9V4N06WlkGx/C', NULL, NULL, NULL),
(166, 'Prof. Grady Treutel DDS', 'deckow.polly@example.net', 'aecbc78023a8a76834fe75ad91555c2bfb0f40bc635c27da8f64e28a4b6a70db', '4', '$2y$12$RmXW0rxPEs1ttqiSs8feVuqrPV/6tXW4xvL98DUXBvZzfTo7V8tVm', NULL, NULL, NULL),
(167, 'Jean Pouros', 'cbernier@example.com', '0ad8fc0bc63b9d1ee8cc1d20b51b26d24fdf8458296cb070759ec26968eb05c0', '1', '$2y$12$RRZLME5KYSUzwNTuJT/MaO1vrfbSAmCT/cAPgPEUHMp46E1SJbugK', NULL, NULL, NULL),
(168, 'Jamey Sawayn', 'hartmann.vivianne@example.com', '8f59ea07fd9218011a160ff3e351ba58fa6293d58d0a68463431eebbfeba6022', '2', '$2y$12$.2uHYwRDkXwXqPCOllNZFenfNBwkt6WQaQmTdTEKKnRThoOGTYdDO', NULL, NULL, NULL),
(169, 'Vella Weber', 'dallas12@example.org', 'b6c8bc07848074fd739564f77dc2645bd47ba8e782d58e3e0246cc54d6bb3d62', '3', '$2y$12$3sMtZbG9ZCZI10tE/liFqO2DMQm3uWQ.DsudS2SpNjISmzJY262SO', NULL, NULL, NULL),
(170, 'Mrs. Jennie Parisian', 'queen.kuphal@example.com', '43b4870c2f16043a176344b5a17cb06d282f6ef17ca6d2e685b37d2033ef0364', '0', '$2y$12$IUvW6pYCXwlzzfITdThmZuQ5gC7d.DxEiffXALW7ioqa/CZ.ZrbpW', NULL, NULL, NULL),
(171, 'Emie Carroll', 'bayer.dave@example.com', 'ebe6e7d2a0944f1cb08919d62400bf1dae520bdbf9af3857aac3a32b3ad5a638', '4', '$2y$12$WPO.hT6IkXciTR3N96bF9.WH4lVKqzeD9CHpqLfCx0fNnPjqteB06', NULL, NULL, NULL),
(172, 'Elisabeth Metz', 'hilda15@example.net', 'eec6327cf898023e1bf375d558fee5c60addfb09b7ff1cfcdfe4773e29257088', '4', '$2y$12$bRsu7jBLl/CQKV2mQzlf9e.eaQap7u8/ldVoqmAGAWPf5ouKNwGBa', NULL, NULL, NULL),
(173, 'Sonya Dicki', 'murray.reece@example.net', 'eed639d924d2917e40ac1013d10395b4f78c7dc955c65990e52d03391533d8bf', '0', '$2y$12$/PNFjRbvDzuAlwOAbbXUB.3pxf1HMNGVbU0U9E9OyuQee6HIZgKuy', NULL, NULL, NULL),
(174, 'Jessika Crooks', 'cosinski@example.com', '4f9a333ea7674a509a590a1d048caa5b7607d56f4718428dbc6509f02011b6a6', '3', '$2y$12$7.bnglV3YkIMogc/NeOqPOQ/z0PTMZUeuoCMg2byBIBfhswpqQzwq', NULL, NULL, NULL),
(175, 'Jeremy O\'Kon', 'tspencer@example.net', '51faff650cbcc1565fcf061fe1fdf17b30d961494cc6dcbe95b92de61a9c1693', '3', '$2y$12$aLhfgOdkiVTmpBJUWxKb4OOM3eTWrYxnBz8DpqlEJ.8YQwqprgKpa', NULL, NULL, NULL),
(176, 'Dr. Cameron Jones DDS', 'irenner@example.net', '0d155d9c86cecdd4ccaa48407cb298406417e488ecd3c96bbcbcf53aa653de1b', '2', '$2y$12$7KMSk7phMUZYHkRlZ9EAEupMxZDEZYhwI8SznnwA5fLBCfSR70Mtq', NULL, NULL, NULL),
(177, 'Mark Williamson', 'ytillman@example.net', '0d437aad438317cf731593cba5f46520929d89883dfd213cc40a2a0f2a168e54', '1', '$2y$12$QtsO4P.0/Q0dliQoCspJAehE.B08BWJTHHhM/JRlOp8oy2SCO9Ubq', NULL, NULL, NULL),
(178, 'Idell Gutkowski', 'uebert@example.org', 'e32a4a8347b52d77a533e51f8025b9d2688f343451aaff727af253dd01fc341e', '2', '$2y$12$5pgfwY3MwUj3hqSAUiCT4eTtDIfa4PIcmJux0MMcFNJUBd2i5JLvG', NULL, NULL, NULL),
(179, 'Janiya Marks', 'jbednar@example.com', 'fe51581c4b1a4839559a56c4e644111d97d7e4714d03d028adfcec3ac7436563', '1', '$2y$12$9NrIO9yXTv.rcNnkwBlf3uL2HwUNCUu8w.hEOpy4CVcqnzUnFkkHK', NULL, NULL, NULL),
(180, 'Stephanie O\'Reilly I', 'ikshlerin@example.net', '9e83fa64cc1a7dc7bc8bd537ecf1f47f9b140a87e98fb6876247c40616065bb8', '2', '$2y$12$JbiNq.QDNVwX50HbkOx.zez3jz3pFvTstWm3/e7fjBAXvmBF26/k2', NULL, NULL, NULL),
(181, 'Margaretta Lowe IV', 'rhea.rau@example.com', 'dac6d4c33f9a17d1f3a270e41882db6b287dd6de641c81183de64c567929f179', '4', '$2y$12$RavivgKp1mrNuvkrNyY4huCBXMNIZGuDzmStT/8b3UaLORzX0WqFK', NULL, NULL, NULL),
(182, 'Miss Francesca Anderson', 'colt10@example.net', 'aad19248304dcff1bb1bb47f3ea7cf434e42ffd71292374aae99ff07d5ef0d1c', '3', '$2y$12$.rPDqJKbZVb.9uhrIcq2zuiTUzB30GZlEWEIoqXJEltMtBOHPU/02', NULL, NULL, NULL),
(183, 'Clark Steuber III', 'terry71@example.com', 'ca4df9cedc19b4bc68121df8ad17663143775b8f4895277f1eefadb5e30c781d', '1', '$2y$12$4wvFky226SGcdjJppu/9teGwH80oEtbwqMtyGaxeinT73jd6FWfxC', NULL, NULL, NULL),
(184, 'Gerald Bahringer', 'jamison.strosin@example.org', '1d0cbf7ae9db11491e40027730bb87f8d12075de2d6a8544a6ad184d8694239e', '4', '$2y$12$i15WykV5RE18ic.fNlAzzebHQH16mUscAv2gPJ.8tnuU6Uuv3l60u', NULL, NULL, NULL),
(185, 'Athena Zulauf', 'leopoldo43@example.org', 'caf1a16481aa022966101f70b9539ef3fd044a4a1b20b6c254c6a7469737ed8b', '1', '$2y$12$BWanAt9xcaekrwdYZNw82utIY/nO//1tFrJlE4ZvBdBsqbeTOinmu', NULL, NULL, NULL),
(186, 'Mrs. Selena Mueller', 'mortimer.bechtelar@example.net', 'c3a854fe0d892825d10ad2826eb10f5f0af74e30c7931c687907a772ea17fa03', '3', '$2y$12$gg.T9l9Bem2cwG6dWopMveSpWjI2byx./cu1JmaqsgaHugBm.MUI.', NULL, NULL, NULL),
(187, 'Sofia Littel', 'lilian04@example.com', '14f03953ca8e5dd9ed575fc2ab501f06014c867fd56a07e322bb22e0db983b08', '4', '$2y$12$VModZ7akZeHghksnhKnaHeHhsEKAebED3SGmO0Nkg4IkzAoq2831m', NULL, NULL, NULL),
(188, 'Keaton Ebert', 'lebsack.jasper@example.net', '50a3291a0d207cf08c7f0a928b750caa1bd7a50cca2f7ddec724312490451d43', '1', '$2y$12$/Dz0mRDFB7XdH.2/VWwhleaY0.zGKL5WMMbuW8BxWSj0XMYkyVOjq', NULL, NULL, NULL),
(189, 'Steve Morissette', 'leslie83@example.com', '62fbf444243a4ad9f06e214561ea05fab1a99c05397ac19b7612621095086c17', '4', '$2y$12$LRBls.DJW8mBqxC744OlMeGGT4/cOM5Aam8nJqcLB78IaM4iJhkEu', NULL, NULL, NULL),
(190, 'Verda Orn', 'ikunze@example.com', '8cecfe7bb37367e51e90610bd9dc453527b61462a1090527c4aa80581ef684a4', '0', '$2y$12$CSaS76op2mIeOjZk4ie5Aun2OBUav.feFzG2GexS9alMP1Wshz2Pe', NULL, NULL, NULL),
(191, 'Jayme King', 'kelly.wyman@example.net', 'ee9088df057b80b2ed395d9467c14216768ca7c83838abdbd9559f834776f4bf', '2', '$2y$12$m6y2OYI6VigiQX0BY04X..sqfBFZguiCIMtNM1f0CYgYPa.oD6SSG', NULL, NULL, NULL),
(192, 'Cornell Morar', 'maud25@example.com', 'f660ba7a553b463f053d3285f25be5f4e091784273f79f16345edccc3889799e', '3', '$2y$12$wRDmx3RjayVtaPs6eGrdTu9kY0dNs3s6UFD2Ewyrl36t6VnqLQeUe', NULL, NULL, NULL),
(193, 'Prof. Sarah Runte II', 'gmccullough@example.org', '881d7a77a2c27fa6105db455cf66518ce344901a9307511dfbe2b61e5c8cfe1b', '4', '$2y$12$4FSMrYt8VIEd/.rd/oBdterZQa2Q9v1DTIahGXezAaemc9YvgIEQy', NULL, NULL, NULL),
(194, 'Prof. Michel Jacobs V', 'ehowe@example.com', '6f5fe653d05efb956424b729f94002413db7df54be3fa574df50c334e8dbcecd', '4', '$2y$12$h3qHycDAYZ14E/63UrP3teA/7NvbtlJVvOXbvN.UeQDqOF8UztXvS', NULL, NULL, NULL),
(195, 'Neoma Braun', 'nick.jaskolski@example.net', 'c7f445655a535d3e204c991445c3b88785a2f8c2f0c4368de6c73569bf007720', '2', '$2y$12$.trEjHgPLt1tTImfkqv0z.vPSvk6MVxWfNlrxnZqpRX3czEMdqKTy', NULL, NULL, NULL),
(196, 'Name Glover', 'macy.dietrich@example.org', 'f5af71f08e994b1960c028410bd62e5adc48dab3572499accde6a5447e79b0a1', '0', '$2y$12$aMjEsbh..V/IXme0gFyYW.UZecQo6EKhp9cX/edm1cmFtGIyCG5V.', NULL, NULL, NULL),
(197, 'Prof. Hollie Zboncak', 'vsipes@example.net', '3ad38e762732f7d11c57eb38f9158a0c30844fbfb1f6a849fcb29066e46ebb59', '4', '$2y$12$ZZit5YkGHPpjR2N3G1uj3esZHEt8nx8wTMAWxm49ajghzqbbW2P0O', NULL, NULL, NULL),
(198, 'Viva Schuppe Sr.', 'murl21@example.com', '562ce7c745528e8233d3d4f37aaaf14816b0a5fe1b649dd59f1c7a4c3cd7e048', '0', '$2y$12$B.f/uqycAgTw6rDEvqOOA.QR8lj9GivtwCD7CHwIR0jYt7.AZkqny', NULL, NULL, NULL),
(199, 'Kelli Lehner V', 'rod09@example.net', 'a8792cccd79127c7508a2fa5d68c72582d8808826161cc77f93445ea10b7a9cf', '1', '$2y$12$TQpdcDHfOV1nsXZhg49xW.5yWi.azaMuA6CDnXc3zWeLlIn2i4B.C', NULL, NULL, NULL),
(200, 'Mr. Sebastian Gleason MD', 'wyman.wehner@example.com', '03191a97338f6977579805d288949fb4e78bdf20e59d8ef48819bda7b27411e2', '3', '$2y$12$KyYPU/8NbOEpvr0vRxVXfeR7q3gOMyphYEBw5Wu9PW4C.kcfSljEK', NULL, NULL, NULL),
(201, 'Marcelle Miller', 'xkeeling@example.com', '423814340a73900cd88fdb541e1ed4b2bd9807bfa6f9e68500b17d60029d3241', '0', '$2y$12$Q0vt0gxFYJqG.Z/J.yifFepceZmgufBepXqoVxsW.bV..toinryYq', NULL, NULL, NULL),
(202, 'Dr. Sigrid Hartmann II', 'kayden52@example.org', 'f1477843a21a499a542f5eb5534271e6802f41187afae80db69c4263578e3b16', '1', '$2y$12$bG/R/.poKD57D9Irrk.D0e8Cmn4ns.C5M4/Y6hJCy0i40MTLO3G8.', NULL, NULL, NULL),
(203, 'Miss Daphne Howe', 'slangworth@example.com', '7e8787ac5f34120a46896e92dfd097b6c8cbfa7543a3c4000cd1f8e37959e3be', '0', '$2y$12$zWV3zgIZ13qqFrQiUPsisekyX5lC3DXbCD1qTMEhC1mV1xck7BKfC', NULL, NULL, NULL),
(204, 'Prof. Ike Glover', 'tommie91@example.com', '139f0a065b0afa3e0788094f2237b17e11a020ef1fe283b1e304b67c657257a5', '4', '$2y$12$Y74mHKsXuag/Q1rrew6wR.RykUkdX0LK2ikH9Pxf3u98gm.WlybA6', NULL, NULL, NULL),
(205, 'Mrs. Tania Becker', 'harmony.zieme@example.com', 'ce0d7563907c637dbca4d45495eeae2b1485bd17ddbf2741673eb6d323c4a9fd', '3', '$2y$12$JPm4XiVa.ez3Buv02ySJD.g4Agb.3.UE4NDUtGihhBdujPV0i3P5S', NULL, NULL, NULL),
(206, 'Nathaniel Mraz', 'xbergstrom@example.net', 'f83512da65ad3e975591480c2568ba5b300e43fed1b46ebb50bd0e88c5c575a5', '4', '$2y$12$dF5sV1SV.aAbBgvHVsyFYuNMduof9rmCBkMm4GX9NEjDJUf7sylXm', NULL, NULL, NULL),
(207, 'Dr. Cornell Stoltenberg', 'stamm.jordane@example.net', '73cb768c0fc3b4b2fba15753f14c039dff31749dc036450b1443d3ed68337b45', '2', '$2y$12$iyHbSHvivuQMaKavZ84RAu7As6oLD49aYGQd0OwjxX1Rkhp21nK66', NULL, NULL, NULL),
(208, 'Ned Sawayn', 'borer.cesar@example.org', '63ca50b4da64f11b89149397317478322a99f3d5ee392a8738e4214d91d3c05a', '4', '$2y$12$aakT.nS.qOWvGCy/uXrntOvwRRcmmd.FswegZFinKN0iqq6yW.21m', NULL, NULL, NULL),
(209, 'Prof. Tabitha Koch', 'nikolaus.malvina@example.com', '84799f048cb5ff8023fe1147deb61065fb141bd7b72a98703a19be398d53edff', '3', '$2y$12$uBhVBwk.mF.PJHCDhV8SKO4IMhbckxlsU2yycd7iu7AdqP2CMEla.', NULL, NULL, NULL),
(210, 'Ryleigh Mante', 'brown.constance@example.com', '296ebadfdfbc17fb42eed1c07849161c33546f3624d6e1fe8615b5c8d252b390', '3', '$2y$12$v9Tx0gjIQePJqBEtFLrmx.AgkiZ9NvX8.HI3i0R0Q7YoyQq2gX.ES', NULL, NULL, NULL),
(211, 'Mr. Junius Stokes V', 'asha.gleason@example.net', '28fa5686ceba924a4ab102173b3152224b6f5c5326d628c34ac8c9667a692542', '3', '$2y$12$xtUWsmoLmXCy3VqKHh4rcuZV8Rhodm5CB4u.qG8aoEWkZeSoW9Ary', NULL, NULL, NULL),
(212, 'Dr. Giovanni Heaney', 'jan09@example.net', 'e39fde3fc4b4db6e123b59a5145d68486280dede3ed5496161291c2ef7dfdafe', '0', '$2y$12$7.7YjrOfwnABxFBMCtP04exZ47TNAbwkKCXMUChja/TRsW/QMi6vO', NULL, NULL, NULL),
(213, 'Emerald Kunde DVM', 'skylar09@example.org', 'f93467fe04828821f11280159d3e7bd38dfd89742ee332c9895592229d0e4fe0', '3', '$2y$12$ZTD.8xEQXHRYvfAtpVxwD.3AaLegy4RlUhKnO0nvberYLqKYwTUv6', NULL, NULL, NULL),
(214, 'Miss Maximillia Lebsack', 'hirthe.sonia@example.com', 'a4ae754fe045bfa2fb580f28459531f7c57a779a135749009af91de536eff08c', '0', '$2y$12$.BRscyA/0MY1UJv62h6jF.7EGjJlVbezmmZTCdnpL.rHb7bPNI/X6', NULL, NULL, NULL),
(215, 'Kevon Stanton', 'nfeeney@example.org', '79556a978e3ea2c053cb69dd6a2c26ced7c265638371780275a4822da413698e', '0', '$2y$12$dzAVW3Q9BZ1Uc9Lv1u13YOOksOLlCu35wmzCPjiKfjZX7jNSNsfRK', NULL, NULL, NULL),
(216, 'Mr. Mekhi O\'Reilly', 'melissa33@example.org', '4ece791b7c4074b4a97b607caba292396da7d7d4f57da980aad0305d5ea065f6', '2', '$2y$12$V/Kt4qLINrTDAD1bqkh2geRpTCqGhvp2oDi/jh1njPZV/glWmI3Di', NULL, NULL, NULL),
(217, 'Miss Estelle Jacobs DVM', 'danyka20@example.net', '3edebef727923958be8bc7a81620b241b420a91ad99bf6ef9d3164f9a605a64e', '0', '$2y$12$KwpCtz7AtvkX/77rWhMSguW1EEOktM34.U3Yk9al6OMRab5c8GPC6', NULL, NULL, NULL),
(218, 'Ms. Adriana Beahan I', 'rohan.bryce@example.com', 'fe146ab9b07308ae5f20a05d8b6f9659e67246ad98027df1c4667befb30dff3e', '4', '$2y$12$IT4RdNck9fulLuwSY6gKsOaqJMFmbGIa0iAHK5Y905kaX949CSDz6', NULL, NULL, NULL),
(219, 'Beverly Keeling', 'zemlak.mckenzie@example.org', 'f8321ceb7e99a1c5b06f4a6ca8fceaedd0f5db470c4c7dbdb3e8b2d663468e1d', '0', '$2y$12$Tuvubo7.B4S2fFRTdqU97OdsjO53o0/af1PWpn3szNbzRAHahClk.', NULL, NULL, NULL),
(220, 'Mr. Thurman Hammes V', 'kilback.reggie@example.net', '0c76f56725b2ce32995125c47642cc200d5c1a303c325023b57b2f71c55785af', '4', '$2y$12$od/RdNDgdMN/GikSrxhBIOy3UrvYsDW9FpxsSk30MMHq6TK/Jia4W', NULL, NULL, NULL),
(221, 'Casandra Quigley', 'hartmann.alexandro@example.org', '4c0598807bfa4165612ccf3318f3097de331ada9d54babe5fe7e325a09cdd740', '0', '$2y$12$r5PoAtvw3dj96SYIKHomTOSmXrsFvCUFW36JNXYVvRPTlx9G4CKo6', NULL, NULL, NULL),
(222, 'Abdiel Leannon', 'reichert.priscilla@example.net', '44e1471b6ca709e73509d30f4632dc36e893deeab2c56f3641abc07f5a03d440', '1', '$2y$12$bR5r0/ReR5DCGRL03KCdeOhrh4oQRet9NkEYe0TvvOEMBopsIDAkq', NULL, NULL, NULL),
(223, 'Catalina Kulas', 'albertha.waters@example.org', '2d499c4b541ead00b86ad7329694200a855246629a2bb613fa8f3e950483b232', '3', '$2y$12$HkqprZlbQNyCu5D/xbH3O.QFDC0LKxSCXXw50JMW5fPOwlghp9gem', NULL, NULL, NULL),
(224, 'Trycia Kris Sr.', 'julia00@example.net', 'b4c4fe6c14f7da4b1a651c53291e234697b62440885b5d49b30c6a709f7d8404', '0', '$2y$12$NRmDMy9m9xivNdPDvr.oh.Vi2BcShw5co9eiHTXZ7DKJaj41li32u', NULL, NULL, NULL),
(225, 'Dortha Hagenes', 'corkery.ola@example.org', 'ceb0a1a25f63366e02c70a6454ace2ab8e599cb6565eb050324fec2438b0d03e', '2', '$2y$12$tFl1z6xfsf47CfskxpdDgOHmbXqErhBsNc90kdzy.FHbf.yEHXYG6', NULL, NULL, NULL),
(226, 'Dominique Adams', 'eudora37@example.org', '41f8acda83b91da834094c88afec18cf7d909f8c7ab603a1eb3e8834b22f6224', '1', '$2y$12$xGSWgXI3QOJaf/f3IHwLHe8YfzI.RfSMg7dgPOtgl8At59GiWKBtO', NULL, NULL, NULL),
(227, 'Adelle Ferry', 'zprosacco@example.org', '255e6487a1ffdb1206b142ddcc5dd83c95dc66fc0cf0968fb1ceba4bc91ac8d0', '1', '$2y$12$2128XEeqRJTGqV7NmTmjH.8EqmE2hpLcCbDJr6VqdwICM0R8npqba', NULL, NULL, NULL),
(228, 'Jeffry Kirlin', 'kamille.weissnat@example.com', '0b2546beb58e6b26d06f5c8552220376fe409467f45d49488d59ea5cef403c8c', '3', '$2y$12$Ty8gUjtYGZMRs2NIyp8TJOJn2loWJotO6amu.8RFUsqhlxjOSqxs2', NULL, NULL, NULL),
(229, 'Justus Mann MD', 'myah43@example.org', 'b3a3715c2ed22a149e726db72e54c96021df840d44bfc78cf3c787f2f8c90a48', '4', '$2y$12$vsH413/jXSJhuc1rLMRPD.t31gSYJ3doBW9qv1PA3KyQaZHfkH262', NULL, NULL, NULL),
(230, 'Francis Nicolas', 'dina.dickinson@example.net', 'ae022a1c099fd9131abf7257032961c7a04595ae95896287bb8f47e86938cba0', '3', '$2y$12$zmGT2Qe/hrlTqBEErRostuQEG2tvGCSMGCOBxhhIZL5YTGvdgBvWK', NULL, NULL, NULL),
(231, 'Dr. Georgette O\'Reilly III', 'lorenza30@example.com', '3e905887fc28e1749c45b064eb6d5a416fdbc5f9c69efb868c05e01ed9192867', '2', '$2y$12$TImQWxU4.9beFGlPl6HHledzt/vHtPmW.v3n88LtomHOjvgYUHzoK', NULL, NULL, NULL),
(232, 'Urban McDermott I', 'schoen.jordan@example.org', 'e5fcbfe85abaa15f87e50aa6db111f44e3b7a9f9e2073fc0fb4449117e48ea39', '3', '$2y$12$EtxsoU.N9VCE/hdh7f/QNeuZr8/f0komyLUlSzBxQrz5hUl4PFI22', NULL, NULL, NULL),
(233, 'Aubree Kulas DDS', 'flatley.fabiola@example.com', '457f2e0d952204776b9254f6732dd0881d4672bce60a44a77b76183b48b89b46', '3', '$2y$12$ViEozKjD6OjUYOaz/jokke7kPFACkgjNRfqW1OOo5FVgJq64xDuHG', NULL, NULL, NULL),
(234, 'Stephanie Lang', 'whitney.senger@example.org', '6b63757d0ab57d7f3bf70ec7ed2c728772b3fbdf72f7407307046649b98fb34b', '2', '$2y$12$R4eILyEQb8h4yKhCiL/pR.geJNTTCayWg.ELCI6gjRwdfLrfuw352', NULL, NULL, NULL),
(235, 'Ashly Monahan', 'rubye22@example.net', '793b0f6c311bf0b8c2d453add690455fd30404eb229ba5a5f9557160b6e20c7d', '1', '$2y$12$FynqG/1j7LLD.l3T8GlkBuNZlJXxfgp14q1iiB1CdRiXz6LaDcgwK', NULL, NULL, NULL),
(236, 'Raymond Bashirian', 'ihodkiewicz@example.com', '7ac4beb547e1608f2436391763578c9b0cccf48cf504c55219cf9901a3b5a06c', '1', '$2y$12$gHkLa2fTRlviobcaZWFAQOoSov6Qfjj/rIhzFqZ3l0C0sXbYsyAFG', NULL, NULL, NULL),
(237, 'Dr. Ivah Kemmer', 'nolan.maida@example.net', 'bc99dade8bb51c9f06ce957397e18a0d613a92cd86a6d504a578b2e29d74e674', '4', '$2y$12$xA0UmpnUu5KkNooy/M2rVejd6rBxUyt8Rln0DOWSVgoerAIvm3dom', NULL, NULL, NULL),
(238, 'Tyreek Kreiger', 'kamren79@example.com', '23a9cb52bd4329d1292c9208db7d13e10f0ed573801d9836baa021aebe879f96', '2', '$2y$12$sY0ABA8B7naaWlIgQFdnVur8.TTM/gBAdjbHxxlgh4f9cAL8kYyzu', NULL, NULL, NULL),
(239, 'Ms. Jada Ernser DVM', 'ullrich.vance@example.net', '67b9ec20452195e1c5567ddb4581f90827e237393f7c59ffc6d3b831f19f0aa2', '3', '$2y$12$frMAmNQO6TkWyy0RD0UjFeYoY093BthMfbcqml5Arp3YOYAmfTO1y', NULL, NULL, NULL),
(240, 'Dr. Sydnee Bernier DVM', 'hector.aufderhar@example.net', 'c3b30379c0150bc2797036ced5e092def6c6138979320052b7b134e00a4f7279', '4', '$2y$12$QHsel4/LhTRiCbMHPQd0duI4cqIl3qZq.MkBTWD0IfWs5OoDPLA6a', NULL, NULL, NULL),
(241, 'Jude Wiza', 'qmaggio@example.org', 'cd836041c9df596c4aa419d7809efa3218975c8ecd5d1c3c80f960ede3d733db', '1', '$2y$12$A/4QoIoPfOpSGGVKhwLyZOlB7OOjffTphF1PMX6FetzEORrBA7psi', NULL, NULL, NULL),
(242, 'Joany Torphy', 'jacobs.brisa@example.net', '128ee71045ff10bb29dc9c86e4c274f2cd81a20c6aec143f22760e928445e4d5', '1', '$2y$12$X3rXS45mH9Vjozs6npaZTu8K4tNihMvyk92D67Z1Z57AAyLYKA1s6', NULL, NULL, NULL);
INSERT INTO `users` (`id`, `name`, `email`, `face_data`, `level`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(243, 'Dr. Frederick Herman', 'axel.reichert@example.com', '41c4191b433de4235ed10b7c8630208acd8d1b81e4d3555ef7489cf8e2b3996e', '1', '$2y$12$YJS3wYcvl3PCVrHuVB4tPel4X0GUwPGpVskBW9z7tVGkLU6m5xKJ.', NULL, NULL, NULL),
(244, 'Mr. Alfonzo Kutch I', 'jaquan97@example.com', 'd66d32453c1baab3a32d6957b8a14f104407c917137bb5b7262ee930f455e702', '3', '$2y$12$5TseeUHkcAdcpnRb.qeLCOW0e.Ffe/bWqeA9pYlVa4QDtpQx2RWym', NULL, NULL, NULL),
(245, 'Jake Abernathy', 'frunte@example.org', '93ccb77390b2b954c4399c20456b2ad0709f2beffe1da68cda95457419cfea1b', '0', '$2y$12$fksrXCMHRDmXTDiIhbRoze09ncxKNKO5hLO/ZUvkcqMG43NdeIFIS', NULL, NULL, NULL),
(246, 'Jamison Davis', 'gking@example.net', '9521e1a7e1ad4894e412a85e8ab2dd8b7dada63785f9f71f91675d0a1fcc92bd', '0', '$2y$12$E6JKcHQOyOKpOqMrMRv6PewGhv8kyjsQoQMXlXBiWbj35JNSABeua', NULL, NULL, NULL),
(247, 'Lorena Langworth', 'quinn.upton@example.net', '3e1379f66b2902da405fdeaef0f89f4f447985792fc3899e44982233844cfddc', '1', '$2y$12$OaCxR66UlFGulPSmoMucg.oEDENzkk5o8lQBMmGIIOK0lN/BQSSTi', NULL, NULL, NULL),
(248, 'Erika Friesen', 'waters.magnolia@example.com', 'bff7c707953602bdd14e856c9e129d0bb63c59ab258780a0b0e25598761c5465', '3', '$2y$12$6BCFZtkY2W83JLJ2PMoaNOF97j3QDxG0GugPQYRNGoFvTwHzeFtNO', NULL, NULL, NULL),
(249, 'Bettye Smith', 'lgusikowski@example.org', '4b3eb714889dccce5e987329c49ef0973644c44069a446d26f06c00e85dde848', '3', '$2y$12$0/AyRycyPfQDcRs3nTOERuJc8xpzNp6EFlMeyJCagSkdmEqStAGTK', NULL, NULL, NULL),
(250, 'Jessyca Bartell', 'weber.deshaun@example.com', '03ea567caccb409f8d4703e99bf68ee215cc2e3e1a6a175197bc88068bc4c066', '1', '$2y$12$j0f840Xh0CqSf3pMaezvTeAt8zHPX.IACxWwUCB/vi5DXjI1pDUOC', NULL, NULL, NULL),
(251, 'Everette Schowalter', 'zetta99@example.com', '478dc75af1921c8a9066eba533f6ac232915a349f80c5fef9f939a7e44a14223', '3', '$2y$12$Z9UyheHYAiD.fdQpmNuvaOPqGvuhyq83cYDEOBB8Rcyczuc14m7uW', NULL, NULL, NULL),
(252, 'Elisha Hilpert', 'boyle.ozella@example.net', '3d4d03e5e4a5aa47576d7a0e13d1b5db98a30fcdadbc9be4a2ba3161ebaba998', '1', '$2y$12$fdl6dM/zop4Va4rBpFTo7ev47WOyNmYLc7WYgEuqXRC8vv8basPdC', NULL, NULL, NULL),
(253, 'Easter Wisoky', 'dmacejkovic@example.com', '9453ef6ca7c6c57608f3574aa1fad392518bd68435be3c4735c53e408d6d2bda', '2', '$2y$12$2s.B1njo.hKyxD5e.iqQ4uZ0LXry4lWFM10LMf4Y1sSiawvQu68/a', NULL, NULL, NULL),
(254, 'Mr. Tyrell West DDS', 'alverta50@example.net', 'd76dd65fa16f3ecc7528ce836b83fc5180cfc62b1c292912fcd9b185df834611', '1', '$2y$12$2m0TPHshFFBkJxQfjRGopOog4r.GdXhp/FZzMFflcnU0Y/1jKf/3.', NULL, NULL, NULL),
(255, 'Emery Cassin', 'gutmann.nicola@example.org', '796729d542b728d139e190e263ae86c3649a81ab7cb795c87cb672bf520c5157', '4', '$2y$12$GH3hNSbgwreHPOH17URbGOFFeprvPOiQpiHOFkZ/KABt1CyPUrTdC', NULL, NULL, NULL),
(256, 'Pete Braun', 'drolfson@example.org', 'da643ee103d31224fa49bdbe70419a68a86b7aae0b04d9abb57fecfe32b87e2f', '4', '$2y$12$L6PRN34MMGPEqRQB/PmM3eRx10vkOrgFnPm6kuIybIdD4F9sM4Pbq', NULL, NULL, NULL),
(257, 'Korbin Wisozk', 'bernardo01@example.com', 'e2f47c7b2ad7ff9addf3d2dbd14f8ef5ec486c2298d60d0e423a5edf0fb4a26a', '1', '$2y$12$kkD6cJ.UXoWd8ClNCmlAmukh/ftHVMi/1YLbXs//c53DFZIEXYA1.', NULL, NULL, NULL),
(258, 'Dr. Celine Buckridge III', 'cole26@example.org', '7f459a5d1f0d9798da48359c633b31eee93a68035448164a0a7b7e720e09215a', '3', '$2y$12$YHW6pn2n3g3rYBh2mSkM/OlZftOQu6N0gGCkQtLq9HaL4JB6V.Pk.', NULL, NULL, NULL),
(259, 'Jacquelyn Grimes', 'xblanda@example.org', 'a2ede6c4c85fce6df115efca2807792107e886bf75a5b3eb2246e17ee39b0df9', '3', '$2y$12$YZGWkpTdNj2yR36quFCz3OcZJkXd/bogSm83kXaYJvwVTzFEe8Cqa', NULL, NULL, NULL),
(260, 'Karlee Lowe II', 'edison05@example.org', '313381028dd894b2761d08ccb51715d434ca10056a111cd3a981b9894be20393', '3', '$2y$12$NPBeCPNPHmr9JPDpI7ZsEuyfnaj7AXQRTS5qitdum8G5EP8Gjwv9e', NULL, NULL, NULL),
(261, 'Alexis Thompson', 'chaim.kuvalis@example.net', '9635e9dfc97182b289b922ff46fd5a51d35c3d2a9e7ac73ecf29b5bf7097024a', '3', '$2y$12$6DI5wYbyh5KYW.Dk4oZDVehznabAoPOtnOdLWdn1N2YWWcJMf25HS', NULL, NULL, NULL),
(262, 'Sandy Emard', 'garnet20@example.com', '51465faf0a951c9b0cf3c46e92f2e45a8bf4feec0d271731a48e88beaaa94389', '2', '$2y$12$OshYvRr2RJarA5jjnrQdg.i.xFIANlP/XvF7eVjQSrB7uBnnwzdQu', NULL, NULL, NULL),
(263, 'Anika Parisian', 'rogelio.nikolaus@example.com', '32c42a811e7ec871cf9add2b320b643d020eb1aaecd92896f1a24f0d93c43349', '4', '$2y$12$2kP.dqhbMIp8WqSG29shde1//wsoIz.WcFqTNkngqHTzLRMrM6/mW', NULL, NULL, NULL),
(264, 'Prof. Theresa Kerluke', 'krowe@example.org', '4b84f5d3b61a2eec53b3ce29a8f2f5cf32406fdd3521ba2ae09e5389e9bfc66c', '3', '$2y$12$fmHb4t8k2yrDAC8h7YqmjuaX7zq7hDx8wDXAATj5zmbBS3ZKi7K46', NULL, NULL, NULL),
(265, 'Rollin Roberts', 'rubie.ritchie@example.org', '6c65ec42fbb1d048f079dc3b5d0968e8fbdc86e79be05ec3a009905aab3908b8', '1', '$2y$12$UJu0i5ovXY3eZP7vV2hHuupxLKcASzyav5ykwn41BqQHasiwRxxyS', NULL, NULL, NULL),
(266, 'Savannah White', 'dameon10@example.com', '343f05c9cdc677b2f0545fc0ad58556fc654ff15cae45e089e8a91083f588eaf', '1', '$2y$12$Hpi7QIS.HW42sL7znGHMBuQt1DB0edN6duNoOGbNB.jx9VDKBBlOO', NULL, NULL, NULL),
(267, 'Lillian McDermott', 'heaney.darren@example.net', '380b74280d9950630f8b8c94f13f7f5573f138b7748abc51fe4d0e7b936a0171', '3', '$2y$12$Cp.XBwKwuTX1pYipYamL1.HGLmMvD7WwhoGv29CYY2GhIv0q9Z5WK', NULL, NULL, NULL),
(268, 'Nyasia Langworth', 'enrico.leannon@example.com', '8473c03947e33ee6ad153c5eb59c51bb919e19d5ed883db5f01cba8fad898784', '0', '$2y$12$FvQ67AkW0I4Bc/wA.r.zWuPMtYSTRQrObmmT3dmChXMrlGm58exly', NULL, NULL, NULL),
(269, 'Laila Reinger', 'hgulgowski@example.org', '48a44e86155ded929ee1a1da213c384f01c28cc50967944877c3f55504b93cf1', '3', '$2y$12$x.plxH19bJcZH6BL6fj7P.XmsV8Qwf9Mmz5LR5UgmEPMjjN36gGru', NULL, NULL, NULL),
(270, 'Luther Mitchell Jr.', 'garfield67@example.org', 'd58a308ca693d5e71983b77bd5f0c5be7f85e6e39842172e54e6efd58c35600a', '2', '$2y$12$x/ngoIno1YuolroPGHYos.kIj6aQIbPUdFDrP7udyfmk6hybNCL32', NULL, NULL, NULL),
(271, 'Rosa Donnelly', 'ogutmann@example.org', 'ed12ba1bdf98242ae367acd003d25302c9b031eeb58b147858837afe8c45bb84', '4', '$2y$12$YgEfgL8Lp92Tm1l3I.N1ruebFS2eMIORJYbGVgUcc3QD7P/TKOkQq', NULL, NULL, NULL),
(272, 'Daren Gleason IV', 'bbergnaum@example.com', '550e4ac2a193c6c8dfd7c1abdebc4ff89e342bf6340e617e0150eb6a1a402d05', '2', '$2y$12$M2lsJfbDSc7BjFzPsmV09ezVQ3yM6al2UI3QrUickurkdsv.0lS..', NULL, NULL, NULL),
(273, 'Margaretta Kertzmann', 'maudie22@example.org', '1b0a43173456db56bcbc239a224b811f26bf076281c599a084c839fdd5dd28c9', '0', '$2y$12$QkTFlLO4tV3swhWWbDxeq.w09NC/vI27MITKhetnXKaWewU0REToq', NULL, NULL, NULL),
(274, 'Mr. Rick Stehr II', 'tess38@example.org', '1045468418483e8db83595383eaa292eb5b42d4e703b5926f84a280fb822980f', '1', '$2y$12$8FOKGdovw4z9LJh8tZG.IOHILOlJnmdrTNJsDJ8/rK98yQ.U9IBxi', NULL, NULL, NULL),
(275, 'Carter White', 'bins.taya@example.org', 'af55cea232966014fc97f47d5ad1cbf27630a251b969d86aa16941c9c9276810', '2', '$2y$12$JRHH3/IVdU7fqMQxpMdwt.XGrmyOe5dxN2DH4Ndeho9sbVnntGLaC', NULL, NULL, NULL),
(276, 'Dr. Bruce Rice DVM', 'ubruen@example.org', '81c05261e47d0d76a13af8adcf9ed8c31536a90d09d5c056ddcaed1f17a0f35a', '0', '$2y$12$F0TFUNk28Kni/68EiQ4Fe.JK.EuGdA9/ZeZ9R8gCpuvnDbg6ZQ.yG', NULL, NULL, NULL),
(277, 'Prof. Marlon Abernathy', 'pzieme@example.net', 'd9b474b0c092f60b2b42dcfe7d796b9afab272899d4cdd368437a0c6546c5750', '1', '$2y$12$jTSe8UA2Nd5pBxZ9K3yGp.XsSXa.7JGblNj06e2gVZOWZ1YVJwzs.', NULL, NULL, NULL),
(278, 'Kris Bergnaum', 'lazaro.dubuque@example.net', '7d2c93cce0c6751adfa1990acb9626697b8c51bdcfb5d6a9c65a422e45047018', '2', '$2y$12$ElyA9Ppg/mGWxeCOHQ55C.keRbNyYHDBU0Zt82ylBpNGeeEWUIitG', NULL, NULL, NULL),
(279, 'Keon Mohr', 'dhammes@example.com', 'd7f1a818f5dacf187ace2623d6f6f9ee11710aad2412a573859f7da03598c3a6', '1', '$2y$12$u.7UyLOEkcWj4qMtrATH9ewupuoa747gMmsrVV9dXhCIXHnLpcNpq', NULL, NULL, NULL),
(280, 'Jalyn Legros', 'nsporer@example.org', '9948d749e5f2e79819a92f990fe31ec276df7a09996484cc3f1118150cf2f6cf', '4', '$2y$12$9UelXG8cXKxCb3dkurOp4.Td54QNxK2GFZ4t3QAFydrQ1FMHHrXVW', NULL, NULL, NULL),
(281, 'Alba McLaughlin', 'valentine68@example.com', '5a896ac3f6d21e5b29bfdcc57a575deda87403df6e1ea503d38aa62786609428', '3', '$2y$12$.wLVVG8CAYgsw0bDsKURDOzbTNMbO4oMBRCY0I2WjJ98uOHa5P4lK', NULL, NULL, NULL),
(282, 'Prof. Augustine Crooks', 'layla40@example.com', '1a992cfdca9afe29d29dbd537861f72e2fbd0a85c5b0d490ce3340c28c99d336', '3', '$2y$12$R43QIGedY4DxXXUV74keHegSKSfnlH/BUvp0e8e.CjW/TOQoWC1nu', NULL, NULL, NULL),
(283, 'Nelda Nitzsche III', 'demarcus76@example.net', 'bf9e37f6008301828b01598f0eeb031186811c22bf3888f3f5e93eace68a9222', '2', '$2y$12$7O.YVUpTFWOfgZcwIOuhpOytshqSHfK4xCOA1fvuRnJdNGZ0qfk12', NULL, NULL, NULL),
(284, 'Dr. Brant Brekke MD', 'crystal31@example.org', 'd32888ff8c9f1abe98afb376905985d6b0dcf144a300848ecbd2d7e843d98ebd', '0', '$2y$12$lM7314BFya2tyc6lq0B.G.PLHODgThCbFl4Xuvu1sDcoSytCjC0S2', NULL, NULL, NULL),
(285, 'Sarah King PhD', 'avis.cummings@example.net', '5552b2a5cc5201372f9a255358d9e31fab505424cc25fb52c26364ccedcea385', '1', '$2y$12$Z2etcGjRMQzSl41QexTqtOm51.T/WKmlgmHpfJfFbT/vl/EZtdA2W', NULL, NULL, NULL),
(286, 'Ollie Thiel', 'adams.santos@example.org', '823efc46ab9d2d8b9b03546f21336ac2ed56e587df735c9159a2f204c42f30d3', '3', '$2y$12$5lbvHTa2xLeLZ9hDfuKJHeXTbx8amhT/r888il0uPE3O8GGMNRDrC', NULL, NULL, NULL),
(287, 'Alicia Batz', 'nreichel@example.net', 'b7a5e287643ec2d1e17fc603b8de5795608c9c36ba30b4010be28a38b8f3c9e8', '0', '$2y$12$xecwbRMkAdNioRBOpulatukkFB1o1kJeCbrHm6u6QY0z.5NGw5bTq', NULL, NULL, NULL),
(288, 'Dimitri Rogahn', 'arodriguez@example.com', 'f4733ddbe9d9c2b072bcae7cafc6f96afb1a392f2767c8c8ab5f536d4dd52652', '4', '$2y$12$79A089mq8uS2VGOl8/m9w.ZgHbHnUxk2gmXdQiUj5USIio.qTLJWa', NULL, NULL, NULL),
(289, 'Matilde Kshlerin', 'dejuan44@example.net', 'd1c8653f625532ccaa86cab8a34f18fd6ad62e879a8fa2019fa4b36da99887f1', '0', '$2y$12$9zaZL88kisbdc1o/QmsJSe8BZ2/5VbjW36gZpyhP4D9M3guidlY8u', NULL, NULL, NULL),
(290, 'Kayla Weimann I', 'anissa.collier@example.org', '2c0b7fd1f780f55b955cf29f62d07658c3032a1a7a6328790603e5b3c8e64a56', '3', '$2y$12$fu5OnN5eHkfEMV8jUedLHORNQdJ8SIt9dv0D8373NBn5.WTWuT9KW', NULL, NULL, NULL),
(291, 'Dr. Benny Lowe', 'vziemann@example.org', 'de038a864b08622c547b06f300ed372c0fa8cd4ca4cc540eae16bb536d7f2a13', '1', '$2y$12$dpyIudDijuyFgR8yPWHMTOrXchEFGRBlOUS7xZIbKRfHty//8oEUK', NULL, NULL, NULL),
(292, 'Mr. Jarod Smith PhD', 'weimann.dustin@example.net', '0ad924242cf3f83befb86124bfc617de48e1e2129cfeba57bfd35e138f8523c3', '2', '$2y$12$pxoHmpGBextJL0jRzRicBufWHdMz2WMVJDvLmPwWfnWteciCSgC9i', NULL, NULL, NULL),
(293, 'Orin Anderson', 'lharber@example.net', 'cfe61d713c4a04e7b11e79ccebcaa56f6cd811f00d9499ee07bf94f34f699f34', '0', '$2y$12$Ksn.zjel0pYXg0bnqswl0u5KV0J8sqol18YuN.5yAhRSscVpcIllO', NULL, NULL, NULL),
(294, 'Jazmyne Luettgen', 'breitenberg.armando@example.com', '0bc6dac2c00eb33b93c20dbd6a568df39c5ef5f0fe664da3907b33899277c970', '2', '$2y$12$W5j4EVq19VcxhJGyawv7U.Yn8Gs8ejNpWg/IQB.5vrldNZhEmlN2i', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `weeks`
--

CREATE TABLE `weeks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `week_number` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `weeks`
--

INSERT INTO `weeks` (`id`, `week_number`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 1, '2025-02-16', '2025-02-22', '2025-02-20 17:34:38', '2025-02-20 17:34:38'),
(2, 2, '2025-02-23', '2025-03-01', '2025-02-20 17:34:38', '2025-02-20 17:34:38'),
(3, 3, '2025-03-02', '2025-03-08', '2025-02-20 17:34:38', '2025-02-20 17:34:38'),
(4, 4, '2025-03-09', '2025-03-15', '2025-02-20 17:34:38', '2025-02-20 17:34:38'),
(5, 5, '2025-03-16', '2025-03-22', '2025-02-20 17:34:38', '2025-02-20 17:34:38'),
(6, 6, '2025-03-23', '2025-03-29', '2025-02-20 17:34:38', '2025-02-20 17:34:38'),
(7, 7, '2025-03-30', '2025-04-05', '2025-02-20 17:34:38', '2025-02-20 17:34:38'),
(8, 8, '2025-04-06', '2025-04-12', '2025-02-20 17:34:38', '2025-02-20 17:34:38'),
(9, 9, '2025-04-13', '2025-04-19', '2025-02-20 17:34:38', '2025-02-20 17:34:38'),
(10, 10, '2025-04-20', '2025-04-26', '2025-02-20 17:34:38', '2025-02-20 17:34:38'),
(11, 11, '2025-04-27', '2025-05-03', '2025-02-20 17:34:38', '2025-02-20 17:34:38'),
(12, 12, '2025-05-04', '2025-05-10', '2025-02-20 17:34:38', '2025-02-20 17:34:38'),
(13, 13, '2025-05-11', '2025-05-17', '2025-02-20 17:34:38', '2025-02-20 17:34:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD KEY `attendances_student_id_foreign` (`student_id`),
  ADD KEY `attendances_course_id_foreign` (`course_id`),
  ADD KEY `attendances_day_period_id_foreign` (`day`,`period_id`),
  ADD KEY `attendances_location_name_foreign` (`location_name`),
  ADD KEY `attendances_week_id_foreign` (`week_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD UNIQUE KEY `courses_course_name_unique` (`course_name`),
  ADD KEY `courses_instructor_id_foreign` (`instructor_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instructors_email_unique` (`email`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `periods`
--
ALTER TABLE `periods`
  ADD PRIMARY KEY (`period_number`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD KEY `registrations_course_id_foreign` (`course_id`),
  ADD KEY `registrations_location_name_foreign` (`location_name`),
  ADD KEY `registrations_day_period_id_foreign` (`day`,`period_id`),
  ADD KEY `registrations_student_id_foreign` (`student_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`day`,`period_id`),
  ADD KEY `schedules_period_id_foreign` (`period_id`);

--
-- Indexes for table `schedule_subjects`
--
ALTER TABLE `schedule_subjects`
  ADD KEY `schedule_subjects_day_period_id_foreign` (`day`,`period_id`),
  ADD KEY `schedule_subjects_location_name_foreign` (`location_name`),
  ADD KEY `schedule_subjects_student_id_foreign` (`student_id`),
  ADD KEY `schedule_subjects_course_id_foreign` (`course_id`),
  ADD KEY `schedule_subjects_instructor_id_foreign` (`instructor_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD KEY `student_courses_student_id_foreign` (`student_id`),
  ADD KEY `student_courses_course_id_foreign` (`course_id`);

--
-- Indexes for table `student_instructor`
--
ALTER TABLE `student_instructor`
  ADD KEY `student_instructor_student_id_foreign` (`student_id`),
  ADD KEY `student_instructor_instructor_id_foreign` (`instructor_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `weeks`
--
ALTER TABLE `weeks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `weeks_week_number_unique` (`week_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295;

--
-- AUTO_INCREMENT for table `weeks`
--
ALTER TABLE `weeks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_day_period_id_foreign` FOREIGN KEY (`day`,`period_id`) REFERENCES `schedules` (`day`, `period_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_location_name_foreign` FOREIGN KEY (`location_name`) REFERENCES `locations` (`location_name`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_week_id_foreign` FOREIGN KEY (`week_id`) REFERENCES `weeks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `instructors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `registrations_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `registrations_day_period_id_foreign` FOREIGN KEY (`day`,`period_id`) REFERENCES `schedules` (`day`, `period_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `registrations_location_name_foreign` FOREIGN KEY (`location_name`) REFERENCES `locations` (`location_name`) ON DELETE CASCADE,
  ADD CONSTRAINT `registrations_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_period_id_foreign` FOREIGN KEY (`period_id`) REFERENCES `periods` (`period_number`) ON DELETE CASCADE;

--
-- Constraints for table `schedule_subjects`
--
ALTER TABLE `schedule_subjects`
  ADD CONSTRAINT `schedule_subjects_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedule_subjects_day_period_id_foreign` FOREIGN KEY (`day`,`period_id`) REFERENCES `schedules` (`day`, `period_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedule_subjects_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `instructors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedule_subjects_location_name_foreign` FOREIGN KEY (`location_name`) REFERENCES `locations` (`location_name`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedule_subjects_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_courses`
--
ALTER TABLE `student_courses`
  ADD CONSTRAINT `student_courses_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_courses_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_instructor`
--
ALTER TABLE `student_instructor`
  ADD CONSTRAINT `student_instructor_instructor_id_foreign` FOREIGN KEY (`instructor_id`) REFERENCES `instructors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_instructor_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
