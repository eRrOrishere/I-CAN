-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 12, 2018 at 07:11 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id6837233_skyhack`
--
CREATE DATABASE IF NOT EXISTS `id6837233_skyhack` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id6837233_skyhack`;

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `language` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `answer_id`, `name`, `language`) VALUES
(2, 1, 'Yes', 1),
(3, 1, 'हाँ', 2),
(4, 2, 'Unsure', 1),
(5, 2, 'शायद', 2),
(6, 3, 'NO', 1),
(7, 3, 'नहीं', 2);

-- --------------------------------------------------------

--
-- Table structure for table `attempt`
--

CREATE TABLE `attempt` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `disability_id` int(11) NOT NULL,
  `result` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attempt`
--

INSERT INTO `attempt` (`id`, `user_id`, `disability_id`, `result`) VALUES
(1, 0, 9, 0),
(2, 9, 9, 0),
(3, 0, 9, 0),
(4, 0, 9, 0),
(5, 0, 9, 100),
(6, 0, 2, 8.33333),
(7, 0, 2, 83.3333),
(8, 0, 9, 42.8571),
(9, 0, 9, 28.5714);

-- --------------------------------------------------------

--
-- Table structure for table `correctans`
--

CREATE TABLE `correctans` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `ansid` int(11) NOT NULL,
  `queid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `correctans`
--

