-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 12 mai 2022 à 10:03
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Voluptas eaque.', '2022-04-29 10:14:49', '2022-04-29 10:14:49'),
(2, 'Sed.', '2022-04-29 10:14:49', '2022-04-29 10:14:49'),
(3, 'Esse nihil natus.', '2022-04-29 10:14:49', '2022-04-29 10:14:49'),
(4, 'Cupiditate eum vel cupiditate.', '2022-04-29 10:14:49', '2022-04-29 10:14:49'),
(5, 'Rerum qui qui.', '2022-04-29 10:14:49', '2022-04-29 10:14:49');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(37, '2014_10_12_000000_create_users_table', 1),
(38, '2014_10_12_100000_create_password_resets_table', 1),
(39, '2019_08_19_000000_create_failed_jobs_table', 1),
(40, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(41, '2022_04_27_074000_create_posts_table', 1),
(42, '2022_04_27_074102_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`, `user_id`, `category_id`) VALUES
(1, 'Earum qui voluptatem nam sequi molestiae occaecati suscipit omnis.', 'Id minima ipsa autem recusandae. Non veniam et et deleniti sit. Ut est qui est fugit. Eveniet voluptate voluptatem et illo incidunt. Reiciendis unde enim maiores quod ut qui. Tenetur commodi recusandae aut explicabo deleniti. Necessitatibus rerum hic eos sed facilis. Ut ullam cupiditate sequi eos labore eveniet. Nobis quia laboriosam atque magnam numquam pariatur similique expedita. Incidunt rerum sunt fugiat est nostrum aperiam et. Ex illo voluptas illum aut quia laboriosam. Est ut saepe exercitationem autem et quaerat est. Ut sunt debitis et doloremque enim distinctio. Eum et reiciendis dicta et repellendus rerum rerum. Natus eum expedita ipsa officia delectus.', 'https://via.placeholder.com/1000', '2022-04-29 10:14:49', '2022-04-29 10:14:49', 1, 2),
(2, 'Qui aliquam labore eum ipsum est expedita.', 'Fugit laborum nobis officia odio occaecati voluptatem. Quidem ab qui omnis explicabo nam amet earum. Minima ratione totam possimus enim deleniti et. Nobis rem repellat consequatur non necessitatibus est ut. Sed dolore vero cum magnam facere eveniet minima. Earum enim eum atque. Velit adipisci autem excepturi porro est ea in. Repellendus velit libero nam inventore amet quae reiciendis. Sit repellendus beatae et sed dolore aut. Laborum dolores minus laborum sint numquam harum qui. Corporis accusantium et architecto aut repellat. Sequi officia porro fugit modi nesciunt non occaecati sunt. Qui enim et pariatur ut. Quia vel reiciendis sequi tempore impedit. Illo laborum est est quos explicabo earum rerum.', 'https://via.placeholder.com/1000', '2022-04-29 10:14:49', '2022-04-29 10:14:49', 2, 1),
(3, 'Quia quos voluptas nisi perspiciatis dicta id distinctio.', 'Corporis id in delectus eos. Blanditiis facilis ab in. Velit est assumenda ut rerum dolor ut. Quia asperiores officiis eaque sint. Aliquid ducimus voluptates labore veritatis ut unde rerum occaecati. Quisquam sunt occaecati necessitatibus ratione architecto. Doloremque aut qui fugit reiciendis aut rerum. Harum quia dignissimos eum voluptate ut maxime. Doloremque earum suscipit dicta molestiae totam. Voluptas natus ea recusandae ut consequuntur qui. Earum incidunt omnis et qui. Et est quod id. Repellendus qui eos maiores neque est nisi. Voluptatem laudantium et consectetur laboriosam reiciendis necessitatibus dicta ratione. Quo reprehenderit fugit dolorum quae tempora ut omnis.', 'https://via.placeholder.com/1000', '2022-04-29 10:14:49', '2022-04-29 10:14:49', 3, 2),
(4, 'Incidunt sunt optio ut excepturi aut.', 'Reprehenderit sed error laudantium minus atque. Aut cum odio sed et. Ut saepe neque et magnam aut sunt rerum. Dignissimos et pariatur veritatis sapiente qui sed. Sint in qui incidunt. Tempora numquam rerum optio nam. Consectetur distinctio in voluptates tempore. Eos amet iste quod culpa fugit doloribus dolore. Voluptas doloremque qui illum qui atque. Officia sit fugit voluptatibus aliquid officiis consectetur impedit. Cupiditate eaque et sed vero. Voluptate quam aliquam quis aut illum ducimus enim consequatur. Velit reprehenderit voluptatum dicta nisi qui. Iste et recusandae nam quasi accusamus libero. Voluptatem est qui tempore laborum.', 'https://via.placeholder.com/1000', '2022-04-29 10:14:49', '2022-04-29 10:14:49', 4, 1),
(5, 'Enim aliquid quia nihil sint voluptas.', 'Voluptatem quia qui et nostrum eligendi sit saepe quos. Vitae debitis aliquam rerum reprehenderit magnam mollitia et. Accusamus temporibus dolor laudantium veritatis. Placeat voluptatibus nostrum quis pariatur vel eum recusandae illo. Consequuntur temporibus sit doloribus debitis nisi autem. Eligendi consectetur rerum quo numquam. Eum maiores neque corporis enim deleniti. Fugiat laboriosam sunt laboriosam nobis atque. Maiores a iure maiores aliquid ut ut. Corrupti praesentium placeat ducimus consequuntur ut id et. Nulla autem soluta et eveniet fugit saepe quos. Eveniet sunt molestiae dolor earum. Corporis dicta necessitatibus omnis velit eum. Aut assumenda est aut dicta at. Et odio quibusdam est consequatur laboriosam exercitationem.', 'https://via.placeholder.com/1000', '2022-04-29 10:14:49', '2022-04-29 10:14:49', 4, 1),
(6, 'Distinctio voluptas et omnis ex.', 'Sed voluptatem maiores debitis assumenda. Quis qui optio cumque sit laudantium eos qui. Neque quisquam accusantium dolor. Iste ex accusamus sunt vel est quia sint. Sit rerum nam nihil iste. Qui ut temporibus aperiam. Repudiandae saepe hic et iure molestias tenetur quia. Culpa voluptatem voluptatibus molestias molestiae reprehenderit veniam ut. Qui at eos eaque qui sapiente quo illo debitis. Repellat quo accusamus dolorum culpa nam sed enim tenetur. Recusandae expedita consequuntur quis. Necessitatibus doloribus voluptatem saepe blanditiis a. In doloribus quia omnis omnis dignissimos pariatur nihil. Eaque perferendis totam neque et odit et. Nesciunt modi vel accusantium eos consequuntur qui dolores voluptates.', 'https://via.placeholder.com/1000', '2022-04-29 10:14:49', '2022-04-29 10:14:49', 4, 1),
(7, 'Quo autem temporibus voluptates quibusdam nisi.', 'Eaque tenetur nihil iure voluptatem eligendi. Laboriosam at animi inventore rerum totam sequi maiores. Saepe earum quia voluptas a dolor tempora et. Omnis consectetur eveniet fugiat et amet molestiae. Omnis corporis eius corrupti quidem sit quas laudantium illo. Inventore voluptatem nihil molestiae. Minus possimus aut non dolore rerum. Qui aspernatur consequatur provident sunt. Impedit cumque vero vel officia. Veniam doloremque minima id sit non praesentium. Laudantium rerum quisquam quos id et vitae repellat. Officia commodi quidem recusandae ab facere ea neque enim. Perspiciatis tempore repellendus ex et. Deleniti eaque neque rem ut. Voluptas quia sapiente minus vitae animi.', 'https://via.placeholder.com/1000', '2022-04-29 10:14:49', '2022-04-29 10:14:49', 5, 5),
(8, 'Labore vero perferendis quod nihil sint sapiente veritatis.', 'Facilis et quaerat dolorem facilis omnis incidunt. Corrupti et aut sit repellat veritatis omnis. Incidunt non sunt sed et sunt natus reiciendis. Provident eligendi est architecto. Qui delectus porro tempora. Repellat id illo error similique qui eos sapiente qui. Quam qui repellendus eum. Est pariatur et est et. Velit consequatur aut est saepe amet molestiae iusto. Libero voluptatibus enim qui facere. Cumque provident nisi itaque magnam repudiandae. Quis impedit aperiam sapiente unde vel perspiciatis in. Quod corporis quae dignissimos commodi vitae perspiciatis et nihil. Dolorem debitis ea accusamus et amet. Ab et quo dolores reiciendis ea repellat.', 'https://via.placeholder.com/1000', '2022-04-29 10:14:49', '2022-04-29 10:14:49', 5, 5),
(9, 'Id omnis aut id.', 'Est deserunt corporis voluptas nemo quam. Qui et inventore odio illo eum voluptatem. Aut inventore ad quia consectetur non quidem sapiente. Nihil quod vel ea non maxime pariatur quia iste. Dolor odit veniam a vel velit velit. Omnis deserunt id eos aut sunt eum ut. Ipsum voluptas sit inventore dicta dicta nobis qui. Quia eum incidunt laboriosam sit quaerat explicabo ut. Accusamus doloribus libero labore maxime deleniti. Id earum error voluptatem. Delectus et quis est eum. Et reprehenderit nemo optio error quis recusandae maxime magnam. Molestias voluptate laudantium iure quibusdam odit eos. Perferendis minima ea dolorem ea eos. Iusto molestiae molestiae qui sed amet.', 'https://via.placeholder.com/1000', '2022-04-29 10:14:49', '2022-04-29 10:14:49', 5, 5),
(10, 'Qui illum eveniet nihil doloribus non asperiores aliquid.', 'Neque velit et quam. Voluptate aspernatur consequatur quas non voluptas enim sit. Adipisci sapiente esse enim. Omnis et dolor accusantium asperiores itaque officia. Voluptates consequatur nisi fugit quam aliquid et. Nihil amet temporibus dicta placeat voluptate blanditiis. A aut omnis omnis. Nisi provident non delectus animi ipsa. Eum itaque repudiandae dolores modi ducimus hic. Voluptates aut maiores non aut consequatur modi. Dolores quis reiciendis nobis non. Cum voluptas fuga et at sed facere ipsam. Laboriosam et excepturi modi voluptas omnis enim. Blanditiis est alias libero perferendis. Voluptatem excepturi tempore molestiae distinctio ut rem aut consectetur.', 'https://via.placeholder.com/1000', '2022-04-29 10:14:49', '2022-04-29 10:14:49', 6, 1),
(11, 'Delectus dolores repellendus delectus maxime voluptas.', 'Unde a minima et. Illum ipsum in error deleniti accusamus dolores. Ex veniam temporibus eligendi alias dicta eveniet provident delectus. Distinctio perferendis vero ut enim enim facere. Odio aliquid similique repudiandae nam et iste debitis quia. Sed nihil laborum eligendi dolores nobis esse fugiat. Sit voluptatem praesentium animi non necessitatibus maiores non sit. Non quasi temporibus quas magnam cupiditate nostrum. Dolorem voluptates velit eligendi eum est quibusdam possimus aperiam. Ad dolorem illum voluptatem assumenda beatae quia. Ducimus ut odio esse qui quasi dignissimos dolorem. Numquam itaque quos natus non velit. Maiores et ratione reprehenderit excepturi labore tempora labore. Iusto ullam odio et. Illum cum similique veritatis dolor voluptatem quas.', 'https://via.placeholder.com/1000', '2022-04-29 10:14:49', '2022-04-29 10:14:49', 7, 2),
(12, 'Ducimus et temporibus sequi est accusamus iusto possimus quo aut.', 'Autem ut sint velit eum nobis est harum. Ut consequatur enim reprehenderit eos. Iure et saepe totam molestias mollitia ut ullam. Omnis porro voluptatibus error autem tempora id. Architecto amet provident expedita officia ut recusandae quaerat. Quibusdam consequatur doloribus aut sed voluptate provident nesciunt. Et id officia ut. Laboriosam dicta quos deserunt voluptas culpa distinctio. Veritatis ipsa qui consequuntur nostrum dolorem. Aut id eos voluptate molestias quis placeat repellendus. Repudiandae minus non iusto perspiciatis deserunt. Voluptatem dolorum et nihil blanditiis sed. Ut molestias qui repellendus ratione est est eos. Dolorum pariatur id et est quo distinctio. Et amet impedit enim.', 'https://via.placeholder.com/1000', '2022-04-29 10:14:49', '2022-04-29 10:14:49', 7, 2),
(13, 'Ut harum hic officiis ducimus.', 'Vero quod nesciunt iure facere fugiat eius modi. Non quidem dicta error quia et quia cumque. Officia dolor officia rem quasi occaecati. Reiciendis aut non quam. Voluptatem maxime commodi ut ut eos. Id vel dolor assumenda qui id distinctio quaerat ea. Excepturi ut dolorem omnis delectus est omnis id tenetur. Sapiente et exercitationem autem. Sint alias harum nemo facere. Qui ab est sequi qui. Corporis ea iste est illo necessitatibus minima unde. Praesentium quia inventore nihil illo velit. Voluptate nihil dolorum omnis non atque minima eum rem. Cupiditate error voluptas odit consectetur architecto cum consequatur. Fuga distinctio ipsa velit harum et tempore dolor.', 'https://via.placeholder.com/1000', '2022-04-29 10:14:49', '2022-04-29 10:14:49', 8, 1),
(14, 'Iusto dolore alias quis earum dolor hic voluptate voluptatibus.', 'Cumque autem provident voluptatem id ex. Quia ducimus rem at vel debitis. Sunt iusto aut eos aut repellat. Debitis ea dolores autem aliquid assumenda et. Esse magnam est eos et quia. Itaque sapiente quo voluptatem dolorum illum saepe in. Et perspiciatis autem deleniti voluptatibus vel. Qui ut voluptatem quibusdam. Amet qui iure quo maxime laboriosam et. Quia non soluta commodi nihil quam magnam maiores. Suscipit molestiae illo cupiditate dolor maiores expedita. Molestiae rerum impedit inventore ducimus. Ut vel delectus voluptate quod dolorem neque. Dolor qui non sed dolores ullam et. Voluptas cumque sequi animi ut magni.', 'https://via.placeholder.com/1000', '2022-04-29 10:14:49', '2022-04-29 10:14:49', 8, 1),
(15, 'Voluptatum hic soluta delectus rerum.', 'Et voluptate odio molestiae ab non fugit facere. Fugit repudiandae quam et fugiat impedit. Molestiae quidem nobis et eveniet blanditiis et. Quod in natus facilis. Aut tenetur ipsa veritatis quisquam unde esse sapiente. Non consectetur blanditiis laudantium aut. Blanditiis porro non necessitatibus natus. Nihil magni autem sapiente officiis tempore et est. Voluptatem officiis deserunt in voluptatem sequi culpa. Adipisci odit illum aperiam labore occaecati soluta totam recusandae. Aliquam velit autem aut quibusdam aliquam quisquam. Autem eum repudiandae tempora et. Enim natus aut illum sunt. Repudiandae assumenda et sunt nostrum magni. Iste modi maiores reprehenderit dignissimos.', 'https://via.placeholder.com/1000', '2022-04-29 10:14:50', '2022-04-29 10:14:50', 9, 2),
(16, 'Quia libero nostrum cupiditate modi voluptatem voluptatum eum.', 'Sapiente quia necessitatibus quia rem. Veritatis ex aperiam exercitationem rem unde. Iure voluptatum nemo sit inventore qui. Est aliquam voluptates illo et officia. Laborum aut sed earum nihil. Nisi rerum sit voluptatem eum. Modi voluptas aut consequatur. Omnis et dolor pariatur et corrupti. Nobis sapiente aliquam quo voluptate veniam ipsam. Suscipit animi consequuntur voluptatem vitae delectus voluptas. Quisquam iusto vero minus. Consequatur adipisci voluptates velit praesentium non sunt et. Atque similique sed minima nulla dolorum at. Ut doloremque voluptates inventore sint et occaecati et. Quo aut qui ab quia voluptates ullam accusantium voluptas.', 'https://via.placeholder.com/1000', '2022-04-29 10:14:50', '2022-04-29 10:14:50', 10, 1),
(17, 'Laborum magni optio quam eos cum fuga sed natus at rerum maxime.', 'Sed optio dolores sint commodi illo. At magni ea qui blanditiis et corporis ut voluptates. Iste et praesentium quidem nesciunt sit. Quis quos rerum numquam amet eos non numquam. Dolorem cupiditate iusto voluptatibus sunt minus. Dignissimos itaque aliquam ex sint. Mollitia suscipit aperiam non ea laborum. Explicabo incidunt magni commodi culpa perferendis veniam neque exercitationem. Porro sunt debitis porro et aperiam. Velit totam sunt vel occaecati saepe. Praesentium quas consequuntur optio eum fugiat velit. Facilis repellat eos nulla inventore aspernatur ducimus occaecati. Autem quae iste veritatis nesciunt animi et quos. Blanditiis quibusdam corrupti quibusdam velit a sunt. Sit nihil ipsa rerum reiciendis.', 'https://via.placeholder.com/1000', '2022-04-29 10:14:50', '2022-04-29 10:14:50', 10, 1),
(19, 'Mon post', 'Le contenu de mon post', 'post/AcwUePtBR4XPUMCyKqY8OEWu5YF3tSF479TJOhg8.jpg', '2022-04-29 12:39:48', '2022-04-29 12:39:48', 11, 2);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Leda Toy', 'cwehner@example.org', '2022-04-29 10:14:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TtA86EfLtQ', '2022-04-29 10:14:49', '2022-04-29 10:14:49'),
(2, 'Nola Halvorson', 'uwolff@example.org', '2022-04-29 10:14:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vcJJxx1F3b', '2022-04-29 10:14:49', '2022-04-29 10:14:49'),
(3, 'Deontae Murazik II', 'javier08@example.com', '2022-04-29 10:14:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jU326N6iAi', '2022-04-29 10:14:49', '2022-04-29 10:14:49'),
(4, 'Mrs. Kailyn Crooks PhD', 'hmcclure@example.org', '2022-04-29 10:14:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2DNMHkLDgF', '2022-04-29 10:14:49', '2022-04-29 10:14:49'),
(5, 'Mr. Russ O\'Reilly', 'christy.mccullough@example.com', '2022-04-29 10:14:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IR8rCs6M3T', '2022-04-29 10:14:49', '2022-04-29 10:14:49'),
(6, 'Sven Toy', 'brionna35@example.com', '2022-04-29 10:14:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hHi8ahMgyn', '2022-04-29 10:14:49', '2022-04-29 10:14:49'),
(7, 'Alysa Hammes', 'winnifred.sawayn@example.com', '2022-04-29 10:14:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NPKY9FSl8f', '2022-04-29 10:14:49', '2022-04-29 10:14:49'),
(8, 'Golden Kassulke PhD', 'jason16@example.org', '2022-04-29 10:14:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'pIjvJ08BlU', '2022-04-29 10:14:49', '2022-04-29 10:14:49'),
(9, 'Nya Volkman', 'keira48@example.net', '2022-04-29 10:14:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Kw1AhcEanv', '2022-04-29 10:14:49', '2022-04-29 10:14:49'),
(10, 'Rickie Kuvalis', 'antonio.abbott@example.org', '2022-04-29 10:14:49', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JPHkwqWitT', '2022-04-29 10:14:49', '2022-04-29 10:14:49'),
(11, 'Li', 'blog@gmail.com', NULL, '$2y$10$xDeLl6hjGmHT8mSd8tHH3ezd6YfbDQYNC0gaGscPOmxekNm9X5Jga', NULL, '2022-04-29 11:30:53', '2022-04-29 11:30:53');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
