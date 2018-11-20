-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 13, 2018 at 11:57 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.2.5-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`id`, `name`, `body`, `picture`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Грунтковки', NULL, NULL, NULL, '2018-05-17 11:58:08', '2018-05-19 13:05:22', NULL),
(2, 'Герметик', NULL, NULL, NULL, '2018-05-17 11:58:16', '2018-05-19 13:02:25', NULL),
(3, 'Краски', NULL, NULL, NULL, '2018-05-17 11:58:30', '2018-05-19 13:05:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `maintexts`
--

CREATE TABLE `maintexts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `showhide` enum('show','hide') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'show',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maintexts`
--

INSERT INTO `maintexts` (`id`, `name`, `body`, `url`, `type`, `showhide`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'About our company', 'Компания Герметик занимается продажей герметиков', 'about', NULL, 'show', NULL, NULL, NULL),
(2, 'Услуги', 'Доставка и замер', 'services', NULL, 'show', NULL, NULL, NULL),
(3, 'Контакты', '--', 'contacts', NULL, 'show', NULL, NULL, NULL),
(4, 'Главная страница | Zigoro', '\r\n<h2 class="spsc-code selectable"><span style="font-family: arial,helvetica,sans-serif;">Герметики</span></h2>\r\n<p style="text-align: left;"><span style="font-family: arial,helvetica,sans-serif;">Герметик представляет собой смесь, созданную из полимерных соединений. Эта смесь предназначается для придания герметичности строительным швам, стыкам между панелями, деталям сантехнического и вентиляционного оборудования. <a href="http://oliva.ru/germetiki/" target="_blank" rel="noopener">Герметики</a> отличаются высокой эластичностью, при этом они не вступают в химическую реакцию с бетоном, деревом, кирпичом и металлом. Они устойчивы к перепадам температуры, гарантируется высокая механическая прочность на протяжении длительного времени.</span></p>\r\n<h2 style="text-align: left;"><span style="font-family: arial,helvetica,sans-serif;">Краски</span></h2>\r\n<p style="text-align: left;"><span style="font-family: arial,helvetica,sans-serif;">Для финишной обработки древесины, металла и других поверхностей идеально подходят алкидные и <a href="https://2proliva.ru/kraski/">акриловые краски</a>. Краски для дерева обеспечивают древесине высокий уровень защиты поверхности от разрушения влагой и ультрафиолетовыми лучами. <a href="https://2proliva.ru/kraski/kraski-fasadnie/">Фасадные краски</a> обеспечивают стойкое и эстетически привлекательное покрытие, применяются для придания надлежащего вида стенам, потолкам, откосам и т.д. <a href="https://2proliva.ru/kraski/kraski-dlya-vnutrennih-rabot/">Интерьерные краски</a> используются для внутреннего оформления помещений – их применяют для создания износостойких покрытий с высоким уровнем паропроницаемости. Такие краски используются для стен подъездов, коридоров, балконов и т.д. При выборе нужно обязательно учитывать степень глянца и класс истирания.</span></p>\r\n<h2 style="text-align: left;"><span style="font-family: arial,helvetica,sans-serif;">Грунтовки</span></h2>\r\n<p style="text-align: left;"><span style="font-family: arial,helvetica,sans-serif;">Используются в качестве первичного слоя, который наносится на подготовленную к окраске или финишной отделке поверхность. Цель <a href="https://2proliva.ru/gruntovki/">грунтовки</a> – создание крепкого сцепления верхних слоев покрытия с поверхностью обрабатываемого материала. В грунтовке содержится минимальное количество пигментов, она играет не эстетическую, а функциональную роль. Для производства грунтовок используются алкидные смолы, олифы, эпоксидные смолы и другие компоненты.</span></p>\r\n<h2 style="text-align: left;"><span style="font-family: arial,helvetica,sans-serif;">Пропитки для дерева</span></h2>\r\n<p style="text-align: left;"><span style="font-family: arial,helvetica,sans-serif;">Используются для защиты древесины от огня и биологического разрушения. <a href="https://2proliva.ru/propitki/propitki-dlya-dereva/">Пропитки для дерева</a> существенно повышают температуру воспламенения древесины, это повысит безопасность и устойчивость конструкции в случае пожара. Пропитки для биологической защиты создадут барьер для разрушения дерева из-за влажности, ультрафиолетового излучения, грибка, плесени и насекомых. Для внутренних работ лучше приобрести пропитку на акриловой основе, для наружных работ рекомендуется отдать предпочтение пропитке на масляной основе. Алкидная пропитка считается универсальной.</span></p>\r\n<h2 style="text-align: left;"><span style="font-family: arial,helvetica,sans-serif;">Лаки для дерева</span></h2>\r\n<p style="text-align: left;"><span style="font-family: arial,helvetica,sans-serif;">Обеспечивают надежную защиту деревянных деталей от разрушения из-за влаги и солнца. <a href="https://2proliva.ru/laki/laki-dlya-dereva/">Лаки для дерева</a> придают поверхности эстетическую завершенность, после полного высыхания образуется прозрачная защитная пленка. Бесцветный лак обеспечивает сохранность натурального внешнего вида древесины, цветной тонированный лак позволит имитировать древесину ценных пород. Перед окрашиванием древесину рекомендуется тщательно отшлифовать.</span></p>\r\n<h2 style="text-align: left;"><span style="font-family: arial,helvetica,sans-serif;">Шпатлевка</span></h2>\r\n<p style="text-align: left;"><span style="font-family: arial,helvetica,sans-serif;">Шпатлевка – это специальный состав, который применяется для выравнивания и декоративной отделки потолков и стен. По назначению <a href="https://2proliva.ru/shpatlevki/">шпатлевки</a> бывают стартовые, финишные, а также универсальные. Стартовые шпатлевки применяются для первоначального выравнивания поверхности, отличаются крупной зернистостью и хорошим сцеплением с поверхностью. Финишные шпатлевки обладают более мелкой зернистостью, они применяются для декоративной отделки. Финишные шпатлевки способны скрыть самые мельчайшие изъяны поверхности стены, образуют максимально ровную и гладкую поверхность.</span></p>\r\n<h2 style="text-align: left;"><span style="font-family: arial,helvetica,sans-serif;">Декоративные материалы</span></h2>\r\n<p style="text-align: left;"><span style="font-family: arial,helvetica,sans-serif;">Используются для качественной отделки фасадов, с их помощью покрытие приобретает завершенный вид. Чаще всего для этой цели различные акрилаты, патина, мокрый шелк. <a href="https://2proliva.ru/dekorativnie-materiali/">Декоративные материалы</a> акрилаты являются термостойкими, устойчивыми к ультрафиолету и различным химическим веществам. При этом они абсолютно безопасные и экологичные. Патина применяется для искусственного состаривания поверхности древесины, что придает ей более солидный вид. Мокрый шелк представляет собой полимерный раствор, в который вкраплены перламутровые частицы – именно они придают поверхности желанный объем и блеск.</span></p>\r\n<h2 style="text-align: left;"><span style="font-family: arial,helvetica,sans-serif;">Эмали для радиаторов отопления</span></h2>\r\n<p style="text-align: left;"><span style="font-family: arial,helvetica,sans-serif;">Отличаются высокой термостойкостью, которая превышает 100 градусов. Краска нетоксичная, при нагревании до высокой температуры не выделяет различных вредных и токсичных веществ. Нужно помнить, что наносить <a href="https://2proliva.ru/emali/">эмаль для радиаторов</a> следует только холодные радиаторы, также необходимо дать время краске хорошо просохнуть.</span></p>\r\n					', 'index', NULL, 'show', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` int(11) DEFAULT NULL,
  `menu_type` int(11) NOT NULL DEFAULT '1',
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `position`, `menu_type`, `icon`, `name`, `title`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, NULL, 'User', 'User', NULL, NULL, NULL),
(2, NULL, 0, NULL, 'Role', 'Role', NULL, NULL, NULL),
(7, 0, 1, 'fa-database', 'Catalog', 'Catalogs 	', NULL, '2018-05-17 11:54:18', '2018-05-17 11:54:18'),
(12, 0, 1, 'fa-database', 'Products', 'Products', NULL, '2018-05-17 12:26:59', '2018-05-17 12:26:59');

-- --------------------------------------------------------

--
-- Table structure for table `menu_role`
--

CREATE TABLE `menu_role` (
  `menu_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_role`
--

INSERT INTO `menu_role` (`menu_id`, `role_id`) VALUES
(7, 1),
(12, 1);

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
(3, '2015_10_10_000000_create_menus_table', 2),
(4, '2015_10_10_000000_create_roles_table', 2),
(5, '2015_10_10_000000_update_users_table', 2),
(6, '2015_12_11_000000_create_users_logs_table', 2),
(7, '2016_03_14_000000_update_menus_table', 2),
(8, '2018_05_17_143100_create_catalog_table', 2),
(9, '2017_02_24_153903_create_products_table', 3),
(10, '2018_05_17_160018_create_maintexts_table', 4);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateOfEvent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `showhide` enum('show','hide') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `categories_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `country`, `price`, `dateOfEvent`, `body`, `picture`, `showhide`, `user_id`, `categories_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'mikhalkevich', 'test', 'test', 'test', 'test', '', NULL, NULL, NULL, '2018-05-17 12:47:05', '2018-05-17 12:52:57', '2018-05-17 12:52:57'),
(2, 'burningsnake', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '2018-05-17 12:48:42', '2018-05-17 12:52:59', '2018-05-17 12:52:59'),
(3, 'mikhalkevichxj', NULL, NULL, NULL, NULL, '1526572138-Linux3.png', 'show', 1, 3, '2018-05-17 12:48:58', '2018-05-17 12:53:02', '2018-05-17 12:53:02'),
(4, 'Момент Герметик', NULL, '100', 'Силикон Нейтральный герметик', 'Силикон Нейтральный герметик Силикон Нейтральный герметик', '1526599856-ger1.png', 'show', 2, 1, '2018-05-17 20:30:57', '2018-05-18 21:22:09', NULL),
(5, 'Клей S70', NULL, '200', 'Клей герметик селикатный S70', 'Клей герметик селикатный S70 Клей герметик селикатный S70', '1526689750-germetic.jpg', 'show', 1, 1, '2018-05-18 21:29:10', '2018-05-18 21:29:10', NULL),
(6, 'Герметик Zigoro-11', NULL, '150', 'Герметизация стыков, щелей, трещин на фасадах зданий.', '<h2>Описание</h2>\r\n<p>Однокомпонентный акрилатный герметик.</p>\r\n<p> </p>\r\n<p style="padding-left: 30px;"><strong><em>Упаковка:</em></strong></p>\r\n<p>ведро 15 кг, файл-пакет (0,9 кг)</p>\r\n<p> </p>\r\n<p style="padding-left: 30px;"><strong><em>Расход:</em></strong></p>\r\n<p>116 г/пог. метр (при ширине шва 20 мм и толщине слоя 4 мм)</p>\r\n<p> </p>\r\n<p style="padding-left: 30px;"><strong><em>Область применения: </em></strong></p>\r\n<p>Герметизация деформационных швов строительных конструкций с деформацией не более 15%. Герметизация стыков, щелей, трещин на фасадах зданий.</p>\r\n<p> </p>\r\n<p style="padding-left: 30px;"><strong><em>Свойства:</em></strong></p>\r\n<ul>\r\n<li>Хорошая адгезия к бетону, полимербетону, пенобетону, кирпичу;</li>\r\n<li>устойчивость к УФ-излучению, атмосферным воздействиям; удобство при нанесении;</li>\r\n<li>возможна поверхностная окраска, колеровка;</li>\r\n<li>цвет белый, серый (другие цвета — по заказу);</li>\r\n<li>внешний вид – паста от белого до светло-серого цвета;</li>\r\n<li>отверждение – под действием воздуха; время отверждения 48 часов (при +23 °С и толщине слоя 4 мм.) с понижением температуры или увеличением влажности и толщины слоя — увеличивается;</li>\r\n<li>время образования поверхностной пленки 30÷90 минут (при +23 °С) с понижением температуры или увеличением влажности — увеличивается; плотность ≈ 1,45 г/см3;</li>\r\n<li>диапазон температур нанесения от -13 °С до +35 °С;</li>\r\n<li>диапазон температур эксплуатации от -40 °С до +80 °С;</li>\r\n<li>относительное удлинение при разрыве, не менее: 300% (на лопатках);</li>\r\n<li>условная прочность в момент разрыва, не менее 0,15 МПа;</li>\r\n<li>вязкость герметизирующей пасты 13,5с-1, 25°С, PP Ø 25, не более 80 Па•с;</li>\r\n<li>вязкость герметизирующей пасты 0,3с-1, 25°С, PP Ø 25, не менее 1600 Па•с;</li>\r\n<li>текучесть герметика не более 2 мм. Прогнозируемый срок службы при деформативности 15% (при толщине слоя герметика 4 мм.) 8 лет.</li>\r\n</ul>\r\n<p> </p>\r\n<p style="padding-left: 30px;"><strong><em>Описание: </em></strong></p>\r\n<p>Однокомпонентный, готовый к применению герметик АКСА разработан на основе полиакрилатной дисперсии. Тиксотропен, после высыхания имеет удовлетворительные эластичные свойства и обладает хорошими прочностными показателями.При работах в зимнее время очистить поверхность от наледи и инея. Для соблюдения проектной толщины слоя герметика в стыке, а также для исключения сцепления герметика с жестким основанием в стыковом зазоре следует использовать антиадгезионные прокладки из вспененного полиэтилена. Герметик следует наносить при помощи шпателя или кисти. Наносится только в сухую погоду, т.к. дождь или снег могут помешать образованию поверхностной пленки. Инструменты мыть водой, а после отверждения удаляется механическим путем.</p>\r\n<p> </p>\r\n<p style="padding-left: 30px;"><strong><em>Упаковка и хранение: </em></strong></p>\r\n<p>Гарантийный срок хранения — 6 месяцев при температуре от –5 °С. Допускается транспортировка при температуре не ниже -20 °С в течение 30 суток и не более 10 циклов замораживания-размораживания.</p>\r\n<p> </p>\r\n<p style="padding-left: 30px;"><strong><em>Меры безопасности: </em></strong></p>\r\n<p>Избегать попадания на незащищенные участки кожи, глаза. При попадании на открытые участки кожи следует отмыть теплой водой с мылом. Не взрывоопасен.</p>\r\n<p> </p>\r\n<p style="padding-left: 30px;"><strong><em>Ограничения: </em></strong></p>\r\n<p>Недопустим контакт с питьевой водой. Недопустимо добавлять в герметик растворитель, а также наносить герметик во время дождя и снегопада, если существует опасность попадания осадков на герметизируемые поверхности.</p>', '1526746439-germetic2.jpg', 'show', 2, 2, '2018-05-19 13:02:06', '2018-05-19 13:13:59', NULL),
(7, 'Герметик Zigoro-13', NULL, '160', 'Герметизация стыков, щелей, трещин на фасадах зданий.', '<p>Однокомпонентный полиуретановый герметик.</p>\r\n<p> </p>\r\n<p style="padding-left: 30px;"><strong>Упаковка:</strong> 0,8 кг</p>\r\n<p> </p>\r\n<p style="padding-left: 30px;"><strong>Область применения:</strong></p>\r\n<p> </p>\r\n<p>Выборочная герметизация деформационных швов строительных конструкций с деформацией не более 25%, стыков, щелей, трещин на фасадах зданий и внутри помещений.Стыки сборных конструкций, узлы примыкания в деревянных, алюминиевых и пвх-материалах.<br>\r\nГерметизация воздуховодов шахт, вентиляционных каналов, примыканий труб.<br>\r\nГерметизация мембранных, мягких, жестких и фальцевых кровель.<br>\r\nГерметизация швов и стыков в промышленных бетонных и полимерных полах.<br>\r\nГерметизация стыков сэндвич-панелей.</p>\r\n<p> </p>\r\n<p style="padding-left: 30px;"><strong> Свойства:</strong></p>\r\n<ul>\r\n<li>Хорошая адгезия к кирпичу, бетону, камню металлу, алюминию, дереву;</li>\r\n<li>устойчивость к УФ-излучению, атмосферным воздействиям;</li>\r\n<li>удобство при нанесении;</li>\r\n<li>цвет белый, серый (другие цвета — по заказу);</li>\r\n<li>внешний вид — гомогенная паста;</li>\r\n<li>отверждение – вулканизация под действием влажности воздуха и сшивающего агента;</li>\r\n<li>время отверждения 3 мм. — 24 часа (при +23 °С) с понижением температуры — увеличивается, с повышением температуры — уменьшается;</li>\r\n<li>время образования поверхностной пленки не менее 120 минут при температуре +23 °С и относительной влажности воздуха 50%, с понижением температуры и увеличением влажности, время образования поверхностной пленки увеличивается;</li>\r\n<li>плотность ≈ 1,3 г/см3;</li>\r\n<li>диапазон температур нанесения от -15 °С до +40 °С;</li>\r\n<li>диапазон температур эксплуатации от -40 °С до +90 °С;</li>\r\n<li>относительное удлинение в момент разрыва, не менее 500% (на лопатках);</li>\r\n<li>условная прочность в момент разрыва, не менее 0,4 МПа (на лопатках);</li>\r\n<li>модуль упругости при 100% удлинении не более 0,4 МПа (на лопатках);</li>\r\n<li>вязкость герметизирующей пасты 13,5с-1, 25°С, PP Ø 25, не более 130 Па•с;</li>\r\n<li>вязкость герметизирующей пасты 0,3с-1, 25°С, PP Ø 25, не менее 3600 Па•с;</li>\r\n<li>текучесть герметика не более 2 мм;</li>\r\n<li>твердость по Шору А, через 24 часа, не менее 20 ед.</li>\r\n</ul>\r\n<p> </p>\r\n<p>Прогнозируемый срок службы при деформативности 25% (при толщине слоя герметика 3 мм. 15 лет</p>\r\n<p> </p>\r\n<p style="padding-left: 30px;"><strong> Описание:</strong></p>\r\n<p> </p>\r\n<p>Однокомпонентный безусадочный отверждающийся клей-герметик «Zigoro-13», разработан на основе полиуретанового преполимера.<br>\r\nПосле нанесения отверждается, превращаясь в эластичный, резиноподобный материал с высокими деформационными и прочностными свойствами. Наносится строительным пистолетом.<br>\r\nПри низких температурах вязкость компонентов герметика значительно увеличивается, поэтому перед применением его следует выдержать в отапливаемом помещении не менее суток. Герметик может наноситься на влажную (но не мокрую поверхность), полностью очищенную от грязи, жира, остатков цементного раствора или ранее примененных герметиков. При работах в зимнее время очистить поверхность от наледи и инея. Для соблюдения проектной толщины слоя герметика в стыке, а также для исключения сцепления герметика с жестким основанием в стыковом зазоре следует использовать антиадгезионные прокладки из вспененного полиэтилена. Инструменты мыть ацетоном или уайтспиритом. В завулканизованном состоянии удаляется механическим путем.</p>\r\n<p> </p>\r\n<p style="padding-left: 30px;"><strong> Упаковка и хранение:</strong></p>\r\n<p> </p>\r\n<p>Файл-пакет в фольгированной пленке — объем 600 мл.<br>\r\nГарантийный срок хранения — 12 месяцев при температуре от +5 °С до +25 °С.</p>\r\n<p> </p>\r\n<p><strong> Меры безопасности:</strong></p>\r\n<p> </p>\r\n<p>Избегать попадания на незащищенные участки кожи, глаза. При попадании на открытые участки кожи следует отмыть теплой водой с мылом. Не взрывоопасен.</p>\r\n<p> </p>\r\n<p style="padding-left: 30px;"><strong> Ограничения:</strong></p>\r\n<p> </p>\r\n<p>Недопустим контакт с питьевой водой.</p>', '1526746453-Герметик3.jpg', 'show', 2, 2, '2018-05-19 13:04:53', '2018-05-19 13:14:13', NULL),
(8, 'Краска Zigoro акриловая моющаяся супербелая', NULL, NULL, 'Краска Zigoro акриловая моющаяся супербелая', '<p>Предназначена для внутренних отделочных работ в помещениях с повышенным уровнем влажности (либо требующих регулярной влажной уборки). Обладает хорошей адгезией к любым минеральным основаниям. Может использоваться для наружной отделки.</p>\r\n<p> </p>\r\n<p style="padding-left: 30px;">\r\n<strong>Фасовка:</strong> 8 кг, 16 кг.</p>\r\n<p> </p>\r\n<p style="padding-left: 30px;">\r\n<strong> Описание:</strong></p>\r\n<p> </p>\r\n<p>Акриловая моющаяся супербелая краска профи, которая представлена в нашем магазине – это замечательный строительный материал для окрашивания помещений с повышенной влажностью и поверхностей, требующих регулярную влажную уборку.<br>\r\nКраска акриловая моющаяся является простым и доступным средством для отделки стен. Она повышает их водоотталкивающую способность и защищает поверхность от истирания. За счёт высокого содержания дисперсии, краска прекрасно ложится на бетон, кирпич, обои, шпаклевку, штукатурку, дерево и гипсокартон.<br>\r\nБлагодаря тому, что в составе интерьерных моющихся акриловых красок нет растворителей и вредных веществ, они являются экологически чистым материалом, а в процессе работы обладают еле уловимым нейтральным запахом. Также эластичная пленка, которая образуется на стене, не препятствует свободному газообмену, позволяя поверхности «дышать».<br>\r\nСтепень износостойкости материала определяется количеством циклов мойки, которые способна выдержать краска. Каждый производитель указывает эту информацию на таре. Количество циклов может быть 2000, 5000, 10000 и т.д. Соответственно, чем выше цифра, тем выше класс истирания и стойкость к воде (самый лучший – 1 класс).<br>\r\nЧто же касается эстетической стороны моющихся акриловых красок, то здесь для покупателя открываются огромные просторы. Сама по себе продукция выпускается в базовом белом цвете (база А). И те, кто хочет покрасить потолок в идеально белый цвет, который со временем не пожелтеет – выбирайте супербелую моющуюся краску Zigoro. Если же нужна краска определенного оттенка, то и тут нет никаких проблем. Акриловые моющиеся краски всегда можно заколеровать в любой из тысячи цветов любого каталога, например каталога RAL, NCS (Natural Color System).</p>\r\n<p> </p>\r\n<p style="padding-left: 30px;">\r\n<strong> Подготовка поверхности:</strong></p>\r\n<p> </p>\r\n<p>Перед нанесением краски поверхность необходимо подготовить: устранить неровности, зашпатлевать, прогрунтовать. Для снижения вязкости краску можно разбавить небольшим количеством чистой воды (не более 5% от объема). Непосредственно перед применением перемешать миксером на малых оборотах до однородной консистенции. После завершения работ инструменты промыть теплой водой.</p>\r\n<p> </p>\r\n<p style="padding-left: 30px;">\r\n<strong> Меры предросторожности:</strong></p>\r\n<p> </p>\r\n<p>Наружные работы рекомендуется производить в сухую безветренную погоду, а внутренние – в помещениях с беспрепятственным доступом свежего воздуха. При попадании краски на слизистые оболочки промыть пострадавшие участки под большим количеством проточной воды. При продолжительных неприятных либо болезненных ощущениях обратиться к врачу.</p>\r\n<p> </p>\r\n<p style="padding-left: 30px;">\r\n<strong> Расход краски:</strong></p>\r\n<p> </p>\r\n<p>Расход краски составляет 120-150 г/м<sup>2</sup> в зависимости от характера и впитывающей способности основания, технологии нанесения (кисть, валик, распылитель).</p>\r\n<p> </p>\r\n<p style="padding-left: 30px;">\r\n<strong> Хранение:</strong></p>\r\n<p> </p>\r\n<p>Гарантированный производителем срок хранения при соблюдении ряда условий (температура от +5˚C до +30˚C, влажность 70%, хранение в плотно закрытой емкости) составляет 16 месяцев. Допускается пять циклов попеременного замораживания и оттаивания. Транспортировка материала при отрицательной температуре до -30°С  не более 30 суток. После замораживания материал кондиционируют при положительной температуре не менее 24 часов, затем тщательно перемешивают до однородной массы.</p>\r\n<p> </p>', '1526747212-kraska1.jpg', 'show', 2, 3, '2018-05-19 13:26:52', '2018-05-19 13:31:15', NULL),
(9, 'Краска Zigoro ЕвроСтандарт интерьерная, супербелая', NULL, NULL, 'Предназначена для окрашивания стен и потолков жилых и служебных помещений с нормальной влажностью.', '<p>Водно-дисперсионная, высоко технологичная и экологически безопасная краска для внутренних работ.</p>\r\n<p>&nbsp;</p>\r\n<p style="padding-left: 30px;"><strong>Упаковка: 1 л, 3 л, 5 л, 10 л, 33 л.</strong></p>\r\n<p>&nbsp;</p>\r\n<p style="padding-left: 30px;"><strong>Область применения:</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Предназначена для окрашивания стен и потолков жилых и служебных помещений с нормальной влажностью. Применяется по кирпичным, бетонным, оштукатуренным, гипсокартонным, деревянным и другим пористым минеральным поверхностям. Образует долговечное матовое, влагостойкое, дышащее покрытие.</p>\r\n<p>&nbsp;</p>\r\n<p style="padding-left: 30px;"><strong> Свойства и особенности:</strong></p>\r\n<ul>\r\n<li>имеет хорошую адгезию к деревянным, бетонным, кирпичным, гипсокартонным и оштукатуренным поверхностям;</li>\r\n<li>обладает хорошей укрывистостью;</li>\r\n<li>после высыхания образует долговечное дышащее ровное матовое покрытие;</li>\r\n<li>белая (белизна не менее 90%);</li>\r\n<li>светостойкая (не желтеет в процессе эксплуатации);</li>\r\n<li>хорошая механическая прочность и грязеотталкивающие свойства;</li>\r\n<li>краска удобна в работе при окрашивании вертикальных поверхностей: не капает с кисти, легко наносится и растушевывается;</li>\r\n<li>возможна колеровка в любые цвета.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<p style="padding-left: 30px;"><strong>Расход:</strong> 160-180 г/м² до полного укрытия</p>\r\n<p>&nbsp;</p>\r\n<p style="padding-left: 30px;"><strong>Подготовка поверхности:</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Поверхность очистить от грязи и пыли, непрочно держащееся старое покрытие необходимо удалить. Подготовленная поверхность, должна быть сухой, чистой, не осыпающейся.</p>\r\n<p>&nbsp;</p>\r\n<p style="padding-left: 30px;"><strong>Способ нанесения:</strong></p>\r\n<p>Перед применением краску тщательно перемешать. Продукт не смешивать с другими лакокрасочными материалами и органическими растворителями. Наносится краска кистью, валиком или краскопультом. Рекомендуется двукратное нанесение краски. Окрасочные работы необходимо проводить в сухую погоду при температуре не менее плюс 5°С. После окончания окрасочных работ, инструмент сразу промыть водопроводной водой.</p>\r\n<p>&nbsp;</p>\r\n<p style="padding-left: 30px;"><strong>Хранение и транспортировка:</strong></p>\r\n<p>&nbsp;</p>\r\n<p>в герметично закрытой таре при температуре от +15ºС до +40ºС. Выдерживает замораживание до -25°С, но не более 5 циклов замораживания-оттаивания.</p>', '1526747444-kraska2.jpg', 'show', 0, 3, '2018-05-19 13:30:44', '2018-05-19 13:30:44', NULL),
(10, 'Краска Zigoro фасадная универсальная', NULL, NULL, 'Предназначена для декоративной отделки фасадов здания и сооружений.', '<p>Предназначена для декоративной отделки фасадов здания и сооружений. Также может использоваться во внутренней отделке: для окраски помещений с высоким уровнем влажности (кухни, ванные комнаты, бассейны). Подходит для нанесения на любые минеральные основания, в том числе пористые и хорошо впитывающие.</p>\r\n<p>&nbsp;</p>\r\n<p style="padding-left: 30px;">\r\n<strong>Фасовка:</strong> 1,4 кг, 3 кг, 7 кг, 14 кг, 45 кг.</p>\r\n<p>&nbsp;</p>\r\n<p style="padding-left: 30px;">\r\n<strong> Описание:</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Акриловая краска для производства наружных и внутренних отделочных работ. Отличается высокой степенью износоустойчивости, не боится негативного воздействия окружающей среды (прямые солнечные лучи, атмосферные осадки, высокая влажность). Сохраняет первоначальный внешний вид продолжительное время. После высыхания образует покрытие, позволяющее основанию «дышать». Обладает нейтральным запахом, не содержит в составе вредных веществ и соединений.</p>\r\n<p>&nbsp;</p>\r\n<p>Состав: Вода, акриловая дисперсия, пигменты, микромрамор, загуститель, функциональные добавки (диспергаторы, консерванты, пеногаситель)</p>\r\n<p>&nbsp;</p>\r\n<p style="padding-left: 30px;">\r\n<strong> Подготовка поверхности:</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Рабочую поверхность перед нанесением краски необходимо зачистить, зашпатлевать и отшлифовать (при наличии дефектов). Краску следует тщательно перемешать с помощью строительного миксера до однородного состояния. Для снижения вязкости можно разбавить небольшим количеством чистой воды (до 5% от объема). Наружные работы следует производить в сухую солнечную погоду при температуре от +7˚C.</p>\r\n<p>&nbsp;</p>\r\n<p style="padding-left: 30px;">\r\n<strong> Меры предосторожности:</strong></p>\r\n<p>&nbsp;</p>\r\n<p>Наружные отделочные работы с использованием краски рекомендуется производить в безветренную погоду, а внутренние – в помещениях со свободным доступом свежего воздуха. В обоих случаях рекомендуется использовать средства персональной защиты. При попадании краски на слизистые оболочки необходимо промыть пострадавшие участки под проточной водой, в случае необходимости обратиться к врачу.</p>\r\n<p>&nbsp;</p>\r\n<p style="padding-left: 30px;">\r\n<strong> Расход краски:</strong></p>\r\n<p>&nbsp;</p>\r\n<p>В зависимости от характера и впитывающей способности основания расход краски может варьироваться от 120 до 150 г/м<sup>2</sup>. Время высыхания одного слоя при температуре +20˚C и нормальной влажности – не более 1 часа.</p>\r\n<p>&nbsp;</p>\r\n<p style="padding-left: 30px;">\r\n<strong> Хранение:</strong></p>\r\n<p>&nbsp;</p>\r\n<p>При соблюдении установленных производителем условий хранения (нормальная влажность, температура от +5˚C до +30˚C) краска сохранит свои качественные характеристики на протяжении 16 месяцев. Допускается пять циклов попеременного замораживания и оттаивания. Транспортировка материала при отрицательной температуре до -30°С&nbsp; не более 30 суток. После замораживания материал кондиционируют при положительной температуре не менее 24 часов, затем тщательно перемешивают до однородной массы.</p>', '1526747603-kraska3.jpg', 'show', 0, 3, '2018-05-19 13:33:23', '2018-05-19 13:33:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', '2018-05-17 11:24:23', '2018-05-17 11:24:23'),
(2, 'User', '2018-05-17 11:24:23', '2018-05-17 11:24:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mikhalkevich', 'mikhalkevich@ya.ru', '$2y$10$2c9gM3OG8N/t6mgIE5r6JedGD8oPtp3alYqJPIC3kBcCtcs96gJ1S', 'P2BGvnMWjO5tcziW4Mf9JwWj9xkqwJK9csfJf8W7hexdKEO8q0gmLqvoYLnk', '2018-05-17 08:23:39', '2018-05-17 08:23:39'),
(2, 1, 'admin', 'admin@admin.ru', '$2y$10$vF/T8kcULjNN8sBgogK1xOekgCnG5m4NTnYaL68mhwD6DJAh/NJNW', NULL, '2018-05-17 11:25:06', '2018-05-17 11:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `users_logs`
--

CREATE TABLE `users_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_logs`
--

INSERT INTO `users_logs` (`id`, `user_id`, `action`, `action_model`, `action_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'created', 'catalog', 1, '2018-05-17 11:58:08', '2018-05-17 11:58:08'),
(2, 1, 'created', 'catalog', 2, '2018-05-17 11:58:17', '2018-05-17 11:58:17'),
(3, 1, 'created', 'catalog', 3, '2018-05-17 11:58:30', '2018-05-17 11:58:30'),
(4, 1, 'created', 'products', 1, '2018-05-17 12:47:05', '2018-05-17 12:47:05'),
(5, 1, 'created', 'products', 2, '2018-05-17 12:48:42', '2018-05-17 12:48:42'),
(6, 1, 'created', 'products', 3, '2018-05-17 12:48:58', '2018-05-17 12:48:58'),
(7, 1, 'deleted', 'products', 1, '2018-05-17 12:52:57', '2018-05-17 12:52:57'),
(8, 1, 'deleted', 'products', 2, '2018-05-17 12:52:59', '2018-05-17 12:52:59'),
(9, 1, 'deleted', 'products', 3, '2018-05-17 12:53:02', '2018-05-17 12:53:02'),
(10, 1, 'created', 'products', 4, '2018-05-17 20:30:57', '2018-05-17 20:30:57'),
(11, 1, 'updated', 'catalog', 1, '2018-05-17 20:31:32', '2018-05-17 20:31:32'),
(12, 1, 'updated', 'products', 4, '2018-05-17 21:27:27', '2018-05-17 21:27:27'),
(13, 1, 'updated', 'products', 4, '2018-05-18 21:22:11', '2018-05-18 21:22:11'),
(14, 1, 'created', 'products', 5, '2018-05-18 21:29:11', '2018-05-18 21:29:11'),
(15, 1, 'created', 'products', 6, '2018-05-19 13:02:06', '2018-05-19 13:02:06'),
(16, 1, 'updated', 'catalog', 2, '2018-05-19 13:02:25', '2018-05-19 13:02:25'),
(17, 1, 'created', 'products', 7, '2018-05-19 13:04:53', '2018-05-19 13:04:53'),
(18, 1, 'updated', 'catalog', 1, '2018-05-19 13:05:22', '2018-05-19 13:05:22'),
(19, 1, 'updated', 'catalog', 3, '2018-05-19 13:05:29', '2018-05-19 13:05:29'),
(20, 1, 'updated', 'products', 6, '2018-05-19 13:13:59', '2018-05-19 13:13:59'),
(21, 1, 'updated', 'products', 7, '2018-05-19 13:14:13', '2018-05-19 13:14:13'),
(22, 1, 'created', 'products', 8, '2018-05-19 13:26:52', '2018-05-19 13:26:52'),
(23, 1, 'created', 'products', 9, '2018-05-19 13:30:45', '2018-05-19 13:30:45'),
(24, 1, 'updated', 'products', 8, '2018-05-19 13:31:15', '2018-05-19 13:31:15'),
(25, 1, 'created', 'products', 10, '2018-05-19 13:33:23', '2018-05-19 13:33:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintexts`
--
ALTER TABLE `maintexts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_role`
--
ALTER TABLE `menu_role`
  ADD UNIQUE KEY `menu_role_menu_id_role_id_unique` (`menu_id`,`role_id`),
  ADD KEY `menu_role_menu_id_index` (`menu_id`),
  ADD KEY `menu_role_role_id_index` (`role_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_logs`
--
ALTER TABLE `users_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `maintexts`
--
ALTER TABLE `maintexts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_logs`
--
ALTER TABLE `users_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `menu_role`
--
ALTER TABLE `menu_role`
  ADD CONSTRAINT `menu_role_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
