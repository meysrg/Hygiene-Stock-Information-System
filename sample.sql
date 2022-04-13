-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Apr 2020 pada 00.42
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sample`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `Parent_id` int(11) NOT NULL DEFAULT 0,
  `Name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `Parent_id`, `Name`, `Description`, `url`, `Status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 0, 'Mens Wear', 'Mens Wear Category', 'mens-wear', 1, NULL, '2018-08-25 04:25:45', '2018-12-11 10:01:57'),
(2, 1, 'Casual Shirts', 'Casual Shirts', 'causal-shirts', 1, NULL, '2018-08-25 04:26:13', '2018-12-11 09:36:51'),
(3, 0, 'Mens Shoes', 'Shoes', 'mens-shoes', 1, NULL, '2018-08-25 04:26:34', '2018-08-25 09:46:12'),
(4, 3, 'casual Shoes', 'casual Shoes', 'casual-shoes', 1, NULL, '2018-08-25 04:26:51', '2018-08-25 04:26:51'),
(5, 1, 'Formal Shirts', 'Formal Shirts', 'formal-shirts', 1, NULL, '2018-08-25 08:58:58', '2018-12-11 09:37:07'),
(9, 3, 'Formal Shoes', 'Formal Shoes', 'formal-shoes', 1, NULL, '2018-08-25 09:47:04', '2018-08-25 09:47:04'),
(10, 3, 'Fleat Shoes', 'Fleat Shoes', 'fleat-shoes', 1, NULL, '2018-08-25 09:47:56', '2018-08-25 09:47:56'),
(11, 0, 'Womens Wear', 'Womens Wear', 'Women-Wear', 1, NULL, '2018-12-11 09:52:59', '2018-12-11 10:02:21'),
(12, 11, 'Casual Shirts', 'Casual Shirts', 'Casual-Shirts', 1, NULL, '2018-12-11 09:53:41', '2018-12-11 09:57:11'),
(14, 11, 'Formal Shirts', 'Formal Shirts', 'Formal-Shirts', 1, NULL, '2018-12-11 09:56:31', '2018-12-11 09:57:36'),
(15, 0, 'Women Shoes', 'Women Shoes', 'Women-Shoes', 1, NULL, '2018-12-11 09:58:02', '2018-12-11 09:58:02'),
(16, 15, 'Casual Shoes', 'Casual Shoes', 'Casual-Shoes', 1, NULL, '2018-12-11 09:58:28', '2018-12-11 09:58:28'),
(17, 15, 'Formal Shoes', 'Formal Shoes', 'Formal-Shoes', 1, NULL, '2018-12-11 09:59:05', '2018-12-11 09:59:05'),
(18, 0, 'Kids Wear', 'Kids Wear', 'Kids-Wear', 1, NULL, '2018-12-11 10:03:38', '2018-12-11 10:03:38'),
(19, 18, 'Casual Shirts', 'Casual Shirts', 'Casual-Shirts', 1, NULL, '2018-12-11 10:04:11', '2018-12-11 10:04:11'),
(21, 18, 'Formal Shirts', 'Formal Shirts', 'Formal-Shirts', 1, NULL, '2018-12-11 10:05:30', '2018-12-11 10:05:30'),
(22, 18, 'Casual Shoes', 'Casual Shoes', 'Casual-Shoes', 1, NULL, '2018-12-11 10:06:06', '2018-12-11 10:06:06'),
(23, 18, 'Formal Shoes', 'Formal Shoes', 'Formal-Shoes', 1, NULL, '2018-12-11 10:06:25', '2018-12-11 10:06:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'SS', 'South Sudan'),
(203, 'ES', 'Spain'),
(204, 'LK', 'Sri Lanka'),
(205, 'SH', 'St. Helena'),
(206, 'PM', 'St. Pierre and Miquelon'),
(207, 'SD', 'Sudan'),
(208, 'SR', 'Suriname'),
(209, 'SJ', 'Svalbard and Jan Mayen Islands'),
(210, 'SZ', 'Swaziland'),
(211, 'SE', 'Sweden'),
(212, 'CH', 'Switzerland'),
(213, 'SY', 'Syrian Arab Republic'),
(214, 'TW', 'Taiwan'),
(215, 'TJ', 'Tajikistan'),
(216, 'TZ', 'Tanzania, United Republic of'),
(217, 'TH', 'Thailand'),
(218, 'TG', 'Togo'),
(219, 'TK', 'Tokelau'),
(220, 'TO', 'Tonga'),
(221, 'TT', 'Trinidad and Tobago'),
(222, 'TN', 'Tunisia'),
(223, 'TR', 'Turkey'),
(224, 'TM', 'Turkmenistan'),
(225, 'TC', 'Turks and Caicos Islands'),
(226, 'TV', 'Tuvalu'),
(227, 'UG', 'Uganda'),
(228, 'UA', 'Ukraine'),
(229, 'AE', 'United Arab Emirates'),
(230, 'GB', 'United Kingdom'),
(231, 'US', 'United States'),
(232, 'UM', 'United States minor outlying islands'),
(233, 'UY', 'Uruguay'),
(234, 'UZ', 'Uzbekistan'),
(235, 'VU', 'Vanuatu'),
(236, 'VA', 'Vatican City State'),
(237, 'VE', 'Venezuela'),
(238, 'VN', 'Vietnam'),
(239, 'VG', 'Virgin Islands (British)'),
(240, 'VI', 'Virgin Islands (U.S.)'),
(241, 'WF', 'Wallis and Futuna Islands'),
(242, 'EH', 'Western Sahara'),
(243, 'YE', 'Yemen'),
(244, 'ZR', 'Zaire'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Struktur dari tabel `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `amount_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `user_id`, `user_email`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `created_at`, `updated_at`) VALUES
(1, 1, 'teguhdumkom@gmail.com', 'teguh', 'jalan lettunapis', 'tangerang', 'Banten', 'Indonesia', '1515151', '081286115887', '2020-04-12 03:28:30', '2020-04-12 03:28:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_08_18_082027_create_category_table', 2),
(4, '2018_08_21_173456_create_products_table', 3),
(5, '2018_08_24_061945_create_products_attributes_table', 4),
(6, '2018_10_10_072850_create_cart_table', 5),
(7, '2018_10_20_120758_create_coupons_table', 6),
(8, '2018_12_01_114714_create_orders_table', 7),
(9, '2018_12_01_120120_create_orders_products_table', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charges` float NOT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_amount` float NOT NULL,
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `user_email`, `name`, `address`, `city`, `state`, `pincode`, `country`, `mobile`, `shipping_charges`, `coupon_code`, `coupon_amount`, `order_status`, `payment_method`, `grand_total`, `created_at`, `updated_at`) VALUES
(1, 13, 'teguhdumkom@gmail.com', 'teguh', 'jalan lettunapis', 'tangerang', 'Banten', '1515151', 'Indonesia', '081286115887', 0, '', 0, 'New', 'paypal', 1450, '2020-04-12 03:28:58', '2020-04-12 03:28:58'),
(2, 13, 'teguhdumkom@gmail.com', 'teguh', 'jalan lettunapis', 'tangerang', 'Banten', '1515151', 'Indonesia', '081286115887', 0, '', 0, 'New', 'COD', 1450, '2020-04-12 03:29:30', '2020-04-12 03:29:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_products`
--

