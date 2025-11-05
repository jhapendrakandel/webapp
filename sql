-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 05, 2025 at 03:03 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `calendar_db`
--
CREATE DATABASE IF NOT EXISTS `calendar_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `calendar_db`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$BkAf6xsJ60Qv5RA2t.WL7eCYbE0q6GSNU4hrqMbgXsDTjIXFhdEbq');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_date` date NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_description` text DEFAULT NULL,
  `event_color` varchar(7) NOT NULL DEFAULT '#e0f7fa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_date`, `event_name`, `event_description`, `event_color`) VALUES
(132, '2024-01-01', 'New Year Celebration', 'Welcome the new year with music and fireworks.', '#FF5733'),
(133, '2024-01-05', 'Community Cleanup', 'Join us in cleaning up the local park.', '#3366CC'),
(134, '2024-01-10', 'Fundraising Gala', 'Annual gala to raise funds for charity projects.', '#FFC300'),
(135, '2024-01-15', 'Volunteer Orientation', 'Learn about volunteering opportunities with us.', '#33CC99'),
(136, '2024-02-02', 'World Cancer Day Seminar', 'Raise awareness and educate about cancer prevention.', '#9933CC'),
(137, '2024-02-08', 'Blood Donation Drive', 'Donate blood and save lives.', '#FF6347'),
(138, '2024-02-14', 'Valentine\'s Day Party', 'Celebrate love and friendship with games and music.', '#FF69B4'),
(139, '2024-02-20', 'Art Exhibition', 'Showcase local artists and their works.', '#6495ED'),
(140, '2024-03-05', 'International Women\'s Day Celebration', 'Empower women and celebrate their achievements.', '#FF4500'),
(141, '2024-03-10', 'Educational Workshop', 'Learn new skills and knowledge with our workshop series.', '#4169E1'),
(142, '2024-03-15', 'Tree Plantation Drive', 'Contribute to environmental sustainability by planting trees.', '#228B22'),
(143, '2024-03-20', 'Health Checkup Camp', 'Free health checkups for the community.', '#FF8C00'),
(144, '2024-04-02', 'Easter Egg Hunt', 'Fun-filled egg hunt event for families and kids.', '#FFD700'),
(145, '2024-04-08', 'Community Picnic', 'Enjoy a day out with friends and family at the local park.', '#32CD32'),
(146, '2024-04-15', 'Earth Day Cleanup', 'Join hands in cleaning up our environment and raising awareness about sustainability.', '#2E8B57'),
(147, '2024-04-22', 'Recycling Workshop', 'Learn about the importance of recycling and ways to reduce waste.', '#8A2BE2'),
(148, '2024-05-01', 'Labor Day Celebration', 'Honoring the contributions of workers to society.', '#FFD700'),
(149, '2024-05-07', 'Food Drive', 'Collecting non-perishable food items for the local food bank.', '#8B4513'),
(150, '2024-05-15', 'Cultural Festival', 'Experience the diversity of cultures through music, dance, and food.', '#FF1493'),
(151, '2024-05-22', 'Charity Run', 'Raise funds for charity through a community run event.', '#DC143C'),
(152, '2024-06-05', 'World Environment Day', 'Promote environmental awareness and action for the protection of our planet.', '#32CD32'),
(153, '2024-06-10', 'Summer Camp Registration', 'Sign up for exciting summer camp activities for kids.', '#FFA500'),
(155, '2024-06-25', 'Community Talent Show', 'Showcase local talent and creativity.', '#800080'),
(156, '2024-07-04', 'Independence Day Celebration', 'Celebrate the nation\'s independence with fireworks and festivities.', '#FF4500'),
(157, '2024-07-10', 'Blood Drive', 'Donate blood to support local hospitals and patients in need.', '#FF6347'),
(158, '2024-07-18', 'Summer Movie Night', 'Enjoy outdoor movie screenings under the stars.', '#4682B4'),
(159, '2024-07-25', 'Youth Leadership Summit', 'Empowering young leaders to make a positive impact in their communities.', '#FFA500'),
(160, '2024-08-05', 'Back-to-School Fair', 'Get ready for the new school year with fun activities and school supplies.', '#32CD32'),
(161, '2024-08-12', 'Community BBQ Cookout', 'Enjoy delicious BBQ food and good company at our community cookout.', '#FF4500'),
(162, '2024-08-20', 'Sports Day', 'Participate in various sports and games for a day of friendly competition.', '#4169E1'),
(163, '2024-08-28', 'Charity Auction', 'Bid on unique items to support local charitable causes.', '#8A2BE2'),
(164, '2024-09-02', 'International Day of Charity', 'Promote charitable efforts and kindness towards others.', '#FF6347'),
(165, '2024-09-08', 'Community Health Fair', 'Access free health screenings, education, and resources for better health.', '#FF8C00'),
(166, '2024-09-15', 'Pet Adoption Day', 'Find your new furry friend at our pet adoption event.', '#9932CC'),
(167, '2024-09-22', 'Cultural Diversity Seminar', 'Celebrate and learn about the richness of cultural diversity in our community.', '#FF1493'),
(168, '2024-10-05', 'World Teachers\' Day', 'Recognize and appreciate the dedication of teachers in shaping our future.', '#FF5733'),
(169, '2024-10-10', 'Community Garden Planting', 'Join us in planting seasonal crops and maintaining the community garden.', '#32CD32'),
(170, '2024-10-20', 'Tech Expo', 'Explore the latest technology innovations and trends at our expo.', '#4169E1'),
(171, '2024-10-28', 'Halloween Costume Contest', 'Show off your spookiest costumes and win prizes at our contest.', '#FF4500'),
(172, '2024-11-05', 'Community Book Drive', 'Donate books to promote literacy and access to education.', '#8B4513'),
(173, '2024-11-11', 'Veterans Day Tribute', 'Honor and express gratitude to our veterans for their service.', '#4169E1'),
(174, '2024-11-15', 'Thanksgiving Food Distribution', 'Distribute meals to families in need for the Thanksgiving holiday.', '#FF6347'),
(175, '2024-11-25', 'Black Friday Charity Sale', 'Shop for a cause and support local charities at our sale event.', '#FF1493'),
(176, '2024-12-01', 'World AIDS Day Seminar', 'Raise awareness about HIV/AIDS prevention and support.', '#FF5733'),
(177, '2024-12-07', 'Holiday Toy Drive', 'Collect toys for children in need during the holiday season.', '#FFD700'),
(178, '2024-12-15', 'Winter Festival', 'Celebrate the holiday season with festive activities and performances.', '#FF4500'),
(179, '2024-12-31', 'New Year\'s Eve Gala', 'Ring in the new year with an elegant gala event.', '#FFC300'),
(180, '2024-01-20', 'Winter Sports Day', 'Enjoy a day of outdoor winter sports activities.', '#87CEEB'),
(181, '2024-01-25', 'Film Screening: Documentary Night', 'Watch thought-provoking documentaries with the community.', '#20B2AA'),
(182, '2024-01-28', 'Cooking Class: Italian Cuisine', 'Learn to cook delicious Italian dishes with professional chefs.', '#FFA07A'),
(183, '2024-01-30', 'Art Workshop: Watercolor Painting', 'Unleash your creativity with watercolor painting techniques.', '#FFD700'),
(184, '2024-01-31', 'Community Yoga Session', 'Relax and rejuvenate with a free community yoga session.', '#7B68EE'),
(185, '2024-02-05', 'Nature Hike', 'Explore the beauty of nature with a guided hike.', '#8FBC8F'),
(186, '2024-02-10', 'DIY Craft Workshop: Valentine\'s Day Cards', 'Create personalized Valentine\'s Day cards for your loved ones.', '#FF69B4'),
(187, '2024-02-15', 'Language Exchange Meetup', 'Practice speaking different languages and meet new people.', '#4682B4'),
(188, '2024-02-20', 'Gardening Workshop: Spring Planting', 'Learn essential gardening tips for planting spring flowers and vegetables.', '#32CD32'),
(189, '2024-02-25', 'Mindfulness Meditation Session', 'Practice mindfulness and meditation for inner peace and relaxation.', '#FFA07A'),
(190, '2024-03-05', 'Cooking Class: Healthy Eating', 'Discover delicious and nutritious recipes for a healthier lifestyle.', '#20B2AA'),
(191, '2024-03-10', 'Photography Walk', 'Capture the beauty of the season with a guided photography walk.', '#87CEEB'),
(192, '2024-03-15', 'Music Concert: Local Bands Showcase', 'Enjoy live performances by talented local bands.', '#FF6347'),
(193, '2024-03-20', 'Dance Workshop: Salsa Night', 'Learn basic salsa dance moves and enjoy a fun night of dancing.', '#FFD700'),
(194, '2024-03-25', 'Community Potluck Dinner', 'Bring your favorite dish to share and enjoy a meal together with the community.', '#7B68EE'),
(195, '2024-04-05', 'Film Screening: Environmental Documentary', 'Watch a documentary highlighting environmental issues and solutions.', '#32CD32'),
(196, '2024-04-10', 'Fitness Bootcamp', 'Get fit and active with a high-intensity fitness bootcamp.', '#8FBC8F'),
(197, '2024-04-15', 'Trivia Night', 'Test your knowledge and compete with friends in a fun trivia night.', '#FF69B4'),
(198, '2024-04-20', 'Baking Class: Cake Decorating', 'Learn to decorate cakes like a pro with expert guidance.', '#FF6347'),
(199, '2024-04-25', 'Art Workshop: Pottery Making', 'Get hands-on experience in pottery making and unleash your creativity.', '#4682B4'),
(200, '2024-05-05', 'Outdoor Concert in the Park', 'Enjoy live music performances in the scenic park setting.', '#FFD700'),
(201, '2024-05-10', 'Charity Bike Ride', 'Join a charity bike ride to raise funds for a worthy cause.', '#87CEEB'),
(202, '2024-05-15', 'Board Game Night', 'Gather with friends and family for a fun-filled board game night.', '#20B2AA'),
(203, '2024-05-20', 'Cooking Class: Asian Cuisine', 'Learn to cook delicious Asian dishes with authentic flavors.', '#8FBC8F'),
(204, '2024-05-25', 'Gardening Workshop: Container Gardening', 'Discover how to create beautiful container gardens for small spaces.', '#32CD32'),
(205, '2024-06-05', 'Outdoor Yoga Retreat', 'Escape the hustle and bustle with a rejuvenating outdoor yoga retreat.', '#7B68EE'),
(206, '2024-06-10', 'Live Theater Performance', 'Experience the magic of live theater with an exciting performance.', '#FF69B4'),
(207, '2024-06-15', 'Cooking Class: BBQ Masterclass', 'Master the art of barbecue with expert tips and techniques.', '#FF6347'),
(208, '2024-06-20', 'Family Fun Day', 'Enjoy a day of family-friendly activities and games.', '#4682B4'),
(209, '2024-06-25', 'Art Exhibition: Mixed Media Showcase', 'Explore diverse artworks created using various mixed media techniques.', '#FFA07A'),
(210, '2024-07-05', 'Outdoor Movie Night: Family Favorites', 'Enjoy a night under the stars with family-friendly movie classics.', '#FF6347'),
(211, '2024-07-10', 'DIY Workshop: Home Improvement', 'Learn practical home improvement skills and DIY projects for your home.', '#32CD32'),
(212, '2024-07-15', 'Cultural Cooking Class: Mediterranean Cuisine', 'Discover the flavors of the Mediterranean with hands-on cooking.', '#FF69B4'),
(213, '2024-07-20', 'Community Talent Show Auditions', 'Showcase your talent and audition for the upcoming community talent show.', '#20B2AA'),
(214, '2024-07-25', 'Guided Bird Watching Tour', 'Explore local bird habitats and learn about bird species with expert guides.', '#87CEEB'),
(215, '2024-08-05', 'Art Workshop: Acrylic Painting Techniques', 'Learn advanced acrylic painting techniques with professional artists.', '#FFD700'),
(216, '2024-08-10', 'Nature Photography Expedition', 'Capture stunning nature shots on a guided photography expedition.', '#8FBC8F'),
(217, '2024-08-15', 'Community Picnic and Games Day', 'Join in for a day of outdoor fun, games, and delicious food.', '#32CD32'),
(218, '2024-08-20', 'Cooking Class: Global Street Food', 'Explore the vibrant flavors of street food from around the world.', '#FF6347'),
(219, '2024-08-25', 'Dance Workshop: Hip Hop Dance Party', 'Learn energetic hip hop dance moves and routines in a fun workshop.', '#4682B4'),
(220, '2024-09-05', 'Book Club Meeting: Fiction Favorites', 'Discuss and share insights on popular fiction novels with fellow book lovers.', '#20B2AA'),
(221, '2024-09-10', 'Fitness Challenge: 5K Fun Run', 'Take on the challenge and participate in a fun 5K run with the community.', '#FF5733'),
(222, '2024-09-15', 'Gardening Workshop: Fall Harvest', 'Learn about fall gardening techniques and prepare for the harvest season.', '#32CD32'),
(223, '2024-09-20', 'Cultural Dance Performance', 'Experience captivating cultural dance performances from diverse traditions.', '#FF69B4'),
(224, '2024-09-25', 'Community Cleanup: Coastal Conservation', 'Join efforts to clean up beaches and coastal areas for environmental conservation.', '#87CEEB'),
(225, '2024-10-05', 'Creative Writing Workshop', 'Unleash your creativity and learn storytelling techniques in a writing workshop.', '#FFA07A'),
(226, '2024-10-10', 'Community Choir Practice', 'Join the community choir and rehearse for upcoming performances.', '#32CD32'),
(227, '2024-10-15', 'Tech Seminar: Future Trends', 'Explore emerging trends and technologies shaping the future in a tech seminar.', '#4682B4'),
(228, '2024-10-20', 'DIY Halloween Costume Workshop', 'Get creative and make your own unique Halloween costumes in this workshop.', '#FF6347'),
(229, '2024-10-25', 'Health and Wellness Expo', 'Discover holistic approaches to health and wellness at our expo featuring various vendors and activities.', '#FF4500'),
(230, '2024-11-05', 'Cooking Class: Holiday Baking', 'Learn to bake festive holiday treats and desserts in preparation for the season.', '#FFD700'),
(231, '2024-11-10', 'Community Storytelling Night', 'Gather around for an evening of storytelling and sharing personal narratives.', '#20B2AA'),
(232, '2024-11-15', 'Volunteer Appreciation Dinner', 'Celebrate and recognize the contributions of volunteers with a special dinner event.', '#FF69B4'),
(233, '2024-11-20', 'Fitness Workshop: Strength Training Basics', 'Learn fundamental strength training exercises and techniques for fitness improvement.', '#32CD32'),
(234, '2024-11-25', 'Thanksgiving Potluck Feast', 'Come together with the community and enjoy a delicious potluck feast to celebrate Thanksgiving.', '#FF6347'),
(235, '2024-12-05', 'Holiday Craft Fair', 'Shop for unique handmade gifts and crafts from local artisans at our holiday fair.', '#FF5733'),
(236, '2024-12-10', 'Music Concert: Holiday Classics', 'Experience the magic of the holiday season with a concert featuring beloved holiday songs.', '#FFD700'),
(237, '2024-12-15', 'Winter Wonderland Ice Skating', 'Glide across the ice and enjoy a festive winter wonderland atmosphere at our ice skating event.', '#87CEEB'),
(238, '2024-12-20', 'Charity Gala Dinner', 'Support charitable causes while enjoying an elegant gala dinner with live entertainment.', '#FF4500'),
(239, '2024-12-25', 'Christmas Day Community Brunch', 'Celebrate Christmas Day with a community brunch featuring delicious festive treats.', '#FF6347'),
(240, '2024-05-16', ' शीर्ष 1000 शब्दावली शब्दहरूलाई गाह्रो ', 'The Vocabulary.com Top 1000 को विशेषता रहेको शब्दावली सूची। शीर्ष 1000 शब्दावली शब्दहरूलाई गाह्रो तर सामान्य शब्दहरू प्रतिनिधित्व गर्न सावधानीपूर्वक छनोट गरिएको छ।', '#00e1ff'),
(241, '2024-08-02', 'School', 'back', '#8014eb'),
(242, '2024-10-24', 'Budget release', '354e6rt3euy3ry34u', '#00e1ff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;
--
-- Database: `chat_system`
--
CREATE DATABASE IF NOT EXISTS `chat_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `chat_system`;

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chatid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `chatroomid` int(11) NOT NULL,
  `message` varchar(200) NOT NULL,
  `chat_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chatid`, `userid`, `chatroomid`, `message`, `chat_date`) VALUES
(3, 2, 1, 'hello', '2024-08-13 13:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `chatroom`
--

CREATE TABLE `chatroom` (
  `chatroomid` int(11) NOT NULL,
  `chat_name` varchar(60) NOT NULL,
  `date_created` datetime NOT NULL,
  `chat_password` varchar(30) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chat_member`
--

CREATE TABLE `chat_member` (
  `chat_memberid` int(11) NOT NULL,
  `chatroomid` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(150) NOT NULL,
  `uname` varchar(60) NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `access` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `uname`, `photo`, `access`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 'Admin', NULL, 2),
(2, '11', '6512bd43d9caa6e02c990b0a82652dca', 'kandel', NULL, 2),
(3, 'admin', 'c1674fc3860a7614800643d70ca35d18', 'admin', NULL, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chatid`);

--
-- Indexes for table `chatroom`
--
ALTER TABLE `chatroom`
  ADD PRIMARY KEY (`chatroomid`);

--
-- Indexes for table `chat_member`
--
ALTER TABLE `chat_member`
  ADD PRIMARY KEY (`chat_memberid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chatroom`
--
ALTER TABLE `chatroom`
  MODIFY `chatroomid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chat_member`
--
ALTER TABLE `chat_member`
  MODIFY `chat_memberid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `datingdb`
--
CREATE DATABASE IF NOT EXISTS `datingdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `datingdb`;

-- --------------------------------------------------------

--
-- Table structure for table `Liked_list`
--

CREATE TABLE `Liked_list` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `liked_user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Liked_list`
--

INSERT INTO `Liked_list` (`id`, `user_id`, `liked_user_id`, `created_at`) VALUES
(37, 9, 10, '2025-04-30 12:17:00'),
(38, 10, 2, '2025-04-30 12:19:02');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(50) NOT NULL,
  `msg_from_user_id` int(50) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `msg_to_user_id` int(50) NOT NULL,
  `msg_date` datetime NOT NULL,
  `is_msg_read` tinyint(1) NOT NULL DEFAULT 0,
  `msg_read_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `msg_from_user_id`, `msg`, `msg_to_user_id`, `msg_date`, `is_msg_read`, `msg_read_date`) VALUES
(1, 1, 'Hello Meet', 2, '2020-10-04 23:49:58', 1, '2020-10-04 23:58:13'),
(2, 1, 'How are you?', 2, '2020-10-04 23:50:16', 1, '2020-10-04 23:58:13'),
(3, 1, '😉', 3, '2020-10-04 23:51:07', 0, NULL),
(4, 1, '😉', 6, '2020-10-04 23:57:36', 1, '2020-10-05 00:29:24'),
(5, 2, 'Hi vatsal', 1, '2020-10-04 23:58:21', 1, '2020-10-05 00:05:47'),
(6, 2, '😉', 4, '2020-10-05 00:05:13', 0, NULL),
(7, 6, 'Hi meet', 2, '2020-10-05 00:29:41', 1, '2020-10-05 00:53:29'),
(8, 6, 'Wow', 2, '2020-10-05 00:29:51', 1, '2020-10-05 00:53:29'),
(9, 6, 'Wow', 2, '2020-10-05 00:31:02', 1, '2020-10-05 00:53:29'),
(10, 6, '😉', 3, '2020-10-05 00:31:20', 0, NULL),
(20, 9, 'Hi', 2, '2020-10-05 01:45:04', 1, '2020-10-05 01:47:37'),
(21, 9, '😉', 2, '2020-10-05 01:45:12', 1, '2020-10-05 01:47:37'),
(22, 9, 'Hi', 1, '2020-10-05 01:47:10', 0, NULL),
(23, 2, '😉', 5, '2020-10-05 01:47:31', 0, NULL),
(24, 2, 'Hey', 9, '2020-10-05 01:47:41', 1, '2020-10-05 01:48:13'),
(25, 2, '😉', 9, '2020-10-05 01:47:53', 1, '2020-10-05 01:48:13'),
(26, 9, 'oe', 10, '2024-12-27 18:30:14', 0, NULL),
(27, 9, 'oe', 10, '2024-12-27 18:31:50', 0, NULL),
(28, 10, 'k', 9, '2024-12-27 18:31:57', 1, '2025-04-30 18:07:05'),
(29, 9, 'oe talu', 10, '2024-12-28 21:09:58', 0, NULL),
(30, 9, 'oe', 10, '2025-04-30 18:02:22', 0, NULL),
(31, 9, 'madea', 10, '2025-04-30 18:02:26', 0, NULL),
(32, 10, 'k', 9, '2025-04-30 18:04:15', 1, '2025-04-30 18:07:05'),
(33, 10, 'oe', 9, '2025-04-30 18:05:04', 1, '2025-04-30 18:07:05'),
(34, 10, 'mada lada fada', 9, '2025-04-30 18:05:13', 1, '2025-04-30 18:07:05'),
(35, 9, '?', 10, '2025-04-30 18:05:17', 0, NULL),
(36, 9, '😉', 10, '2025-04-30 18:07:05', 0, NULL),
(37, 9, 'mada lada', 10, '2025-04-30 18:07:11', 0, NULL),
(38, 9, 'fada', 10, '2025-04-30 18:07:13', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Notifications`
--

CREATE TABLE `Notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_read` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Notifications`
--

INSERT INTO `Notifications` (`id`, `user_id`, `message`, `created_at`, `is_read`) VALUES
(5, 9, 'You have a new match!', '2024-12-27 12:29:24', 1),
(6, 10, 'You have a new match!', '2024-12-27 12:29:24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(50) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `bio` varchar(500) DEFAULT NULL,
  `birthDate` date NOT NULL,
  `gender` varchar(50) NOT NULL,
  `imgUrl` text NOT NULL,
  `receive_notification` tinyint(1) NOT NULL DEFAULT 0,
  `user_role` text NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `email`, `password`, `firstName`, `lastName`, `city`, `bio`, `birthDate`, `gender`, `imgUrl`, `receive_notification`, `user_role`, `created_date`, `modified_date`) VALUES
(1, 'vatsal@gmail.com', 'test', 'Vatsal', 'Chauhan', 'Montreal', 'Hi,\r\nPassionate to code and play sports.\r\nLearning to play life by ears', '1995-01-12', 'Male', './images/user_images/vatsal@gmail.com_malepic1.jpg', 1, 'premium', '2020-10-04 23:11:39', '0000-00-00 00:00:00'),
(2, 'meet@gmail.com', 'test', 'Meet', 'Patel', 'Montreal', 'I am meet\r\nPleasure to meet you', '1998-05-05', 'Male', './images/user_images/meet@gmail.com_malepic3.jpg', 1, 'premium', '2020-10-04 23:12:37', '0000-00-00 00:00:00'),
(3, 'justin@gmail.com', 'test', 'Justin', 'Matthew', 'Montreal', '', '1990-02-05', 'Male', './images/user_images/justin@gmail.com_malepic2.jpg', 0, 'regular', '2020-10-04 23:13:37', NULL),
(4, 'janki@gmail.com', 'test', 'Janki', 'Jariwala', 'Quebec', '', '1996-12-13', 'Female', './images/user_images/janki@gmail.com_femalepic1.jpg', 0, 'regular', '2020-10-04 23:14:25', NULL),
(5, 'mariadb@gmail.com', 'test', 'Maria', 'DB', 'Hamilton', '', '1995-09-28', 'Female', './images/user_images/mariadb@gmail.com_femalepic2.jpg', 0, 'regular', '2020-10-04 23:15:45', NULL),
(6, 'angelpriya@gmail.com', 'test', 'Angel', 'Priya', 'Windsor', '', '1997-05-10', 'Female', './images/user_images/angelpriya@gmail.com_femalepic3.jpg', 0, 'regular', '2020-10-04 23:16:35', NULL),
(9, 'testing@gmail.com', 'test', 'Test', 'User', 'Calgary', 'Hi,\r\nMy name is Test User\r\nI love dating', '1996-01-28', 'Male', 'images/user_images/testing@gmail.com_Screenshot 2024-12-28 at 09.26.41.png', 1, 'premium', '2020-10-05 01:44:24', '2024-12-27 19:08:53'),
(10, 'taks@taks.com', 'taks', 'prajwol', 'neupane', 'KTM,Gonagubu', 'IM XaPRi Prajwol Here find Love Cuz IM lonelyyy.', '2006-10-09', 'female', './images/user_images/taks@taks.com_Screenshot 2024-12-19 at 18.25.10.png', 1, 'regular', '2024-12-19 18:25:19', '2025-04-30 18:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_favourite_list`
--

CREATE TABLE `user_favourite_list` (
  `id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `user_id_favourited` int(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_favourite_list`
--

INSERT INTO `user_favourite_list` (`id`, `user_id`, `user_id_favourited`, `dateCreated`) VALUES
(9, 1, 2, '2020-10-05 00:43:56'),
(10, 1, 5, '2020-10-05 00:43:59'),
(11, 1, 6, '2020-10-05 00:44:01'),
(12, 2, 4, '2020-10-05 00:54:09'),
(20, 9, 2, '2020-10-05 01:48:37'),
(21, 1, 4, '2024-12-19 18:16:34'),
(22, 1, 5, '2024-12-19 18:16:45'),
(23, 1, 4, '2024-12-19 18:17:36'),
(24, 1, 4, '2024-12-19 18:18:12'),
(25, 1, 4, '2024-12-19 18:18:35'),
(26, 1, 4, '2024-12-19 18:19:17'),
(27, 1, 5, '2024-12-19 18:19:19'),
(28, 1, 6, '2024-12-19 18:19:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Liked_list`
--
ALTER TABLE `Liked_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MSG_FROM_USER` (`msg_from_user_id`),
  ADD KEY `MSG_TO_USER` (`msg_to_user_id`);

--
-- Indexes for table `Notifications`
--
ALTER TABLE `Notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_favourite_list`
--
ALTER TABLE `user_favourite_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_favourite` (`user_id`),
  ADD KEY `user_id_to_favourite` (`user_id_favourited`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Liked_list`
--
ALTER TABLE `Liked_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `Notifications`
--
ALTER TABLE `Notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_favourite_list`
--
ALTER TABLE `user_favourite_list`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `MSG_FROM_USER` FOREIGN KEY (`msg_from_user_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `MSG_TO_USER` FOREIGN KEY (`msg_to_user_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_favourite_list`
--
ALTER TABLE `user_favourite_list`
  ADD CONSTRAINT `user_id_favourite` FOREIGN KEY (`user_id`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id_to_favourite` FOREIGN KEY (`user_id_favourited`) REFERENCES `profile` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `dvwa`
--
CREATE DATABASE IF NOT EXISTS `dvwa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dvwa`;

-- --------------------------------------------------------

--
-- Table structure for table `access_log`
--

CREATE TABLE `access_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guestbook`
--

CREATE TABLE `guestbook` (
  `comment_id` smallint(5) UNSIGNED NOT NULL,
  `comment` varchar(300) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guestbook`
--

INSERT INTO `guestbook` (`comment_id`, `comment`, `name`) VALUES
(1, 'This is a test comment.', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `security_log`
--

CREATE TABLE `security_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `timestamp` datetime NOT NULL,
  `ip_address` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(6) NOT NULL,
  `first_name` varchar(15) DEFAULT NULL,
  `last_name` varchar(15) DEFAULT NULL,
  `user` varchar(15) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `avatar` varchar(70) DEFAULT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `failed_login` int(3) DEFAULT NULL,
  `role` varchar(20) DEFAULT 'user',
  `account_enabled` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `user`, `password`, `avatar`, `last_login`, `failed_login`, `role`, `account_enabled`) VALUES
(1, 'admin', 'admin', 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', '/dvwa/hackable/users/admin.jpg', '2025-10-16 02:47:57', 0, 'admin', 1),
(2, 'Gordon', 'Brown', 'gordonb', 'e99a18c428cb38d5f260853678922e03', '/dvwa/hackable/users/gordonb.jpg', '2025-10-16 02:47:57', 0, 'user', 1),
(3, 'Hack', 'Me', '1337', '8d3533d75ae2c3966d7e0d4fcc69216b', '/dvwa/hackable/users/1337.jpg', '2025-10-16 02:47:57', 0, 'user', 1),
(4, 'Pablo', 'Picasso', 'pablo', '0d107d09f5bbe40cade3de5c71e9e9b7', '/dvwa/hackable/users/pablo.jpg', '2025-10-16 02:47:57', 0, 'user', 1),
(5, 'Bob', 'Smith', 'smithy', '5f4dcc3b5aa765d61d8327deb882cf99', '/dvwa/hackable/users/smithy.jpg', '2025-10-16 02:47:57', 0, 'user', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_log`
--
ALTER TABLE `access_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `target_id` (`target_id`);

--
-- Indexes for table `guestbook`
--
ALTER TABLE `guestbook`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `security_log`
--
ALTER TABLE `security_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `target_id` (`target_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_log`
--
ALTER TABLE `access_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guestbook`
--
ALTER TABLE `guestbook`
  MODIFY `comment_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `security_log`
--
ALTER TABLE `security_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `access_log`
--
ALTER TABLE `access_log`
  ADD CONSTRAINT `access_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `access_log_ibfk_2` FOREIGN KEY (`target_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `security_log`
--
ALTER TABLE `security_log`
  ADD CONSTRAINT `security_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `security_log_ibfk_2` FOREIGN KEY (`target_id`) REFERENCES `users` (`user_id`);
--
-- Database: `exam`
--
CREATE DATABASE IF NOT EXISTS `exam` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `exam`;

-- --------------------------------------------------------

--
-- Table structure for table `test1`
--

CREATE TABLE `test1` (
  `id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `addr` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `test1`
--

INSERT INTO `test1` (`id`, `name`, `addr`) VALUES
(1, 'John Doe', '123 Elm St'),
(2, 'Jane Smith', '456 Oak Rd'),
(3, 'Alice Johnson', '789 Pine Ave');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `test1`
--
ALTER TABLE `test1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `test1`
--
ALTER TABLE `test1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `fileshare`
--
CREATE DATABASE IF NOT EXISTS `fileshare` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fileshare`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `filepath` varchar(255) DEFAULT NULL,
  `filesize` bigint(20) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `upload_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `expiry_date` date DEFAULT NULL,
  `downloads` int(11) DEFAULT 0,
  `group_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `user_id`, `filename`, `filepath`, `filesize`, `token`, `upload_time`, `expiry_date`, `downloads`, `group_token`) VALUES
(1, 1, '2 [vocals].mp3', 'uploads/4ad512ec10_2 [vocals].mp3', 3512653, '4ad512ec10', '2025-05-16 10:16:12', '2025-05-23', 0, NULL),
(2, 1, '2 [vocals].mp3', 'uploads/c7bc3c485b_2 [vocals].mp3', 3512653, 'c7bc3c485b', '2025-05-16 10:16:47', '2025-05-23', 2, NULL),
(3, 1, '2 [vocals].mp3', 'uploads/9b6f290ce0_2 [vocals].mp3', 3512653, '9b6f290ce0', '2025-05-16 10:18:03', '2025-05-23', 3, NULL),
(4, 1, '910862817.png', 'uploads/281ef4c82f_910862817.png', 74338, '281ef4c82f', '2025-05-16 10:25:10', '2025-05-23', 1, NULL),
(5, NULL, '910862817.png', 'uploads/6fe9521f7d_910862817.png', 74338, '6fe9521f7d', '2025-05-16 10:41:45', '2025-05-23', 0, NULL),
(6, NULL, '910862817.png', 'uploads/4fc0aff4a1_910862817.png', 74338, '4fc0aff4a1', '2025-05-16 10:42:08', '2025-05-23', 0, NULL),
(7, NULL, 'download.png', 'uploads/c73f5e75e4_download.png', 13229625, 'c73f5e75e4', '2025-05-16 10:42:22', '2025-05-23', 0, NULL),
(8, NULL, 'download.png', 'uploads/d4f88d6fb4_download.png', 13229625, 'd4f88d6fb4', '2025-05-16 10:43:47', '2025-05-23', 0, NULL),
(9, NULL, 'download.png', 'uploads/383a09e4a0_download.png', 13229625, '383a09e4a0', '2025-05-16 10:44:20', '2025-05-23', 0, NULL),
(10, NULL, '2.mp3', 'uploads/3cd5ac2819_2.mp3', 2748512, '3cd5ac2819', '2025-05-16 10:44:29', '2025-05-23', 0, NULL),
(11, NULL, '2.mp3', 'uploads/5dff391990_2.mp3', 2748512, '5dff391990', '2025-05-16 10:45:34', '2025-05-23', 0, NULL),
(12, NULL, '2.mp3', 'uploads/3a36d65c80_2.mp3', 2748512, '3a36d65c80', '2025-05-16 10:45:39', '2025-05-23', 0, NULL),
(13, NULL, '2.mp3', 'uploads/77b2a8c61e_2.mp3', 2748512, '77b2a8c61e', '2025-05-16 10:46:46', '2025-05-23', 0, NULL),
(14, NULL, 'c7bc3c485b_2 [vocals].mp3', 'uploads/d2a9b9f0f4_c7bc3c485b_2 [vocals].mp3', 3512653, 'd2a9b9f0f4', '2025-05-16 10:47:15', '2025-05-23', 0, NULL),
(15, NULL, 'c7bc3c485b_2 [vocals].mp3', 'uploads/d94f31ca64_c7bc3c485b_2 [vocals].mp3', 3512653, 'd94f31ca64', '2025-05-16 10:48:22', '2025-05-23', 0, NULL),
(16, NULL, '1.mp3', 'uploads/dedbde73a7_1.mp3', 2810344, 'dedbde73a7', '2025-05-16 10:53:13', '2025-05-23', 0, NULL),
(17, NULL, '1.mp3', 'uploads/260522feba_1.mp3', 2810344, '260522feba', '2025-05-16 10:58:27', '2025-05-23', 1, NULL),
(18, NULL, '2 [music].mp3', 'uploads/015c3f73c0_2 [music].mp3', 3767009, '015c3f73c0', '2025-05-16 10:58:51', '2025-05-23', 0, NULL),
(19, NULL, '', 'uploads/ecd9c1f4fc_', 0, 'ecd9c1f4fc', '2025-05-16 11:22:02', '2025-05-23', 0, NULL),
(20, NULL, '9b6f290ce0_2 [vocals] (1).mp3', 'uploads/3aba57949c_9b6f290ce0_2 [vocals] (1).mp3', 3512653, '3aba57949c', '2025-05-16 11:33:37', '2025-05-23', 0, NULL),
(21, NULL, '9b6f290ce0_2 [vocals] (2).mp3', 'uploads/43a25ef20a_9b6f290ce0_2 [vocals] (2).mp3', 3512653, '43a25ef20a', '2025-05-16 11:33:37', '2025-05-23', 0, NULL),
(22, NULL, '9b6f290ce0_2 [vocals].mp3', 'uploads/6cb1e46560_9b6f290ce0_2 [vocals].mp3', 3512653, '6cb1e46560', '2025-05-16 11:33:37', '2025-05-23', 0, NULL),
(23, NULL, '281ef4c82f_910862817.png', 'uploads/a1f7b94fab_281ef4c82f_910862817.png', 74338, 'a1f7b94fab', '2025-05-16 11:33:37', '2025-05-23', 0, NULL),
(24, NULL, '260522feba_1.mp3', 'uploads/c0e2355202_260522feba_1.mp3', 2810344, 'c0e2355202', '2025-05-16 11:33:37', '2025-05-23', 0, NULL),
(25, NULL, 'c7bc3c485b_2 [vocals] (1).mp3', 'uploads/89c7209d80_c7bc3c485b_2 [vocals] (1).mp3', 3512653, '89c7209d80', '2025-05-16 11:33:37', '2025-05-23', 0, NULL),
(26, NULL, 'c7bc3c485b_2 [vocals].mp3', 'uploads/be04b6f08d_c7bc3c485b_2 [vocals].mp3', 3512653, 'be04b6f08d', '2025-05-16 11:33:37', '2025-05-23', 0, NULL),
(27, NULL, '1.mp3', 'uploads/69652cf1b4_1.mp3', 2810344, '69652cf1b4', '2025-05-16 11:33:37', '2025-05-23', 0, NULL),
(28, NULL, '2 [music].mp3', 'uploads/e801964723_2 [music].mp3', 3767009, 'e801964723', '2025-05-16 11:33:37', '2025-05-23', 0, NULL),
(29, NULL, '9b6f290ce0_2 [vocals] (1).mp3', 'uploads/1aee453b9c_9b6f290ce0_2 [vocals] (1).mp3', 3512653, '1aee453b9c', '2025-05-16 12:23:52', '2025-05-23', 1, NULL),
(30, NULL, '9b6f290ce0_2 [vocals] (2).mp3', 'uploads/1930a81137_9b6f290ce0_2 [vocals] (2).mp3', 3512653, '1930a81137', '2025-05-16 12:23:52', '2025-05-23', 1, NULL),
(31, NULL, '9b6f290ce0_2 [vocals].mp3', 'uploads/873164e2ad_9b6f290ce0_2 [vocals].mp3', 3512653, '873164e2ad', '2025-05-16 12:23:52', '2025-05-23', 0, NULL),
(32, 6, 'Stremio+4.4.168.dmg', 'uploads/c8fde505db_Stremio+4.4.168.dmg', 212570149, 'c8fde505db', '2025-05-16 12:34:35', '2025-05-23', 1, NULL),
(33, NULL, 'kp.jpg', 'uploads/e68a423d39_kp.jpg', 86652, 'e68a423d39', '2025-05-16 12:42:27', '2025-05-23', 0, NULL),
(34, NULL, 'madea.png', 'uploads/c835e4ae3a_madea.png', 142524, 'c835e4ae3a', '2025-05-16 12:42:27', '2025-05-23', 0, NULL),
(35, NULL, 'mfa.jpg', 'uploads/647ce8d2f4_mfa.jpg', 342174, '647ce8d2f4', '2025-05-16 12:42:27', '2025-05-23', 0, NULL),
(36, NULL, 'movie.png', 'uploads/97cf1e2543_movie.png', 3313447, '97cf1e2543', '2025-05-16 12:42:27', '2025-05-23', 0, NULL),
(37, NULL, 'NEB-Class-12-Account-Model-Question-Set-B.pdf', 'uploads/1a58c8cf72_NEB-Class-12-Account-Model-Question-Set-B.pdf', 1275607, '1a58c8cf72', '2025-05-16 12:42:27', '2025-05-23', 0, NULL),
(38, NULL, 'prj.jpeg', 'uploads/bd21ab8c19_prj.jpeg', 7934, 'bd21ab8c19', '2025-05-16 12:42:27', '2025-05-23', 0, NULL),
(39, NULL, 'REPORT.pdf', 'uploads/23e072b2b4_REPORT.pdf', 140264, '23e072b2b4', '2025-05-16 12:42:27', '2025-05-23', 0, NULL),
(40, NULL, 'resized-image-Promo.jpeg', 'uploads/13a996f53a_resized-image-Promo.jpeg', 136625, '13a996f53a', '2025-05-16 12:42:27', '2025-05-23', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'jk', 'jk@jk.com', '$2y$10$PUqadvMdks47OvfcQRX1W.6NCuGbeESV4vthYu0fjCm9GwauLH05y', '2025-05-16 10:15:59'),
(2, 'minta', 'mm@mm.com', '$2y$10$iYtlW7FTJ0v/YlQb.BRR9OXFSb8XKKTtK5Ev17ZKoNpIpBEJxYMNq', '2025-05-16 11:02:17'),
(6, 'gay', 'gay@gay.com', '$2y$10$5Unm06egjTwp5maPT2lEe.PoKF/6PH5d7EDserM3SYKkMDN.WtSxW', '2025-05-16 12:26:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `heritage_tree`
--
CREATE DATABASE IF NOT EXISTS `heritage_tree` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `heritage_tree`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password_hash`, `full_name`, `email`, `created_at`, `last_login`) VALUES
(1, 'admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Administrator', 'admin@heritagetree.com', '2025-08-13 16:47:13', '2025-08-17 13:35:38');

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `date_of_death` date DEFAULT NULL,
  `place_of_death` varchar(255) DEFAULT NULL,
  `photo_path` varchar(255) DEFAULT NULL,
  `biography` text DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `first_name`, `last_name`, `middle_name`, `gender`, `date_of_birth`, `place_of_birth`, `date_of_death`, `place_of_death`, `photo_path`, `biography`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Jhapendra', 'kandel', '', 'male', '2001-04-01', 'Kathmadu', '3000-01-01', 'Japan', '689ccad30b046.png', 'Noting just testing', 1, '2025-08-13 17:26:43', '2025-08-14 14:37:10'),
(2, 'jr JK girl', 'kandel', '', 'female', '0111-11-11', 'Kathmadu', '0032-12-11', '', '689df51206e43.png', 'girl test', 1, '2025-08-14 14:39:14', '2025-08-14 14:39:14'),
(3, 'lust', 'dada', 'test', 'other', '0033-04-13', 'Kathmadu', '0042-03-02', 'Japan', '68a1dd7ef2e53.png', '', 1, '2025-08-17 13:47:42', '2025-08-17 13:47:42'),
(4, 'child 3', 'tefter', '', 'female', '5678-03-04', '', '0423-03-14', 'Japan', NULL, '', 1, '2025-08-17 14:01:43', '2025-08-17 14:01:43'),
(5, 'Grace', 'Taylor', 'Elizabeth', 'female', '1982-10-25', 'Sydney', '2075-12-15', 'Melbourne', NULL, 'Grace is a renowned environmental activist and author.', 1, '2025-08-17 14:51:50', '2025-08-17 14:51:50'),
(6, 'Alice', 'Smith', 'Marie', 'female', '1985-03-21', 'Paris', '2065-11-11', 'London', NULL, 'Alice is a scientist and writer.', 1, '2025-08-17 14:51:05', '2025-08-17 14:51:05'),
(7, 'Bob', 'Johnson', 'Lee', 'male', '1992-08-12', 'Los Angeles', '2070-01-05', 'Chicago', NULL, 'Bob is a software developer.', 1, '2025-08-17 14:51:05', '2025-08-17 14:51:05'),
(8, 'Charlie', 'Brown', 'Xavier', 'male', '1978-11-30', 'Boston', '2045-06-09', 'Miami', NULL, 'Charlie is an entrepreneur and philanthropist.', 1, '2025-08-17 14:51:05', '2025-08-17 14:51:05'),
(9, 'Diana', 'Wilson', 'Jane', 'female', '1999-02-17', 'Toronto', '2055-09-23', 'Vancouver', NULL, 'Diana is a digital artist and musician.', 1, '2025-08-17 14:51:05', '2025-08-17 14:51:05'),
(10, 'Eve', 'Martinez', 'Sophia', 'female', '2000-06-05', 'Madrid', '2060-04-10', 'Barcelona', NULL, 'Eve is a fashion designer and photographer.', 1, '2025-08-17 14:51:05', '2025-08-17 14:51:05');

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--

CREATE TABLE `relationships` (
  `id` int(11) NOT NULL,
  `person1_id` int(11) NOT NULL,
  `person2_id` int(11) NOT NULL,
  `relationship_type` enum('parent','child','spouse','sibling','grandparent','grandchild') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `relationships`
--

INSERT INTO `relationships` (`id`, `person1_id`, `person2_id`, `relationship_type`, `created_at`) VALUES
(3, 1, 2, 'parent', '2025-08-14 14:59:50'),
(4, 2, 1, 'child', '2025-08-14 14:59:50'),
(5, 3, 1, 'child', '2025-08-17 13:48:46'),
(6, 1, 3, 'parent', '2025-08-17 13:48:46'),
(11, 4, 1, 'child', '2025-08-17 14:13:23'),
(12, 1, 4, 'parent', '2025-08-17 14:13:23'),
(16, 8, 3, 'child', '2025-08-17 14:58:53'),
(17, 3, 8, 'parent', '2025-08-17 14:58:53'),
(18, 7, 9, 'parent', '2025-08-17 14:59:06'),
(19, 9, 7, 'child', '2025-08-17 14:59:06'),
(20, 7, 3, 'child', '2025-08-17 14:59:14'),
(21, 3, 7, 'parent', '2025-08-17 14:59:14'),
(22, 9, 10, 'parent', '2025-08-17 14:59:38'),
(23, 10, 9, 'child', '2025-08-17 14:59:38'),
(24, 10, 5, 'parent', '2025-08-17 14:59:47'),
(25, 5, 10, 'child', '2025-08-17 14:59:47'),
(26, 5, 6, 'parent', '2025-08-17 15:00:00'),
(27, 6, 5, 'child', '2025-08-17 15:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_relationship` (`person1_id`,`person2_id`,`relationship_type`),
  ADD KEY `idx_relationships_person1` (`person1_id`),
  ADD KEY `idx_relationships_person2` (`person2_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `relationships`
--
ALTER TABLE `relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `persons`
--
ALTER TABLE `persons`
  ADD CONSTRAINT `persons_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `admins` (`id`);

--
-- Constraints for table `relationships`
--
ALTER TABLE `relationships`
  ADD CONSTRAINT `relationships_ibfk_1` FOREIGN KEY (`person1_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `relationships_ibfk_2` FOREIGN KEY (`person2_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE;
--
-- Database: `Jace`
--
CREATE DATABASE IF NOT EXISTS `Jace` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `Jace`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `user_name` varchar(38) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(500) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `user_id`, `user_name`, `email`, `password`, `date`) VALUES
(32432, 32432, 'jhapendra kandel', 'jhapendrakandel.mac@gmail.com', '$2y$10$Wznvah7UvgPrvlNf.r0M4u2VJXebWqwpHKNJcBO9QL1vbjGNEYgfC', '2024-07-06 13:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `tweet_id` int(11) NOT NULL,
  `comment_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `tweet_id`, `comment_text`, `created_at`) VALUES
(1, 16379580, 1, 'Anyone ! ?', '2024-06-05 15:03:50'),
(2, 16379580, 1, 'IG no-one???!!', '2024-06-05 15:04:09'),
(3, 6891667059194261108, 1, 'HELOO JK ! WHATS UP?', '2024-06-05 15:09:01'),
(4, 6891667059194261108, 2, 'OK IM DONE!', '2024-06-05 15:09:11'),
(5, 6891667059194261108, 3, 'NO 1 YOOO?', '2024-06-05 15:10:15'),
(6, 16379580, 3, 'IM here dude', '2024-06-05 15:11:59'),
(7, 16379580, 4, 'only me and u ', '2024-06-05 15:12:09'),
(8, 755466165131383, 5, 'Anyone ! ?', '2024-06-06 13:39:36'),
(9, 6891667059194261108, 5, 'hell no', '2024-06-06 13:40:07'),
(10, 16379580, 5, 'hello welcome', '2024-06-06 17:31:13'),
(27, 16379580, 32, 'hellya', '2024-11-24 08:08:37'),
(28, 16379580, 32, 'hellya', '2024-11-24 08:08:38'),
(29, 16379580, 32, 'hellya', '2024-11-24 08:08:38'),
(30, 16379580, 32, 'hellya', '2024-11-24 08:08:38'),
(31, 16379580, 32, 'hellya', '2024-11-24 08:09:14'),
(32, 16379580, 32, 'hellya', '2024-11-24 08:09:15'),
(33, 16379580, 32, 'hellya', '2024-11-24 08:09:15'),
(34, 16379580, 32, 'hellya', '2024-11-24 08:09:15'),
(35, 16379580, 32, 'hellya', '2024-11-24 08:09:15'),
(36, 16379580, 32, 'hellya', '2024-11-24 08:09:16'),
(38, 18885236249145, 34, 'hello', '2024-12-03 07:03:41');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `message` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `date`, `name`, `email`, `subject`, `message`) VALUES
(1, '2024-06-05 14:53:38', 'Jhapendra kandel', 'jhapendrakandel.mac@gmail.com', 'Hello im having problem', 'dwd');

-- --------------------------------------------------------

--
-- Table structure for table `developers`
--

CREATE TABLE `developers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `skills` varchar(255) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `linkedin` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `developers`
--

INSERT INTO `developers` (`id`, `name`, `role`, `skills`, `rating`, `email`, `facebook`, `twitter`, `linkedin`, `image`) VALUES
(1, 'Jhapendra Kandel', 'Web Developer', 'Web Development, App Development, Graphics Design, UI Development', 5, 'ukikandel@gmail.com', 'https://facebook.com/jhapendra', 'https://twitter.com/jhapendra', 'https://linkedin.com/in/jhapendra', 'uki.jpeg'),
(2, 'Uki Kandel', 'Web Developer', 'Web Development, App Development, Graphics Design, UI Development', 5, 'ukikandel@gmail.com', 'https://facebook.com/uki', 'https://twitter.com/uki', 'https://linkedin.com/in/uki', 'uki.jpeg'),
(3, '?????\n????', '????? ?????', '??? ??????, ????? ??????, ????? ?????, ????? ?????', 5, '?????@?????.com', 'https://facebook.com/?????', 'https://twitter.com/?????', 'https://linkedin.com/in/?????', 'avt.webp'),
(8, '?????? ?????', '????? ?????', '??? ??????, ????? ??????, ????? ?????, ????? ?????', 5, '?????@?????.com', 'https://facebook.com/?????', 'https://twitter.com/?????', 'https://linkedin.com/in/?????', 'avt.webp');

-- --------------------------------------------------------

--
-- Table structure for table `failed_logins`
--

CREATE TABLE `failed_logins` (
  `id` bigint(20) NOT NULL,
  `user_name` varchar(38) NOT NULL,
  `password` varchar(500) NOT NULL,
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `attempt_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `tweet_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `tweet_id`, `created_at`) VALUES
(2, 6891667059194261108, 1, '2024-06-05 15:08:51'),
(3, 6891667059194261108, 2, '2024-06-05 15:09:12'),
(4, 6891667059194261108, 3, '2024-06-05 15:10:07'),
(10, 16379580, 2, '2024-06-06 04:57:45'),
(13, 6891667059194261108, 5, '2024-06-06 13:40:02'),
(38, 16379580, 3, '2024-10-20 08:43:32'),
(39, 16379580, 4, '2024-10-20 08:47:35'),
(43, 16379580, 5, '2024-10-20 08:59:44'),
(44, 16379580, 1, '2024-10-20 09:03:07'),
(49, 16379580, 29, '2024-11-24 07:58:32'),
(51, 18885236249145, 34, '2024-12-03 07:03:34'),
(52, 18885236249145, 32, '2024-12-03 07:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `login_tokens`
--

CREATE TABLE `login_tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(64) NOT NULL,
  `created_at` datetime NOT NULL,
  `used` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_tokens`
--

INSERT INTO `login_tokens` (`id`, `token`, `created_at`, `used`) VALUES
(2, '5e3e4452b8d5bb18aa7a0034c6d4b816d64f2cdd35b2cefd15386026c3ccbe28', '2024-08-09 13:43:52', 1),
(3, 'e5e92836382a1c04675e61179de8dc2a354c384c5fd50b0a2aaaefab702ee043', '2024-08-09 13:44:15', 1),
(4, 'f839cb51287f0d888b9b0b5cf001b8c2', '2025-05-26 12:06:05', 0),
(5, 'b20df4f1d0bb7e62d523f7f6a737a5ba', '2025-05-26 12:06:23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `traffic`
--

CREATE TABLE `traffic` (
  `id` bigint(20) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `user_agent` text NOT NULL,
  `visit_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `traffic`
--

INSERT INTO `traffic` (`id`, `ip_address`, `user_agent`, `visit_time`) VALUES
(1, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-04 10:34:22'),
(2, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-04 15:53:58'),
(3, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-05 15:49:58'),
(4, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-06 02:23:39'),
(5, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-06 04:40:39'),
(6, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-06 04:41:22'),
(7, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-06 13:23:14'),
(8, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-08 13:30:21'),
(9, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-08 13:32:10'),
(10, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-08 13:35:33'),
(11, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-09 06:54:20'),
(12, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-09 07:31:42'),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', '2024-07-09 07:51:10'),
(14, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-09 08:28:34'),
(15, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-09 12:48:05'),
(16, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-10 07:14:57'),
(17, '192.168.1.68', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-10 07:29:43'),
(18, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 08:20:14'),
(19, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-11 15:27:37'),
(20, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 07:14:22'),
(21, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 07:45:57'),
(22, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 07:45:57'),
(23, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 07:52:59'),
(24, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 07:52:59'),
(25, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 10:38:43'),
(26, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 10:38:43'),
(27, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 10:44:59'),
(28, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-12 13:22:43'),
(29, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 03:23:43'),
(30, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 06:51:22'),
(31, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 07:53:59'),
(32, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 10:21:56'),
(33, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:15:51'),
(34, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:20:30'),
(35, '127.0.0.1', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-07-13 13:30:23'),
(36, '127.0.0.1', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-07-13 13:30:24'),
(37, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:30:45'),
(38, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-13 13:32:52'),
(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', '2024-07-13 13:51:33'),
(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', '2024-07-13 13:53:39'),
(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', '2024-07-13 13:54:00'),
(42, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-17 07:15:43'),
(43, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-17 07:20:36'),
(44, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-17 07:21:52'),
(45, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-18 15:28:21'),
(46, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-18 15:38:33'),
(47, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6.1 Safari/605.1.15', '2024-07-18 15:39:32'),
(48, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6.1 Safari/605.1.15', '2024-07-18 15:39:34'),
(49, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6.1 Safari/605.1.15', '2024-07-18 15:39:34'),
(50, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko)', '2024-07-18 15:40:11'),
(51, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko)', '2024-07-18 15:40:11'),
(52, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', '2024-07-18 15:40:11'),
(53, '::1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.4 Mobile/15E148 Safari/604.1', '2024-07-18 15:40:11'),
(54, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-19 10:04:23'),
(55, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-20 08:35:52'),
(56, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-20 09:26:31'),
(57, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-20 13:05:52'),
(58, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-20 13:15:27'),
(59, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-20 13:16:04'),
(60, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-20 13:21:20'),
(61, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-20 13:39:32'),
(62, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-20 14:00:09'),
(63, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-21 02:30:42'),
(64, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-21 02:45:11'),
(65, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-21 02:46:10'),
(66, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-21 02:46:47'),
(67, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-21 03:28:27'),
(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-21 03:39:06'),
(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-21 03:43:39'),
(70, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-21 03:58:20'),
(71, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-21 05:33:47'),
(72, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-22 16:13:01'),
(73, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-22 16:15:27'),
(74, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-22 16:21:14'),
(75, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-25 07:31:17'),
(76, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-25 13:52:50'),
(77, '192.168.1.70', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-25 13:55:02'),
(78, '192.168.1.70', 'Mozilla/5.0 (Linux; Android 15; sdk_gphone64_x86_64 Build/AP31.240617.003; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/124.0.6367.219 Mobile Safari/537.36', '2024-07-25 13:58:57'),
(79, '192.168.1.70', 'Mozilla/5.0 (Linux; Android 15; sdk_gphone64_x86_64 Build/AP31.240617.003; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/124.0.6367.219 Mobile Safari/537.36', '2024-07-26 08:22:51'),
(80, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-07-30 14:30:49'),
(81, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-07-31 07:56:29'),
(82, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 08:06:03'),
(83, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 08:55:01'),
(84, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 08:56:44'),
(85, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 08:57:07'),
(86, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:01:08'),
(87, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:01:19'),
(88, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:10:04'),
(89, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:10:59'),
(90, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:11:30'),
(91, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:11:39'),
(92, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:12:16'),
(93, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:17:13'),
(94, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:18:21'),
(95, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:21:48'),
(96, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:21:52'),
(97, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:21:59'),
(98, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:24:15'),
(99, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:25:59'),
(100, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:27:57'),
(101, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:32:37'),
(102, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '2024-08-01 09:38:11'),
(103, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:39:38'),
(104, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:46:38'),
(105, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:48:12'),
(106, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:48:20'),
(107, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '2024-08-01 09:49:38'),
(108, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '2024-08-01 09:50:24'),
(109, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:51:01'),
(110, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '2024-08-01 09:51:31'),
(111, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:51:52'),
(112, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:56:24'),
(113, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:56:30'),
(114, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:56:38'),
(115, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '2024-08-01 09:56:58'),
(116, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:57:03'),
(117, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 09:59:52'),
(118, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-01 10:18:19'),
(119, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-02 07:26:12'),
(120, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-02 07:27:41'),
(121, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-02 07:29:05'),
(122, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-02 07:42:43'),
(123, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-02 07:44:35'),
(124, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-02 07:54:09'),
(125, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-02 07:56:27'),
(126, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-02 08:06:55'),
(127, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-02 08:16:23'),
(128, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-02 08:16:27'),
(129, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-02 16:27:18'),
(130, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 01:47:08'),
(131, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 01:47:47'),
(132, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 01:48:00'),
(133, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 01:48:49'),
(134, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 01:58:37'),
(135, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:01:35'),
(136, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:01:40'),
(137, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:02:43'),
(138, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:08:09'),
(139, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:18:18'),
(140, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:18:20'),
(141, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:18:22'),
(142, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:18:45'),
(143, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:19:01'),
(144, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:19:25'),
(145, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:19:59'),
(146, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:20:11'),
(147, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:20:22'),
(148, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:20:34'),
(149, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:20:41'),
(150, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:21:46'),
(151, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:23:21'),
(152, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:27:27'),
(153, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:28:04'),
(154, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', '2024-08-03 02:28:58'),
(155, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:29:03'),
(156, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:31:49'),
(157, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:32:19'),
(158, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:34:37'),
(159, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:34:42'),
(160, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:36:20'),
(161, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:36:32'),
(162, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:37:02'),
(163, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:37:36'),
(164, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:39:40'),
(165, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:39:50'),
(166, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:40:04'),
(167, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:43:50'),
(168, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:45:07'),
(169, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 02:45:36'),
(170, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-03 05:02:31'),
(171, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-09 07:56:23'),
(172, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-09 07:56:49'),
(173, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-09 07:58:52'),
(174, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-09 07:59:15'),
(175, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-09 08:30:58'),
(176, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-10 05:54:35'),
(177, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-11 06:43:39'),
(178, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-11 07:21:04'),
(179, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-11 07:24:48'),
(180, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-11 08:21:59'),
(181, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-11 08:23:11'),
(182, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-11 08:23:37'),
(183, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-11 08:59:20'),
(184, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-11 11:34:16'),
(185, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-11 11:34:35'),
(186, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-12 08:02:09'),
(187, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-12 08:19:04'),
(188, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-12 13:15:51'),
(189, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-13 07:45:55'),
(190, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-13 13:28:01'),
(191, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-15 08:41:58'),
(192, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-16 08:56:45'),
(193, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-22 08:24:28'),
(194, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', '2024-08-22 08:25:56'),
(195, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-01 16:20:14'),
(196, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-22 07:52:52'),
(197, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', '2024-09-22 07:57:10'),
(198, '192.168.1.66', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '2024-10-06 11:44:14'),
(199, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', '2024-10-12 14:23:16'),
(200, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '2024-10-20 08:25:56'),
(201, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '2024-10-20 09:05:48'),
(202, '192.168.254.9', 'Mozilla/5.0 (Linux; Android 15; sdk_gphone64_x86_64 Build/AP31.240617.003; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/124.0.6367.219 Mobile Safari/537.36', '2024-10-22 04:30:34'),
(203, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '2024-10-23 05:46:20'),
(204, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '2024-10-23 05:51:45'),
(205, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '2024-10-23 05:52:24'),
(206, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '2024-10-23 05:52:49'),
(207, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '2024-10-23 06:39:54'),
(208, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '2024-10-23 07:42:28'),
(209, '192.168.254.6', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '2024-10-25 02:35:50'),
(210, '192.168.254.4', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '2024-10-25 03:07:51'),
(211, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '2024-10-25 07:06:32'),
(212, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '2024-10-25 15:30:20'),
(213, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '2024-10-25 15:31:23'),
(214, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '2024-11-06 13:41:49'),
(215, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', '2024-11-06 13:55:26'),
(216, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', '2024-11-06 14:29:12'),
(217, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-11-23 15:18:07'),
(218, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2024-11-24 07:44:49'),
(219, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-11-26 12:02:51'),
(220, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-01 13:33:01'),
(221, '127.0.0.1', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-12-01 13:33:46'),
(222, '127.0.0.1', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-12-01 13:33:47'),
(223, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-01 13:34:13'),
(224, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 14; 23053RN02A Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.39 Mobile Safari/537.36 Instagram 359.0.0.59.89 Android (34/14; 440dpi; 1080x2312; Xiaomi/Redmi; 23053RN02A; fire; mt6768; en_GB; 667597850)', '2024-12-01 13:34:43'),
(225, '127.0.0.1', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-12-01 13:39:38'),
(226, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-01 13:40:37'),
(227, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-01 13:40:56'),
(228, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-01 13:51:17'),
(229, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-02 10:10:45'),
(230, '127.0.0.1', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-12-02 10:14:56'),
(231, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-02 10:21:47'),
(232, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-02 10:21:58'),
(233, '127.0.0.1', 'Mozilla/5.0 (Linux; Android 14; 23053RN02A Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.39 Mobile Safari/537.36 Instagram 359.0.0.59.89 Android (34/14; 440dpi; 1080x2312; Xiaomi/Redmi; 23053RN02A; fire; mt6768; en_GB; 667597850)', '2024-12-02 10:22:09'),
(234, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-02 10:25:31'),
(235, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-02 10:41:51'),
(236, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-02 12:30:40'),
(237, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-02 12:34:17'),
(238, '::1', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '2024-12-02 12:34:25'),
(239, '::1', 'Mozilla/5.0 (Linux; Android 14; 23053RN02A Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.39 Mobile Safari/537.36 Instagram 359.0.0.59.89 Android (34/14; 440dpi; 1080x2312; Xiaomi/Redmi; 23053RN02A; fire; mt6768; en_GB; 667597850)', '2024-12-02 12:37:58'),
(240, '::1', 'Mozilla/5.0 (Linux; Android 14; 23053RN02A Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.39 Mobile Safari/537.36', '2024-12-02 12:38:09'),
(241, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-02 15:05:24'),
(242, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2024-12-02 15:07:51'),
(243, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-02 15:23:03'),
(244, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-02 15:33:44'),
(245, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-02 15:40:58'),
(246, '192.168.1.67', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-02 15:46:09'),
(247, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-03 06:25:58'),
(248, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-03 06:26:39'),
(249, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-03 09:30:19'),
(250, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-03 09:49:19'),
(251, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-03 10:36:54'),
(252, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-03 10:37:02'),
(253, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2024-12-03 10:46:00'),
(254, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2024-12-03 10:46:12'),
(255, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2024-12-03 10:50:53'),
(256, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2024-12-03 10:52:08'),
(257, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2024-12-03 10:53:39'),
(258, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2024-12-03 11:03:20'),
(259, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2024-12-03 11:08:09'),
(260, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-04 11:47:06'),
(261, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-13 08:20:21'),
(262, '::1', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2024-12-13 08:25:13'),
(263, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-13 09:05:41'),
(264, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-13 09:08:30'),
(265, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-13 09:17:31'),
(266, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-13 09:36:09'),
(267, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-13 09:37:46'),
(268, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-13 09:39:44'),
(269, '::1', 'Mozilla/5.0 (Linux; Android 14; 23053RN02A Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/131.0.6778.39 Mobile Safari/537.36 Instagram 360.0.0.52.192 Android (34/14; 440dpi; 1080x2312; Xiaomi/Redmi; 23053RN02A; fire; mt6768; en_GB; 672535953)', '2024-12-13 10:52:52'),
(270, '::1', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Mobile Safari/537.36', '2024-12-13 11:01:00'),
(271, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', '2024-12-18 14:37:24'),
(272, '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', '2025-05-26 06:21:05');

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `tweet_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `original_tweet_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `user_id`, `tweet_text`, `created_at`, `original_tweet_id`) VALUES
(1, 16379580, 'helli its me jKKK', '2024-06-05 15:03:23', NULL),
(2, 16379580, 'NOW LETS ADD ANOTHER ACCOUNT FOR TESTING OK!', '2024-06-05 15:04:33', NULL),
(3, 6891667059194261108, 'WHAT TO TWEET NOTHING IN MIND##-> GG ', '2024-06-05 15:09:27', NULL),
(4, 6891667059194261108, 'IM TRING TO THINK WHATS NEW?', '2024-06-05 15:10:04', NULL),
(5, 755466165131383, 'hellllloo', '2024-06-06 13:39:31', NULL),
(29, 16379580, 'ajajx testing here!!', '2024-11-24 07:46:38', NULL),
(30, 16379580, 'over rightter', '2024-11-24 07:47:03', NULL),
(31, 16379580, 'over right 2', '2024-11-24 07:47:07', NULL),
(32, 16379580, 'over right 3', '2024-11-24 07:47:13', NULL),
(34, 16379580, 'over right 3', '2024-11-24 08:09:31', 32),
(35, 18885236249145, 'heyy ', '2024-12-03 07:09:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_name` varchar(38) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(500) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `user_name`, `email`, `password`, `date`) VALUES
(1, 16379580, 'jhapendra kandel', 'jhapendrakandel.mac@gmail.com', '$2y$10$zqmlHnF.4D68i6mIoyD0I.VaHj1WQvhegT2P8u0RBMtrmDcctVv5O', '2024-11-06 14:04:40'),
(2, 6891667059194261108, 'Uki kandel', 'ukikandel@gmail.com', '$2y$10$uiJn32mhmStGq.eZfcQyp.ut5ZeKLO/w6uHMkwPZY5b/SGtR9yfdq', '2024-06-05 15:06:17'),
(3, 755466165131383, 'jk10', 'jk@gmail.com', '$2y$10$gfF04DpPK/35pz/ZxovQHe1GKrMOTA01IaW3.iJsBLtPeseoE519e', '2024-06-06 13:37:19'),
(5, 333667345093623, 'uk', 'uki.mac@gmail.com', '$2y$10$Ygn270HQHG7I05PcDVVryOw.owZ1wDg2BX6CTSg2Rx0/r9MtMyHmq', '2024-06-29 00:52:54'),
(12, 29915229976299810, 'pF7BfLro', 'pF7BfLroewAMOy4soY.HHP87haDltjdQrm9k2QF2Ao9O7ExxJS', '$2y$10$nbNpF7BfLroewAMOy4soY.HHP87haDltjdQrm9k2QF2Ao9O7ExxJS', '2024-08-12 13:16:32'),
(15, 58215225092786089, 'jk', 'jk@admin.com', '$2y$10$PDm8Mdep0zyTUH3u8sWExuLfRf1V9j6yBTQZGLTkP9y.5mJCubTGa', '2024-09-22 07:54:16'),
(18, 18885236249145, 'test', 'test@test.com', '$2y$10$mtc14DUEDlsPQ8BZBTQoPutp7Nmm/TMRu7JeRQlGnSmuhp36hfA5a', '2024-12-03 06:58:40'),
(19, 72100793, 'Prajwol ', 'prajwolneupane80@uniglobecollege.edu.np', '$2y$10$lIlydOyj0iUf1UWqMQLUEOe9CT4y9PSzxdJspGayy4JHJQqgY5Yju', '2024-12-13 10:54:31');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `interests` text DEFAULT NULL,
  `occupation` varchar(500) DEFAULT NULL,
  `hobbies` text DEFAULT NULL,
  `skills` text DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `social_media_links` text DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `display_badge` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `user_id`, `name`, `photo`, `location`, `interests`, `occupation`, `hobbies`, `skills`, `email`, `social_media_links`, `date_of_birth`, `verified`, `display_badge`) VALUES
(1, 16379580, 'user', 'uploads/1.jpeg', 'KTM, Nepal', 'Travel,Volunteering,Writing,Art,Blogging,Languages,Sports,Music,Reading', 'Teaching, Sales, Travel Art, Community service, Counselling, Human Resources Photography', 'Photography,Reading,Travel,Dance,Writing,Gardening,Painting,Hiking,Singing\r\n', 'Communication,Leadership,Problem solving,Conflict,resolution,Collaboration,Negotiation,Teamwork,Confidence\r\n', 'jhapendrakandel.mac@gmail.com', 'https://www.facebook.com/\r\nhttps://www.threads.com/\r\nhttps://www.youtube.com/\r\nhttps://www.x.com/\r\nhttps://www.instagram.com/', '2007-04-16', 1, 1),
(2, 6891667059194261108, 'Uki kandel', 'uploads/2.jpeg', 'KTM, Nepal', 'Ig nothing ', 'PROGRAMMER / DEVLOPER', 'Travelling and coding and esports', 'programming data analysis and machine learner', 'ukikandel@gmail.com', 'NONe till now', '0001-11-11', 0, 1),
(3, 755466165131383, 'JK10', 'uploads/3.png', 'KTM, Nepal', 'no', 'PROGRAMMER / DEVLOPER', 'no', 'no', 'jk@gmail.com', 'nooo', '0011-11-11', 0, 1),
(4, 333667345093623, 'uk', 'uploads/5.png', 'nepal kathmandu', 'wwqswq', 'wqswqsqwswswwqsq', 'swqsqwswqsqw', 'sqwsqwsqws', 'uki.mac@gmail.com', 'what is this', '0432-12-12', 0, 1),
(8, 71813669783834887, 'Prajwol Neupane', 'uploads/5.png', 'Gongabu', 'Gaming,computer', 'Study', 'Business man', 'noting', 'prajwolneupane80@uniglobecollege.edu.np', 'nothing', '2006-06-02', 1, 1),
(9, 18885236249145, 'test', 'uploads/9.webp', 'banepa', '...', 'Student', 'Busniessman', '...', 'test@test.com', '...', '0111-11-11', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `tweet_id` (`tweet_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `developers`
--
ALTER TABLE `developers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_logins`
--
ALTER TABLE `failed_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_like` (`user_id`,`tweet_id`),
  ADD KEY `tweet_id` (`tweet_id`);

--
-- Indexes for table `login_tokens`
--
ALTER TABLE `login_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `traffic`
--
ALTER TABLE `traffic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_2` (`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `date` (`date`),
  ADD KEY `user_name` (`user_name`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `developers`
--
ALTER TABLE `developers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_logins`
--
ALTER TABLE `failed_logins`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `login_tokens`
--
ALTER TABLE `login_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `traffic`
--
ALTER TABLE `traffic`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`tweet_id`) REFERENCES `tweets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_profile` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`tweet_id`) REFERENCES `tweets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD CONSTRAINT `user_profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
--
-- Database: `Jace_arc`
--
CREATE DATABASE IF NOT EXISTS `Jace_arc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `Jace_arc`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(5, 'testerjk', '$2y$10$w/cB/P87uH830v7k8qYkOO/VpgaULKiodrEtQZ93gZrRG/emLzfnq');

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `website_name` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `websites`
--
ALTER TABLE `websites`
  ADD CONSTRAINT `websites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
--
-- Database: `Jace_book`
--
CREATE DATABASE IF NOT EXISTS `Jace_book` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `Jace_book`;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `ID` int(100) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`ID`, `Date`, `email`, `password`) VALUES
(15, '2024-07-30 15:09:50', 'hima@hima.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Database: `Jace_nothing`
--
CREATE DATABASE IF NOT EXISTS `Jace_nothing` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `Jace_nothing`;
--
-- Database: `Jace_store`
--
CREATE DATABASE IF NOT EXISTS `Jace_store` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `Jace_store`;

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `Id` int(100) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`Id`, `Date`, `Email`) VALUES
(19, '2024-03-10 14:37:56', 'jhapendrakandel.mac@gmail.com/ 91818181'),
(21, '2024-03-13 13:57:16', 'Rajan123@gmail.com'),
(22, '2024-03-14 12:26:23', 'heheee.mac@gmail.com'),
(23, '2024-04-25 15:14:25', 'jhapendrakandel.mac@gmail.com/ 91818181'),
(24, '2024-12-03 07:54:24', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Database: `kandelholdings`
--
CREATE DATABASE IF NOT EXISTS `kandelholdings` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kandelholdings`;

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `month` varchar(20) DEFAULT NULL,
  `total_units` int(11) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `rate` decimal(5,2) DEFAULT NULL,
  `rounded` tinyint(1) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `month`, `total_units`, `total_amount`, `rate`, `rounded`, `file_path`, `created_at`) VALUES
(1, 'Jan 2025', 332, 9930.00, 29.91, 0, 'uploads/Kandel holdings img.png', '2025-05-31 12:10:45'),
(2, 'Feb 2025', 990, 21000.00, 21.21, 0, 'uploads/Screenshot 2025-05-31 at 10.11.11.png', '2025-05-31 12:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `amount_paid` decimal(10,2) DEFAULT NULL,
  `paid_on` date DEFAULT NULL,
  `note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `bill_id`, `amount_paid`, `paid_on`, `note`) VALUES
(1, 1, 1, 10647.83, '2025-05-31', NULL),
(2, 1, 2, 6304.85, '2025-05-31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pending_payments`
--

CREATE TABLE `pending_payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `entered_amount` decimal(10,2) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` enum('pending','confirmed','rejected') DEFAULT 'pending',
  `submitted_on` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pending_payments`
--

INSERT INTO `pending_payments` (`id`, `user_id`, `bill_id`, `entered_amount`, `note`, `status`, `submitted_on`) VALUES
(1, 1, 1, 100.00, '', 'rejected', '2025-05-31 17:56:09'),
(2, 1, 1, 10647.83, 'payed fully', 'confirmed', '2025-05-31 17:59:48'),
(3, 1, 2, 6384.85, 'payed fullt', 'confirmed', '2025-05-31 18:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `readings`
--

CREATE TABLE `readings` (
  `id` int(11) NOT NULL,
  `bill_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `prev_reading` int(11) DEFAULT NULL,
  `curr_reading` int(11) DEFAULT NULL,
  `consumed` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `readings`
--

INSERT INTO `readings` (`id`, `bill_id`, `user_id`, `prev_reading`, `curr_reading`, `consumed`, `amount`) VALUES
(1, 1, 1, 0, 356, 356, 10647.96),
(2, 1, 2, 0, 356, 356, 10647.96),
(3, 2, 1, 356, 65, -291, -6172.11),
(4, 2, 2, 356, 456, 100, 2121.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','customer') NOT NULL,
  `assigned_floor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `assigned_floor`) VALUES
(1, 'chiya vibes', '25d55ad283aa400af464c76d713c07ad', 'customer', '1st Floor'),
(2, 'ritika nepal', '25d55ad283aa400af464c76d713c07ad', 'customer', '2nd Floor'),
(3, 'uki kandel', '5b45f7c1796ef9628149c82447dc2cb6', 'admin', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `bill_id` (`bill_id`);

--
-- Indexes for table `pending_payments`
--
ALTER TABLE `pending_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `bill_id` (`bill_id`);

--
-- Indexes for table `readings`
--
ALTER TABLE `readings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bill_id` (`bill_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pending_payments`
--
ALTER TABLE `pending_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `readings`
--
ALTER TABLE `readings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`bill_id`) REFERENCES `bills` (`id`);

--
-- Constraints for table `pending_payments`
--
ALTER TABLE `pending_payments`
  ADD CONSTRAINT `pending_payments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `pending_payments_ibfk_2` FOREIGN KEY (`bill_id`) REFERENCES `bills` (`id`);

--
-- Constraints for table `readings`
--
ALTER TABLE `readings`
  ADD CONSTRAINT `readings_ibfk_1` FOREIGN KEY (`bill_id`) REFERENCES `bills` (`id`),
  ADD CONSTRAINT `readings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
--
-- Database: `login_system`
--
CREATE DATABASE IF NOT EXISTS `login_system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `login_system`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'superadmin', 'fcc10cd37aff02abf3e266db6ec558e7'),
(2, 'file_admin', 'c1674fc3860a7614800643d70ca35d18'),
(3, 'taks', 'ff8e81e8906ea84dfb3bb76731fc02f2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `onssdb`
--
CREATE DATABASE IF NOT EXISTS `onssdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `onssdb`;

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `due_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `title`, `description`, `due_date`) VALUES
(2, 'gone', 'already gone', '2024-08-20'),
(3, 'today', 'today', '2024-08-21'),
(4, 'tmrow', 'tmrow', '2024-08-22');

-- --------------------------------------------------------

--
-- Table structure for table `chat_rooms`
--

CREATE TABLE `chat_rooms` (
  `id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `section_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `Username`, `Password`, `latitude`, `longitude`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', '27.7253684', '85.3372201');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `solved` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`id`, `name`, `email`, `message`, `created_at`, `solved`) VALUES
(1, 'hello', 'h@j', 'hrerr', '2024-08-23 09:11:43', 1),
(2, 'heloo', 'd@d', 'dede', '2024-08-23 09:14:12', 1),
(3, 'ptr', 'aaj@utp.com', 'dwldvwekudvewdewkdvedeig8dwgdlfne23ederfefreffrevchekf h dwldvwekudvewdewkdvedeig8dwgdlfne23ederfefreffrevchekf h dwldvwekudvewdewkdvedeig8dwgdlfne23ederfefreffrevchekf h dwldvwekudvewdewkdvedeig8dwgdlfne23ederfefreffrevchekf h dwldvwekudvewdewkdvedeig8dwgdlfne23ederfefreffrevchekf h dwldvwekudvewdewkdvedeig8dwgdlfne23ederfefreffrevchekf h dwldvwekudvewdewkdvedeig8dwgdlfne23ederfefreffrevchekf h ', '2024-08-28 09:27:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblnotes`
--

CREATE TABLE `tblnotes` (
  `ID` int(5) NOT NULL,
  `UserID` int(5) DEFAULT NULL,
  `Section` varchar(3) DEFAULT NULL,
  `Subject` varchar(250) DEFAULT NULL,
  `NotesTitle` varchar(250) DEFAULT NULL,
  `NotesDecription` longtext DEFAULT NULL,
  `File1` varchar(250) DEFAULT NULL,
  `File2` varchar(250) DEFAULT NULL,
  `File3` varchar(255) DEFAULT NULL,
  `File4` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblnotes`
--

INSERT INTO `tblnotes` (`ID`, `UserID`, `Section`, `Subject`, `NotesTitle`, `NotesDecription`, `File1`, `File2`, `File3`, `File4`, `CreationDate`, `UpdationDate`) VALUES
(4, 1, 'B2', 'dewdewd', 'erfrew', 'dewdw', 'd41d8cd98f00b204e9800998ecf8427e1723795691.pdf', 'd41d8cd98f00b204e9800998ecf8427e1723795691.pdf', '', '', '2024-08-16 08:08:11', '2024-08-27 07:14:29'),
(5, 1, '', 'ferfer', 'eer', 'fref', 'd41d8cd98f00b204e9800998ecf8427e1724749185.pdf', '', '', '', '2024-08-27 08:28:20', '2024-08-27 08:59:45'),
(7, 1, NULL, 'w2w12w', 'A Matter of Husbands Exercise ', 'w12w1w', 'b7a8da9a7e064e444596f61dae652fbc1724748450.pdf', '', '', '', '2024-08-27 08:47:30', NULL),
(8, 1, 'B2', 'trcike', 'bands Exercise ', 'dewdewd', '6c886da5bef6bdcdcf8e9b55da2b804f1724748858.pdf', '', '', '', '2024-08-27 08:54:18', '2024-08-27 08:55:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblsecurity`
--

CREATE TABLE `tblsecurity` (
  `ID` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `PlainPassword` varchar(255) NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsecurity`
--

INSERT INTO `tblsecurity` (`ID`, `Email`, `PlainPassword`, `CreatedAt`) VALUES
(1, 'try@jace.com', 'try123', '2024-08-13 13:29:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbltraffic`
--

CREATE TABLE `tbltraffic` (
  `ip_address` varchar(45) NOT NULL,
  `visit_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `browser_info` varchar(255) NOT NULL,
  `os_info` varchar(255) NOT NULL,
  `latitude` varchar(120) DEFAULT NULL,
  `longitude` varchar(120) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `section` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbltraffic`
--

INSERT INTO `tbltraffic` (`ip_address`, `visit_time`, `browser_info`, `os_info`, `latitude`, `longitude`, `id`, `section`) VALUES
('::1', '2024-08-28 08:02:33', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'Mac OS X', '27.7253684', '85.3372201', 1, 'F1'),
('::1', '2024-08-28 08:03:02', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'Mac OS X', '27.7253684', '85.3372201', 2, 'B2'),
('192.168.1.3', '2024-08-28 05:38:34', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Safari/537.36', 'Mac OS X', '40.712776', '-74.005974', 3, 'C1'),
('192.168.1.4', '2024-08-29 07:50:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Firefox/119.0', 'Windows 10', '51.507351', '-0.127758', 4, 'D1'),
('192.168.1.5', '2024-08-30 04:29:22', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Safari/537.36', 'Mac OS X', '48.856613', '2.352222', 5, 'E1'),
('192.168.1.6', '2024-08-31 11:05:11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'Windows 10', '35.689487', '139.691711', 6, 'F1'),
('192.168.1.7', '2024-09-01 06:22:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Edge/120.0.0.0', 'Windows 10', '39.904202', '116.407394', 7, 'G1'),
('192.168.1.8', '2024-09-02 08:38:42', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'Mac OS X', '-33.868820', '151.209290', 8, 'H1'),
('192.168.1.9', '2024-09-03 11:45:33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Safari/537.36', 'Windows 10', '55.755825', '37.617298', 9, 'I1'),
('192.168.1.10', '2024-09-04 04:00:20', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Firefox/119.0', 'Mac OS X', '40.730610', '-73.935242', 10, 'J1'),
('192.168.1.11', '2024-09-05 08:10:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', '34.052235', '-118.243683', 11, 'K1'),
('192.168.1.12', '2024-09-06 05:27:33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Edge/121.0.0.0', 'Windows 10', '37.774929', '-122.419418', 12, 'L1'),
('192.168.1.13', '2024-09-07 09:37:55', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'Mac OS X', '34.052235', '-118.243683', 13, 'A2'),
('192.168.1.14', '2024-09-08 06:25:34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'Windows 10', '40.730610', '-73.935242', 14, 'B2'),
('192.168.1.15', '2024-09-09 03:40:43', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Safari/537.36', 'Mac OS X', '51.507351', '-0.127758', 15, 'C2'),
('192.168.1.16', '2024-09-10 08:55:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Firefox/120.0', 'Windows 10', '48.856613', '2.352222', 16, 'D2'),
('192.168.1.17', '2024-09-11 11:05:12', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Edge/120.0.0.0', 'Mac OS X', '35.689487', '139.691711', 17, 'E2'),
('192.168.1.18', '2024-09-12 05:20:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', '39.904202', '116.407394', 18, 'F2'),
('192.168.1.19', '2024-09-13 07:30:45', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Firefox/119.0', 'Mac OS X', '-33.868820', '151.209290', 19, 'G2'),
('192.168.1.20', '2024-09-14 11:40:33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Safari/537.36', 'Windows 10', '55.755825', '37.617298', 20, 'H2'),
('192.168.1.21', '2024-09-15 03:55:10', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'Mac OS X', '40.730610', '-73.935242', 21, 'I2'),
('192.168.1.22', '2024-09-16 06:15:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Edge/120.0.0.0', 'Windows 10', '34.052235', '-118.243683', 22, 'J2'),
('192.168.1.23', '2024-09-17 09:25:12', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Firefox/120.0', 'Mac OS X', '37.774929', '-122.419418', 23, 'K2'),
('192.168.1.24', '2024-09-18 10:37:33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Safari/537.36', 'Windows 10', '51.507351', '-0.127758', 24, 'L2'),
('192.168.1.25', '2024-09-19 04:47:12', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'Mac OS X', '40.712776', '-74.005974', 25, 'A1'),
('192.168.1.26', '2024-09-20 07:57:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'Windows 10', '34.052235', '-118.243683', 26, 'B1'),
('192.168.1.27', '2024-09-21 09:10:11', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Safari/537.36', 'Mac OS X', '48.856613', '2.352222', 27, 'C1'),
('192.168.1.28', '2024-09-22 10:45:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Firefox/119.0', 'Windows 10', '51.507351', '-0.127758', 28, 'D1'),
('192.168.1.29', '2024-09-23 05:30:33', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Edge/120.0.0.0', 'Mac OS X', '35.689487', '139.691711', 29, 'E1'),
('192.168.1.30', '2024-09-24 08:35:11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', '39.904202', '116.407394', 30, 'F1'),
('192.168.1.31', '2024-09-25 07:00:22', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Firefox/119.0', 'Mac OS X', '-33.868820', '151.209290', 31, 'G1'),
('192.168.1.32', '2024-09-26 03:50:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Safari/537.36', 'Windows 10', '55.755825', '37.617298', 32, 'H1'),
('192.168.1.33', '2024-09-27 10:15:33', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'Mac OS X', '40.730610', '-73.935242', 33, 'I1'),
('192.168.1.34', '2024-09-28 08:10:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Edge/120.0.0.0', 'Windows 10', '34.052235', '-118.243683', 34, 'J1'),
('192.168.1.35', '2024-09-29 05:00:11', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Safari/537.36', 'Mac OS X', '37.774929', '-122.419418', 35, 'K1'),
('192.168.1.36', '2024-09-30 10:27:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', '51.507351', '-0.127758', 36, 'L1'),
('192.168.1.37', '2024-10-01 05:37:33', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Firefox/120.0', 'Mac OS X', '34.052235', '-118.243683', 37, 'A2'),
('192.168.1.38', '2024-10-02 09:48:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'Windows 10', '40.730610', '-73.935242', 38, 'B2'),
('192.168.1.39', '2024-10-03 04:20:44', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Safari/537.36', 'Mac OS X', '48.856613', '2.352222', 39, 'C2'),
('192.168.1.40', '2024-10-04 07:30:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Firefox/120.0', 'Windows 10', '35.689487', '139.691711', 40, 'D2'),
('192.168.1.41', '2024-10-05 07:00:33', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Edge/120.0.0.0', 'Mac OS X', '39.904202', '116.407394', 41, 'E2'),
('192.168.1.42', '2024-10-06 08:45:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', '-33.868820', '151.209290', 42, 'F2'),
('192.168.1.43', '2024-10-07 11:10:22', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Firefox/119.0', 'Mac OS X', '55.755825', '37.617298', 43, 'G2'),
('192.168.1.44', '2024-10-08 04:55:33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Safari/537.36', 'Windows 10', '40.712776', '-74.005974', 44, 'H2'),
('192.168.1.45', '2024-10-09 08:30:22', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'Mac OS X', '34.052235', '-118.243683', 45, 'I2'),
('192.168.1.46', '2024-10-10 06:05:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Edge/121.0.0.0', 'Windows 10', '37.774929', '-122.419418', 46, 'J2'),
('192.168.1.47', '2024-10-11 07:35:33', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Firefox/120.0', 'Mac OS X', '51.507351', '-0.127758', 47, 'K2'),
('192.168.1.48', '2024-10-12 11:10:11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', 'Windows 10', '35.689487', '139.691711', 48, 'L2'),
('192.168.1.49', '2024-10-13 04:30:44', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Edge/120.0.0.0', 'Mac OS X', '39.904202', '116.407394', 49, 'A1'),
('192.168.1.50', '2024-10-14 07:40:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'Windows 10', '-33.868820', '151.209290', 50, 'B1'),
('192.168.1.1', '2024-08-27 10:00:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'Windows 10', '34.052235', '-118.243683', 51, 'A1'),
('192.168.1.2', '2024-08-28 03:27:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36', 'Windows 10', '34.052235', '-118.243683', 52, 'B1'),
('::1', '2024-08-28 08:41:47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'Mac OS X', '27.7253578', '85.3372123', 53, 'B1'),
('::1', '2024-08-28 08:41:47', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'Mac OS X', '27.7253578', '85.3372123', 54, 'B1'),
('::1', '2024-08-28 08:42:21', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'Mac OS X', '27.7253578', '85.3372123', 55, 'B2'),
('::1', '2024-08-28 08:42:58', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'Mac OS X', '27.7253578', '85.3372123', 56, 'B2'),
('::1', '2024-08-28 08:42:59', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'Mac OS X', '27.7253578', '85.3372123', 57, 'B2'),
('::1', '2024-08-28 08:43:00', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'Mac OS X', '27.7253578', '85.3372123', 58, 'B2'),
('::1', '2024-08-28 08:43:01', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'Mac OS X', '27.7253578', '85.3372123', 59, 'B2'),
('::1', '2024-08-28 09:17:27', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'Mac OS X', '27.7253369', '85.3372115', 60, 'B2'),
('::1', '2024-08-28 09:17:55', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36', 'Android', '27.7253369', '85.3372115', 61, 'B2'),
('::1', '2024-08-28 09:24:59', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'Mac OS X', '27.7253637', '85.3372079', 62, 'B2'),
('::1', '2024-08-28 09:25:58', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'Mac OS X', '27.7253637', '85.3372079', 63, 'B2'),
('::1', '2024-08-28 09:26:08', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'Mac OS X', '27.7253637', '85.3372079', 64, 'B2'),
('::1', '2024-08-28 13:56:20', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'Mac OS X', '27.7253715', '85.337226', 65, 'B2'),
('::1', '2024-08-28 14:07:58', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'Mac OS X', '27.7253751', '85.3372105', 66, 'B2'),
('::1', '2024-09-22 07:56:02', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'Mac OS X', '27.7253671', '85.337263', 67, NULL),
('::1', '2024-10-25 15:36:02', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'Mac OS X', 'not allowed', 'not allowed', 68, NULL),
('::1', '2024-11-27 11:26:39', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mac OS X', 'not allowed', 'not allowed', 69, NULL),
('::1', '2024-11-27 11:27:39', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mac OS X', 'not allowed', 'not allowed', 70, NULL),
('::1', '2024-11-27 11:27:46', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mac OS X', 'not allowed', 'not allowed', 71, 'B2'),
('::1', '2024-11-27 11:28:08', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mac OS X', 'not allowed', 'not allowed', 72, 'B2'),
('::1', '2024-11-27 11:29:22', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mac OS X', 'not allowed', 'not allowed', 73, 'B2'),
('::1', '2024-11-27 11:29:25', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'Mac OS X', 'not allowed', 'not allowed', 74, 'B2');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(5) NOT NULL,
  `FullName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Password` varchar(250) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `section_iderferf` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnotes`
--
ALTER TABLE `tblnotes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsecurity`
--
ALTER TABLE `tblsecurity`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbltraffic`
--
ALTER TABLE `tbltraffic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `section_iderferf` (`section_iderferf`),
  ADD KEY `section_iderferf_2` (`section_iderferf`),
  ADD KEY `section_id` (`section_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblnotes`
--
ALTER TABLE `tblnotes`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblsecurity`
--
ALTER TABLE `tblsecurity`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbltraffic`
--
ALTER TABLE `tbltraffic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
  ADD CONSTRAINT `chat_rooms_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`);

--
-- Constraints for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD CONSTRAINT `tbluser_ibfk_1` FOREIGN KEY (`section_iderferf`) REFERENCES `sections` (`id`),
  ADD CONSTRAINT `tbluser_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
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
-- Table structure for table `pma__column_info`
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
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

--
-- Dumping data for table `pma__favorite`
--

INSERT INTO `pma__favorite` (`username`, `tables`) VALUES
('root', '[{\"db\":\"Jace_devprofile\",\"table\":\"Devlopers\"},{\"db\":\"Jace_book\",\"table\":\"Users\"},{\"db\":\"Jace_store\",\"table\":\"email\"},{\"db\":\"Jace\",\"table\":\"users\"},{\"db\":\"Jace\",\"table\":\"contact_us\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
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
-- Table structure for table `pma__navigationhiding`
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
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"dvwa\",\"table\":\"users\"},{\"db\":\"WIFI\",\"table\":\"Users\"},{\"db\":\"WIFI\",\"table\":\"internet_survey\"},{\"db\":\"request_tracker\",\"table\":\"requests\"},{\"db\":\"heritage_tree\",\"table\":\"persons\"},{\"db\":\"heritage_tree\",\"table\":\"relationships\"},{\"db\":\"heritage_tree\",\"table\":\"admins\"},{\"db\":\"kandelholdings\",\"table\":\"readings\"},{\"db\":\"kandelholdings\",\"table\":\"payments\"},{\"db\":\"kandelholdings\",\"table\":\"pending_payments\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
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
-- Table structure for table `pma__savedsearches`
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
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'Jace', 'contact_us', '{\"sorted_col\":\"`email` DESC\"}', '2024-04-03 04:40:36'),
('root', 'Jace', 'tweets', '{\"sorted_col\":\"`tweets`.`created_at` ASC\"}', '2024-08-08 15:21:15'),
('root', 'Jace', 'user_profile', '{\"CREATE_TIME\":\"2024-07-02 11:05:11\",\"sorted_col\":\"`user_profile`.`occupation` DESC\"}', '2024-10-20 09:08:48'),
('root', 'Jace', 'users', '{\"CREATE_TIME\":\"2024-06-05 20:37:47\",\"col_order\":[0,1,2,3,4,5],\"col_visib\":[1,1,1,1,1,1]}', '2024-07-04 03:18:40'),
('root', 'contact', 'contact_us', '{\"sorted_col\":\"`email` DESC\",\"CREATE_TIME\":\"2024-02-10 13:43:36\"}', '2024-02-11 12:18:22'),
('root', 'datingdb', 'user_favourite_list', '{\"sorted_col\":\"`user_favourite_list`.`user_id_favourited` DESC\"}', '2024-12-19 12:50:29'),
('root', 'dlttttttttt', 'contact_us', '{\"sorted_col\":\"`email` DESC\",\"CREATE_TIME\":\"2024-02-10 13:43:36\"}', '2024-02-10 09:42:22'),
('root', 'onssdb', 'tbltraffic', '{\"CREATE_TIME\":\"2024-08-28 14:25:34\"}', '2024-08-28 08:41:30'),
('root', 'shopping', 'products', '{\"sorted_col\":\"`products`.`productImage1` ASC\",\"CREATE_TIME\":\"2024-07-09 21:28:45\",\"col_order\":[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14],\"col_visib\":[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}', '2024-07-12 10:59:47');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
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
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('admin', '2025-03-11 12:24:09', '{\"lang\":\"en_GB\",\"Console\\/Mode\":\"collapse\"}'),
('root', '2025-11-05 14:02:50', '{\"Console\\/Mode\":\"show\",\"RelationalDisplay\":\"D\",\"Server\\/hide_db\":\"\",\"Server\\/only_db\":\"\",\"lang\":\"en_GB\",\"ThemeDefault\":\"pmahomme\",\"Console\\/Height\":-19.005810000000000314912540488876402378082275390625,\"NavigationWidth\":202}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `request_tracker`
--
CREATE DATABASE IF NOT EXISTS `request_tracker` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `request_tracker`;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `uri` text DEFAULT NULL,
  `agent` text DEFAULT NULL,
  `request_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `ip`, `uri`, `agent`, `request_time`) VALUES
(1, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:01:41'),
(2, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:01:49'),
(3, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:05:46'),
(4, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:05:47'),
(5, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:05:48'),
(6, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:06:59'),
(7, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:06:59'),
(8, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:06:59'),
(9, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:06:59'),
(10, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:06:59'),
(11, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:00'),
(12, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:00'),
(13, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:00'),
(14, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:00'),
(15, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:00'),
(16, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:00'),
(17, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:01'),
(18, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:01'),
(19, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:01'),
(20, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:01'),
(21, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:01'),
(22, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:01'),
(23, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:02'),
(24, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:02'),
(25, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:02'),
(26, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:02'),
(27, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:02'),
(28, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:02'),
(29, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:03'),
(30, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:03'),
(31, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:03'),
(32, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:03'),
(33, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:03'),
(34, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:03'),
(35, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:04'),
(36, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:04'),
(37, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:04'),
(38, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:04'),
(39, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:04'),
(40, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:04'),
(41, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:05'),
(42, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:05'),
(43, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:05'),
(44, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:05'),
(45, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:05'),
(46, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:05'),
(47, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:06'),
(48, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:06'),
(49, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:06'),
(50, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:06'),
(51, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:06'),
(52, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:06'),
(53, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:07'),
(54, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:07'),
(55, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:07'),
(56, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:07'),
(57, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:07'),
(58, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:08'),
(59, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:08'),
(60, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:08'),
(61, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:08'),
(62, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:08'),
(63, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:08'),
(64, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:09'),
(65, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:09'),
(66, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:09'),
(67, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:09'),
(68, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:09'),
(69, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:09'),
(70, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:10'),
(71, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:10'),
(72, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:10'),
(73, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:10'),
(74, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:10'),
(75, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:10'),
(76, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:11'),
(77, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:11'),
(78, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:11'),
(79, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:11'),
(80, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:11'),
(81, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:11'),
(82, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:12'),
(83, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:12'),
(84, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:12'),
(85, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:12'),
(86, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:12'),
(87, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:12'),
(88, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:13'),
(89, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:13'),
(90, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:13'),
(91, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:13'),
(92, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:13'),
(93, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:13'),
(94, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:14'),
(95, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:14'),
(96, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:14'),
(97, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:14'),
(98, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:14'),
(99, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:14'),
(100, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:15'),
(101, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:15'),
(102, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:15'),
(103, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:15'),
(104, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:15'),
(105, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:16'),
(106, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:16'),
(107, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:16'),
(108, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:16'),
(109, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:16'),
(110, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:16'),
(111, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:17'),
(112, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:17'),
(113, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:17'),
(114, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:17'),
(115, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:17'),
(116, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:17'),
(117, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:18'),
(118, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:18'),
(119, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:18'),
(120, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:18'),
(121, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:18'),
(122, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:18'),
(123, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:19'),
(124, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:19'),
(125, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:19'),
(126, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:19'),
(127, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:19'),
(128, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:19'),
(129, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:20'),
(130, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:20'),
(131, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:20'),
(132, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:20'),
(133, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:20'),
(134, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:20'),
(135, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:20'),
(136, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:20'),
(137, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:20'),
(138, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:20'),
(139, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:20'),
(140, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:20'),
(141, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:20'),
(142, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:20'),
(143, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:20'),
(144, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:21'),
(145, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:21'),
(146, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:21'),
(147, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:21'),
(148, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:21'),
(149, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:21'),
(150, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:21'),
(151, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:21'),
(152, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:21'),
(153, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:21'),
(154, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:21'),
(155, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:21'),
(156, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:21'),
(157, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:21'),
(158, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:21'),
(159, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:21'),
(160, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:21'),
(161, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:21'),
(162, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:22'),
(163, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:22'),
(164, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:22'),
(165, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:22'),
(166, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:22'),
(167, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:22'),
(168, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:22'),
(169, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:22'),
(170, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:22'),
(171, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:22'),
(172, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:22'),
(173, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:22'),
(174, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:22'),
(175, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:22'),
(176, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:22'),
(177, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:22'),
(178, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:22'),
(179, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:22'),
(180, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:23'),
(181, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:23'),
(182, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:23'),
(183, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:23'),
(184, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:23'),
(185, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:23'),
(186, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:23'),
(187, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:23'),
(188, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:23'),
(189, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:23'),
(190, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:23'),
(191, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:23'),
(192, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:23'),
(193, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:23'),
(194, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:23'),
(195, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:23'),
(196, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(197, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(198, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(199, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(200, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(201, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(202, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(203, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(204, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(205, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(206, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(207, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(208, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(209, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(210, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(211, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(212, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(213, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(214, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(215, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(216, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(217, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(218, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(219, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(220, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(221, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(222, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(223, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(224, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(225, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(226, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(227, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(228, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(229, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(230, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(231, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(232, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(233, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(234, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(235, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(236, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(237, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(238, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(239, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(240, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(241, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(242, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(243, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(244, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(245, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(246, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(247, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(248, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(249, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(250, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(251, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(252, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(253, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(254, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(255, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(256, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(257, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(258, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(259, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(260, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(261, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(262, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(263, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(264, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(265, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(266, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(267, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(268, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(269, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(270, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(271, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(272, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(273, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(274, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(275, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(276, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(277, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(278, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24');
INSERT INTO `requests` (`id`, `ip`, `uri`, `agent`, `request_time`) VALUES
(279, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(280, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(281, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(282, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(283, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(284, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(285, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(286, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(287, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(288, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(289, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(290, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(291, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(292, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(293, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(294, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(295, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(296, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(297, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(298, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(299, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(300, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(301, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(302, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(303, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(304, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(305, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(306, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(307, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(308, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(309, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(310, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(311, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(312, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(313, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(314, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(315, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(316, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(317, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(318, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(319, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(320, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(321, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(322, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(323, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(324, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(325, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(326, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(327, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(328, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(329, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(330, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(331, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(332, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(333, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(334, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(335, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(336, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(337, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(338, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(339, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(340, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(341, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(342, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(343, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(344, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(345, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(346, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(347, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(348, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(349, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(350, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(351, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(352, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(353, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(354, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(355, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(356, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(357, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(358, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(359, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(360, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(361, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(362, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(363, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(364, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(365, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(366, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(367, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(368, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(369, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(370, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(371, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(372, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(373, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(374, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(375, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(376, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(377, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(378, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(379, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(380, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(381, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(382, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(383, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(384, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(385, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(386, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(387, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(388, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(389, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(390, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(391, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(392, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(393, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(394, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(395, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(396, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(397, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(398, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(399, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(400, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(401, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(402, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(403, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(404, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(405, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(406, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(407, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(408, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(409, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(410, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(411, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(412, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(413, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(414, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(415, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(416, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(417, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(418, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(419, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(420, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(421, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(422, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(423, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(424, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(425, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(426, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(427, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(428, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(429, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(430, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(431, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(432, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(433, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(434, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(435, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(436, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(437, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(438, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(439, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(440, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(441, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(442, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(443, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(444, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(445, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(446, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(447, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(448, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(449, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(450, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(451, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(452, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(453, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(454, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(455, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(456, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(457, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(458, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(459, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(460, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(461, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(462, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(463, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(464, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(465, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(466, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(467, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(468, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(469, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(470, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(471, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(472, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(473, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(474, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(475, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(476, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(477, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(478, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(479, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(480, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(481, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(482, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(483, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(484, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(485, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(486, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(487, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(488, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(489, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(490, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(491, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(492, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(493, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(494, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(495, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(496, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(497, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(498, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(499, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(500, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(501, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(502, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(503, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(504, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(505, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(506, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(507, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(508, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(509, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(510, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(511, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(512, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(513, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(514, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:24'),
(515, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(516, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(517, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(518, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(519, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(520, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(521, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(522, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(523, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(524, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(525, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(526, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(527, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(528, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(529, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(530, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(531, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(532, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(533, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(534, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(535, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(536, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(537, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(538, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(539, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(540, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(541, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(542, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(543, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(544, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(545, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(546, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(547, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(548, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(549, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(550, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(551, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(552, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(553, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(554, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(555, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25');
INSERT INTO `requests` (`id`, `ip`, `uri`, `agent`, `request_time`) VALUES
(556, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(557, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(558, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(559, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(560, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(561, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(562, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(563, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(564, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(565, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(566, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(567, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(568, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(569, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(570, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(571, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(572, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(573, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(574, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(575, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(576, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(577, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(578, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(579, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(580, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(581, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(582, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(583, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(584, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(585, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(586, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(587, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(588, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(589, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(590, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(591, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(592, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(593, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(594, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(595, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(596, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(597, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(598, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(599, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(600, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(601, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(602, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(603, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(604, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(605, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(606, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(607, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(608, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(609, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(610, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(611, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(612, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(613, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(614, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(615, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(616, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(617, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(618, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(619, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(620, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(621, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(622, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(623, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(624, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(625, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(626, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(627, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(628, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(629, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(630, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(631, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(632, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(633, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(634, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(635, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(636, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(637, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(638, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(639, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(640, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(641, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(642, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(643, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(644, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(645, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(646, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(647, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(648, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(649, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(650, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(651, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(652, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(653, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(654, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(655, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(656, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(657, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(658, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(659, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(660, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(661, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(662, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(663, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(664, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(665, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(666, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(667, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(668, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(669, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(670, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(671, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(672, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(673, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(674, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(675, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(676, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(677, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(678, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(679, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(680, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(681, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(682, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(683, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(684, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(685, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(686, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(687, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(688, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(689, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(690, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(691, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(692, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(693, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(694, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(695, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(696, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(697, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(698, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(699, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(700, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(701, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(702, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(703, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(704, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(705, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(706, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(707, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(708, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(709, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(710, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:25'),
(711, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(712, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(713, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(714, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(715, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(716, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(717, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(718, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(719, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(720, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(721, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(722, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(723, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:25'),
(724, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(725, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(726, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(727, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(728, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(729, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(730, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(731, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(732, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(733, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(734, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(735, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(736, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(737, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(738, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(739, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(740, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(741, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(742, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(743, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(744, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(745, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(746, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:26'),
(747, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(748, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(749, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(750, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(751, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(752, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(753, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(754, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(755, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(756, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(757, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(758, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(759, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(760, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(761, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(762, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(763, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(764, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(765, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(766, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(767, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(768, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(769, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(770, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(771, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(772, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(773, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(774, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(775, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(776, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(777, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(778, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(779, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(780, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(781, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(782, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(783, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(784, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(785, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(786, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(787, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(788, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(789, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(790, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(791, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(792, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(793, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(794, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(795, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(796, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(797, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(798, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(799, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(800, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(801, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(802, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(803, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(804, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(805, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(806, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(807, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(808, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(809, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(810, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(811, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(812, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(813, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(814, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(815, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(816, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(817, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(818, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(819, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(820, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(821, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(822, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(823, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(824, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(825, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(826, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(827, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(828, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(829, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(830, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(831, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(832, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26');
INSERT INTO `requests` (`id`, `ip`, `uri`, `agent`, `request_time`) VALUES
(833, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(834, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(835, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(836, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(837, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(838, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(839, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(840, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(841, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(842, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(843, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(844, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(845, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(846, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(847, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(848, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(849, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(850, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(851, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:26'),
(852, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(853, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(854, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(855, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(856, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(857, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(858, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(859, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(860, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(861, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(862, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(863, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(864, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(865, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(866, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(867, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(868, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(869, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(870, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(871, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(872, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(873, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(874, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(875, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(876, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(877, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(878, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(879, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(880, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(881, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(882, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(883, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(884, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(885, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(886, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(887, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(888, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(889, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(890, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(891, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(892, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(893, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(894, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(895, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(896, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(897, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(898, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(899, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(900, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(901, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(902, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(903, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(904, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(905, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(906, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(907, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(908, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(909, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(910, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(911, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(912, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(913, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(914, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(915, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(916, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(917, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(918, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(919, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(920, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(921, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(922, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(923, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(924, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(925, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:27'),
(926, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(927, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(928, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(929, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(930, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(931, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(932, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(933, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(934, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(935, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(936, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(937, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(938, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(939, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(940, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(941, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(942, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(943, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(944, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(945, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(946, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(947, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(948, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(949, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(950, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(951, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(952, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(953, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(954, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(955, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(956, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(957, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(958, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(959, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(960, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(961, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(962, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(963, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(964, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(965, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(966, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(967, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(968, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(969, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(970, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(971, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(972, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(973, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(974, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(975, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(976, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(977, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(978, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(979, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(980, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(981, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(982, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(983, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(984, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(985, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(986, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(987, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(988, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(989, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(990, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(991, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(992, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(993, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(994, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(995, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(996, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(997, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(998, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(999, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(1000, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(1001, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(1002, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(1003, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(1004, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(1005, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(1006, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(1007, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(1008, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(1009, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(1010, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(1011, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(1012, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(1013, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(1014, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(1015, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(1016, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(1017, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(1018, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(1019, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(1020, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(1021, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(1022, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:28'),
(1023, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1024, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1025, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1026, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1027, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1028, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1029, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1030, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1031, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1032, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1033, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1034, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1035, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1036, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1037, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1038, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1039, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1040, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1041, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1042, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1043, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1044, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1045, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1046, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1047, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1048, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1049, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1050, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1051, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1052, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1053, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1054, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1055, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1056, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1057, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1058, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1059, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1060, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1061, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1062, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1063, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1064, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1065, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1066, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1067, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1068, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1069, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1070, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1071, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1072, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1073, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1074, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1075, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1076, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1077, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1078, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1079, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1080, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1081, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1082, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1083, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1084, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1085, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1086, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1087, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1088, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1089, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1090, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1091, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1092, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1093, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1094, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1095, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1096, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1097, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1098, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1099, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1100, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1101, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1102, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1103, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1104, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1105, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1106, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1107, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1108, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29');
INSERT INTO `requests` (`id`, `ip`, `uri`, `agent`, `request_time`) VALUES
(1109, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1110, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1111, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1112, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1113, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1114, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1115, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1116, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1117, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1118, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1119, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1120, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1121, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1122, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1123, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1124, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:29'),
(1125, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1126, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1127, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1128, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1129, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1130, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1131, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1132, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1133, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1134, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1135, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1136, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1137, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1138, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1139, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1140, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1141, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1142, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1143, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1144, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1145, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1146, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1147, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1148, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1149, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1150, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1151, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1152, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1153, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1154, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1155, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1156, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1157, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1158, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1159, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1160, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1161, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1162, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1163, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1164, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1165, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1166, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1167, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1168, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1169, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1170, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1171, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1172, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1173, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1174, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1175, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1176, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1177, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1178, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1179, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1180, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1181, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1182, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1183, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1184, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1185, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1186, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1187, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1188, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1189, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1190, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1191, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1192, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1193, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1194, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1195, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1196, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1197, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1198, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1199, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1200, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1201, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1202, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1203, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1204, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1205, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1206, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1207, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1208, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1209, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1210, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1211, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1212, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1213, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1214, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1215, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1216, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1217, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1218, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1219, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1220, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1221, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1222, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1223, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1224, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1225, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1226, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1227, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1228, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1229, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1230, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1231, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1232, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1233, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:30'),
(1234, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1235, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1236, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1237, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1238, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1239, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1240, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1241, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1242, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1243, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1244, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1245, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1246, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1247, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1248, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1249, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1250, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1251, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1252, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1253, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1254, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1255, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1256, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1257, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1258, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1259, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1260, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1261, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1262, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1263, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1264, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1265, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1266, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1267, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1268, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1269, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1270, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1271, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1272, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1273, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1274, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1275, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1276, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1277, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1278, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1279, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1280, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1281, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1282, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1283, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1284, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1285, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1286, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1287, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1288, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1289, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1290, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1291, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1292, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1293, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1294, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1295, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1296, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1297, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1298, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1299, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1300, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1301, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1302, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1303, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1304, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1305, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1306, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1307, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1308, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1309, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1310, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1311, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1312, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1313, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1314, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1315, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1316, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1317, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1318, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1319, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1320, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1321, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1322, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1323, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1324, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1325, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1326, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1327, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1328, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1329, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1330, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1331, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1332, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1333, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1334, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1335, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1336, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1337, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1338, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1339, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1340, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1341, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1342, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1343, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1344, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1345, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1346, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1347, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:31'),
(1348, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1349, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1350, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1351, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1352, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1353, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1354, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1355, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1356, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1357, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1358, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1359, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1360, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1361, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1362, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1363, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1364, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1365, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1366, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1367, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1368, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1369, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1370, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1371, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1372, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1373, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1374, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1375, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1376, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1377, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1378, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1379, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1380, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1381, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1382, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1383, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32');
INSERT INTO `requests` (`id`, `ip`, `uri`, `agent`, `request_time`) VALUES
(1384, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1385, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1386, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1387, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1388, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1389, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1390, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1391, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1392, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1393, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1394, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1395, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1396, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1397, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1398, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1399, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1400, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1401, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1402, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1403, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1404, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1405, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1406, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1407, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1408, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1409, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1410, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1411, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1412, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1413, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1414, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1415, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1416, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1417, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1418, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1419, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1420, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1421, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1422, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1423, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1424, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1425, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1426, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1427, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1428, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1429, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1430, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1431, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1432, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1433, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1434, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1435, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1436, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1437, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1438, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1439, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1440, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1441, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1442, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1443, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1444, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1445, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1446, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1447, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1448, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1449, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:32'),
(1450, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1451, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1452, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1453, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1454, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1455, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1456, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1457, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1458, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1459, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1460, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1461, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1462, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:32'),
(1463, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1464, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1465, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1466, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1467, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1468, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1469, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1470, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1471, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1472, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1473, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1474, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1475, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1476, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1477, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1478, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1479, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1480, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1481, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1482, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1483, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1484, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1485, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1486, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1487, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1488, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1489, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1490, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1491, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1492, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1493, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1494, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1495, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1496, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1497, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1498, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1499, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1500, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1501, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1502, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1503, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1504, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1505, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1506, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1507, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1508, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1509, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1510, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1511, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1512, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1513, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1514, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1515, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1516, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1517, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1518, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1519, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1520, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1521, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1522, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1523, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1524, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1525, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1526, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1527, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1528, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1529, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1530, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1531, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1532, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1533, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1534, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1535, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1536, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1537, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1538, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1539, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1540, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1541, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1542, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1543, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1544, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1545, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1546, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1547, '::1', '/test/', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Mobile Safari/537.36', '2025-04-21 11:07:33'),
(1548, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1549, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1550, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1551, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1552, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1553, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1554, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1555, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1556, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1557, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1558, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1559, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1560, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1561, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1562, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1563, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1564, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1565, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1566, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1567, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1568, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1569, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1570, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1571, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1572, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:33'),
(1573, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1574, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1575, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1576, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1577, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1578, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1579, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1580, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1581, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1582, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1583, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1584, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1585, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1586, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1587, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1588, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1589, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1590, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1591, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1592, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1593, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1594, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1595, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1596, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1597, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1598, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1599, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1600, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1601, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1602, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1603, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1604, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1605, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1606, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1607, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1608, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1609, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1610, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1611, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1612, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1613, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-21 11:07:34'),
(1614, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-30 17:59:42'),
(1615, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-30 18:09:30'),
(1616, '::1', '/test/', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', '2025-04-30 18:11:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1617;
--
-- Database: `restaurant_invoices`
--
CREATE DATABASE IF NOT EXISTS `restaurant_invoices` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `restaurant_invoices`;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_phone` varchar(50) NOT NULL,
  `total` double NOT NULL,
  `vat` double NOT NULL,
  `gst` double NOT NULL,
  `grand_total` double NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `customer_name`, `customer_email`, `customer_phone`, `total`, `vat`, `gst`, `grand_total`, `date`) VALUES
(1, 'Hari kumar', 'hari@gmail.com', '980123678', 16900, 2197, 1690, 20787, '2024-10-07'),
(2, 'Nazomu', 'khadkabishal53@gmail.com', '1224884699', 12600, 1638, 1260, 15498, '2024-11-29'),
(3, 'Jhapendra kandel', 'kandelram@gmail.com', '0822363339', 84000, 10920, 8400, 103320, '2024-12-03');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `item_price` double NOT NULL,
  `total_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_id`, `item_name`, `item_quantity`, `item_price`, `total_price`) VALUES
(1, 1, 'curry nan', 3, 2500, 7500),
(2, 1, 'ice cream', 4, 780, 3120),
(3, 1, 'palak paneer', 2, 1890, 3780),
(4, 1, 'tandoori chicken', 1, 2500, 2500),
(5, 2, 'Curry', 14, 900, 12600),
(6, 3, 'Lunch menu', 42, 2000, 84000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'Meghnathkandel', '$2y$10$5EQhbAGKMxWTpCvxO.EPkuUg9VZ0N83.f4Jk4blztFoEK/i6q.9Ly', '2024-10-06 11:57:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_id` (`invoice_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`);
--
-- Database: `shopping`
--
CREATE DATABASE IF NOT EXISTS `shopping` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `shopping`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2024-04-02 16:21:18', '03-05-2024 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Books', 'BOOKS', '2024-04-18 19:17:37', ''),
(4, 'Electronics', 'Electronic Products', '2024-04-18 19:17:37', ''),
(5, 'Furniture', 'FURNITURES', '2024-04-18 19:17:37', ''),
(6, 'Fashion', 'Fashion', '2024-04-18 19:17:37', ''),
(8, 'Home & Garden', 'Home & Garden', '2024-07-11 16:10:40', '11-07-2024 09:41:27 PM'),
(9, 'Beauty & Health', 'Beauty & Health', '2024-07-11 16:12:25', NULL),
(10, 'Toys & Games', 'Toys & Games', '2024-07-11 16:12:43', NULL),
(11, 'Sports & Outdoors', 'Sports & Outdoors', '2024-07-11 16:13:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(7, 6, '1', 1, '2024-07-12 10:47:44', 'Debit / Credit card', 'Delivered'),
(8, 23, '2', 1, '2024-07-21 03:58:33', 'COD', 'Delivered'),
(9, 6, '29', 1, '2024-07-25 07:55:50', 'Internet Banking', 'in Process'),
(10, 25, '1', 1, '2024-08-02 08:09:10', 'COD', 'Delivered'),
(11, 24, '29', 1, '2024-08-02 08:14:45', 'Internet Banking', 'Delivered'),
(12, 27, '1', 1, '2024-10-25 15:34:33', 'COD', 'in Process'),
(13, 29, '27', 1, '2025-10-15 14:46:58', 'COD', 'in Process');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(9, 7, 'in Process', 'in processing', '2024-07-12 13:23:47'),
(10, 7, 'in Process', 'still in process', '2024-07-12 13:39:14'),
(11, 7, 'Delivered', 'vayeo', '2024-07-17 07:18:42'),
(12, 8, 'Delivered', 'vayeo taklu', '2024-07-21 03:59:39'),
(13, 9, 'in Process', 'we are on it', '2024-07-25 08:15:03'),
(14, 10, 'in Process', 'HELLO Bro vayeooo?', '2024-08-02 08:10:14'),
(15, 10, 'Delivered', 'DOne dilvetred', '2024-08-02 08:11:03'),
(16, 11, 'in Process', 'ok it is starting', '2024-08-02 08:15:12'),
(17, 11, 'Delivered', 'done\r\n', '2024-08-02 08:15:51'),
(18, 11, 'Delivered', 'done\r\n', '2024-08-02 08:15:51'),
(19, 12, 'in Process', 'hudei xa', '2024-10-25 15:35:05'),
(20, 13, 'in Process', 'aaudei xa ', '2025-10-15 14:49:07');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(1, 15, 5, 5, 5, 'hehe', 'dewdwedew', 'ddwdwdwed', '2024-07-10 07:42:05'),
(2, 15, 5, 5, 5, 'rfreferf', 'feferfer', 'ferfef', '2024-07-10 07:42:27'),
(3, 15, 5, 5, 5, 'rfreferf', 'feferfer', 'ferfef', '2024-07-10 07:43:45'),
(4, 30, 5, 5, 5, 'jk', 'noting ', 'dammn nice', '2025-10-15 14:58:11');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 4, 3, 'Micromax 81cm (32) HD Ready LED TV  (32T6175MHD, 2 x HDMI, 2 x USB)', 'Micromax test', 139900, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">General</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">1 TV Unit, Remote Controller, Battery (For Remote Controller), Quick Installation Guide and User Manual: All in One, Wall Mount Support</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">32T6175MHD</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">81 cm (32)</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Screen Type</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">LED</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Technology &amp; Resolutiontest</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">HD Ready, 1366 x 768</li></ul></li></ul>', 'micromax1.jpeg', 'micromax main image.jpg', 'micromax main image.jpg', 1200, 'In Stock', '2024-04-21 16:54:35', ''),
(2, 4, 4, 'Apple iPhone 6 (Silver, 16 GB)', 'Apple INC', 36990, 0, '<div class=\"_2PF8IO\" style=\"box-sizing: border-box; margin: 0px 0px 0px 110px; padding: 0px; flex: 1 1 0%; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">1 GB RAM | 16 GB ROM |</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">4.7 inch Retina HD Display</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">8MP Primary Camera | 1.2MP Front</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Li-Ion Battery</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">A8 Chip with 64-bit Architecture and M8 Motion Co-processor Processor</li></ul></div>', 'apple-iphone-6-1.jpeg', 'apple-iphone-6-2.jpeg', 'apple-iphone-6-3.jpeg', 0, 'In Stock', '2024-04-21 16:54:35', ''),
(3, 4, 4, 'Redmi Note 4 (Gold, 32 GB)  (With 3 GB RAM)', 'Redmi', 10999, 0, '<br><div><ol><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>4100 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 625 64-bit Processor<br></li></ol></div>', 'mi-redmi-note-4-1.jpeg', 'mi-redmi-note-4-2.jpeg', 'mi-redmi-note-4-3.jpeg', 0, 'In Stock', '2024-04-21 16:54:35', ''),
(4, 4, 4, 'Lenovo K6 Power (Silver, 32 GB) ', 'Lenovo', 9999, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>4000 mAh Li-Polymer Battery<br></li><li>Qualcomm Snapdragon 430 Processor<br></li></ul>', 'lenovo-k6-power-k33a42-1.jpeg', 'lenovo-k6-power-k33a42-2.jpeg', 'lenovo-k6-power-k33a42-3.jpeg', 45, 'In Stock', '2024-04-21 16:54:35', ''),
(5, 4, 4, 'Lenovo Vibe K5 Note (Gold, 32 GB)  ', 'Lenovo', 11999, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 128 GB<br></li><li>5.5 inch Full HD Display<br></li><li>13MP Primary Camera | 8MP Front<br></li><li>3500 mAh Li-Ion Polymer Battery<br></li><li>Helio P10 64-bit Processor<br></li></ul>', 'lenovo-k5-note-pa330010in-1.jpeg', 'lenovo-k5-note-pa330116in-2.jpeg', 'lenovo-k5-note-pa330116in-3.jpeg', 0, 'In Stock', '2024-04-21 16:54:35', ''),
(6, 4, 4, 'Micromax Canvas Mega 4G', 'Micromax', 6999, 0, '<ul><li>3 GB RAM | 16 GB ROM |<br></li><li>5.5 inch HD Display<br></li><li>13MP Primary Camera | 5MP Front<br></li><li>2500 mAh Battery<br></li><li>MT6735 Processor<br></li></ul>', 'micromax-canvas-mega-4g-1.jpeg', 'micromax-canvas-mega-4g-2.jpeg', 'micromax-canvas-mega-4g-3.jpeg', 35, 'In Stock', '2024-04-21 16:54:35', ''),
(7, 4, 4, 'SAMSUNG Galaxy On5', 'SAMSUNG', 7490, 0, '<ul><li>1.5 GB RAM | 8 GB ROM | Expandable Upto 128 GB<br></li><li>5 inch HD Display<br></li><li>8MP Primary Camera | 5MP Front<br></li><li>2600 mAh Li-Ion Battery<br></li><li>Exynos 3475 Processor<br></li></ul>', 'samsung-galaxy-on7-sm-1.jpeg', 'samsung-galaxy-on5-sm-2.jpeg', 'samsung-galaxy-on5-sm-3.jpeg', 20, 'In Stock', '2024-04-21 16:54:35', ''),
(8, 4, 4, 'OPPO A57', 'OPPO', 14990, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 256 GB<br></li><li>5.2 inch HD Display<br></li><li>13MP Primary Camera | 16MP Front<br></li><li>2900 mAh Battery<br></li><li>Qualcomm MSM8940 64-bit Processor<br></li></ul>', 'oppo-a57-na-original-1.jpeg', 'oppo-a57-na-original-2.jpeg', 'oppo-a57-na-original-3.jpeg', 0, 'In Stock', '2024-04-21 16:54:35', ''),
(9, 4, 5, 'Affix Back Cover for Mi Redmi Note 4', 'Techguru', 259, 0, '<ul><li>Suitable For: Mobile<br></li><li>Material: Polyurethane<br></li><li>Theme: No Theme<br></li><li>Type: Back Cover<br></li><li>Waterproof<br></li></ul>', 'amzer-amz98947-original-1.jpeg', 'amzer-amz98947-original-2.jpeg', 'amzer-amz98947-original-3.jpeg', 10, 'In Stock', '2024-04-21 16:54:35', ''),
(11, 4, 6, 'Acer ES 15 Pentium Quad Core', 'Acer', 19990, 0, '<ul><li>Intel Pentium Quad Core Processor ( )<br></li><li>4 GB DDR3 RAM<br></li><li>Linux/Ubuntu Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul>', 'acer-aspire-notebook-original-1.jpeg', 'acer-aspire-notebook-original-2.jpeg', 'acer-aspire-notebook-original-3.jpeg', 0, 'In Stock', '2024-04-21 16:54:35', ''),
(12, 4, 6, 'Micromax Canvas Laptab II (WIFI) Atom 4th Gen', 'Micromax', 10999, 0, '<ul><li>Intel Atom Processor ( 4th Gen )<br></li><li>2 GB DDR3 RAM<br></li><li>32 bit Windows 10 Operating System<br></li><li>11.6 inch Touchscreen Display<br></li></ul>', 'micromax-lt777w-2-in-1-laptop-original-1.jpeg', 'micromax-lt777w-2-in-1-laptop-original-2.jpeg', 'micromax-lt777w-2-in-1-laptop-original-3.jpeg', 0, 'In Stock', '2024-04-21 16:54:35', ''),
(13, 4, 6, 'HP Core i5 5th Gen', 'HP', 41990, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">HP Core i5 5th Gen - (4 GB/1 TB HDD/Windows 10 Home/2 GB Graphics) N8M28PA 15-ac123tx Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Turbo SIlver, 2.19 kg)</span><br><div><ul><li>Intel Core i5 Processor ( 5th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>1 TB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'hp-notebook-original-1.jpeg', 'hp-notebook-original-2.jpeg', 'hp-notebook-original-3.jpeg', 0, 'In Stock', '2024-04-21 16:54:35', ''),
(14, 4, 6, 'Lenovo Ideapad 110 APU Quad Core A6 6th Gen', 'Lenovo', 22990, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Lenovo Ideapad 110 APU Quad Core A6 6th Gen - (4 GB/500 GB HDD/Windows 10 Home) 80TJ00D2IH IP110 15ACL Notebook</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(15.6 inch, Black, 2.2 kg)</span><br><div><ul><li>AMD APU Quad Core A6 Processor ( 6th Gen )<br></li><li>4 GB DDR3 RAM<br></li><li>64 bit Windows 10 Operating System<br></li><li>500 GB HDD<br></li><li>15.6 inch Display<br></li></ul></div>', 'lenovo-ideapad-notebook-original-1.jpeg', 'lenovo-ideapad-notebook-original-2.jpeg', 'lenovo-ideapad-notebook-3.jpeg', 0, 'In Stock', '2024-04-21 16:54:35', ''),
(15, 3, 8, 'The Wimpy Kid Do -It- Yourself Book', 'ABC', 205, 250, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">The Wimpy Kid Do -It- Yourself Book</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(English, Paperback, Jeff Kinney)</span><br><div><ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Penguin Books Ltd<br></li><li>ISBN: 9780141339665, 0141339667<br></li><li>Edition: 1<br></li></ul></div>', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 'diary-of-a-wimpy-kid-do-it-yourself-book-original-1.jpeg', 50, 'In Stock', '2024-04-21 16:54:35', ''),
(16, 3, 8, 'Thea Stilton and the Tropical Treasure ', 'XYZ', 240, 0, '<ul><li>Language: English<br></li><li>Binding: Paperback<br></li><li>Publisher: Scholastic<br></li><li>ISBN: 9789351032083, 9351032086<br></li><li>Edition: 2015<br></li><li>Pages: 176<br></li></ul>', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', '22-thea-stilton-and-the-tropical-treasure-original-1.jpeg', 30, 'In Stock', '2024-04-21 16:54:35', ''),
(17, 5, 9, 'Induscraft Solid Wood King Bed With Storage', 'Induscraft', 32566, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">Induscraft Solid Wood King Bed With Storage</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(Finish Color - Honey Brown)</span><br><div><ul><li>Material Subtype: Rosewood (Sheesham)<br></li><li>W x H x D: 1850 mm x 875 mm x 2057.5 mm<br></li><li>Floor Clearance: 8 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-1.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-2.jpeg', 'inaf245-queen-rosewood-sheesham-induscraft-na-honey-brown-original-3.jpeg', 0, 'In Stock', '2024-04-21 16:54:35', ''),
(18, 5, 10, 'Nilkamal Ursa Metal Queen Bed', 'Nilkamal', 6523, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">@home by Nilkamal Ursa Metal Queen Bed</span><span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">&nbsp;&nbsp;(Finish Color - NA)</span><br><div><ul><li>Material Subtype: Carbon Steel<br></li><li>W x H x D: 1590 mm x 910 mm x 2070 mm<br></li><li>Floor Clearance: 341 mm<br></li><li>Delivery Condition: Knock Down<br></li></ul></div>', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-1.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-2.jpeg', 'flbdorsabrqbblk-queen-carbon-steel-home-by-nilkamal-na-na-original-3.jpeg', 0, 'In Stock', '2024-04-21 16:54:35', ''),
(19, 6, 12, 'Asian Casuals  (White, White)', 'Asian', 379, 0, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: White, White</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Outer Material: Denim</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><br></div></li></ul>', '1.jpeg', '2.jpeg', '3.jpeg', 45, 'In Stock', '2024-04-21 16:54:35', ''),
(20, 6, 12, 'Adidas MESSI 16.3 TF Football turf Shoes  (Blue)', 'Adidas', 4129, 5000, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Colour: Blue</li><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;\">Closure: Laced</li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Weight</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>200 g (per single Shoe) - Weight of the product may vary depending on size.</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Style</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Panel and Stitch Detail, Textured Detail</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Tip Shape</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Round</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Season</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>AW16</b></li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\"><b>Closure</b></div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"text-align: left; box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\"><b>Laced</b></li></ul></li></ul>', '1.jpeg', '2.jpeg', '3.jpeg', 0, 'In Stock', '2024-04-21 16:54:35', ''),
(21, 4, 14, 'LG 185 L 5 Star Inverter Direct-Cool Single Door Refrigerator (2023 Model, GL-D201APZU, Shiny Steel, Base stand with drawer)', 'LG', 13200, 145200, 'LG 185 L 5 Star Inverter Direct-Cool Single Door Refrigerator (2023 Model, GL-D201APZU, Shiny Steel, Base stand with drawer)<br>', '61HXVQ+KUQL._SL1500_.jpg', '71QuCUBXcNL._SL1500_.jpg', '51qTiWJdL2L._SL1500_.jpg', 499, 'In Stock', '2024-06-05 01:08:37', NULL),
(27, 4, 4, 'Iphone 15 Pro Max -1TB , PUre titanium body', 'Apple INC', 235000, 250000, '<div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0.4em; color: rgb(245, 245, 247); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px; background-color: rgb(0, 0, 0);\"><div role=\"cell gridcell\" class=\"techspecs-column\" style=\"margin-inline-start: 29.3984px; float: left; width: 352.797px; color: rgb(161, 161, 166);\"><span class=\"techspecs-small-heading\" aria-hidden=\"true\" style=\"font-weight: 600; color: rgb(245, 245, 247);\">iPhone 15 Pro Max</span><ul class=\"techspecs-list\" role=\"list\" style=\"margin-top: 15px; margin-bottom: 0px; margin-left: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\"><span style=\"font-weight: 600;\">Pro camera system</span></li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">48MP Main: 24 mm, ƒ/1.78 aperture, second‑generation sensor‑shift optical image stabilization, 100% Focus&nbsp;Pixels, support for super‑high‑resolution photos (24MP and 48MP)</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\"><br></li><li></li></ul><p class=\"typography-caption model-caption\" style=\"margin-top: var(--sk-paragraph-plus-element-margin,0.8em); margin-bottom: 0px; padding: 0px; font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em;\"></p></div></div><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0.4em; margin-bottom: 0px; color: rgb(245, 245, 247); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px; background-color: rgb(0, 0, 0);\"><div class=\"techspecs-column\" role=\"cell\" aria-colspan=\"2\" style=\"margin-inline-start: 245px; float: left; width: 735px; color: rgb(161, 161, 166);\"></div></div>', 'iph-removebg-preview.png', 'ip15.jpeg', 'ip15p.jpeg', 0, 'In Stock', '2024-07-09 15:44:52', NULL),
(28, 4, 6, 'Microsoft Surface Pro 9 with 120Hz display, 12 Gen CPU,\n16 Gb RAM, 256 Gb now in Nepal', 'Microsoft Inc', 160000, 200000, '<div style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, SegoeUI, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; text-align: center; overflow-y: unset;\"><p class=\"plp-product-name\" style=\"animation: 2s ease-out 0s 1 normal none running opac; font-size: 24px; font-weight: 600; margin-bottom: 0px; background: text rgb(0, 0, 0); -webkit-text-fill-color: transparent;\"></p><h2 class=\"h1 mb-1\" style=\"line-height: 70px; font-size: 3.9125rem; margin-bottom: 0px;\">Designed by Microsoft</h2></div><div style=\"color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, SegoeUI, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px; text-align: center; overflow-y: unset;\"></div><div id=\"plp-hero-description\" class=\"plp-hero-description lineup-animation\" style=\"animation: 2s ease-out 0s 1 normal none running opac; font-size: 18px; text-align: center; line-height: 26px; margin-bottom: 0px; margin-top: 16px; padding: 0px 0px 16px; color: rgb(0, 0, 0); font-family: &quot;Segoe UI&quot;, SegoeUI, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\">This is what you want in a PC. Power. Speed. The versatility of a touchscreen, and then some.<br><ul class=\"row list-unstyled feature-iconlist-360\" style=\"box-sizing: border-box; margin-right: -0.75rem; margin-bottom: 1rem; margin-left: -0.75rem; display: flex; flex-wrap: wrap; list-style: none; font-size: 16px; text-align: left;\"><li class=\"col-md-5 col-lg-6 d-flex align-center align-middle\" data-bi-id=\"c1c1c7m1r1a3\" data-bi-cn=\"c1c1c7m1r1a3\" style=\"box-sizing: border-box; position: relative; width: 448.172px; padding-right: 0.75rem; padding-left: 0.75rem; flex: 0 0 50%; max-width: 50%; display: flex !important; vertical-align: middle !important; padding-bottom: 60px; align-items: center;\"><picture style=\"box-sizing: border-box;\"><img alt=\"Processor icon.\" src=\"https://cdn-dynmedia-1.microsoft.com/is/image/microsoftcorp/Copilot--PC-vertical?fmt=png-alpha&amp;scl=1\" style=\"box-sizing: border-box; width: 90px;\"></picture><span class=\"mt-1 font-weight-semibold c-paragraph-3 align-middle pt-0 pl-3 col-md-12 col-lg-9\r\n                      \" style=\"box-sizing: border-box; position: relative; width: 318.125px; padding-right: 0.75rem; padding-left: 1rem !important; flex: 0 0 75%; max-width: 75%; margin-top: 0.25rem !important; padding-top: 0px !important; font-weight: 600 !important; vertical-align: middle !important; font-size: 30px; line-height: 42px;\">AI-accelerated power at 45 trillion operations per second<span style=\"box-sizing: border-box; position: relative; font-size: 22.5px; line-height: 0; vertical-align: baseline; top: -0.5em;\"><a aria-label=\"Footnote 1\" href=\"https://www.microsoft.com/en-us/surface/devices/surface-laptop-models#sup1\" class=\"ms-rte-link\" data-bi-id=\"n1c1c1c7m1r1a3\" data-bi-ct=\"text\" data-bi-cn=\"1\" style=\"box-sizing: border-box; color: rgb(0, 103, 184); overflow-wrap: break-word;\">1</a></span></span></li><li class=\"col-md-5 col-lg-6 d-flex align-center align-middle\" data-bi-id=\"c2c1c7m1r1a3\" data-bi-cn=\"c2c1c7m1r1a3\" style=\"box-sizing: border-box; position: relative; width: 448.172px; padding-right: 0.75rem; padding-left: 0.75rem; flex: 0 0 50%; max-width: 50%; display: flex !important; vertical-align: middle !important; padding-bottom: 60px; align-items: center;\"><picture style=\"box-sizing: border-box;\"><img alt=\"Battery icon.\" src=\"https://cdn-dynmedia-1.microsoft.com/is/image/microsoftcorp/MSFT-Battery-icon?fmt=png-alpha&amp;scl=1\" style=\"box-sizing: border-box; width: 90px;\"></picture><span class=\"mt-1 font-weight-semibold c-paragraph-3 align-middle pt-0 pl-3 col-md-12 col-lg-9\r\n                      \" style=\"box-sizing: border-box; position: relative; width: 318.125px; padding-right: 0.75rem; padding-left: 1rem !important; flex: 0 0 75%; max-width: 75%; margin-top: 0.25rem !important; padding-top: 0px !important; font-weight: 600 !important; vertical-align: middle !important; font-size: 30px; line-height: 42px;\">Up to 20 hours of battery life letting you focus, create, and play all day<span style=\"box-sizing: border-box; position: relative; font-size: 22.5px; line-height: 0; vertical-align: baseline; top: -0.5em;\"><a aria-label=\"Footnote 2\" href=\"https://www.microsoft.com/en-us/surface/devices/surface-laptop-models#sup2\" class=\"ms-rte-link\" data-bi-id=\"n1c2c1c7m1r1a3\" data-bi-ct=\"text\" data-bi-cn=\"2\" style=\"box-sizing: border-box; color: rgb(0, 103, 184); overflow-wrap: break-word;\">2</a></span></span></li><li class=\"col-md-5 col-lg-6 d-flex align-center align-middle\" data-bi-id=\"c3c1c7m1r1a3\" data-bi-cn=\"c3c1c7m1r1a3\" style=\"box-sizing: border-box; position: relative; width: 448.172px; padding-right: 0.75rem; padding-left: 0.75rem; flex: 0 0 50%; max-width: 50%; display: flex !important; vertical-align: middle !important; padding-bottom: 60px; align-items: center;\"><picture style=\"box-sizing: border-box;\"><img alt=\"Typing icon.\" src=\"https://cdn-dynmedia-1.microsoft.com/is/image/microsoftcorp/MSFT-Typing-icon?fmt=png-alpha&amp;scl=1\" style=\"box-sizing: border-box; width: 90px;\"></picture><span class=\"mt-1 font-weight-semibold c-paragraph-3 align-middle pt-0 pl-3 col-md-12 col-lg-9\r\n                      \" style=\"box-sizing: border-box; position: relative; width: 318.125px; padding-right: 0.75rem; padding-left: 1rem !important; flex: 0 0 75%; max-width: 75%; margin-top: 0.25rem !important; padding-top: 0px !important; font-weight: 600 !important; vertical-align: middle !important; font-size: 30px; line-height: 42px;\">Ultimate typing comfort and accessibility features</span></li><li class=\"col-md-5 col-lg-6 d-flex align-center align-middle\" data-bi-id=\"c4c1c7m1r1a3\" data-bi-cn=\"c4c1c7m1r1a3\" style=\"box-sizing: border-box; position: relative; width: 448.172px; padding-right: 0.75rem; padding-left: 0.75rem; flex: 0 0 50%; max-width: 50%; display: flex !important; vertical-align: middle !important; padding-bottom: 60px; align-items: center;\"><picture style=\"box-sizing: border-box;\"><img alt=\"Audio icon.\" src=\"https://cdn-dynmedia-1.microsoft.com/is/image/microsoftcorp/MSFT-audio-icon?fmt=png-alpha&amp;scl=1\" style=\"box-sizing: border-box; width: 90px;\"></picture><span class=\"mt-1 font-weight-semibold c-paragraph-3 align-middle pt-0 pl-3 col-md-12 col-lg-9\r\n                      \" style=\"box-sizing: border-box; position: relative; width: 318.125px; padding-right: 0.75rem; padding-left: 1rem !important; flex: 0 0 75%; max-width: 75%; margin-top: 0.25rem !important; padding-top: 0px !important; font-weight: 600 !important; vertical-align: middle !important; font-size: 30px; line-height: 42px;\">AI-enhanced Surface Studio Camera with Windows Studio effects</span></li></ul></div>', 'Screenshot 2024-07-10 at 13.01.56.png', 'sur.jpeg', 'Screenshot 2024-07-10 at 13.02.08.png', 0, 'In Stock', '2024-07-10 07:21:15', NULL),
(29, 10, 20, 'PlayStation 5 Console (Digital / Disk)', 'SONY ENTERTAINMENT', 65000, 80000, 'JUST ENJOY THE WORLD OF GAMES IN YOUR HAND&nbsp;', 'ps5.webp', 'ps5 pro.webp', 'ps5 1.jpg', 0, 'In Stock', '2024-07-25 07:40:44', NULL);
INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(30, 4, 4, 'Iphone 17 Pro Max -1TB ORANGE', 'Apple INC', 285000, 300000, '<div role=\"rowgroup\" class=\"techspecs-section section-finish\" data-analytics-section-engagement=\"name:finish\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: unset; color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Finish</div><div role=\"cell gridcell\" class=\"techspecs-column iphone small-spans-2-columns\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); width: 735px;\"><div class=\"content-wrapper content-iphone\"><figure class=\"image-finish-iphone\" role=\"img\" aria-label=\"iPhone 17, all five finishes, Black, White, Mist Blue, Sage, and Lavender, back exterior, Dual Fusion camera system, 2 lens, flash, microphone, Apple logo in center\" data-anim-lazy-image-download-complete=\"\" style=\"margin: 0px 0px 27px; padding: 0px; background-size: 392px 289px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/finish_iphone__dllhck02wuye_large_2x.jpg&quot;); width: 392px; height: 289px;\"></figure><p class=\"finish-caption\" style=\"margin-bottom: 13px; padding: 0px; font-weight: 600;\">Black, White, Mist Blue, Sage, Lavender</p></div><ul class=\"techspecs-list\" role=\"list\" style=\"margin-bottom: 0px; margin-left: 0px; margin-inline-start: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\">Aluminum design</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Ceramic Shield 2 front</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Color‑infused glass back (Black, Mist Blue, Sage, Lavender)</li></ul></div></div></div><div role=\"rowgroup\" class=\"techspecs-section section-capacity\" data-analytics-activitymap-region-id=\"capacity\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Capacity<span data-footnote=\"numbered-capacity\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-3\" aria-label=\"Footnote 1\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">1</a></span></div><div role=\"cell\" class=\"techspecs-column\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><ul class=\"techspecs-list\" role=\"list\" style=\"margin-bottom: 0px; margin-left: 0px; margin-inline-start: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\">256GB</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">512GB</li></ul></div></div></div><div role=\"rowgroup\" class=\"techspecs-section section-size-and-weight\" data-analytics-activitymap-region-id=\"size and weight\" style=\"padding-top: 59px; padding-bottom: 78px; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Size and Weight<span data-footnote=\"numbered-size-and-weight\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-4\" aria-label=\"Footnote 2\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">2</a></span></div><div role=\"cell gridcell\" class=\"techspecs-column small-spans-2-columns\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); width: 735px;\"><figure class=\"image-dimensions-iphone diagram\" role=\"img\" aria-label=\"Height: 5.89 inches (149.6 mm), Width: 2.81 inches (71.5 mm), Depth: 0.31 inch (7.95 mm)\" data-anim-lazy-image-download-complete=\"\" style=\"margin: 33px 0px 0px; padding: 0px; position: relative; z-index: 1; background-size: 368px 181px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/dimensions_iphone__d1hfk8hi5g6e_large_2x.jpg&quot;); width: 368px; height: 181px; margin-inline-start: 0px;\"><figcaption class=\"diagram-text diagram-text-width\" aria-hidden=\"true\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; position: absolute; z-index: 2; width: 70px; margin: 0px; bottom: 168px; right: -14px;\"><span style=\"font-weight: 600;\">Width:</span><p style=\"margin-bottom: 0px; padding: 0px;\">2.81 inches<br>(71.5 mm)</p></figcaption><figcaption class=\"diagram-text diagram-text-height\" aria-hidden=\"true\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; position: absolute; z-index: 2; width: 70px; margin: 0px; left: 3px; bottom: 120px;\"><span style=\"font-weight: 600;\">Height:</span><p style=\"margin-bottom: 0px; padding: 0px;\">5.89 inches<br>(149.6 mm)</p></figcaption><figcaption class=\"diagram-text diagram-text-depth\" aria-hidden=\"true\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; position: absolute; z-index: 2; width: 70px; margin: 0px; left: 272px; top: 131px;\"><span style=\"font-weight: 600;\">Depth:</span><p style=\"margin-bottom: 0px; padding: 0px;\">0.31 inch<br>(7.95 mm)</p></figcaption></figure><div class=\"weight-wrapper iphone\" style=\"margin-top: 3.4em; margin-inline-start: 2px;\"><span class=\"weight-copy\" aria-hidden=\"“true”\" style=\"font-weight: 600; display: inline-block;\">Weight:</span>&nbsp;<p class=\"weight-copy\" aria-hidden=\"“true”\" style=\"margin-bottom: 0px; padding: 0px; display: inline-block;\">6.24 ounces (177 grams)</p></div></div></div></div><div class=\"techspecs-section section-display\" role=\"rowgroup\" data-analytics-activitymap-region-id=\"display\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" aria-rowspan=\"2\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Display</div><div role=\"cell gridcell\" class=\"techspecs-column\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><figure class=\"image-display-iphone\" role=\"img\" aria-label=\"6.3-inch display\" data-anim-lazy-image-download-complete=\"\" style=\"margin: 6px 0px 28px; padding: 0px; background-size: 150px 307px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/display_iphone__e02nc45das8y_large_2x.jpg&quot;); width: 150px; height: 307px;\"></figure><ul class=\"techspecs-list\" role=\"list\" style=\"margin-bottom: 0px; margin-left: 0px; margin-inline-start: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\">Super&nbsp;Retina XDR display</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">6.3‑inch (diagonal) all‑screen OLED&nbsp;display</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">2622‑by‑1206-pixel resolution at 460&nbsp;ppi</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Dynamic Island</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Always-On display</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">ProMotion technology with adaptive refresh rates up to 120Hz</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">HDR display</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">True&nbsp;Tone</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Wide color (P3)</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Haptic Touch</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">2,000,000:1 contrast ratio (typical)</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">1000 nits max brightness (typical); 1600 nits peak brightness (HDR); 3000 nits peak brightness (outdoor); 1 nit minimum brightness</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Fingerprint-resistant oleophobic coating</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Anti-reflective coating</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Support for display of multiple languages and characters simultaneously</li></ul><p class=\"typography-caption model-caption\" style=\"margin-top: 29px; margin-bottom: 0px; padding: 0px; font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; width: 617.398px;\">The iPhone&nbsp;17 display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 6.27 inches diagonally (actual viewable area is less).</p></div></div></div><div role=\"rowgroup\" class=\"techspecs-section section-splash-water-resistance\" data-analytics-activitymap-region-id=\"splash-water-dust resistance\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Splash, Water, and Dust Resistant<span data-footnote=\"numbered-splash-water-resistance\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-5\" aria-label=\"Footnote 3\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">3</a></span></div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><p style=\"margin-bottom: 0px; padding: 0px;\">Rated IP68 (maximum depth of 6 meters up to 30 minutes) under IEC standard 60529</p></div></div></div><div class=\"techspecs-section section-apple-intelligence\" role=\"rowgroup\" data-analytics-activitymap-region-id=\"apple intelligence\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div class=\"techspecs-row\" role=\"row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div class=\"techspecs-rowheader\" role=\"rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Apple&nbsp;Intelligence</div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><p style=\"margin-bottom: 0px; padding: 0px;\">Apple&nbsp;Intelligence is integrated across your apps and experiences to help you communicate, express yourself, and get things done effortlessly. With groundbreaking privacy protections, it gives you peace of mind that no one else can access your data — not even Apple.<span data-footnote=\"numbered-apple-intelligence\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-6\" aria-label=\"Footnote 4\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">4</a></span></p><p style=\"margin-top: 13.6px; margin-bottom: 0px; padding: 0px;\"><a href=\"https://www.apple.com/apple-intelligence/\" data-analytics-title=\"learn more about apple intelligence\" class=\"icon-wrapper\" style=\"color: rgb(0, 102, 204); letter-spacing: inherit; text-decoration: none;\"><span class=\"icon-copy\">Learn more about Apple&nbsp;Intelligence</span><span class=\"icon icon-after more\" style=\"display: inline; position: static;\"></span></a></p></div></div></div><div role=\"rowgroup\" class=\"techspecs-section section-chip\" data-analytics-activitymap-region-id=\"chip\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Chip</div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><div class=\"row\" style=\"display: flex; flex-flow: wrap; width: 735px;\"><div class=\"column large-2 medium-3 small-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; min-width: 0px; flex-basis: 16.6667%; max-width: 16.6667%;\"><figure class=\"image-chip\" role=\"img\" aria-label=\"A19 chip\" data-anim-lazy-image-download-complete=\"\" style=\"margin: 0px; padding: 0px; background-size: 122px 122px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/chip__6hy1uruuluaa_large_2x.png&quot;); width: 122px; height: 122px;\"></figure></div><div class=\"column copy large-10 medium-9 small-12 small-push-0\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 60px; min-width: 0px; flex-basis: 83.3333%; max-width: 83.3333%;\"><ul class=\"techspecs-list\" role=\"list\" style=\"margin-bottom: 0px; margin-left: 0px; margin-inline-start: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\">A19 chip</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">6‑core CPU with 2 performance and 4 efficiency&nbsp;cores</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">5‑core GPU with Neural Accelerators</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">16‑core Neural&nbsp;Engine</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Hardware-accelerated ray tracing</li></ul></div></div></div></div></div><div role=\"rowgroup\" class=\"techspecs-section section-camera\" data-analytics-section-engagement=\"name:camera\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Camera</div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><ul class=\"techspecs-list\" role=\"list\" style=\"margin-bottom: 0px; margin-left: 0px; margin-inline-start: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\"><span style=\"font-weight: 600;\">48MP Dual Fusion camera system</span></li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">48MP Fusion Main: 26 mm, ƒ/1.6 aperture, sensor-shift optical image stabilization, 100% Focus&nbsp;Pixels, support for super-high-resolution photos (24MP and 48MP)</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Also enables 12MP optical-quality 2x Telephoto: 52 mm, ƒ/1.6 aperture, sensor-shift optical image stabilization, 100% Focus&nbsp;Pixels</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">48MP Fusion Ultra Wide: 13 mm, ƒ/2.2 aperture and 120° field of view, Hybrid&nbsp;Focus&nbsp;Pixels, support for super-high-resolution photos (24MP and 48MP)</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">2x optical zoom in, 2x optical zoom out; 4x optical zoom range</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Digital zoom up to 10x</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Sapphire crystal lens cover</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">True&nbsp;Tone flash</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Photonic Engine</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Deep Fusion</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Smart HDR 5</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Next-generation portraits with Focus and Depth&nbsp;Control</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Portrait Lighting with six effects</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Night mode</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Panorama (up to 63MP)</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Latest-generation Photographic Styles</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Spatial photos</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">48MP macro photography</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Wide color capture for photos and Live&nbsp;Photos</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Lens correction (Fusion Ultra Wide)</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Advanced red-eye correction</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Auto image stabilization</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Burst mode</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Photo geotagging</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Image formats captured: HEIF and JPEG</li></ul></div></div></div><div role=\"rowgroup\" class=\"techspecs-section section-video-recording\" data-analytics-activitymap-region-id=\"video recording\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Video Recording</div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><ul class=\"techspecs-list\" role=\"list\" style=\"margin-bottom: 0px; margin-left: 0px; margin-inline-start: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\">4K Dolby Vision video recording at 24 fps, 25 fps, 30 fps, or 60 fps</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">1080p Dolby Vision video recording at 25 fps, 30 fps, or 60 fps</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">720p Dolby Vision video recording at 30 fps</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Cinematic mode up to 4K Dolby Vision at 30 fps</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Action mode up to 2.8K Dolby Vision at 60 fps</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Macro video recording, including slo-mo and time-lapse</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Slo‑mo video support for 1080p at 120 fps or 240 fps</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Spatial video recording at 1080p at 30 fps</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Dual Capture up to 4K Dolby Vision at 30 fps</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Time‑lapse video with stabilization</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Night mode Time-lapse</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">QuickTake video up to 4K Dolby Vision at 60 fps</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Sensor-shift optical image stabilization for video (Fusion&nbsp;Main)</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Digital zoom up to 6x</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Audio zoom</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">True&nbsp;Tone flash</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Cinematic video stabilization (4K, 1080p, and 720p)</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Continuous autofocus video</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Take 8MP still photos while recording 4K video</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Playback zoom</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Video formats recorded: HEVC and H.264</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Spatial&nbsp;Audio and stereo recording</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Wind noise reduction</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Audio Mix</li></ul></div></div></div><div role=\"rowgroup\" class=\"techspecs-section section-front-camera\" data-analytics-activitymap-region-id=\"name:front camera\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Front Camera</div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><ul class=\"techspecs-list\" role=\"list\" style=\"margin-bottom: 0px; margin-left: 0px; margin-inline-start: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\">18MP Center&nbsp;Stage camera</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">ƒ/1.9 aperture</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Autofocus with Focus&nbsp;Pixels</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Retina Flash</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Tap to zoom and rotate</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Center Stage for photos</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Ultra-stabilized video</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Dual Capture</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Center Stage for video calls</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Photonic Engine</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Deep Fusion</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Smart HDR&nbsp;5</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Next-generation portraits with Focus and Depth&nbsp;Control</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Portrait Lighting with six effects</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Animoji and Memoji</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Night mode</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Latest-generation Photographic Styles</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Wide color capture for photos and Live&nbsp;Photos</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Lens correction</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Auto image stabilization</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Burst mode</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">4K Dolby&nbsp;Vision video recording at 24 fps, 25 fps, 30 fps, or 60 fps</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">1080p Dolby&nbsp;Vision video recording at 25 fps, 30 fps, or 60 fps</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Cinematic mode up to 4K Dolby Vision at 30 fps</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Slo-mo video support for 1080p at 120 fps</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Time‑lapse video with stabilization</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Night mode Time-lapse</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">QuickTake video up to 4K at 60 fps in Dolby&nbsp;Vision</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Cinematic video stabilization (4K, 1080p, and 720p)</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Spatial&nbsp;Audio and stereo recording</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Wind noise reduction</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Audio Mix</li></ul></div></div></div><div class=\"techspecs-section section-power-and-battery\" role=\"rowgroup\" data-analytics-activitymap-region-id=\"power and battery\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" aria-rowspan=\"2\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Power and Battery<span data-footnote=\"numbered-battery\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-7\" aria-label=\"Footnote 5\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">5</a></span></div><div role=\"cell gridcell\" class=\"techspecs-column\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><p style=\"margin-bottom: 0px; padding: 0px;\"><span style=\"font-weight: 600;\">Video playback</span><br>Up to 30 hours</p><p style=\"margin-top: 13.6px; margin-bottom: 0px; padding: 0px;\"><span style=\"font-weight: 600;\">Video playback (streamed)</span><br>Up to 27 hours</p><p style=\"margin-top: 13.6px; margin-bottom: 0px; padding: 0px;\">Built‑in rechargeable lithium‑ion battery<br><br><span style=\"font-weight: 600;\">Fast‑charge capable:</span><br>Up to 50% charge in 20 minutes<span data-footnote=\"numbered-magsafe\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-8\" aria-label=\"Footnote 6\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">6</a></span>&nbsp;with&nbsp;<a href=\"https://www.apple.com/shop/product/MGKN4AM/A/40w-dynamic-power-adapter-with-60w-max\" style=\"color: rgb(0, 102, 204); letter-spacing: inherit;\">40W adapter</a>&nbsp;or higher (available separately) paired with USB‑C charging cable<br>Up to 50% charge in 30 minutes<span data-footnote=\"numbered-magsafe\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-8\" aria-label=\"Footnote 6\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">6</a></span>&nbsp;with 30W adapter or higher paired with MagSafe Charger (both available separately)</p></div></div></div><div role=\"rowgroup\" class=\"techspecs-section section-face-id\" data-analytics-activitymap-region-id=\"face id\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Face&nbsp;ID</div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><ul class=\"techspecs-list\" role=\"list\" style=\"margin-bottom: 0px; margin-left: 0px; margin-inline-start: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\">Enabled by TrueDepth technology in the Center&nbsp;Stage front camera</li></ul></div></div></div><div role=\"rowgroup\" class=\"techspecs-section section-safety\" data-analytics-activitymap-region-id=\"safety\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Peace of Mind</div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><ul class=\"techspecs-list\" role=\"list\" style=\"margin-bottom: 0px; margin-left: 0px; margin-inline-start: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\">Emergency SOS via satellite<span data-footnote=\"numbered-sos\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-9\" aria-label=\"Footnote 7\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">7</a></span></li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Crash Detection<span data-footnote=\"numbered-crash-detection\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-10\" aria-label=\"Footnote 8\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">8</a></span></li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Roadside Assistance via satellite<span data-footnote=\"numbered-sos\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-9\" aria-label=\"Footnote 7\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">7</a></span></li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Messages via satellite<span data-footnote=\"numbered-sos\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-9\" aria-label=\"Footnote 7\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">7</a></span></li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Find&nbsp;My via satellite<span data-footnote=\"numbered-sos\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-9\" aria-label=\"Footnote 7\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">7</a></span></li></ul></div></div></div><div role=\"rowgroup\" class=\"techspecs-section section-cellular-and-wireless\" data-analytics-activitymap-region-id=\"cellular and wireless\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Cellular and Wireless</div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><div class=\"row model-group\" style=\"display: flex; flex-flow: wrap; width: 735px; margin-top: 0px;\"><div class=\"column\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; min-width: 0px;\"><ul class=\"techspecs-list\" role=\"list\" style=\"margin-bottom: 0px; margin-left: 0px; margin-inline-start: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\"><span style=\"font-weight: 600;\">Model A3258</span><span data-footnote=\"starred-model-id\" class=\"footnote footnote-supglyph\" style=\"position: relative; vertical-align: initial; text-underline-offset: -0.28em;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-2\" aria-label=\"Footnote ** symbol\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">**</a></span></li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">FDD‑5G NR (Bands n1, n2, n3, n5, n7, n8, n12, n14, n20, n25, n26, n28, n29, n30, n66, n70, n71, n75)</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">TDD‑5G NR (Bands n38, n40, n41, n48, n53, n77, n78, n79)</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">5G NR mmWave (Bands n258, n260, n261)</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">FDD‑LTE (Bands 1, 2, 3, 4, 5, 7, 8, 12, 13, 14, 17, 18, 19, 20, 25, 26, 28, 29, 30, 32, 66, 71)</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">TDD‑LTE (Bands 34, 38, 39, 40, 41, 42, 48, 53)</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">UMTS/HSPA+/DC-HSDPA (850, 900, 1700/2100, 1900, 2100 MHz)</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">GSM/EDGE (850, 900, 1800, 1900 MHz)</li></ul></div></div><div class=\"row model-group\" style=\"display: flex; flex-flow: wrap; width: 735px; margin-top: 40px;\"><div class=\"column\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; min-width: 0px;\"><ul class=\"techspecs-list\" role=\"list\" style=\"margin-bottom: 0px; margin-left: 0px; margin-inline-start: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\">5G (sub-6 GHz and mmWave) with 4x4 MIMO<span data-footnote=\"numbered-data-plan\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-11\" aria-label=\"Footnote 9\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">9</a></span></li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Gigabit LTE with 4x4 MIMO<span data-footnote=\"numbered-data-plan\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-11\" aria-label=\"Footnote 9\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">9</a></span><br><br></li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\"><span style=\"font-weight: 600;\">Apple N1 wireless networking chip</span></li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Wi‑Fi 7 (802.11be) with 2x2 MIMO<span data-footnote=\"numbered-wi-fi\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-12\" aria-label=\"Footnote 10\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">10</a></span></li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Bluetooth 6</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Thread networking technology<br><br></li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\"><span style=\"font-weight: 600;\">Apple second-generation Ultra Wideband chip</span><span data-footnote=\"numbered-ultra-wideband\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-13\" aria-label=\"Footnote 11\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">11</a></span><br><br></li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">NFC with reader mode</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Express Cards with power reserve</li></ul></div></div></div></div></div><div role=\"rowgroup\" class=\"techspecs-section section-location\" data-analytics-activitymap-region-id=\"location\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Location</div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><ul class=\"techspecs-list\" role=\"list\" style=\"margin-bottom: 0px; margin-left: 0px; margin-inline-start: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\">Precision dual-frequency GPS (GPS, GLONASS, Galileo, QZSS, BeiDou, and NavIC)</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Digital compass</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Wi‑Fi</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Cellular</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">iBeacon microlocation</li></ul></div></div></div><div class=\"techspecs-section section-external\" role=\"rowgroup\" data-analytics-section-engagement=\"name:buttons and connectors\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0.4em;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" aria-rowspan=\"2\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">External Buttons and Connectors</div><div role=\"cell\" class=\"techspecs-column small-spans-2-columns\" style=\"color: rgb(110, 110, 115); width: 735px; margin-bottom: 43px; margin-inline-start: 29.3984px;\"><figure class=\"image-external-connectors image-external-connectors-flipped diagram\" role=\"img\" aria-label=\"External Buttons and Connectors, front exterior, top,\r\n                Built-in stereo speaker, Built-in microphone, left side, Action Button, Volume up/down, right side, Side button, Camera Control. Bottom exterior, USB-C connector, Built-in microphones, Built-in stereo speaker\" data-anim-lazy-image-download-complete=\"\" style=\"margin: 13px 0px 37px; padding: 0px; position: relative; z-index: 1; background-size: 739px 617px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/external_connectors__cnl0kmakncgi_large_2x.jpg&quot;); width: 739px; height: 617px;\"><div class=\"diagram-text diagram-volume\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; position: absolute; z-index: 2; width: 111px; margin: 0px; text-align: center; left: 401px; bottom: 620px;\"><p class=\"diagram-text-item\" aria-hidden=\"true\" style=\"margin-bottom: 0px; padding: 0px;\">Volume up/down</p></div><div class=\"diagram-text diagram-ring\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; position: absolute; z-index: 2; width: 78px; margin: 0px; text-align: center; left: 533px; bottom: 620px;\"><p class=\"diagram-text-item\" aria-hidden=\"true\" style=\"margin-bottom: 0px; padding: 0px;\">Action button</p></div><div class=\"diagram-text diagram-camera-control\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; position: absolute; z-index: 2; width: 126px; margin: 0px; text-align: center; top: 424px; left: 193px;\"><p class=\"diagram-text-item\" aria-hidden=\"true\" style=\"margin-bottom: 0px; padding: 0px;\">Camera&nbsp;Control</p></div><div class=\"diagram-text diagram-side\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; position: absolute; z-index: 2; width: 106px; margin: 0px; text-align: center; top: 424px; left: 410px;\"><p class=\"diagram-text-item\" aria-hidden=\"true\" style=\"margin-bottom: 0px; padding: 0px;\">Side button</p></div><div class=\"diagram-text diagram-speaker-mic\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; position: absolute; z-index: 2; width: 126px; margin: 0px; text-align: end; top: 424px; left: 602px;\"><p class=\"diagram-text-item\" aria-hidden=\"true\" style=\"margin-bottom: 0px; padding: 0px;\">Built‑in&nbsp;stereo&nbsp;speaker<br>Built‑in microphone</p></div><div class=\"diagram-text diagram-lightning\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; position: absolute; z-index: 2; width: 170px; margin: 0px; text-align: center; left: 97px; bottom: 102px;\"><p class=\"diagram-text-item\" aria-hidden=\"true\" style=\"margin-bottom: 0px; padding: 0px;\">USB-C connector</p></div><div class=\"diagram-text diagram-mic\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; position: absolute; z-index: 2; width: 100px; margin: 0px; text-align: center; top: 618px; left: 133px;\"><p class=\"diagram-text-item\" aria-hidden=\"true\" style=\"margin-bottom: 0px; padding: 0px;\">Built‑in microphones</p></div><div class=\"diagram-text diagram-speaker\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; position: absolute; z-index: 2; width: 140px; margin: 0px; left: 264px; top: 618px;\"><p class=\"diagram-text-item\" aria-hidden=\"true\" style=\"margin-bottom: 0px; padding: 0px;\">Built‑in&nbsp;stereo&nbsp;speaker</p></div></figure></div></div><div role=\"row\" class=\"techspecs-row features\" style=\"margin-top: 0.4em; margin-bottom: 0.4em;\"><div class=\"techspecs-column\" role=\"cell\" aria-colspan=\"2\" style=\"margin-inline-start: 245px; color: rgb(110, 110, 115); float: left; width: 735px;\"><div class=\"headline-wrapper\"><span class=\"techspecs-small-heading\" style=\"font-weight: 600;\">Action button features</span><p style=\"margin-bottom: 0px; padding: 0px;\">Silent Mode, Focus, Camera, Visual&nbsp;Intelligence,<span data-footnote=\"numbered-visual-intelligence\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-14\" aria-label=\"Footnote 12\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">12</a></span>&nbsp;Flashlight, Voice Memo, Recognize Music, Translate, Magnifier, Controls, Shortcut, or Accessibility</p></div></div></div><div role=\"row\" class=\"techspecs-row features\" style=\"margin-top: 20px; margin-bottom: 0px;\"><div class=\"techspecs-column\" role=\"cell\" aria-colspan=\"2\" style=\"margin-inline-start: 245px; color: rgb(110, 110, 115); float: left; width: 735px;\"><div class=\"headline-wrapper\"><span class=\"techspecs-small-heading\" style=\"font-weight: 600;\">Camera&nbsp;controls</span><p style=\"margin-bottom: 0px; padding: 0px;\">Exposure, Depth, Zoom, Cameras, Styles, Tone</p></div></div></div></div><div class=\"techspecs-section section-charging-and-expansion\" role=\"rowgroup\" data-analytics-activitymap-region-id=\"charging and expansion\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div class=\"techspecs-row\" role=\"row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div class=\"techspecs-rowheader\" role=\"rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Charging and Expansion</div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><ul class=\"techspecs-list\" role=\"list\" style=\"margin-bottom: 0px; margin-left: 0px; margin-inline-start: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\"><span style=\"font-weight: 600;\">USB-C connector with support for:</span></li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Charging</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">DisplayPort</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">USB&nbsp;2 (up to 480Mb/s)</li></ul></div></div></div><div role=\"rowgroup\" class=\"techspecs-section section-magsafe\" data-analytics-activitymap-region-id=\"name:magsafe\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">MagSafe and Wireless Charging</div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><ul class=\"techspecs-list\" role=\"list\" style=\"margin-bottom: 0px; margin-left: 0px; margin-inline-start: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\">MagSafe wireless charging up to 25W<span data-footnote=\"numbered-magsafe\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-8\" aria-label=\"Footnote 6\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">6</a></span><br></li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Qi2 wireless charging up to 25W<span data-footnote=\"numbered-magsafe\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-8\" aria-label=\"Footnote 6\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">6</a></span><br></li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Magnet array</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Alignment magnet</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Accessory Identification NFC</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Magnetometer</li></ul></div></div></div><div role=\"rowgroup\" class=\"techspecs-section section-sensors\" data-analytics-activitymap-region-id=\"sensors\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Sensors</div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><ul class=\"techspecs-list\" role=\"list\" style=\"margin-bottom: 0px; margin-left: 0px; margin-inline-start: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\">Face&nbsp;ID</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Barometer</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">High dynamic range gyro</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">High-g accelerometer</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Proximity sensor</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Dual ambient light sensors</li></ul></div></div></div><div class=\"techspecs-section section-sim\" role=\"rowgroup\" data-analytics-activitymap-region-id=\"sim card\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div class=\"techspecs-row\" role=\"row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div class=\"techspecs-rowheader\" role=\"rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">SIM Card</div><div class=\"techspecs-column\" role=\"cell\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><ul class=\"techspecs-list\" role=\"list\" style=\"margin-bottom: 0px; margin-left: 0px; margin-inline-start: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\">Dual eSIM (two active eSIMs; stores eight or more eSIMs)<span data-footnote=\"numbered-sim\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-15\" aria-label=\"Footnote 13\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">13</a></span></li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">iPhone&nbsp;17 uses advanced eSIM technology for more convenience and security (not compatible with physical SIM&nbsp;cards).</li></ul><p style=\"margin-top: 13.6px; margin-bottom: 0px; padding: 0px;\"><a href=\"https://www.apple.com/esim/\" data-analytics-title=\"learn more about eSim\" class=\"icon-wrapper\" style=\"color: rgb(0, 102, 204); letter-spacing: inherit; text-decoration: none;\"><span class=\"icon-copy\">Learn more about eSIM</span><span class=\"icon icon-after more\" style=\"display: inline; position: static;\"></span></a></p><p style=\"margin-top: 13.6px; margin-bottom: 0px; padding: 0px;\"><a href=\"https://support.apple.com/118227?cid=general-iphone-marcom-08062025\" data-analytics-title=\"learn more about traveling with eSIM\" data-analytics-exit-link=\"\" class=\"icon-wrapper\" style=\"color: rgb(0, 102, 204); letter-spacing: inherit; text-decoration: none;\"><span class=\"icon-copy\">Learn more about traveling with eSIM</span><span class=\"icon icon-after more\" style=\"display: inline; position: static;\"></span></a></p></div></div></div><div role=\"rowgroup\" class=\"techspecs-section section-apple-pay\" data-analytics-section-engagement=\"name:apple pay\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Apple&nbsp;Pay</div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><ul class=\"techspecs-list\" role=\"list\" style=\"margin-bottom: 0px; margin-left: 0px; margin-inline-start: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\">Pay with your iPhone using Face&nbsp;ID in stores, within apps, and on the&nbsp;web</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Send and receive money in Messages with Apple&nbsp;Cash<span data-footnote=\"numbered-apple-cash\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-16\" aria-label=\"Footnote 14\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">14</a></span></li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Complete purchases made with Apple&nbsp;Pay on your Mac</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Pay for your ride using Express&nbsp;Transit<span data-footnote=\"numbered-express-transit\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-17\" aria-label=\"Footnote 15\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">15</a></span></li></ul><p style=\"margin-top: 13.6px; margin-bottom: 0px; padding: 0px;\"><a href=\"https://www.apple.com/apple-pay/\" data-analytics-title=\"learn more about apple pay\" class=\"icon-wrapper\" style=\"color: rgb(0, 102, 204); letter-spacing: inherit; text-decoration: none;\"><span class=\"icon-copy\">Learn more about Apple&nbsp;Pay</span><span class=\"icon icon-after more\" style=\"display: inline; position: static;\"></span></a></p><p style=\"margin-top: 13.6px; margin-bottom: 0px; padding: 0px;\"><a href=\"https://www.apple.com/apple-cash/\" data-analytics-title=\"learn more about apple cash\" class=\"icon-wrapper\" style=\"color: rgb(0, 102, 204); letter-spacing: inherit; text-decoration: none;\"><span class=\"icon-copy\">Learn more about Apple&nbsp;Cash</span><span class=\"icon icon-after more\" style=\"display: inline; position: static;\"></span></a></p></div></div></div><div role=\"rowgroup\" class=\"techspecs-section section-apple-card\" data-analytics-activitymap-region-id=\"apple card\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Apple&nbsp;Card</div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><ul class=\"techspecs-list\" role=\"list\" style=\"margin-bottom: 0px; margin-left: 0px; margin-inline-start: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\">Credit card created by Apple, designed for iPhone</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Get unlimited 3% Daily Cash at Apple and select merchants when you use Apple&nbsp;Pay,<span data-footnote=\"numbered-apple-card-merchants\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-18\" aria-label=\"Footnote 16\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">16</a></span>&nbsp;2% with Apple&nbsp;Pay, and 1% everywhere&nbsp;else</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Use the Wallet app to apply for, manage, and use Apple&nbsp;Card</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Titanium, laser‑etched physical credit card for use where Apple&nbsp;Pay is not accepted yet</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Share with up to five people, 13 years or older, in your Family&nbsp;Sharing group<span data-footnote=\"numbered-apple-card-sharing\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-19\" aria-label=\"Footnote 17\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">17</a></span>&nbsp;to track expenses and manage spending</li></ul><p style=\"margin-top: 13.6px; margin-bottom: 0px; padding: 0px;\"><a href=\"https://www.apple.com/apple-card/\" data-analytics-title=\"learn more about apple card\" class=\"icon-wrapper\" style=\"color: rgb(0, 102, 204); letter-spacing: inherit; text-decoration: none;\"><span class=\"icon-copy\">Learn more about Apple&nbsp;Card</span><span class=\"icon icon-after more\" style=\"display: inline; position: static;\"></span></a></p></div></div></div><div role=\"rowgroup\" class=\"techspecs-section section-video-calling\" data-analytics-activitymap-region-id=\"video calling\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Video Calling<span data-footnote=\"numbered-facetime\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-20\" aria-label=\"Footnote 18\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">18</a></span></div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><ul class=\"techspecs-list\" role=\"list\" style=\"margin-bottom: 0px; margin-left: 0px; margin-inline-start: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\">FaceTime&nbsp;video calling over cellular or Wi‑Fi</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">FaceTime&nbsp;HD (1080p) video calling over 5G or Wi-Fi</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Center&nbsp;Stage for video calling</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">SharePlay</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Screen sharing</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Portrait mode in FaceTime&nbsp;video</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Spatial&nbsp;Audio</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Voice Isolation and Wide Spectrum microphone modes</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Zoom with rear-facing camera</li></ul></div></div></div><div role=\"rowgroup\" class=\"techspecs-section section-audio-calling\" data-analytics-activitymap-region-id=\"audio calling\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Audio Calling<span data-footnote=\"numbered-facetime\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-20\" aria-label=\"Footnote 18\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">18</a></span></div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><ul class=\"techspecs-list\" role=\"list\" style=\"margin-bottom: 0px; margin-left: 0px; margin-inline-start: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\">FaceTime&nbsp;audio</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Voice over LTE (VoLTE)<span data-footnote=\"numbered-data-plan\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-11\" aria-label=\"Footnote 9\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">9</a></span></li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Wi‑Fi calling<span data-footnote=\"numbered-data-plan\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-11\" aria-label=\"Footnote 9\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">9</a></span></li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">SharePlay</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Screen sharing</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Spatial&nbsp;Audio</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Voice Isolation and Wide Spectrum microphone modes</li></ul></div></div></div><div role=\"rowgroup\" class=\"techspecs-section section-audio-playback\" data-analytics-activitymap-region-id=\"audio playback\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Audio Playback</div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><ul class=\"techspecs-list\" role=\"list\" style=\"margin-bottom: 0px; margin-left: 0px; margin-inline-start: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\">Supported formats include AAC, APAC, MP3, Apple&nbsp;Lossless, FLAC, Dolby&nbsp;Digital, Dolby&nbsp;Digital&nbsp;Plus, and Dolby&nbsp;Atmos</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Spatial&nbsp;Audio playback</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">User‑configurable maximum volume&nbsp;limit</li></ul></div></div></div><div role=\"rowgroup\" class=\"techspecs-section section-video-playback\" data-analytics-activitymap-region-id=\"video playback\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Video Playback</div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><ul class=\"techspecs-list\" role=\"list\" style=\"margin-bottom: 0px; margin-left: 0px; margin-inline-start: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\">Supported formats include HEVC, H.264, and&nbsp;AV1</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">HDR with Dolby Vision, HDR10+/HDR10, and&nbsp;HLG</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Up to 4K HDR AirPlay for mirroring, photos, and video out to Apple&nbsp;TV (2nd generation or later) or&nbsp;<span class=\"nowrap\" style=\"display: inline-block; text-decoration: inherit; text-wrap-mode: nowrap;\">AirPlay‑enabled</span>&nbsp;smart&nbsp;TV</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Video mirroring and video out support: Up to 4K HDR through native DisplayPort output over USB‑C or USB‑C Digital AV Adapter (model A2119; adapter sold separately)<span data-footnote=\"numbered-standard-dynamic-range\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-21\" aria-label=\"Footnote 19\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">19</a></span></li></ul></div></div></div><div role=\"rowgroup\" class=\"techspecs-section section-siri\" data-analytics-activitymap-region-id=\"siri\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Siri<span data-footnote=\"numbered-siri\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-22\" aria-label=\"Footnote 20\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">20</a></span></div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><ul class=\"techspecs-list\" role=\"list\" style=\"margin-bottom: 0px; margin-left: 0px; margin-inline-start: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\">Get help with everyday tasks like sending messages, setting reminders, and more</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Activate hands‑free with only your voice using “Siri” or “Hey&nbsp;Siri,” or use Type&nbsp;to&nbsp;Siri</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Protected by the strongest privacy of any intelligent assistant</li><li role=\"listitem\" style=\"margin: 0.4em 0px 0px; padding: 0px;\">Powered by Apple&nbsp;Intelligence, Siri is more natural and helpful<span data-footnote=\"numbered-apple-intelligence\" class=\"footnote footnote-number\" style=\"position: relative; font-size: 1em; vertical-align: initial; top: auto; text-underline-offset: -0.28em; font-feature-settings: &quot;numr&quot;;\"><a href=\"https://www.apple.com/iphone-17/specs/#footnote-6\" aria-label=\"Footnote 4\" data-modal-close=\"\" style=\"color: inherit; letter-spacing: inherit; vertical-align: inherit;\">4</a></span></li></ul><p style=\"margin-top: 13.6px; margin-bottom: 0px; padding: 0px;\"><a href=\"https://www.apple.com/siri/\" data-analytics-title=\"learn more about siri\" class=\"icon-wrapper\" style=\"color: rgb(0, 102, 204); letter-spacing: inherit; text-decoration: none;\"><span class=\"icon-copy\">Learn more about Siri</span><span class=\"icon icon-after more\" style=\"display: inline; position: static;\"></span></a></p></div></div></div><div role=\"rowgroup\" class=\"techspecs-section section-os\" data-analytics-activitymap-region-id=\"os\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Operating System</div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><ul class=\"techspecs-list\" role=\"list\" style=\"margin-bottom: 0px; margin-left: 0px; margin-inline-start: 0px; list-style: none;\"><li role=\"listitem\" style=\"margin: 0px; padding: 0px;\"><span style=\"font-weight: 600;\">iOS&nbsp;26</span><br>iOS is the world’s most personal and secure mobile operating system, packed with powerful features and designed to protect your privacy.</li></ul></div></div></div><div class=\"techspecs-section section-privacy\" role=\"rowgroup\" data-analytics-activitymap-region-id=\"privacy\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div class=\"techspecs-row\" role=\"row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div class=\"techspecs-rowheader\" role=\"rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Privacy</div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><p style=\"margin-bottom: 0px; padding: 0px;\">iPhone is built from the ground up to protect your personal information. Every iPhone has secure facial authentication. Apps need your permission to track your activity across other companies’ apps or websites. Your iMessages and FaceTime video calls are encrypted end‑to‑end. And much more.</p><p style=\"margin-top: 13.6px; margin-bottom: 0px; padding: 0px;\"><a href=\"https://www.apple.com/privacy/\" data-analytics-title=\"learn more about privacy features\" class=\"icon-wrapper\" style=\"color: rgb(0, 102, 204); letter-spacing: inherit; text-decoration: none;\"><span class=\"icon-copy\">Learn more about privacy features</span><span class=\"icon icon-after more\" style=\"display: inline; position: static;\"></span></a></p></div></div></div><div role=\"rowgroup\" class=\"techspecs-section section-accessibility\" data-analytics-activitymap-region-id=\"accessibility\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Accessibility</div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><div class=\"intro-wrapper\" style=\"margin-bottom: 35px;\"><p style=\"margin-bottom: 0px; padding: 0px;\">Built-in accessibility features supporting vision, mobility, hearing, speech, and cognitive needs help you get the most out of your iPhone — in the ways that work best for you.</p><p style=\"margin-top: 13.6px; margin-bottom: 0px; padding: 0px;\"><a href=\"https://www.apple.com/accessibility/\" data-analytics-title=\"learn more about accessibility\" aria-label=\"Learn more about Accessibility\" class=\"icon-wrapper\" style=\"color: rgb(0, 102, 204); letter-spacing: inherit; text-decoration: none;\"><span class=\"icon-copy\">Learn&nbsp;more</span><span class=\"icon icon-after more\" style=\"display: inline; position: static;\"></span></a></p></div><span class=\"techspecs-small-heading\" style=\"font-weight: 600;\">Features include:</span><ul class=\"techspecs-os-features\" style=\"margin-inline-start: 1.17647em; column-count: 3; margin-top: 0.4em; margin-bottom: -0.4em; margin-left: 0px; column-gap: 0.117647em;\"><li style=\"margin: 0px; padding: 0px 0px 0.4em; margin-inline-start: 1.05882em; break-inside: avoid;\">VoiceOver</li><li style=\"margin: 0px; padding: 0px 0px 0.4em; margin-inline-start: 1.05882em; break-inside: avoid;\">Zoom</li><li style=\"margin: 0px; padding: 0px 0px 0.4em; margin-inline-start: 1.05882em; break-inside: avoid;\">Magnifier</li><li style=\"margin: 0px; padding: 0px 0px 0.4em; margin-inline-start: 1.05882em; break-inside: avoid;\">Voice Control</li><li style=\"margin: 0px; padding: 0px 0px 0.4em; margin-inline-start: 1.05882em; break-inside: avoid;\">Switch Control</li><li style=\"margin: 0px; padding: 0px 0px 0.4em; margin-inline-start: 1.05882em; break-inside: avoid;\">AssistiveTouch</li><li style=\"margin: 0px; padding: 0px 0px 0.4em; margin-inline-start: 1.05882em; break-inside: avoid;\">Eye Tracking</li><li style=\"margin: 0px; padding: 0px 0px 0.4em; margin-inline-start: 1.05882em; break-inside: avoid;\">RTT and TTY support</li><li style=\"margin: 0px; padding: 0px 0px 0.4em; margin-inline-start: 1.05882em; break-inside: avoid;\">Closed Captions</li><li style=\"margin: 0px; padding: 0px 0px 0.4em; margin-inline-start: 1.05882em; break-inside: avoid;\">Live Captions</li><li style=\"margin: 0px; padding: 0px 0px 0.4em; margin-inline-start: 1.05882em; break-inside: avoid;\">Personal Voice</li><li style=\"margin: 0px; padding: 0px 0px 0.4em; margin-inline-start: 1.05882em; break-inside: avoid;\">Live Speech</li><li style=\"margin: 0px; padding: 0px 0px 0.4em; margin-inline-start: 1.05882em; break-inside: avoid;\">Type to Siri</li><li style=\"margin: 0px; padding: 0px 0px 0.4em; margin-inline-start: 1.05882em; break-inside: avoid;\">Vocal Shortcuts</li><li style=\"margin: 0px; padding: 0px 0px 0.4em; margin-inline-start: 1.05882em; break-inside: avoid;\">Spoken Content</li></ul></div></div></div><div role=\"rowgroup\" class=\"techspecs-section section-built-in-apps\" data-analytics-section-engagement=\"name:built-in apps\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Built-in Apps</div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><div class=\"techspecs-appgrid\" style=\"margin-inline-start: calc(-9.25926% + 28.8889px); margin-bottom: -2.2em; display: flex; flex-wrap: wrap;\"><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-apple-store\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-apple-store\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_apple_store__b14wltis611e_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-apple-store\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Apple&nbsp;Store</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-app-store\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-app-store\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_app_store__etxukgplq4qe_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-app-store\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">App Store</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-books\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-books\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_books__c3glf2ainx6q_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-books\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Books</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-calculator\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-calculator\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_calculator__bdw7lrdwheia_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-calculator\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Calculator</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-calendar\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-calendar\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_calendar__bsnbkfo5v282_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-calendar\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Calendar</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-camera\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-camera\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_camera__c7oaioonl9w2_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-camera\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Camera</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-clips\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-clips\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_clips__gnfrtjwi9liu_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-clips\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Clips</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-clock\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-clock\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_clock__bdzszoq61u5e_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-clock\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Clock</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-compass\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-compass\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_compass__bugg1gvdpfyu_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-compass\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Compass</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-contacts\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-contacts\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_contacts__bu3lmopig2fm_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-contacts\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Contacts</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-facetime\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-facetime\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_facetime__b5d4c3a2x5le_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-facetime\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">FaceTime</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-files\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-files\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_files__eobvktslar6u_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-files\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Files</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-find-my\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-find-my\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_find_my__ev6lntnm5l26_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-find-my\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Find My</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-fitness\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-fitness\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_fitness__cu2ii2406ju6_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-fitness\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Fitness</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-freeform\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-freeform\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_freeform__e3txhhhntuoi_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-freeform\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Freeform</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-garageband\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-garageband\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_garageband__gny93h27z02m_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-garageband\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">GarageBand</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-health\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-health\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_health__ebl2rg473je6_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-health\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Health</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-homekit\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-homekit\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_homekit__bpcl5f4yt1au_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-homekit\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Home</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-imovie\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-imovie\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_imovie__fpak677cs1ua_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-imovie\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">iMovie</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-itunes-store\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-itunes-store\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_itunes_store__b2hxbjrazdn6_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-itunes-store\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">iTunes Store</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-journal\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-journal\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_journal__e7ejkmg1ol4y_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-journal\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Journal</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-keynote\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-keynote\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_keynote__f46wunp90dyu_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-keynote\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Keynote</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-magnifier\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-magnifier\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_magnifier__c1e9bdfc7no2_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-magnifier\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Magnifier</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-mail\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-mail\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_mail__ddctuqulywae_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-mail\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Mail</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-maps\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-maps\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_maps__ftr1vhbmpnee_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-maps\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Maps</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-measure\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-measure\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_measure__fkrfcj4e9cia_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-measure\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Measure</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-messages\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-messages\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_messages__b308kw1qkqaa_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-messages\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Messages</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-music\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-music\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_music__ed2qlvxfam6a_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-music\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Music</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-news\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-news\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_news__b7psgqfxyfea_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-news\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">News</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-notes\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-notes\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_notes__b4ttzpcfolw2_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-notes\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Notes</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-numbers\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-numbers\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_numbers__cz3w753oowqe_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-numbers\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Numbers</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-pages\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-pages\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_pages__cuzohh8ke6aa_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-pages\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Pages</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-passwords\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-passwords\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_passwords__cooj6m6yzzbm_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-passwords\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Passwords</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-phone\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-phone\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_phone__fxvnqb391d6q_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-phone\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Phone</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-photos\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-photos\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_photos__f9pboca4gt2e_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-photos\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Photos</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-podcasts\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-podcasts\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_podcasts__b2l995k500mu_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-podcasts\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Podcasts</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-reminders\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-reminders\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_reminders__6raj2ejz3f6e_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-reminders\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Reminders</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-safari\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-safari\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_safari__btgnat8h8tiu_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-safari\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Safari</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-settings\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-settings\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_settings__bjhu1253cg76_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-settings\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Settings</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-shortcuts\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-shortcuts\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_shortcuts__f8uhdrddcxme_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-shortcuts\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Shortcuts</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-stocks\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-stocks\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_stocks__tygsevs0r16m_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-stocks\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Stocks</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-tips\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-tips\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_tips__dhai89stgiie_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-tips\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Tips</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-translate\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-translate\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_translate__esrrculay4sy_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-translate\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Translate</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-tv\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-tv\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_tv__egjganohtiwm_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-tv\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">TV</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-voicememo\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-voicememo\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_voicememo__d26x8x4sdvau_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-voicememo\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Voice Memos</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-wallet\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-wallet\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_wallet__f5h41n3qaeem_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-wallet\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Wallet</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-watch\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-watch\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_watch__dtdjld67o8eq_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-watch\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Watch</figcaption></figure><figure class=\"techspecs-appgrid-app\" role=\"img\" aria-labelledby=\"appgrid-app-label-weather\" style=\"margin: 0px 0px 2.2em; padding: 0px; flex: 0 0 16.6667%;\"><div class=\"techspecs-appgrid-app-icon techspecs-app-icon-weather\" data-anim-lazy-image-download-complete=\"\" style=\"width: 52px; height: 52px; margin: 0px auto 0.375em; background-size: 52px 52px; background-repeat: no-repeat; background-image: url(&quot;/v/iphone-17/c/images/specs/icon_weather__fic6ysn9y9ua_large_2x.png&quot;);\"></div><figcaption id=\"appgrid-app-label-weather\" class=\"techspecs-appgrid-app-label\" style=\"font-size: 12px; line-height: 1.33337; letter-spacing: -0.01em; text-align: center;\">Weather</figcaption></figure></div><div class=\"copy-wrapper\" style=\"margin-top: 35px;\">For a complete list of Apple apps available on iPhone, see&nbsp;<a data-analytics-title=\"apple.com/apps\" href=\"https://www.apple.com/apps/\" style=\"color: rgb(0, 102, 204); letter-spacing: inherit;\">apple.com/apps</a>.</div></div></div></div><div role=\"rowgroup\" class=\"techspecs-section section-hearing-aids\" data-analytics-activitymap-region-id=\"hearing aids\" style=\"padding-top: 3.58824em; padding-bottom: 3.29412em; border-top: 1px solid rgb(210, 210, 215); color: rgb(29, 29, 31); font-family: &quot;SF Pro Text&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 17px; letter-spacing: -0.374px;\"><div role=\"row\" class=\"techspecs-row\" style=\"margin-top: 0px; margin-bottom: 0px;\"><div role=\"rowheader\" class=\"techspecs-rowheader\" style=\"width: 215.594px; font-size: 24px; line-height: 1.16667; font-weight: 600; letter-spacing: 0.009em; font-family: &quot;SF Pro Display&quot;, &quot;SF Pro Icons&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; position: relative; margin-top: -0.176471em; float: left;\">Rating for Hearing&nbsp;Aids</div><div role=\"cell\" class=\"techspecs-column\" aria-colspan=\"2\" style=\"margin-inline-start: 29.3984px; color: rgb(110, 110, 115); float: left; width: 735px;\"><p style=\"margin-bottom: 0px; padding: 0px;\">Hearing Aid Compatible</p></div></div></div>', '1.jpg', '2.jpg', '3.jpg', 1000, 'In Stock', '2025-10-15 14:57:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Led Television', '2024-01-20 16:24:52', ''),
(3, 4, 'Television', '2024-01-20 16:24:52', ''),
(4, 4, 'Mobiles', '2024-01-20 16:24:52', ''),
(5, 4, 'Mobile Accessories', '2024-01-20 16:24:52', ''),
(6, 4, 'Laptops', '2024-01-20 16:24:52', ''),
(7, 4, 'Computers', '2024-01-20 16:24:52', ''),
(8, 3, 'Comics', '2024-01-20 16:24:52', ''),
(9, 5, 'Beds', '2024-01-20 16:24:52', ''),
(10, 5, 'Sofas', '2024-01-20 16:24:52', ''),
(11, 5, 'Dining Tables', '2024-01-20 16:24:52', ''),
(12, 6, 'Mens Fashion', '2024-01-20 16:24:52', '2024-07-11 21:46:59'),
(14, 4, 'Refrigerator', '2024-06-05 01:07:31', ''),
(15, 6, 'Women\\\'s Fashion', '2024-07-11 16:04:14', ''),
(16, 6, 'Women\\\'s Fashion', '2024-07-11 16:05:46', NULL),
(17, 6, 'Women\\\'s Fashion', '2024-07-11 16:06:20', NULL),
(18, 6, 'Women\\\'s Fashion', '2024-07-11 16:06:36', NULL),
(19, 6, 'Women\\\'s Fashion', '2024-07-11 16:06:57', NULL),
(20, 10, 'Consoles', '2024-07-25 07:31:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(5, 'hehe@gmail.com', 0x3a3a3100000000000000000000000000, '2024-07-09 07:04:19', NULL, 0),
(6, 'hehe@hehe.com', 0x3a3a3100000000000000000000000000, '2024-07-09 07:06:14', NULL, 1),
(9, 'hehe@hehe.com', 0x3a3a3100000000000000000000000000, '2024-07-09 13:22:37', NULL, 1),
(10, 'hehe@hehe.com', 0x3139322e3136382e312e363800000000, '2024-07-10 07:45:41', NULL, 1),
(11, 'hehe@hehe.com', 0x3a3a3100000000000000000000000000, '2024-07-12 10:46:02', NULL, 0),
(12, 'hehe@hehe.com', 0x3a3a3100000000000000000000000000, '2024-07-12 10:46:09', NULL, 1),
(13, 'hehe@hehe.com', 0x3a3a3100000000000000000000000000, '2024-07-12 13:25:02', NULL, 0),
(14, 'hehe@hehe.com', 0x3a3a3100000000000000000000000000, '2024-07-12 13:25:07', NULL, 1),
(15, 'jyalkanda69@gmail.com', 0x3132372e302e302e3100000000000000, '2024-07-13 13:58:27', NULL, 0),
(16, 'jyalkanda69@gmail.com', 0x3132372e302e302e3100000000000000, '2024-07-13 13:58:45', NULL, 0),
(17, 'user.user@gmai.com', 0x3132372e302e302e3100000000000000, '2024-07-21 03:55:59', NULL, 0),
(18, 'user.user@gmail.com', 0x3132372e302e302e3100000000000000, '2024-07-21 03:56:11', NULL, 0),
(19, 'user.user@gmai.com', 0x3132372e302e302e3100000000000000, '2024-07-21 03:57:16', NULL, 1),
(20, 'hehe@hehe.com', 0x3a3a3100000000000000000000000000, '2024-07-25 07:53:34', NULL, 1),
(21, 'jace.web.org@gmail.com', 0x3a3a3100000000000000000000000000, '2024-08-02 08:04:12', NULL, 0),
(22, 'jk@jk.com', 0x3a3a3100000000000000000000000000, '2024-08-02 08:05:00', '02-08-2024 01:36:34 PM', 1),
(23, 'yugsapkota101@gmail.com', 0x3132372e302e302e3100000000000000, '2024-08-02 08:08:20', NULL, 1),
(24, 'jk@jk.com', 0x3a3a3100000000000000000000000000, '2024-08-02 08:13:30', NULL, 1),
(25, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-25 15:32:26', NULL, 0),
(26, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-25 15:32:35', NULL, 0),
(27, 'tes@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-25 15:32:58', NULL, 0),
(28, '1@1.com', 0x3a3a3100000000000000000000000000, '2024-10-25 15:33:49', NULL, 1),
(29, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-02 18:02:18', NULL, 1),
(30, 'test@gamil.com', 0x3a3a3100000000000000000000000000, '2025-10-15 14:45:02', NULL, 0),
(31, 'jhapendrakandel.mac@gmail.com', 0x3a3a3100000000000000000000000000, '2025-10-15 14:45:47', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(6, 'amster', 'hehe@hehe.com', 123456789, '202cb962ac59075b964b07152d234b70', 'Nepal', 'np', 'no', 123, 'Nepal', 'ktm', 'ktm', 123, '2024-07-09 07:03:59', NULL),
(24, 'jk', 'jk@jk.com', 123, '202cb962ac59075b964b07152d234b70', '32432', '32423', '3432', 43242, 'np', 'nop', 'np', 13123, '2024-08-02 08:04:52', NULL),
(25, 'Yug Sapkota', 'yugsapkota101@gmail.com', 9851351798, '3354045a397621cd92406f1f98cde292', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-02 08:07:55', NULL),
(26, 'test', 'test@gmail.com', 123456789, '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-25 15:32:14', NULL),
(27, 'test', '1@1.com', 1234, '25f9e794323b453885f5181f1b624d0b', 'Banshidhar-marg\r\nchandol/ bishalnagar', 'ktm', 'kathmandu', 44600, 'Banshidhar-marg\r\nchandol/ bishalnagar', 'ktm', 'kathmandu', 44600, '2024-10-25 15:33:40', NULL),
(28, 'test', 'tes@gmail.com', 1234, '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-01-02 18:01:56', NULL),
(29, 'jk', 'jhapendrakandel.mac@gmail.com', 123456789, '25f9e794323b453885f5181f1b624d0b', 'Banshidhar-marg\r\nchandol/ bishalnagar', 'ktm', 'kathmandu', 44600, 'Banshidhar-marg\r\nchandol/ bishalnagar', 'ktm', 'kathmandu', 44600, '2025-10-15 14:45:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(3, 29, 30, '2025-10-15 14:58:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `sns_db`
--
CREATE DATABASE IF NOT EXISTS `sns_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sns_db`;

-- --------------------------------------------------------

--
-- Table structure for table `comment_list`
--

CREATE TABLE `comment_list` (
  `id` int(30) NOT NULL,
  `post_id` int(30) NOT NULL,
  `member_id` int(30) NOT NULL,
  `message` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment_list`
--

INSERT INTO `comment_list` (`id`, `post_id`, `member_id`, `message`, `date_created`, `date_updated`) VALUES
(2, 2, 1, 'Sample 101', '2022-05-03 13:57:13', '2022-05-03 13:57:13'),
(3, 2, 1, '123', '2022-05-03 13:58:12', '2022-05-03 13:58:12'),
(6, 2, 1, 'Comment 123', '2022-05-03 13:58:56', '2022-05-03 13:58:56'),
(10, 1, 2, 'test comment', '2022-05-03 14:29:03', '2022-05-03 14:29:03'),
(11, 11, 1, 'Master pieace', '2022-05-03 15:35:51', '2022-05-03 15:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `like_list`
--

CREATE TABLE `like_list` (
  `post_id` int(30) NOT NULL,
  `member_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `like_list`
--

INSERT INTO `like_list` (`post_id`, `member_id`) VALUES
(2, 1),
(2, 2),
(1, 2),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `member_list`
--

CREATE TABLE `member_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=Pending, 1=Approved, 2 = Denied, 3=Blocked',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member_list`
--

INSERT INTO `member_list` (`id`, `firstname`, `middlename`, `lastname`, `email`, `password`, `avatar`, `status`, `date_created`, `date_updated`) VALUES
(1, 'Mark', 'D', 'Cooper', 'mcooper@sample.com', 'c7162ff89c647f444fcaa5c635dac8c3', 'uploads/member/1.png?v=1651542663', 0, '2022-05-03 09:51:03', '2022-05-03 09:51:03'),
(2, 'Claire', 'D', 'Blake', 'cblake@sample.com', '4744ddea876b11dcb1d169fadf494418', 'uploads/member/2.png?v=1651559268', 0, '2022-05-03 14:27:48', '2022-05-03 14:27:48');

-- --------------------------------------------------------

--
-- Table structure for table `member_meta`
--

CREATE TABLE `member_meta` (
  `member_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_list`
--

CREATE TABLE `post_list` (
  `id` int(30) NOT NULL,
  `member_id` int(30) NOT NULL,
  `caption` text NOT NULL,
  `upload_path` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_list`
--

INSERT INTO `post_list` (`id`, `member_id`, `caption`, `upload_path`, `date_created`, `date_updated`) VALUES
(1, 1, 'Sample Post 101', 'uploads/posts/202205030001/', '2022-05-03 11:13:02', '2022-05-03 11:13:02'),
(2, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras laoreet accumsan sem, vel egestas diam eleifend sit amet. Praesent egestas ullamcorper nunc. \r\n\r\nMaecenas nibh diam, porta vitae pulvinar a, vulputate at turpis. Vivamus dui lectus, hendrerit vel augue nec, porta maximus mi. Integer tincidunt maximus dictum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aliquam id maximus erat.', 'uploads/posts/202205030002/', '2022-05-03 11:56:51', '2022-05-03 11:56:51'),
(3, 2, 'Vestibulum nibh enim, porttitor lobortis sapien in, lacinia mollis nisi. Fusce aliquam magna sed ullamcorper faucibus. Ut fermentum sem ultrices mattis dictum. Aliquam erat volutpat. Sed varius erat non porttitor tristique. Fusce non ornare turpis. Nulla lacinia eleifend nulla quis tristique. Nulla quis mollis augue, eget convallis felis. Sed porttitor, leo a varius scelerisque, metus enim sodales lorem, ac convallis diam quam ac sem. Nulla consequat aliquam egestas. Nullam turpis turpis, tempor vitae ligula vitae, interdum consequat enim.', 'uploads/posts/202205030003/', '2022-05-03 14:29:41', '2022-05-03 14:29:41'),
(11, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc aliquam enim eget rutrum elementum. Aliquam pretium urna eu massa tempus, in tempus felis efficitur. Integer ex tellus, porta at nisi et, auctor tempor nisi. Proin pulvinar ac tortor blandit tempor. Suspendisse ut aliquam felis. Morbi eleifend egestas rhoncus. Integer eu velit ullamcorper nisl dignissim commodo vel et sapien. Vestibulum ultricies ligula quis congue faucibus. Cras vitae aliquet mauris. Nunc vitae magna ut eros pulvinar rhoncus nec et justo. Morbi id magna sit amet sem fermentum laoreet. Duis condimentum ante non fermentum feugiat.', 'uploads/posts/202205030006/', '2022-05-03 15:35:36', '2022-05-03 15:35:36');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Simple Social Networking Site'),
(6, 'short_name', 'InstaMage - PHP'),
(11, 'logo', 'uploads/logo.png?v=1651540223'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover.png?v=1651540931');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatars/1.png?v=1649834664', NULL, 1, '2021-01-20 14:02:37', '2022-04-13 15:24:24'),
(3, 'John', NULL, 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', 'uploads/avatars/3.png?v=1650527149', NULL, 2, '2022-04-21 15:45:49', '2022-04-21 15:46:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment_list`
--
ALTER TABLE `comment_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `like_list`
--
ALTER TABLE `like_list`
  ADD KEY `post_id` (`post_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `member_list`
--
ALTER TABLE `member_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_meta`
--
ALTER TABLE `member_meta`
  ADD KEY `individual_id` (`member_id`);

--
-- Indexes for table `post_list`
--
ALTER TABLE `post_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment_list`
--
ALTER TABLE `comment_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `member_list`
--
ALTER TABLE `member_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post_list`
--
ALTER TABLE `post_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment_list`
--
ALTER TABLE `comment_list`
  ADD CONSTRAINT `member_id_fk_cl` FOREIGN KEY (`member_id`) REFERENCES `member_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `post_id_fk_cl` FOREIGN KEY (`post_id`) REFERENCES `post_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `like_list`
--
ALTER TABLE `like_list`
  ADD CONSTRAINT `member_id_fk_ll` FOREIGN KEY (`member_id`) REFERENCES `member_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `post_id_fk_ll` FOREIGN KEY (`post_id`) REFERENCES `post_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `member_meta`
--
ALTER TABLE `member_meta`
  ADD CONSTRAINT `member_id_fk_mm` FOREIGN KEY (`member_id`) REFERENCES `member_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `post_list`
--
ALTER TABLE `post_list`
  ADD CONSTRAINT `member_id_fk_pl` FOREIGN KEY (`member_id`) REFERENCES `member_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
--
-- Database: `test_sql_injection`
--
CREATE DATABASE IF NOT EXISTS `test_sql_injection` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test_sql_injection`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123'),
(2, 'test', 'test123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `WIFI`
--
CREATE DATABASE IF NOT EXISTS `WIFI` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `WIFI`;

-- --------------------------------------------------------

--
-- Table structure for table `internet_survey`
--

CREATE TABLE `internet_survey` (
  `TimeOFSUB` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `device_used` varchar(255) NOT NULL,
  `purpose_of_usage` text NOT NULL,
  `duration_of_usage` varchar(255) NOT NULL,
  `websites_visited` text NOT NULL,
  `apps_used` text NOT NULL,
  `data_usage` enum('high','mid','low') NOT NULL,
  `frequency_of_bandwidth_used` varchar(255) NOT NULL,
  `using_dns` enum('yes','no') NOT NULL,
  `using_vpn` enum('yes','no') NOT NULL,
  `banned_websites_apps` text DEFAULT NULL,
  `letter_to_isp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `attempt_count` int(11) DEFAULT 0,
  `platform` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `email`, `password`, `attempt_count`, `platform`, `time`) VALUES
(84, 'Qera95847@gmail.com', 'QQQQQQQ11122uuh', 1, 'FB', '2025-10-15 15:03:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `internet_survey`
--
ALTER TABLE `internet_survey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `internet_survey`
--
ALTER TABLE `internet_survey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
