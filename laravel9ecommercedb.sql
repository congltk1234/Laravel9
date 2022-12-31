-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2022 at 10:02 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel9ecommercedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'xịp', 'xip', '2022-12-15 09:33:04', '2022-12-17 06:04:36'),
(2, 'sequi', 'sequi', '2022-12-15 09:33:04', '2022-12-15 09:33:04'),
(3, 'omnis', 'omnis', '2022-12-15 09:33:04', '2022-12-15 09:33:04'),
(4, 'fuga', 'fuga', '2022-12-15 09:33:04', '2022-12-15 09:33:04'),
(5, 'ea', 'ea', '2022-12-15 09:33:04', '2022-12-15 09:33:04'),
(10, 'annna', 'annna', '2022-12-17 06:41:22', '2022-12-17 06:41:22'),
(12, 'Sử Công', 'su-cong', '2022-12-17 08:26:03', '2022-12-17 08:26:03');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `top_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `top_title`, `title`, `sub_title`, `offer`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Công nekk', 'Đồ án 2', 'Laravel', '100%', 'http://127.0.0.1:8000/product-category/su-cong', '1672370471.png', 1, '2022-12-29 20:21:11', '2022-12-29 21:13:24'),
(3, 'Slide2', 'KHônG nàm mà đòi có ăng', 'mua ngay kẹo lợ', '100 điểm rèn luyện', 'http://127.0.0.1:8000/product/possimus', '1672373749.png', 1, '2022-12-29 21:15:49', '2022-12-29 21:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_15_161020_create_categories_table', 2),
(6, '2022_12_15_161129_create_products_table', 2),
(7, '2022_12_29_060823_create_home_sliders_table', 3),
(8, '2022_12_30_102157_create_carts_table', 4),
(10, '2022_12_30_152540_create_carts_table', 5),
(12, '2022_12_31_024710_create_shoppingcart_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'possimus', 'possimus', 'Sed itaque enim necessitatibus. Ut est facilis tempore. Ut fugiat omnis blanditiis accusamus.', 'Magni ab cupiditate dolor nihil molestiae ut debitis. Dignissimos et ipsum ad dolorem est. Et voluptas dicta vitae ut omnis voluptas sequi. Dolor totam rem similique amet. Est fugiat voluptas et corrupti. Quia quia fuga asperiores omnis debitis. Et quae quos et nostrum eius maiores. Totam pariatur ea quod dolor unde. Sunt voluptas sequi quasi distinctio enim ut officiis recusandae.', '148.00', NULL, 'PRD141', 'instock', 0, 34, 'product-7-1.jpg', NULL, 1, '2022-12-15 09:33:04', '2022-12-15 09:33:04'),
(3, 'repellat', 'repellat', 'Velit laboriosam et enim placeat nemo dolorem dolor. Suscipit doloremque est nisi ducimus. Nam odit quia itaque fuga.', 'Et quis at est quia et sit. Voluptas delectus unde reiciendis voluptatibus ipsa voluptatem quia. Consequatur iusto non beatae iste nulla. Facere ut et aut nam. Ex asperiores voluptatem ut natus modi dolore facere magnam. Dolorem earum iusto delectus est sunt natus. Voluptas accusamus labore aut sint qui. Modi id id ratione voluptate at sed dicta. Id deleniti ad veritatis voluptas. Ut incidunt quaerat illo facere eveniet similique.', '419.00', NULL, 'PRD364', 'instock', 0, 17, 'product-14-1.jpg', NULL, 4, '2022-12-15 09:33:04', '2022-12-15 09:33:04'),
(5, 'amet', 'amet', 'Unde numquam et eos explicabo quis non mollitia. Voluptatibus molestiae dolorum necessitatibus consectetur omnis magnam. Sapiente doloribus labore est.', 'Doloremque velit et aut. Pariatur consequatur dolor ea quia est labore voluptas molestias. Architecto velit nemo laborum ab quo ad. Vitae voluptatem incidunt aut possimus perspiciatis. Occaecati veritatis est quo enim. Enim nam quos quis recusandae aut eveniet. Labore laborum perspiciatis aut qui.', '64.00', NULL, 'PRD337', 'instock', 0, 14, 'product-1-1.jpg', NULL, 2, '2022-12-15 09:33:04', '2022-12-15 09:33:04'),
(6, 'nihil', 'nihil', 'Qui neque consequatur dolorem cumque. Quia quod et dolor. Commodi aut aspernatur quos est optio totam veritatis. Modi animi est at consequatur.', 'Hic et tenetur aliquid dolore dignissimos aut. Eveniet voluptas impedit doloribus ipsa inventore. Culpa neque pariatur consequatur dolor. Ullam deleniti autem ipsam et dolorum omnis. Placeat sed sint consectetur labore quae ut excepturi. Laborum aut ut repudiandae blanditiis. Nobis illo est et nihil aut repudiandae. Aperiam non exercitationem qui voluptatibus eveniet qui. Asperiores corrupti eum sapiente tempore voluptas aut.', '272.00', '111.00', 'PRD176', 'instock', 1, 17, 'product-3-1.jpg', NULL, 3, '2022-12-15 09:33:04', '2022-12-29 22:54:39'),
(7, 'sint', 'sint', 'Numquam doloribus numquam non perferendis blanditiis qui dolorem cumque. Modi iure veniam provident repudiandae omnis corrupti.', 'Pariatur veritatis est molestiae praesentium. Officia reiciendis nihil dolorem aut. Possimus qui vero voluptatem velit. Magnam magni sint distinctio. Aspernatur dicta mollitia ipsam possimus. Quia incidunt tenetur sint aperiam corrupti et. Ullam assumenda velit sit ut vero. Dolores quisquam eius in mollitia. Consequatur est assumenda vitae officiis. Sit repudiandae pariatur qui non inventore soluta voluptatum repellat. Ut et voluptatibus nemo aut quis quos. Adipisci sint voluptas nulla ut at.', '406.00', NULL, 'PRD495', 'instock', 0, 24, 'product-1-1.jpg', NULL, 4, '2022-12-15 09:33:04', '2022-12-15 09:33:04'),
(8, 'eos', 'eos', 'Omnis necessitatibus dignissimos quia similique. Aut dolores voluptatem iure quis non minima quidem. Quo blanditiis et ut eaque eveniet. Impedit corporis iusto ea distinctio in amet.', 'Eaque doloremque pariatur temporibus qui. Quia et voluptatem voluptates incidunt ipsam est. Consequatur voluptates quia illum aut consequatur. Accusamus provident quasi repudiandae et. Hic iure ut dolor hic. In sit deleniti cupiditate consequatur vel. Alias et a autem eligendi et. Praesentium numquam vitae sed. Eius sunt deleniti aliquid asperiores quia est. Consequuntur facere voluptas perferendis maiores ad explicabo.', '211.00', NULL, 'PRD360', 'instock', 0, 45, 'product-9-1.jpg', NULL, 3, '2022-12-15 09:33:04', '2022-12-15 09:33:04'),
(9, 'quia', 'quia', 'At temporibus sapiente est labore quis. Molestiae sequi voluptatibus voluptatem a sit expedita id. Ipsam amet ut dolor soluta tempora ab corrupti et. Fugiat ut consequatur quod et ut explicabo ea.', 'Qui veniam voluptates provident quia quasi nulla. Nesciunt soluta beatae est nihil molestiae omnis mollitia. Laboriosam dolor qui quia omnis quos mollitia accusamus adipisci. Sed aut vel et dolorem ea et. Animi sint culpa placeat eveniet aut adipisci. Reprehenderit minima impedit eaque molestias quia quas. Ut beatae tenetur delectus ea.', '99.00', NULL, 'PRD450', 'instock', 0, 44, 'product-16-1.jpg', NULL, 4, '2022-12-15 09:33:04', '2022-12-15 09:33:04'),
(10, 'placeat', 'placeat', 'Et eaque corrupti doloribus. Quaerat incidunt nulla deleniti provident odio aliquid quia et. Nobis dolores molestiae doloribus quis.', 'Numquam velit et aliquid dolorum ducimus. Debitis consectetur eius laboriosam eos qui est dolor. Sit perferendis ea vel fugiat qui quis. Molestias vel debitis molestiae magni tenetur. Deleniti maxime et et enim. Atque rerum vitae atque eum ducimus. Fugiat veritatis voluptatem quae rerum rerum. Distinctio occaecati ducimus consequuntur nesciunt et dolores.', '27.00', NULL, 'PRD153', 'instock', 0, 48, 'product-4-1.jpg', NULL, 4, '2022-12-15 09:33:04', '2022-12-15 09:33:04'),
(11, 'quam', 'quam', 'Aut excepturi ipsa voluptatum nesciunt unde. Cum enim ut quasi nihil enim. Ad molestiae perspiciatis ab repellat voluptas vel ea.', 'Rerum quia rerum nobis. Molestiae voluptatem dolor dolorum cumque esse. Et molestias assumenda sed ullam consequatur dolore numquam. Est similique quia totam ut laboriosam expedita voluptatem eum. Unde sit vel aspernatur quis dolorem eum voluptatem. Dolorum delectus quam molestias rerum sint. Pariatur libero soluta culpa. Aspernatur porro in perferendis. Aspernatur et voluptatum quidem. Recusandae repudiandae sed est et necessitatibus.', '275.00', NULL, 'PRD446', 'instock', 0, 40, 'product-15-1.jpg', NULL, 2, '2022-12-15 09:33:04', '2022-12-15 09:33:04'),
(12, 'ipsam', 'ipsam', 'Non aut quibusdam nemo tempore dolorem. Temporibus eos enim quisquam quis suscipit eligendi omnis qui. Rerum sequi quo facere odit quo delectus. Quo sunt rerum nulla aut doloribus.', 'Unde aliquam necessitatibus perferendis est deserunt et quia neque. Quia voluptatem asperiores voluptatum deleniti consequuntur odit. Magni et suscipit voluptas exercitationem sit doloribus. Quaerat quis aut minima dolor. Est mollitia a incidunt atque iusto cumque necessitatibus. Quis qui accusamus et tenetur rerum autem tempora. Sed sunt aspernatur consequatur quia non exercitationem. Maxime rerum dolorem porro laboriosam.', '277.00', NULL, 'PRD289', 'instock', 0, 47, 'product-5-1.jpg', NULL, 5, '2022-12-15 09:33:04', '2022-12-15 09:33:04'),
(13, 'eius', 'eius', 'Ut consequatur impedit impedit natus. Occaecati modi nobis nulla voluptates. Distinctio ad earum non. Voluptatem non consequatur sed beatae distinctio iure. Dolorem sed sunt ipsum et recusandae.', 'Quia dolor odio accusantium et. Occaecati distinctio placeat sunt cupiditate quisquam. Et ut dicta aliquid. Repellendus nihil est enim. Quia beatae totam eos et harum. Dignissimos iste non molestiae voluptatem numquam sed. Consequatur soluta aliquid dicta nesciunt. Officiis qui eos eos voluptatibus et occaecati sed. Quo ut vel impedit quidem laboriosam. Quia ipsam iusto molestiae vel quae. Aut deleniti consequatur ea assumenda ex.', '264.00', NULL, 'PRD334', 'instock', 0, 20, 'product-6-1.jpg', NULL, 5, '2022-12-15 09:33:04', '2022-12-15 09:33:04'),
(14, 'quo', 'quo', 'Voluptatem dolorum nam aut. Dolorem possimus eius voluptates nulla quae quam nesciunt repellendus. Corporis ut quo et hic cumque reprehenderit. Odio quis illum corporis molestias.', 'Dolore eos et enim molestias. In voluptatum incidunt debitis corporis accusantium fuga sint. Id explicabo est nisi nam. Nesciunt earum dolor odit nihil. Molestiae ad accusamus cupiditate velit velit qui et. Asperiores et voluptatem vitae possimus. Et voluptas facere omnis consequatur vitae impedit blanditiis. Minima et debitis et pariatur alias atque.', '264.00', NULL, 'PRD378', 'instock', 0, 48, 'product-2-1.jpg', NULL, 5, '2022-12-15 09:33:04', '2022-12-15 09:33:04'),
(15, 'qui', 'qui', 'Aspernatur repellat sequi totam expedita amet rerum numquam. Ullam ut distinctio sit quam temporibus nihil. Saepe eum et explicabo cupiditate. Aut animi quibusdam vel.', 'Reprehenderit officiis et nulla consequuntur veniam culpa voluptatum. Deleniti doloribus nesciunt ducimus optio. Provident quia repudiandae aut qui illo neque. Voluptas quo unde autem fugiat consequatur ea. Maxime modi ipsum libero expedita cumque eligendi. Deleniti deserunt ullam fugiat. Ex ea et voluptates doloribus. Molestiae odit unde sed facere dicta unde. Omnis magni error velit ut autem occaecati blanditiis.', '122.00', NULL, 'PRD352', 'instock', 0, 10, 'product-2-1.jpg', NULL, 5, '2022-12-15 09:33:04', '2022-12-15 09:33:04'),
(16, 'blanditiis', 'blanditiis', 'Ea non ipsam nostrum ipsam. Aperiam et facere quis autem. Doloremque voluptatem deserunt nemo modi dolores. Rerum porro doloribus tempore id iste id sit.', 'Sit quod est error eligendi delectus. Et unde optio tempora dignissimos eius sit ea. Aperiam similique sequi nostrum omnis. Odio dolores quibusdam ipsa voluptatem voluptatum quibusdam. Quasi ut id qui explicabo qui. Minima tempore ullam qui ipsa reprehenderit unde tempora. Quasi explicabo aut ut sed dolore aut adipisci. Qui eum ut saepe dicta eos.', '459.00', NULL, 'PRD284', 'instock', 0, 23, 'product-8-1.jpg', NULL, 5, '2022-12-15 09:33:04', '2022-12-15 09:33:04'),
(18, 'vel', 'vel', 'hello', 'hellohellohellohello', '30.00', '30.00', 'dhs', 'instock', 0, 10, 'thumbnail-6.jpg', NULL, 12, '2022-12-16 17:30:41', NULL),
(19, 'Thành Công Sử', 'Xin cấp hộ chiếu để tham gia kỳ học trao đổi ở Thái Lan', 'Xin cấp hộ chiếu để tham gia kỳ học trao đổi ở Thái Lan', 'Xin cấp hộ chiếu để tham gia kỳ học trao đổi ở Thái Lan', '100.00', '99.00', 'THA', 'instock', 0, 10, '1671425191.jpg', NULL, 1, '2022-12-18 21:46:31', '2022-12-18 21:46:31'),
(20, 'Henry Cavill', 'henry-cavill', 'ck iuuu ', 'ck iuu của stc', '999.00', '9999.00', 'ckiu', 'instock', 1, 1, '1672378117.jpg', NULL, 12, '2022-12-29 22:28:37', '2022-12-29 22:49:53');

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('admin@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"468399581342505c47f4615b81bedaa9\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"468399581342505c47f4615b81bedaa9\";s:2:\"id\";i:5;s:3:\"qty\";i:1;s:4:\"name\";s:4:\"amet\";s:5:\"price\";d:64;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-12-30 22:18:23', NULL),
('admin@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"a775bac9cff7dec2b984e023b95206aa\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"a775bac9cff7dec2b984e023b95206aa\";s:2:\"id\";i:3;s:3:\"qty\";i:1;s:4:\"name\";s:8:\"repellat\";s:5:\"price\";d:419;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-12-30 22:18:23', NULL),
('user@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-12-30 23:12:49', NULL),
('user@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:3:{s:32:\"a775bac9cff7dec2b984e023b95206aa\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"a775bac9cff7dec2b984e023b95206aa\";s:2:\"id\";i:3;s:3:\"qty\";i:1;s:4:\"name\";s:8:\"repellat\";s:5:\"price\";d:419;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"808821852042d8780b9f862c35c42c68\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"808821852042d8780b9f862c35c42c68\";s:2:\"id\";i:7;s:3:\"qty\";i:1;s:4:\"name\";s:4:\"sint\";s:5:\"price\";d:406;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"e42159cc9663f5856685a74d64c29a53\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"e42159cc9663f5856685a74d64c29a53\";s:2:\"id\";i:10;s:3:\"qty\";i:1;s:4:\"name\";s:7:\"placeat\";s:5:\"price\";d:27;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-12-30 23:12:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin & USR for normal user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `utype`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$1FhqROhmzTdTF6LCwTPAMOkylwva3Jk66JVldZqqjw3f0FZLWpES.', 'ADM', 'dZMrg2MLNmHUTnmVX9HiCGLFqNArtO5awOt5AnxwZIe6quRWIhsmomdXSaMH', '2022-12-14 22:51:32', '2022-12-14 22:51:32'),
(2, 'Công nek', 'user@gmail.com', NULL, '$2y$10$oufsEpQd.6slBhpBuLA1/..KMcCetO1oSfH71lNODJEmf3SHj.5j6', 'USR', NULL, '2022-12-15 00:03:13', '2022-12-15 00:03:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
