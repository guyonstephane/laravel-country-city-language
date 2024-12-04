-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 25 nov. 2024 à 16:37
-- Version du serveur :  8.0.40-0ubuntu0.20.04.1
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `world`
--

-- --------------------------------------------------------

--
-- Structure de la table `Country`
--

--

INSERT INTO `countries` (`id`, `code`, `nom`, `population`, `esperanceVie`, `PNB`, `chefEtat`, `capitale`) VALUES
(1, 'ABW', 'Aruba', 103000, 78.4, 828.00, 'Beatrix', 129),
(2, 'AFG', 'Afghanistan', 22720000, 45.9, 5976.00, 'Mohammad Omar', 1),
(3, 'AGO', 'Angola', 12878000, 38.3, 6648.00, 'José Eduardo dos Santos', 56),
(4, 'AIA', 'Anguilla', 8000, 76.1, 63.20, 'Elisabeth II', 62),
(5, 'ALB', 'Albania', 3401200, 71.6, 3205.00, 'Rexhep Mejdani', 34),
(6, 'AND', 'Andorra', 78000, 83.5, 1630.00, '', 55),
(7, 'ANT', 'Netherlands Antilles', 217000, 74.7, 1941.00, 'Beatrix', 33),
(8, 'ARE', 'United Arab Emirates', 2441000, 74.1, 37966.00, 'Zayid bin Sultan al-Nahayan', 65),
(9, 'ARG', 'Argentina', 37032000, 75.1, 340238.00, 'Fernando de la Rúa', 69),
(10, 'ARM', 'Armenia', 3520000, 66.4, 1813.00, 'Robert Kotšarjan', 126),
(11, 'ASM', 'American Samoa', 68000, 75.1, 334.00, 'George W. Bush', 54),
(12, 'ATA', 'Antarctica', 0, NULL, 0.00, '', NULL),
(13, 'ATF', 'French Southern territories', 0, NULL, 0.00, 'Jacques Chirac', NULL),
(14, 'ATG', 'Antigua and Barbuda', 68000, 70.5, 612.00, 'Elisabeth II', 63),
(15, 'AUS', 'Australia', 18886000, 79.8, 351182.00, 'Elisabeth II', 135),
(16, 'AUT', 'Austria', 8091800, 77.7, 211860.00, 'Thomas Klestil', 1523),
(17, 'AZE', 'Azerbaijan', 7734000, 62.9, 4127.00, 'Heydär Äliyev', 144),
(18, 'BDI', 'Burundi', 6695000, 46.2, 903.00, 'Pierre Buyoya', 552),
(19, 'BEL', 'Belgium', 10239000, 77.8, 249704.00, 'Albert II', 179),
(20, 'BEN', 'Benin', 6097000, 50.2, 2357.00, 'Mathieu Kérékou', 187),
(21, 'BFA', 'Burkina Faso', 11937000, 46.7, 2425.00, 'Blaise Compaoré', 549),
(22, 'BGD', 'Bangladesh', 129155000, 60.2, 32852.00, 'Shahabuddin Ahmad', 150),
(23, 'BGR', 'Bulgaria', 8190900, 70.9, 12178.00, 'Petar Stojanov', 539),
(24, 'BHR', 'Bahrain', 617000, 73.0, 6366.00, 'Hamad ibn Isa al-Khalifa', 149),
(25, 'BHS', 'Bahamas', 307000, 71.1, 3527.00, 'Elisabeth II', 148),
(26, 'BIH', 'Bosnia and Herzegovina', 3972000, 71.5, 2841.00, 'Ante Jelavic', 201),
(27, 'BLR', 'Belarus', 10236000, 68.0, 13714.00, 'Aljaksandr Lukašenka', 3520),
(28, 'BLZ', 'Belize', 241000, 70.9, 630.00, 'Elisabeth II', 185),
(29, 'BMU', 'Bermuda', 65000, 76.9, 2328.00, 'Elisabeth II', 191),
(30, 'BOL', 'Bolivia', 8329000, 63.7, 8571.00, 'Hugo Bánzer Suárez', 194),
(31, 'BRA', 'Brazil', 170115000, 62.9, 776739.00, 'Fernando Henrique Cardoso', 211),
(32, 'BRB', 'Barbados', 270000, 73.0, 2223.00, 'Elisabeth II', 174),
(33, 'BRN', 'Brunei', 328000, 73.6, 11705.00, 'Haji Hassan al-Bolkiah', 538),
(34, 'BTN', 'Bhutan', 2124000, 52.4, 372.00, 'Jigme Singye Wangchuk', 192),
(35, 'BVT', 'Bouvet Island', 0, NULL, 0.00, 'Harald V', NULL),
(36, 'BWA', 'Botswana', 1622000, 39.3, 4834.00, 'Festus G. Mogae', 204),
(37, 'CAF', 'Central African Republic', 3615000, 44.0, 1054.00, 'Ange-Félix Patassé', 1889),
(38, 'CAN', 'Canada', 31147000, 79.4, 598862.00, 'Elisabeth II', 1822),
(39, 'CCK', 'Cocos (Keeling) Islands', 600, NULL, 0.00, 'Elisabeth II', 2317),
(40, 'CHE', 'Switzerland', 7160400, 79.6, 264478.00, 'Adolf Ogi', 3248),
(41, 'CHL', 'Chile', 15211000, 75.7, 72949.00, 'Ricardo Lagos Escobar', 554),
(42, 'CHN', 'China', 1277558000, 71.4, 982268.00, 'Jiang Zemin', 1891),
(43, 'CIV', 'Côte d’Ivoire', 14786000, 45.2, 11345.00, 'Laurent Gbagbo', 2814),
(44, 'CMR', 'Cameroon', 15085000, 54.8, 9174.00, 'Paul Biya', 1804),
(45, 'COD', 'Congo, The Democratic Republic of the', 51654000, 48.8, 6964.00, 'Joseph Kabila', 2298),
(46, 'COG', 'Congo', 2943000, 47.4, 2108.00, 'Denis Sassou-Nguesso', 2296),
(47, 'COK', 'Cook Islands', 20000, 71.1, 100.00, 'Elisabeth II', 583),
(48, 'COL', 'Colombia', 42321000, 70.3, 102896.00, 'Andrés Pastrana Arango', 2257),
(49, 'COM', 'Comoros', 578000, 60.0, 4401.00, 'Azali Assoumani', 2295),
(50, 'CPV', 'Cape Verde', 428000, 68.9, 435.00, 'António Mascarenhas Monteiro', 1859),
(51, 'CRI', 'Costa Rica', 4023000, 75.8, 10226.00, 'Miguel Ángel Rodríguez Echeverría', 584),
(52, 'CUB', 'Cuba', 11201000, 76.2, 17843.00, 'Fidel Castro Ruz', 2413),
(53, 'CXR', 'Christmas Island', 2500, NULL, 0.00, 'Elisabeth II', 1791),
(54, 'CYM', 'Cayman Islands', 38000, 78.9, 1263.00, 'Elisabeth II', 553),
(55, 'CYP', 'Cyprus', 754700, 76.7, 9333.00, 'Glafkos Klerides', 2430),
(56, 'CZE', 'Czech Republic', 10278100, 74.5, 55017.00, 'Václav Havel', 3339),
(57, 'DEU', 'Germany', 82164700, 77.4, 2133367.00, 'Johannes Rau', 3068),
(58, 'DJI', 'Djibouti', 638000, 50.8, 382.00, 'Ismail Omar Guelleh', 585),
(59, 'DMA', 'Dominica', 71000, 73.4, 256.00, 'Vernon Shaw', 586),
(60, 'DNK', 'Denmark', 5330000, 76.5, 174099.00, 'Margrethe II', 3315),
(61, 'DOM', 'Dominican Republic', 8495000, 73.2, 15846.00, 'Hipólito Mejía Domínguez', 587),
(62, 'DZA', 'Algeria', 31471000, 69.7, 49982.00, 'Abdelaziz Bouteflika', 35),
(63, 'ECU', 'Ecuador', 12646000, 71.1, 19770.00, 'Gustavo Noboa Bejarano', 594),
(64, 'EGY', 'Egypt', 68470000, 63.3, 82710.00, 'Hosni Mubarak', 608),
(65, 'ERI', 'Eritrea', 3850000, 55.8, 650.00, 'Isayas Afewerki [Isaias Afwerki]', 652),
(66, 'ESH', 'Western Sahara', 293000, 49.8, 60.00, 'Mohammed Abdel Aziz', 2453),
(67, 'ESP', 'Spain', 39441700, 78.8, 553233.00, 'Juan Carlos I', 653),
(68, 'EST', 'Estonia', 1439200, 69.5, 5328.00, 'Lennart Meri', 3791),
(69, 'ETH', 'Ethiopia', 62565000, 45.2, 6353.00, 'Negasso Gidada', 756),
(70, 'FIN', 'Finland', 5171300, 77.4, 121914.00, 'Tarja Halonen', 3236),
(71, 'FJI', 'Fiji Islands', 817000, 67.9, 1536.00, 'Josefa Iloilo', 764),
(72, 'FLK', 'Falkland Islands', 2000, NULL, 0.00, 'Elisabeth II', 763),
(73, 'FRA', 'France', 59225700, 78.8, 1424285.00, 'Jacques Chirac', 2974),
(74, 'FRO', 'Faroe Islands', 43000, 78.4, 0.00, 'Margrethe II', 901),
(75, 'FSM', 'Micronesia, Federated States of', 119000, 68.6, 212.00, 'Leo A. Falcam', 2689),
(76, 'GAB', 'Gabon', 1226000, 50.1, 5493.00, 'Omar Bongo', 902),
(77, 'GBR', 'United Kingdom', 59623400, 77.7, 1378330.00, 'Elisabeth II', 456),
(78, 'GEO', 'Georgia', 4968000, 64.5, 6064.00, 'Eduard Ševardnadze', 905),
(79, 'GHA', 'Ghana', 20212000, 57.4, 7137.00, 'John Kufuor', 910),
(80, 'GIB', 'Gibraltar', 25000, 79.0, 258.00, 'Elisabeth II', 915),
(81, 'GIN', 'Guinea', 7430000, 45.6, 2352.00, 'Lansana Conté', 926),
(82, 'GLP', 'Guadeloupe', 456000, 77.0, 3501.00, 'Jacques Chirac', 919),
(83, 'GMB', 'Gambia', 1305000, 53.2, 320.00, 'Yahya Jammeh', 904),
(84, 'GNB', 'Guinea-Bissau', 1213000, 49.0, 293.00, 'Kumba Ialá', 927),
(85, 'GNQ', 'Equatorial Guinea', 453000, 53.6, 283.00, 'Teodoro Obiang Nguema Mbasogo', 2972),
(86, 'GRC', 'Greece', 10545700, 78.4, 120724.00, 'Kostis Stefanopoulos', 2401),
(87, 'GRD', 'Grenada', 94000, 64.5, 318.00, 'Elisabeth II', 916),
(88, 'GRL', 'Greenland', 56000, 68.1, 0.00, 'Margrethe II', 917),
(89, 'GTM', 'Guatemala', 11385000, 66.2, 19008.00, 'Alfonso Portillo Cabrera', 922),
(90, 'GUF', 'French Guiana', 181000, 76.1, 681.00, 'Jacques Chirac', 3014),
(91, 'GUM', 'Guam', 168000, 77.8, 1197.00, 'George W. Bush', 921),
(92, 'GUY', 'Guyana', 861000, 64.0, 722.00, 'Bharrat Jagdeo', 928),
(93, 'HKG', 'Hong Kong', 6782000, 79.5, 166448.00, 'Jiang Zemin', 937),
(94, 'HMD', 'Heard Island and McDonald Islands', 0, NULL, 0.00, 'Elisabeth II', NULL),
(95, 'HND', 'Honduras', 6485000, 69.9, 5333.00, 'Carlos Roberto Flores Facussé', 933),
(96, 'HRV', 'Croatia', 4473000, 73.7, 20208.00, 'Štipe Mesic', 2409),
(97, 'HTI', 'Haiti', 8222000, 49.2, 3459.00, 'Jean-Bertrand Aristide', 929),
(98, 'HUN', 'Hungary', 10043200, 71.4, 48267.00, 'Ferenc Mádl', 3483),
(99, 'IDN', 'Indonesia', 212107000, 68.0, 84982.00, 'Abdurrahman Wahid', 939),
(100, 'IND', 'India', 1013662000, 62.5, 447114.00, 'Kocheril Raman Narayanan', 1109),
(101, 'IOT', 'British Indian Ocean Territory', 0, NULL, 0.00, 'Elisabeth II', NULL),
(102, 'IRL', 'Ireland', 3775100, 76.8, 75921.00, 'Mary McAleese', 1447),
(103, 'IRN', 'Iran', 67702000, 69.7, 195746.00, 'Ali Mohammad Khatami-Ardakani', 1380),
(104, 'IRQ', 'Iraq', 23115000, 66.5, 11500.00, 'Saddam Hussein al-Takriti', 1365),
(105, 'ISL', 'Iceland', 279000, 79.4, 8255.00, 'Ólafur Ragnar Grímsson', 1449),
(106, 'ISR', 'Israel', 6217000, 78.6, 97477.00, 'Moshe Katzav', 1450),
(107, 'ITA', 'Italy', 57680000, 79.0, 1161755.00, 'Carlo Azeglio Ciampi', 1464),
(108, 'JAM', 'Jamaica', 2583000, 75.2, 6871.00, 'Elisabeth II', 1530),
(109, 'JOR', 'Jordan', 5083000, 77.4, 7526.00, 'Abdullah II', 1786),
(110, 'JPN', 'Japan', 126714000, 80.7, 3787042.00, 'Akihito', 1532),
(111, 'KAZ', 'Kazakstan', 16223000, 63.2, 24375.00, 'Nursultan Nazarbajev', 1864),
(112, 'KEN', 'Kenya', 30080000, 48.0, 9217.00, 'Daniel arap Moi', 1881),
(113, 'KGZ', 'Kyrgyzstan', 4699000, 63.4, 1626.00, 'Askar Akajev', 2253),
(114, 'KHM', 'Cambodia', 11168000, 56.5, 5121.00, 'Norodom Sihanouk', 1800),
(115, 'KIR', 'Kiribati', 83000, 59.8, 40.70, 'Teburoro Tito', 2256),
(116, 'KNA', 'Saint Kitts and Nevis', 38000, 70.7, 299.00, 'Elisabeth II', 3064),
(117, 'KOR', 'South Korea', 46844000, 74.4, 320749.00, 'Kim Dae-jung', 2331),
(118, 'KWT', 'Kuwait', 1972000, 76.1, 27037.00, 'Jabir al-Ahmad al-Jabir al-Sabah', 2429),
(119, 'LAO', 'Laos', 5433000, 53.1, 1292.00, 'Khamtay Siphandone', 2432),
(120, 'LBN', 'Lebanon', 3282000, 71.3, 17121.00, 'Émile Lahoud', 2438),
(121, 'LBR', 'Liberia', 3154000, 51.0, 2012.00, 'Charles Taylor', 2440),
(122, 'LBY', 'Libyan Arab Jamahiriya', 5605000, 75.5, 44806.00, 'Muammar al-Qadhafi', 2441),
(123, 'LCA', 'Saint Lucia', 154000, 72.3, 571.00, 'Elisabeth II', 3065),
(124, 'LIE', 'Liechtenstein', 32300, 78.8, 1119.00, 'Hans-Adam II', 2446),
(125, 'LKA', 'Sri Lanka', 18827000, 71.8, 15706.00, 'Chandrika Kumaratunga', 3217),
(126, 'LSO', 'Lesotho', 2153000, 50.8, 1061.00, 'Letsie III', 2437),
(127, 'LTU', 'Lithuania', 3698500, 69.1, 10692.00, 'Valdas Adamkus', 2447),
(128, 'LUX', 'Luxembourg', 435700, 77.1, 16321.00, 'Henri', 2452),
(129, 'LVA', 'Latvia', 2424200, 68.4, 6398.00, 'Vaira Vike-Freiberga', 2434),
(130, 'MAC', 'Macao', 473000, 81.6, 5749.00, 'Jiang Zemin', 2454),
(131, 'MAR', 'Morocco', 28351000, 69.1, 36124.00, 'Mohammed VI', 2486),
(132, 'MCO', 'Monaco', 34000, 78.8, 776.00, 'Rainier III', 2695),
(133, 'MDA', 'Moldova', 4380000, 64.5, 1579.00, 'Vladimir Voronin', 2690),
(134, 'MDG', 'Madagascar', 15942000, 55.0, 3750.00, 'Didier Ratsiraka', 2455),
(135, 'MDV', 'Maldives', 286000, 62.2, 199.00, 'Maumoon Abdul Gayoom', 2463),
(136, 'MEX', 'Mexico', 98881000, 71.5, 414972.00, 'Vicente Fox Quesada', 2515),
(137, 'MHL', 'Marshall Islands', 64000, 65.5, 97.00, 'Kessai Note', 2507),
(138, 'MKD', 'Macedonia', 2024000, 73.8, 1694.00, 'Boris Trajkovski', 2460),
(139, 'MLI', 'Mali', 11234000, 46.7, 2642.00, 'Alpha Oumar Konaré', 2482),
(140, 'MLT', 'Malta', 380200, 77.9, 3512.00, 'Guido de Marco', 2484),
(141, 'MMR', 'Myanmar', 45611000, 54.9, 180375.00, 'kenraali Than Shwe', 2710),
(142, 'MNG', 'Mongolia', 2662000, 67.3, 1043.00, 'Natsagiin Bagabandi', 2696),
(143, 'MNP', 'Northern Mariana Islands', 78000, 75.5, 0.00, 'George W. Bush', 2913),
(144, 'MOZ', 'Mozambique', 19680000, 37.5, 2891.00, 'Joaquím A. Chissano', 2698),
(145, 'MRT', 'Mauritania', 2670000, 50.8, 998.00, 'Maaouiya Ould Sid´Ahmad Taya', 2509),
(146, 'MSR', 'Montserrat', 11000, 78.0, 109.00, 'Elisabeth II', 2697),
(147, 'MTQ', 'Martinique', 395000, 78.3, 2731.00, 'Jacques Chirac', 2508),
(148, 'MUS', 'Mauritius', 1158000, 71.0, 4251.00, 'Cassam Uteem', 2511),
(149, 'MWI', 'Malawi', 10925000, 37.6, 1687.00, 'Bakili Muluzi', 2462),
(150, 'MYS', 'Malaysia', 22244000, 70.8, 69213.00, 'Salahuddin Abdul Aziz Shah Alhaj', 2464),
(151, 'MYT', 'Mayotte', 149000, 59.5, 0.00, 'Jacques Chirac', 2514),
(152, 'NAM', 'Namibia', 1726000, 42.5, 3101.00, 'Sam Nujoma', 2726),
(153, 'NCL', 'New Caledonia', 214000, 72.8, 3563.00, 'Jacques Chirac', 3493),
(154, 'NER', 'Niger', 10730000, 41.3, 1706.00, 'Mamadou Tandja', 2738),
(155, 'NFK', 'Norfolk Island', 2000, NULL, 0.00, 'Elisabeth II', 2806),
(156, 'NGA', 'Nigeria', 111506000, 51.6, 65707.00, 'Olusegun Obasanjo', 2754),
(157, 'NIC', 'Nicaragua', 5074000, 68.7, 1988.00, 'Arnoldo Alemán Lacayo', 2734),
(158, 'NIU', 'Niue', 2000, NULL, 0.00, 'Elisabeth II', 2805),
(159, 'NLD', 'Netherlands', 15864000, 78.3, 371362.00, 'Beatrix', 5),
(160, 'NOR', 'Norway', 4478500, 78.7, 145895.00, 'Harald V', 2807),
(161, 'NPL', 'Nepal', 23930000, 57.8, 4768.00, 'Gyanendra Bir Bikram', 2729),
(162, 'NRU', 'Nauru', 12000, 60.8, 197.00, 'Bernard Dowiyogo', 2728),
(163, 'NZL', 'New Zealand', 3862000, 77.8, 54669.00, 'Elisabeth II', 3499),
(164, 'OMN', 'Oman', 2542000, 71.8, 16904.00, 'Qabus ibn Sa´id', 2821),
(165, 'PAK', 'Pakistan', 156483000, 61.1, 61289.00, 'Mohammad Rafiq Tarar', 2831),
(166, 'PAN', 'Panama', 2856000, 75.5, 9131.00, 'Mireya Elisa Moscoso Rodríguez', 2882),
(167, 'PCN', 'Pitcairn', 50, NULL, 0.00, 'Elisabeth II', 2912),
(168, 'PER', 'Peru', 25662000, 70.0, 64140.00, 'Valentin Paniagua Corazao', 2890),
(169, 'PHL', 'Philippines', 75967000, 67.5, 65107.00, 'Gloria Macapagal-Arroyo', 766),
(170, 'PLW', 'Palau', 19000, 68.6, 105.00, 'Kuniwo Nakamura', 2881),
(171, 'PNG', 'Papua New Guinea', 4807000, 63.1, 4988.00, 'Elisabeth II', 2884),
(172, 'POL', 'Poland', 38653600, 73.2, 151697.00, 'Aleksander Kwasniewski', 2928),
(173, 'PRI', 'Puerto Rico', 3869000, 75.6, 34100.00, 'George W. Bush', 2919),
(174, 'PRK', 'North Korea', 24039000, 70.7, 5332.00, 'Kim Jong-il', 2318),
(175, 'PRT', 'Portugal', 9997600, 75.8, 105954.00, 'Jorge Sampãio', 2914),
(176, 'PRY', 'Paraguay', 5496000, 73.7, 8444.00, 'Luis Ángel González Macchi', 2885),
(177, 'PSE', 'Palestine', 3101000, 71.4, 4173.00, 'Yasser (Yasir) Arafat', 4074),
(178, 'PYF', 'French Polynesia', 235000, 74.8, 818.00, 'Jacques Chirac', 3016),
(179, 'QAT', 'Qatar', 599000, 72.4, 9472.00, 'Hamad ibn Khalifa al-Thani', 2973),
(180, 'REU', 'Réunion', 699000, 72.7, 8287.00, 'Jacques Chirac', 3017),
(181, 'ROM', 'Romania', 22455500, 69.9, 38158.00, 'Ion Iliescu', 3018),
(182, 'RUS', 'Russian Federation', 146934000, 67.2, 276608.00, 'Vladimir Putin', 3580),
(183, 'RWA', 'Rwanda', 7733000, 39.3, 2036.00, 'Paul Kagame', 3047),
(184, 'SAU', 'Saudi Arabia', 21607000, 67.8, 137635.00, 'Fahd ibn Abdul-Aziz al-Sa´ud', 3173),
(185, 'SDN', 'Sudan', 29490000, 56.6, 10162.00, 'Omar Hassan Ahmad al-Bashir', 3225),
(186, 'SEN', 'Senegal', 9481000, 62.2, 4787.00, 'Abdoulaye Wade', 3198),
(187, 'SGP', 'Singapore', 3567000, 80.1, 86503.00, 'Sellapan Rama Nathan', 3208),
(188, 'SGS', 'South Georgia and the South Sandwich Islands', 0, NULL, 0.00, 'Elisabeth II', NULL),
(189, 'SHN', 'Saint Helena', 6000, 76.8, 0.00, 'Elisabeth II', 3063),
(190, 'SJM', 'Svalbard and Jan Mayen', 3200, NULL, 0.00, 'Harald V', 938),
(191, 'SLB', 'Solomon Islands', 444000, 71.3, 182.00, 'Elisabeth II', 3161),
(192, 'SLE', 'Sierra Leone', 4854000, 45.3, 746.00, 'Ahmed Tejan Kabbah', 3207),
(193, 'SLV', 'El Salvador', 6276000, 69.7, 11863.00, 'Francisco Guillermo Flores Pérez', 645),
(194, 'SMR', 'San Marino', 27000, 81.1, 510.00, NULL, 3171),
(195, 'SOM', 'Somalia', 10097000, 46.2, 935.00, 'Abdiqassim Salad Hassan', 3214),
(196, 'SPM', 'Saint Pierre and Miquelon', 7000, 77.6, 0.00, 'Jacques Chirac', 3067),
(197, 'STP', 'Sao Tome and Principe', 147000, 65.3, 6.00, 'Miguel Trovoada', 3172),
(198, 'SUR', 'Suriname', 417000, 71.4, 870.00, 'Ronald Venetiaan', 3243),
(199, 'SVK', 'Slovakia', 5398700, 73.7, 20594.00, 'Rudolf Schuster', 3209),
(200, 'SVN', 'Slovenia', 1987800, 74.9, 19756.00, 'Milan Kucan', 3212),
(201, 'SWE', 'Sweden', 8861400, 79.6, 226492.00, 'Carl XVI Gustaf', 3048),
(202, 'SWZ', 'Swaziland', 1008000, 40.4, 1206.00, 'Mswati III', 3244),
(203, 'SYC', 'Seychelles', 77000, 70.4, 536.00, 'France-Albert René', 3206),
(204, 'SYR', 'Syria', 16125000, 68.5, 65984.00, 'Bashar al-Assad', 3250),
(205, 'TCA', 'Turks and Caicos Islands', 17000, 73.3, 96.00, 'Elisabeth II', 3423),
(206, 'TCD', 'Chad', 7651000, 50.5, 1208.00, 'Idriss Déby', 3337),
(207, 'TGO', 'Togo', 4629000, 54.7, 1449.00, 'Gnassingbé Eyadéma', 3332),
(208, 'THA', 'Thailand', 61399000, 68.6, 116416.00, 'Bhumibol Adulyadej', 3320),
(209, 'TJK', 'Tajikistan', 6188000, 64.1, 1990.00, 'Emomali Rahmonov', 3261),
(210, 'TKL', 'Tokelau', 2000, NULL, 0.00, 'Elisabeth II', 3333),
(211, 'TKM', 'Turkmenistan', 4459000, 60.9, 4397.00, 'Saparmurad Nijazov', 3419),
(212, 'TMP', 'East Timor', 885000, 46.0, 0.00, 'José Alexandre Gusmão', 1522),
(213, 'TON', 'Tonga', 99000, 67.9, 146.00, 'Taufa\'ahau Tupou IV', 3334),
(214, 'TTO', 'Trinidad and Tobago', 1295000, 68.0, 6232.00, 'Arthur N. R. Robinson', 3336),
(215, 'TUN', 'Tunisia', 9586000, 73.7, 20026.00, 'Zine al-Abidine Ben Ali', 3349),
(216, 'TUR', 'Turkey', 66591000, 71.0, 210721.00, 'Ahmet Necdet Sezer', 3358),
(217, 'TUV', 'Tuvalu', 12000, 66.3, 6.00, 'Elisabeth II', 3424),
(218, 'TWN', 'Taiwan', 22256000, 76.4, 256254.00, 'Chen Shui-bian', 3263),
(219, 'TZA', 'Tanzania', 33517000, 52.3, 8005.00, 'Benjamin William Mkapa', 3306),
(220, 'UGA', 'Uganda', 21778000, 42.9, 6313.00, 'Yoweri Museveni', 3425),
(221, 'UKR', 'Ukraine', 50456000, 66.0, 42168.00, 'Leonid Kutšma', 3426),
(222, 'UMI', 'United States Minor Outlying Islands', 0, NULL, 0.00, 'George W. Bush', NULL),
(223, 'URY', 'Uruguay', 3337000, 75.2, 20831.00, 'Jorge Batlle Ibáñez', 3492),
(224, 'USA', 'United States', 278357000, 77.1, 8510700.00, 'George W. Bush', 3813),
(225, 'UZB', 'Uzbekistan', 24318000, 63.7, 14194.00, 'Islam Karimov', 3503),
(226, 'VAT', 'Holy See (Vatican City State)', 1000, NULL, 9.00, 'Johannes Paavali II', 3538),
(227, 'VCT', 'Saint Vincent and the Grenadines', 114000, 72.3, 285.00, 'Elisabeth II', 3066),
(228, 'VEN', 'Venezuela', 24170000, 73.1, 95023.00, 'Hugo Chávez Frías', 3539),
(229, 'VGB', 'Virgin Islands, British', 21000, 75.4, 612.00, 'Elisabeth II', 537),
(230, 'VIR', 'Virgin Islands, U.S.', 93000, 78.1, 0.00, 'George W. Bush', 4067),
(231, 'VNM', 'Vietnam', 79832000, 69.3, 21929.00, 'Trân Duc Luong', 3770),
(232, 'VUT', 'Vanuatu', 190000, 60.6, 261.00, 'John Bani', 3537),
(233, 'WLF', 'Wallis and Futuna', 15000, NULL, 0.00, 'Jacques Chirac', 3536),
(234, 'WSM', 'Samoa', 180000, 69.2, 141.00, 'Malietoa Tanumafili II', 3169),
(235, 'YEM', 'Yemen', 18112000, 59.8, 6041.00, 'Ali Abdallah Salih', 1780),
(236, 'YUG', 'Yugoslavia', 10640000, 72.4, 17000.00, 'Vojislav Koštunica', 1792),
(237, 'ZAF', 'South Africa', 40377000, 51.1, 116729.00, 'Thabo Mbeki', 716),
(238, 'ZMB', 'Zambia', 9169000, 37.2, 3377.00, 'Frederick Chiluba', 3162),
(239, 'ZWE', 'Zimbabwe', 11669000, 37.8, 5951.00, 'Robert G. Mugabe', 4068);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Country`
--
ALTER TABLE `Country`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Country`
--
ALTER TABLE `Country`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