CREATE TABLE `orders_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` float NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders_products`
--

INSERT INTO `orders_products` (`id`, `order_id`, `user_id`, `product_id`, `product_code`, `product_name`, `product_size`, `product_color`, `product_price`, `product_image`, `product_qty`, `created_at`, `updated_at`) VALUES
(1, 1, 13, 10, 'FBLS004', 'New HandMade Leather Shoes', '8', 'Brown', 1450, '', 1, '2020-04-12 03:28:58', '2020-04-12 03:28:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `care` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_name`, `product_code`, `product_color`, `description`, `care`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, 'White Polo Casual T-Shirt', 'WPCTS001', 'White', 'White Polo Casual T-Shirts', 'Soft Wool', 70000.00, '64943.jpg', '2018-12-11 08:14:34', '2020-04-12 03:35:18'),
(2, 2, 'Red Casual T-Shirts', 'RCTS002', 'Red', 'Red Casual T-Shirts', 'Soft Wool', 75000.00, '15233.PNG', '2018-12-11 08:25:54', '2020-04-12 03:35:45'),
(3, 5, 'Elegant Green Formal Shirt', 'EGFS003', 'Green', 'Elegant Green Formal Shirt', 'Cotton Stuff', 125000.00, '81563.jpeg', '2018-12-11 08:41:57', '2020-04-12 03:36:11'),
(4, 5, 'White Formal T-Shirts', 'WFTS004', 'White', 'Nologo white polo t-shirt with navy collar', 'Nologo white polo t-shirt with navy collar', 80000.00, '61487.jpg', '2018-12-11 08:48:24', '2020-04-12 03:36:43'),
(5, 5, 'Graphite Grey formal Shirt', 'GGFS005', 'Grey', 'Graphite grey formal Shirt', 'Plain Cotton', 100000.00, '56324.png', '2018-12-11 08:56:36', '2020-04-12 03:37:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `product_id`, `sku`, `size`, `price`, `stock`, `created_at`, `updated_at`) VALUES
(1, 1, 'WPCTS001', 'Small', 700.00, 5, '2018-12-11 08:17:57', '2018-12-11 08:17:57'),
(2, 1, 'WPCTS002', 'Medium', 750.00, 5, '2018-12-11 08:20:08', '2018-12-11 08:20:08'),
(3, 1, 'WPCTS003', 'Large', 800.00, 5, '2018-12-11 08:20:08', '2018-12-11 08:20:08'),
(4, 1, 'WPCTS004', 'Extra Large', 900.00, 5, '2018-12-11 08:20:08', '2018-12-11 08:20:08'),
(5, 2, 'RCTS002', 'Small', 750.00, 5, '2018-12-11 08:27:15', '2018-12-11 08:27:15'),
(6, 2, 'RCTS003', 'Medium', 800.00, 5, '2018-12-11 08:27:15', '2018-12-11 08:27:15'),
(7, 2, 'RCTS004', 'Large', 850.00, 5, '2018-12-11 08:27:15', '2018-12-11 08:27:15'),
(8, 2, 'RCTS005', 'Extra Large', 1000.00, 5, '2018-12-11 08:27:15', '2018-12-11 08:27:15'),
(9, 3, 'EGFS003', 'Small', 1250.00, 5, '2018-12-11 08:43:02', '2018-12-11 08:43:02'),
(10, 3, 'EGFS004', 'Medium', 1300.00, 5, '2018-12-11 08:43:02', '2018-12-11 08:43:02'),
(11, 3, 'EGFS005', 'Large', 1350.00, 5, '2018-12-11 08:43:03', '2018-12-11 08:43:03'),
(12, 3, 'EGFS006', 'Extra Large', 1500.00, 5, '2018-12-11 08:43:03', '2018-12-11 08:43:03'),
(13, 4, 'WFTS004', 'Small', 800.00, 5, '2018-12-11 08:50:15', '2018-12-11 08:50:15'),
(14, 4, 'WFTS005', 'Medium', 850.00, 5, '2018-12-11 08:50:15', '2018-12-11 08:50:15'),
(15, 4, 'WFTS006', 'Large', 900.00, 5, '2018-12-11 08:50:15', '2018-12-11 08:50:15'),
(16, 4, 'WFTS007', 'Extra Large', 1000.00, 5, '2018-12-11 08:50:15', '2018-12-11 08:50:15'),
(17, 5, 'GGFS005', 'Small', 1050.00, 5, '2018-12-11 08:58:48', '2018-12-11 08:58:48'),
(18, 5, 'GGFS006', 'Medium', 1100.00, 5, '2018-12-11 08:58:48', '2018-12-11 08:58:48'),
(19, 5, 'GGFS007', 'Large', 1150.00, 5, '2018-12-11 08:58:48', '2018-12-11 08:58:48'),
(20, 5, 'GGFS008', 'Extra Large', 1200.00, 5, '2018-12-11 08:58:48', '2018-12-11 08:58:48'),
(21, 6, 'BFBS006', 'Small', 1300.00, 5, '2018-12-11 09:06:07', '2018-12-11 09:06:07'),
(22, 6, 'BFBS007', 'Medium', 1350.00, 5, '2018-12-11 09:06:07', '2018-12-11 09:06:07'),
(23, 6, 'BFBS008', 'Large', 1500.00, 5, '2018-12-11 09:06:07', '2018-12-11 09:06:07'),
(24, 6, 'BFBS009', 'Extra Large', 1600.00, 5, '2018-12-11 09:06:07', '2018-12-11 09:06:07'),
(25, 7, 'MCLS001', '8', 1500.00, 5, '2018-12-11 09:26:27', '2018-12-11 09:26:27'),
(26, 7, 'MCLS002', '9', 1500.00, 5, '2018-12-11 09:27:25', '2018-12-11 09:27:25'),
(27, 7, 'MCLS003', '10', 1500.00, 5, '2018-12-11 09:27:25', '2018-12-11 09:27:25'),
(28, 7, 'MCLS004', '11', 1600.00, 5, '2018-12-11 09:27:25', '2018-12-11 09:27:25'),
(29, 7, 'MCLS005', '12', 1700.00, 5, '2018-12-11 09:27:25', '2018-12-11 09:27:25'),
(30, 8, 'BCMS002', '8', 1250.00, 5, '2018-12-11 09:33:09', '2018-12-11 09:33:09'),
(31, 8, 'BCMS003', '9', 1300.00, 5, '2018-12-11 09:33:09', '2018-12-11 09:33:09'),
(32, 8, 'BCMS004', '10', 1400.00, 5, '2018-12-11 09:33:09', '2018-12-11 09:33:09'),
(33, 8, 'BCMS005', '11', 1500.00, 5, '2018-12-11 09:33:09', '2018-12-11 09:33:09'),
(34, 8, 'BCMS006', '12', 1600.00, 5, '2018-12-11 09:33:09', '2018-12-11 09:33:09'),
(35, 9, 'CSLB003', '8', 1150.00, 5, '2018-12-11 09:43:07', '2018-12-11 09:43:07'),
(36, 9, 'CSLB004', '9', 1200.00, 5, '2018-12-11 09:43:07', '2018-12-11 09:43:07'),
(37, 9, 'CSLB005', '10', 1250.00, 5, '2018-12-11 09:43:07', '2018-12-11 09:43:07'),
(38, 9, 'CSLB006', '11', 1300.00, 5, '2018-12-11 09:43:07', '2018-12-11 09:43:07'),
(39, 9, 'CSLB007', '12', 1400.00, 5, '2018-12-11 09:43:07', '2018-12-11 09:43:07'),
(40, 10, 'FBLS004', '8', 1450.00, 5, '2018-12-11 09:49:59', '2018-12-11 09:49:59'),
(41, 10, 'FBLS005', '9', 1450.00, 5, '2018-12-11 09:49:59', '2018-12-11 09:49:59'),
(42, 10, 'FBLS006', '10', 1500.00, 5, '2018-12-11 09:50:00', '2018-12-11 09:50:00'),
(43, 10, 'FBLS007', '11', 1600.00, 5, '2018-12-11 09:50:00', '2018-12-11 09:50:00'),
(44, 10, 'FBLS008', '12', 1700.00, 5, '2018-12-11 09:50:00', '2018-12-11 09:50:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products_images`
--

CREATE TABLE `products_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `products_images`
--

INSERT INTO `products_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, '1425.jpg', '2018-12-11 13:14:59', '2018-12-11 08:14:59'),
(2, 1, '9280.jpg', '2018-12-11 13:15:14', '2018-12-11 08:15:14'),
(3, 2, '8910.PNG', '2018-12-11 13:28:06', '2018-12-11 08:28:06'),
(4, 2, '1355.PNG', '2018-12-11 13:28:19', '2018-12-11 08:28:19'),
(5, 3, '7671.jpeg', '2018-12-11 13:43:28', '2018-12-11 08:43:28'),
(6, 3, '7263.jpeg', '2018-12-11 13:43:36', '2018-12-11 08:43:36'),
(7, 4, '5924.jpg', '2018-12-11 13:48:46', '2018-12-11 08:48:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `email`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alwaz Azhar', 'walton road', 'lahore', 'punjab', 'Pakistan', '54000', '11323233223', 'amaanchaudhary48@gmail.com', '$2y$10$YSQqQsx7pvOQ/2m3emdstO/OAE2WuMprbMSU5Aw2wST4IN22/POaS', 1, 'FC13Hd7sxMM9lNdi7pM7YzG37rljxUooJzVnIBGNSUaNfdSd7DmTdrn2kfgN', '2018-06-26 06:38:38', '2018-12-09 14:49:10'),
(7, 'Amaan Azhar', 'test123', 'lahore', 'Punjab', 'Pakistan', '54000', '99173971393', 'amaanchaudhary@gmail.com', '$2y$10$vu8e5k9zTcw0GuXVRiHq2ujGp77u0pA2s5F/FDel9D1enshVBFUna', 0, 'ewB3bbXe8Ll494jGom5CR9jCPQVj8t6sPR3oTPSiShZSzPGB8AOsaLsU7B6Q', '2018-11-10 03:19:10', '2018-12-11 07:54:32'),
(8, 'john', '', '', '', '', '', '', 'john48@gmail.com', '$2y$10$6IsSlEdWR7OLxHuaIk/oRONSLOXHxzsMNBkj7YvVWnA4F667mfBvi', NULL, 'MTdft6kP8VokGaUZHjM9grYkVuuiAE3f8Pavo7XvAOu2fe1cyoS6oNJu9LiG', '2018-11-10 03:23:09', '2018-11-10 03:23:09'),
(9, 'kashif', 'E-417/a peer colony st# 1', 'Lahore', 'Punjab', 'Pakistan', '54000', '03030961254', 'kashif@gmail.com', '$2y$10$mybMn6hVx6SidaWfDi/wde6fhslUiDirpW/qs0yrZouKw0tNZg1mW', NULL, 'TlSPViZuvCLagnAWJS2O2iwkzPwch2Cn3227AuWAQJwcyUef1Mm9qOq0k2PD', '2018-11-29 01:11:05', '2018-12-08 03:34:35'),
(10, 'Alwaz', 'test', 'test', 'test', 'Azerbaijan', '6363', '2627633', 'alwaz@gmail.com', '$2y$10$MuE9hAU9kHfRlOKTHupWcOKjEg876VPWTZSchKQGpMdggvNmFKMDq', NULL, 'pONkjIgfdcAMOqdeUJN9ybAMe7uQq57a8LvuU1l1UAWvv2ajUSbNJp0YWB3E', '2018-11-29 02:18:30', '2018-11-29 06:15:08'),
(11, 'ali', 'kdn', 'kdnwk', 'nsqks', 'Kazakhstan', 'ldn219', '8127', 'ali@gmail.com', '$2y$10$pc/YECg8tZB7Y6.znrtXS.dwoS6zAQ5l88eHTdItLg60VK480PsRC', NULL, 'KxNaCTGHVARXng63bOeA1FG8TDWdCJC5t9IOnE34xEXpGSCyTkzdlFcrhSDY', '2018-12-01 05:19:53', '2018-12-01 13:45:37'),
(13, 'teguh', 'jalan lettunapis', 'tangerang', 'Banten', 'Indonesia', '1515151', '081286115887', 'teguhdumkom@gmail.com', '$2y$10$lkcuerWv2dnvpiIIdneZR.j9nnRS33S6cBGw5ZNCzcchbwQH8IjY2', 1, 'it2erb06BkXTvaju4utGDIMrAT7n2O6NtJjCzFMCsBodLPY1evTrCL1yuM9n', '2020-04-12 02:48:12', '2020-04-12 03:28:30');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT untuk tabel `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