INSERT INTO `correctans` (`id`, `userid`, `ansid`, `queid`) VALUES
(110, 9, 2, 1),
(111, 9, 2, 2),
(112, 9, 3, 3),
(113, 9, 3, 4),
(114, 9, 2, 5),
(115, 9, 3, 6),
(116, 9, 3, 7),
(117, 9, 3, 1),
(118, 9, 3, 2),
(119, 9, 2, 3),
(120, 9, 1, 4),
(121, 9, 2, 5),
(122, 9, 1, 6),
(123, 9, 2, 7),
(124, 19, 3, 1),
(125, 19, 1, 2),
(126, 19, 1, 3),
(127, 19, 3, 4),
(128, 19, 1, 5),
(129, 19, 3, 6),
(130, 19, 3, 7),
(131, 9, 3, 1),
(132, 9, 1, 2),
(133, 9, 1, 3),
(134, 9, 1, 4),
(135, 9, 0, 5),
(136, 9, 3, 6),
(137, 9, 3, 7),
(138, 9, 3, 1),
(139, 9, 2, 2),
(140, 9, 3, 3),
(141, 9, 2, 4),
(142, 9, 3, 5),
(143, 9, 3, 6),
(144, 9, 3, 7),
(145, 14, 3, 1),
(146, 14, 3, 2),
(147, 14, 3, 3),
(148, 14, 3, 4),
(149, 14, 3, 5),
(150, 14, 3, 6),
(151, 14, 3, 7),
(152, 9, 3, 1),
(153, 9, 2, 2),
(154, 9, 1, 3),
(155, 9, 1, 4),
(156, 9, 1, 5),
(157, 9, 1, 6),
(158, 9, 1, 7),
(159, 11, 1, 1),
(160, 11, 3, 2),
(161, 11, 1, 3),
(162, 11, 3, 4),
(163, 11, 1, 5),
(164, 11, 1, 6),
(165, 11, 1, 7),
(166, 10, 2, 1),
(167, 10, 3, 2),
(168, 10, 3, 3),
(169, 10, 3, 4),
(170, 10, 3, 5),
(171, 10, 3, 6),
(172, 10, 1, 7),
(173, 9, 3, 1),
(174, 9, 3, 2),
(175, 9, 3, 3),
(176, 9, 3, 4),
(177, 9, 3, 5),
(178, 9, 3, 6),
(179, 9, 3, 7),
(180, 9, 1, 1),
(181, 9, 1, 2),
(182, 9, 1, 3),
(183, 9, 1, 4),
(184, 9, 1, 5),
(185, 9, 1, 6),
(186, 9, 1, 7),
(187, 10, 3, 1),
(188, 10, 3, 2),
(189, 10, 3, 3),
(190, 10, 3, 4),
(191, 10, 3, 5),
(192, 10, 3, 6),
(193, 10, 3, 7),
(194, 23, 0, 1),
(195, 23, 1, 2),
(196, 23, 2, 3),
(197, 23, 1, 4),
(198, 23, 2, 5),
(199, 23, 1, 6),
(200, 23, 2, 7),
(201, 23, 1, 8),
(202, 23, 1, 9),
(203, 23, 3, 10),
(204, 23, 1, 11),
(205, 23, 2, 12),
(206, 9, 3, 1),
(207, 9, 2, 2),
(208, 9, 3, 3),
(209, 9, 3, 4),
(210, 9, 3, 5),
(211, 9, 3, 6),
(212, 9, 0, 7),
(213, 9, 3, 8),
(214, 9, 3, 9),
(215, 9, 3, 10),
(216, 9, 3, 11),
(217, 9, 3, 12),
(218, 9, 3, 1),
(219, 9, 3, 1),
(220, 9, 2, 2),
(221, 9, 3, 3),
(222, 9, 2, 4),
(223, 9, 3, 5),
(224, 9, 3, 6),
(225, 9, 2, 1),
(226, 9, 1, 2),
(227, 9, 3, 3),
(228, 9, 2, 4),
(229, 9, 3, 5),
(230, 9, 1, 6),
(231, 9, 3, 7),
(232, 9, 3, 1),
(233, 9, 2, 2),
(234, 9, 1, 3),
(235, 9, 2, 4),
(236, 9, 3, 5),
(237, 9, 2, 6),
(238, 9, 2, 7),
(239, 9, 1, 1),
(240, 9, 1, 2),
(241, 9, 3, 3),
(242, 9, 3, 4),
(243, 9, 3, 5),
(244, 9, 2, 6),
(245, 9, 3, 7),
(246, 9, 3, 1),
(247, 9, 2, 2),
(248, 9, 3, 3),
(249, 9, 0, 4),
(250, 9, 3, 5),
(251, 9, 2, 6),
(252, 9, 2, 7),
(253, 10, 2, 1),
(254, 10, 2, 2),
(255, 10, 0, 3),
(256, 10, 3, 4),
(257, 10, 3, 5),
(258, 10, 2, 6),
(259, 10, 1, 7),
(260, 25, 2, 1),
(261, 25, 1, 2),
(262, 9, 2, 1),
(263, 9, 3, 2),
(264, 9, 2, 3),
(265, 9, 3, 4),
(266, 9, 3, 5),
(267, 9, 3, 6),
(268, 9, 3, 7),
(269, 27, 1, 1),
(270, 27, 3, 2),
(271, 27, 2, 3),
(272, 27, 3, 4),
(273, 27, 3, 5),
(274, 27, 2, 6),
(275, 27, 3, 7),
(276, 27, 2, 1),
(277, 11, 1, 1),
(278, 11, 1, 2),
(279, 11, 1, 3),
(280, 11, 2, 4),
(281, 11, 2, 5),
(282, 28, 3, 1),
(283, 28, 2, 2),
(284, 28, 3, 3),
(285, 28, 1, 4),
(286, 28, 3, 5),
(287, 28, 3, 6),
(288, 28, 3, 7),
(289, 9, 1, 1),
(290, 9, 1, 2),
(291, 9, 1, 3),
(292, 9, 1, 4),
(293, 9, 1, 5),
(294, 9, 1, 6),
(295, 9, 1, 7),
(296, 9, 3, 1),
(297, 9, 3, 2),
(298, 9, 1, 3),
(299, 9, 3, 4),
(300, 9, 3, 5),
(301, 9, 3, 6),
(302, 9, 3, 7),
(303, 9, 1, 8),
(304, 9, 2, 9),
(305, 9, 3, 10),
(306, 9, 3, 11),
(307, 9, 3, 12),
(308, 29, 3, 1),
(309, 29, 3, 2),
(310, 29, 3, 3),
(311, 29, 3, 4),
(312, 29, 3, 5),
(313, 29, 0, 6),
(314, 29, 3, 1),
(315, 29, 3, 2),
(316, 29, 3, 3),
(317, 29, 3, 4),
(318, 29, 3, 5),
(319, 29, 1, 6),
(320, 29, 2, 7),
(321, 9, 3, 1),
(322, 9, 2, 2),
(323, 9, 2, 3),
(324, 9, 3, 4),
(325, 9, 3, 5),
(326, 9, 2, 6),
(327, 9, 2, 7),
(328, 12, 1, 1),
(329, 9, 2, 1),
(330, 9, 3, 2),
(331, 9, 3, 3),
(332, 9, 2, 4),
(333, 9, 3, 5),
(334, 9, 2, 6),
(335, 9, 3, 7),
(336, 31, 1, 1),
(337, 31, 1, 2),
(338, 9, 2, 1),
(339, 9, 3, 2),
(340, 9, 3, 3),
(341, 9, 2, 4),
(342, 9, 3, 5),
(343, 9, 2, 6),
(344, 9, 3, 7),
(345, 11, 1, 1),
(346, 11, 3, 2),
(347, 11, 3, 3),
(348, 11, 3, 4),
(349, 11, 3, 5),
(350, 12, 1, 1),
(351, 12, 2, 2),
(352, 12, 3, 3),
(353, 12, 1, 4),
(354, 12, 3, 5),
(355, 12, 1, 6),
(356, 24, 2, 1),
(357, 9, 1, 1),
(358, 9, 3, 2),
(359, 9, 1, 3),
(360, 9, 3, 4),
(361, 9, 2, 5),
(362, 9, 3, 6),
(363, 32, 1, 1),
(364, 32, 2, 2),
(365, 32, 2, 1),
(366, 32, 1, 2),
(367, 24, 2, 2),
(368, 24, 2, 3),
(369, 24, 2, 4),
(370, 24, 2, 5),
(371, 35, 2, 1),
(372, 35, 1, 2),
(373, 35, 2, 3),
(374, 35, 1, 4),
(375, 35, 1, 5),
(376, 35, 1, 6),
(377, 36, 2, 1),
(378, 36, 1, 2),
(379, 36, 3, 3),
(380, 36, 1, 4),
(381, 36, 1, 5),
(382, 36, 1, 6),
(383, 37, 3, 1),
(384, 37, 2, 2),
(385, 37, 3, 3),
(386, 37, 0, 4),
(387, 37, 1, 5),
(388, 37, 1, 6),
(389, 37, 1, 7),
(390, 36, 2, 1),
(391, 36, 1, 2),
(392, 36, 2, 3),
(393, 36, 1, 4),
(394, 36, 2, 5),
(395, 36, 3, 6),
(396, 36, 1, 7),
(397, 36, 2, 8),
(398, 36, 1, 9),
(399, 36, 3, 10),
(400, 36, 1, 11),
(401, 36, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `disability`
--

CREATE TABLE `disability` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `disability`
--

INSERT INTO `disability` (`id`, `name`, `description`) VALUES
(1, 'Blindness', '&quot;blindness&quot; means a condition where a person has any of the following\r\nconditions, after best correction—\r\n(i) total absence of sight; or\r\n(ii) visual acuity less than 3/60 or less than 10/200 (Snellen) in the better eye with best possible\r\ncorrection; or\r\n(iii) limitation of the field of vision subtending an angle of less than 10 degree.'),
(2, 'Low-vision', '&quot;low-vision&quot; means a condition where a person has any of the following conditions, namely:—\r\n(i) visual acuity not exceeding 6/18 or less than 20/60 upto 3/60 or upto 10/200 (Snellen) in the better\r\neye with\r\nbest possible corrections; or\r\n(ii) limitation of the field of vision subtending an angle of less than 40 degree up to 10 degree.'),
(3, 'Leprosy Cured persons', '&quot;leprosy cured person&quot; means a person who has been cured of leprosy but is suffering from-\r\n(i) loss of sensation in hands or feet as well as loss of sensation and paresis in the eye and eye-lid but\r\nwith no\r\nmanifest deformity;\r\n(ii) manifest deformity and paresis but having sufficient mobility in their hands and feet to enable them\r\nto engage in\r\nnormal economic activity;\r\n(iii) extreme physical deformity as well as advanced age which prevents him/her from undertaking any\r\n'),
(4, 'Hearing Impairment (deaf and h', '(a) “Deaf&quot; means persons having 70 DB hearing loss in speech frequencies in both ears;\r\n(b) &quot;Hard of hearing&quot; means person having 60 DB to 70 DB hearing loss in speech frequencies in both\r\nears;'),
(5, 'Locomotor Disability', '“Locomotor disability” means a person’s inability to execute distinctive activities associated with\r\nmovement\r\nof self and objects resulting from affliction of musculoskeletal or nervous system or both.'),
(6, 'Dwarfism', '&quot;Dwarfism&quot; means a medical or genetic condition resulting in an adult height of 4 feet 10 inches (147\r\ncentimeters) or less.'),
(7, 'Intellectual Disability', 'a hemolytic disorder characterised by chronic anemia, painful events, and\r\nvarious complications due to associated tissue and organ damage; &quot;hemolytic&quot; refers to the\r\ndestruction of the cell membrane of red blood cells resulting in the release of hemoglobin.'),
(8, 'Mental Illness', '&quot;mental illness&quot; means a substantial disorder of thinking, mood, perception, orientation or memory\r\nthat\r\ngrossly impairs judgment, behaviour, capacity to recognise reality or ability to meet the ordinary\r\ndemands of life, but\r\ndoes not include retardation which is a condition of arrested or incomplete development of mind of a\r\nperson, specially\r\ncharacterised by subnormality of intelligence.'),
(9, 'Autism Spectrum Disorder', 'Autism spectrum disorder is a lifelong neurological condition typically appearing  in the first three years of life that is marked by pervasive impairments in the area of social skills and communication ; often associated with hyper-or-hypo- reactivity to sensory input ; unusual interests of stereotypical rituals, or behaviours; and  may or may not be accompanied by intellectual impairment.'),
(10, 'Cerebral Palsy', '&quot;cerebral palsy&quot; means a group of non-progressive neurological condition affecting body movements\r\nand muscle coordination, caused by damage to one or more specific areas of the brain, usually\r\noccurring before, during\r\nor shortly after birth.'),
(11, 'Muscular Dystrophy', '&quot;multiple sclerosis&quot; means an inflammatory, nervous system disease in which the myelin sheaths\r\naround the axons\r\nof nerve cells of the brain and spinal cord are damaged, leading to demyelination and affecting the\r\nability of nerve\r\n'),
(12, 'Chronic Neurological condition', ''),
(13, 'Specific Learning Disabilities', '&quot;specific learning disabilities&quot; means a heterogeneous group of conditions wherein there is a deficit in\r\nprocessing language, spoken or written, that may manifest itself as a difficulty to comprehend, speak,\r\nread, write, spell,\r\nor to do mathematical calculations and includes such conditions as perceptual disabilities, dyslexia,\r\ndysgraphia,\r\ndyscalculia, dyspraxia and developmental aphasia;'),
(14, 'Multiple Sclerosis', 'progressive disease of the nervous system marked by tremor,\r\nmuscular rigidity, and slow, imprecise movement, chiefly affecting middle-aged and elderly people\r\nassociated with degeneration of the basal ganglia of the brain and a deficiency of the neurotransmitter\r\ndopamine.'),
(15, 'Speech and Language disability', ''),
(16, 'Thalassemia', ''),
(17, 'Hemophilia', ''),
(18, 'Sickle Cell disease', ''),
(19, 'Multiple Disabilities includin', 'Multiple Disabilities means a combination of two or more disabilities mentioned below:-\r\n1. Blindness\r\n2. Low-vision\r\n3. Leprosy cured persons\r\n4. Hearing impairment (deaf and hard of hearing)\r\n5. Locomotor disability\r\n6. Dwarfism\r\n7. Intellectual disability\r\n8. Mental illness\r\n9. Autism spectrum disorder\r\n10. Cerebral palsy\r\n11. Muscular dystrophy\r\n12. Chronic neurological conditions\r\n'),
(20, 'Acid Attack victim', '&quot;acid attack victims&quot; means a person disfigured due to violent assaults by throwing of acid or similar\r\ncorrosive substance.'),
(40, 'Parkinsons disease', '');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`) VALUES
(1, 'English'),
(2, 'हिंदी');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `disability_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `question` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `language` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `disability_id`, `question_id`, `question`, `language`) VALUES
(1, 9, 1, 'Does your child enjoy being taken in the lap or hugged?', 1),
(2, 9, 1, 'क्या आपके बच्चे को गोद में या गले में लेने का आनंद मिलता है ?', 2),
(3, 9, 2, 'Does your child usually make eye contact with you or other people?', 1),
(4, 9, 2, 'क्या आपका बच्चा आम तौर पर आपके या अन्य लोगों के साथ आंखों का संपर्क करता है?', 2),
(5, 9, 3, 'Does your child usually use various gestures appropriately during social interactions?', 1),
(6, 9, 3, 'क्या आपका बच्चा आमतौर पर सामाजिक बातचीत के दौरान उचित रूप से विभिन्न संकेतों का उपयोग करता है?', 2),
(7, 9, 4, 'Does your child show appropriate facial expressions according to the situation?', 1),
(8, 9, 4, 'क्या आपका बच्चा स्थिति के अनुसार उचित चेहरे का भाव दिखाता है?', 2),
(9, 9, 5, 'Does your child usually enjoy the company of other children?', 1),
(10, 9, 5, 'क्या आपका बच्चा आमतौर पर अन्य बच्चों की कंपनी का आनंद लेता है?', 2),
(11, 9, 6, '( for children aged 4 years or more)Does your child have friends of his/her age with whom he/she loves to chat , share food  or play together?', 1),
(12, 9, 6, 'क्या आपके बच्चे के पास उसकी उम्र का मित्र है जिसके साथ वह चैट करना, खाना साझा करना या एक साथ खेलना पसंद करता है?', 2),
(13, 9, 7, 'Does/did  your child ever point with his/her index finger to bring your attention to show the things that interest him/her?', 1),
(14, 9, 7, 'क्या आपका बच्चा कभी भी अपनी इंडेक्स उंगली के साथ इंगित करता है ताकि वह उस चीज़ को दिखाने के लिए अपना ध्यान आकर्षित कर सके?', 2),
(15, 2, 1, 'Does the child have any observable abnormality?', 1),
(16, 2, 1, 'क्या बच्चे के पास कोई अवलोकन असामान्यता है?', 2),
(17, 2, 2, 'Does the child keep the book too far or too close to his/her eyes while reading?', 1),
(18, 2, 2, 'क्या बच्चा पढ़ते समय किताब को बहुत दूर या उसकी आंखों के करीब रखता है?', 2),
(21, 2, 3, 'Is the child unable to write in the prescribed space/line due to low vision?', 1),
(22, 2, 3, 'क्या बच्चा कम दृष्टि के कारण निर्धारित स्थान / रेखा में लिखने में असमर्थ है?', 2),
(25, 2, 4, 'Does the child finds difficult to identify objects/people at a distance (4-5 meters or further)?', 1),
(26, 2, 4, 'क्या बच्चे को वस्तुओं / लोगों को दूरी (4-5 मीटर या उससे आगे) की पहचान करना मुश्किल लगता\r\nहै?', 2),
(29, 2, 5, 'Do the child have any problem in following moving objects?', 1),
(30, 2, 5, 'चलती वस्तुओं का पालन करने में बच्चे को कोई समस्या है?', 2),
(31, 2, 5, 'Do the child have any problem in following moving objects?', 1),
(32, 2, 5, 'चलती वस्तुओं का पालन करने में बच्चे को कोई समस्या है?', 2),
(33, 2, 6, 'Is the child unable to identify/match colors?', 1),
(34, 2, 6, 'क्या बच्चा रंगों की पहचान / मिलान करने में असमर्थ है?', 2),
(41, 2, 7, 'Is the child unable to follow 2 –D representation of any object?', 1),
(42, 2, 7, 'क्या बच्चा किसी ऑब्जेक्ट के 2-डी प्रतिनिधित्व का पालन करने में असमर्थ है?', 2),
(45, 2, 8, 'Do the child have difficulty in focusing because of unstable movement of the eye balls?', 1),
(46, 2, 8, 'आंखों की गेंदों के अस्थिर आंदोलन के कारण बच्चे को ध्यान केंद्रित करने में कठिनाई होती है?', 2),
(50, 2, 9, ' Does the child get confused between the shadows and the level changes\r\n', 1),
(52, 2, 9, ' क्या बच्चे छाया और स्तर के परिवर्तनों के बीच भ्रमित हो जाता है\r\n\r\n', 2),
(53, 2, 10, 'Do the child have any problem in recognizing actions and facial expression\r\n\r\n', 1),
(54, 2, 10, 'क्या बच्चे को क्रियाओं और चेहरे की अभिव्यक्ति को पहचानने में कोई समस्या है \r\n', 2),
(55, 2, 11, 'Is the child mobility badly affected in semi-dark area?  \r\n', 1),
(56, 2, 11, ' क्या अर्ध-अंधेरे क्षेत्र में बाल गतिशीलता बुरी तरह प्रभावित हुई है?\r\n\r\n\r\n', 2),
(57, 19, 1, 'Does the child go very near to the objects to identify and touch them? \r\n', 1),
(58, 19, 1, 'Does the child go very near to the objects to identify and touch them? \r\n', 1),
(59, 19, 1, 'क्या बच्चा वस्तुओं को पहचानने और उन्हें छूने के लिए बहुत करीब जाता है?\r\n \r\n', 2),
(60, 19, 2, 'Does the child startle when a known object is brought near him/her suddenly? \r\n \r\n', 1),
(61, 19, 2, 'क्या बच्चा चौंक जाता है जब एक ज्ञात वस्तु उसके पास अचानक आती है? \r\n', 2),
(62, 19, 3, ' Does the child have visible deformities like large head/ small head/extra fingers/extra toes? \r\n', 1),
(63, 19, 3, 'क्या बच्चे में बड़े सिर / छोटे सिर / अतिरिक्त अंगुलियों / अतिरिक्त अंगूठे जैसे विकृतियां दिखती हैं? \r\n \r\n', 2),
(64, 19, 4, 'Does the child show habits like poking the eyes, waving the hands and jumping the light? \r\n \r\n', 1),
(65, 19, 4, 'क्या बच्चा आंखों को पोक करने, हाथों को लहराते हुए और प्रकाश कूदने जैसी आदतें दिखाता है?\r\n \r\n', 2),
(66, 19, 5, 'The child does not recognize that his/her friends are writing and copying from the board. Is it true?  \r\n', 1),
(67, 19, 5, 'बच्चा यह नहीं पहचानता कि उसके दोस्त बोर्ड से लिख रहे हैं और कॉपी कर रहे हैं। क्या यह सच है?\r\n \r\n', 2),
(68, 15, 1, 'Is the child dumb?', 1),
(69, 15, 1, 'Is the child dumb?', 1),
(70, 15, 1, 'क्या बच्चा गूंगा है?', 2),
(71, 15, 2, ' Does the child stammer mostly?', 1),
(72, 15, 2, 'क्या बच्चा ज्यादातर स्टैमर करता है?', 2),
(73, 15, 3, ' Does the child have observable deformity of mouth?', 1),
(74, 15, 1, 'Is the child dumb?', 1),
(75, 15, 1, 'क्या बच्चा गूंगा है?', 2),
(76, 15, 2, ' Does the child stammer mostly?', 1),
(77, 15, 2, 'क्या बच्चा ज्यादातर स्टैमर करता है?', 2),
(78, 15, 3, ' Does the child have observable deformity of mouth?', 1),
(79, 15, 1, 'Is the child dumb?', 1),
(80, 15, 1, 'क्या बच्चा गूंगा है?', 2),
(81, 15, 2, ' Does the child stammer mostly?', 1),
(82, 15, 2, 'क्या बच्चा ज्यादातर स्टैमर करता है?', 2),
(83, 15, 3, ' Does the child have observable deformity of mouth?', 1),
(84, 15, 1, 'Is the child dumb?', 1),
(85, 15, 1, 'क्या बच्चा गूंगा है?', 2),
(86, 15, 2, ' Does the child stammer mostly?', 1),
(87, 15, 2, 'क्या बच्चा ज्यादातर स्टैमर करता है?', 2),
(88, 15, 3, ' Does the child have observable deformity of mouth?', 1),
(89, 15, 3, 'क्या बच्चे के मुंह की देखने योग्य विकृति है?\r\n', 2),
(90, 15, 4, ' Does the child frequently mispronounce corrective effort? \r\n', 1),
(91, 15, 4, 'क्या बच्चा अक्सर सुधारात्मक प्रयास गलत तरीके से गलत करता है?', 2),
(92, 15, 5, 'Does the child have frequent natural breaks and omission of sound in wounds and phrases? ', 1),
(93, 15, 5, 'क्या बच्चे में अक्सर प्राकृतिक ब्रेक और घावों और वाक्यांशों में ध्वनि की कमी होती है?\r\n', 2),
(94, 1, 1, 'Does  the child has difficulty in reading from the black board, even if she/he is sitting in the\r\nfirst row?\r\n', 1),
(95, 1, 1, 'Does  the child has difficulty in reading from the black board, even if she/he is sitting in the\r\nfirst row?\r\n', 1),
(96, 1, 1, '\r\n', 2),
(97, 1, 2, 'Does the child keep the book too far or too close to his/her eyes while reading?\r\n\r\n\r\n', 1),
(98, 1, 2, 'क्या बच्चा पढ़ते समय किताब को बहुत दूर या उसकी आंखों के करीब रखता है?\r\n\r\n\r\n', 2),
(99, 1, 3, 'Does the child finds difficult to identify objects/people at a distance (4-5 meters or further)?\r\n\r\n', 1),
(100, 1, 3, 'क्या बच्चे को वस्तुओं / लोगों को दूरी (4-5 मीटर या उससे आगे) की पहचान करना मुश्किल लगता है?\r\n\r\n', 2),
(101, 1, 4, 'Is the child unable to identify/match colors?\r\n', 1),
(102, 1, 4, 'क्या बच्चा रंगों की पहचान / मिलान करने में असमर्थ है?\r\n\r\n', 2),
(103, 1, 5, 'Does the child have difficulty in identifying numbers, symbols and patterns? \r\n\r\n', 1),
(104, 1, 5, 'क्या बच्चे को संख्याओं, प्रतीकों और पैटर्न की पहचान करने में कठिनाई होती है?\r\n\r\n', 2),
(105, 7, 1, 'Does the child have difficulty in doing things for himself like eating, dressing, bathing, grooming?', 1),
(106, 7, 1, 'Does the child have difficulty in doing things for himself like eating, dressing, bathing, grooming?', 1),
(107, 7, 1, 'क्या बच्चे को खाने, ड्रे सिंग, स्नान करने, सौंदर्य बनाने जैसी चीजों को करने में कठिनाई होती है?\r\n', 2),
(108, 7, 2, 'Does the child have problem in understanding when told to do something? \r\n', 1),
(109, 7, 2, 'क्या कुछ करने के लिए कहा जाने पर बच्चे को समझने में समस्या होती है?\r\n', 2),
(110, 7, 3, 'Does the child appear dull or slow in any manner compared to others? \r\n', 1),
(111, 7, 1, 'क्या बच्चे दूसरों की तुलना में किसी भी तरह से सुस्त या धीमा दिखता है?\r\n', 2),
(112, 7, 4, 'Does the child have difficulty in doing things for himself like eating, dressing, bathing, grooming?', 1),
(113, 7, 1, 'क्या बच्चा साढ़े सालों या बाद में चलना शुरू कर दिया?\r\n', 2);

-- --------------------------------------------------------

--
-- Table structure for table `scheme`
--

CREATE TABLE `scheme` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `disability_id` int(11) NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `contact` bigint(12) NOT NULL,
  `password` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `fname`, `lname`, `contact`, `password`) VALUES
(9, 'eRrOr', 'Rahul', 'Manusmare', 7218355769, 'eRrOr'),
(10, 'kshitij', 'kshitij', 'mankar', 9975970843, 'vipin'),
(11, 'TusharDahule', 'Tushar', 'Dahule', 8007409065, 'tushar'),
(12, 'Lokesh', 'Lokesh', 'Agrawal', 7588744530, 'lokesh'),
(14, 'sls', 'sls', 'sls', 69696969, 'sls'),
(15, 'sam', 'man', 'mas', 393999, 'Ss879657'),
(16, '', '', '', 0, ''),
(17, 'sss', 'sss', 'sss', 123, '123'),
(18, 'ghrce', 'San', 'Kul', 4878757635, 'password'),
(19, 'Magnusreader', 'Magnus', 'Reader', 9890350431, 'yo1234'),
(20, 'ashish', 'ashish', 'patil', 1234567890, '123456'),
(21, '', '', '', 0, ''),
(22, 'Yelllo', 'Yello', 'Hello', 456123789, '123456'),
(23, 'SA786', 'San', 'Kul', 5632897455, 'password'),
(24, 'Vipin', 'Vipin', 'Mankar', 9999999999, 'vipin'),
(25, 'Bhatt123', 'Jimit', 'Bhatt', 9156455966, 'gimit@123'),
(26, '', 'Abc', 'Xyz', 2484048464, 'SA1078'),
(27, 'SA1000', 'Abc', 'Xyz', 5484646464, 'password'),
(28, 'Pvm', 'Pandharinath ', 'Manusmare', 9822232471, 'pvm'),
(29, 'Bhau', 'Bhavesh ', 'Thakkar ', 9284014476, 'bhavesh123'),
(30, 'yuvraj', 'Yuvraj', 'Katwe', 7709815949, '1234567890'),
(31, 'tvp', 't', 'vp', -1, 'asd'),
(32, 'S', 'X', 'Z', 49, 'sq'),
(33, 'Ruchika', 'Ruchika', 'Tale', 8354648684, 'ruchi'),
(34, 'Yo', 'Yo', 'Yo', 4569871230, '12345678'),
(35, 'Yash', 'Yash', 'Yash', 123, 'Yash'),
(36, 'Anuj123', 'Anuj', 'Shukla', 7875330077, 'ghrce1234'),
(37, 'vaibhav3198', 'Vaibhav', 'Agasti', 9999999999, 'asdfghjkl');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attempt`
--
ALTER TABLE `attempt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `correctans`
--
ALTER TABLE `correctans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disability`
--
ALTER TABLE `disability`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scheme`
--
ALTER TABLE `scheme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `attempt`
--
ALTER TABLE `attempt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `correctans`
--
ALTER TABLE `correctans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT for table `disability`
--
ALTER TABLE `disability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `scheme`
--
ALTER TABLE `scheme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
