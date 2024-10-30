-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2024 at 08:36 AM
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
-- Database: `erp`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `bank_code` varchar(255) NOT NULL,
  `account_holder_name` varchar(255) DEFAULT NULL,
  `tax_payer_id` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `balance` decimal(15,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `user_id`, `account_number`, `bank_name`, `bank_code`, `account_holder_name`, `tax_payer_id`, `branch`, `balance`, `created_at`, `updated_at`) VALUES
(1, 6, 'رقم حساب:', 'رقم حساب: اسم البنك:', 'الرمز التعريفي للبنك:', 'سم صاحب الحساب:', 'دافع الضرائب معرف:', 'فرع:', 0.00, '2024-09-03 07:32:30', '2024-09-03 07:32:30'),
(3, 1, 'eqweqweqwe', 'رقم حساب: اسم البنك:', 'الرمز التعريفي للبنك:', 'سم صاحب الحساب:', 'دافع الضرائب معرف:', 'فرع:', 0.00, '2024-09-03 11:29:42', '2024-09-03 11:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `brand_image` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `brand_image`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 'brand 2', NULL, NULL, 1, '2024-08-12 09:24:36', '2024-08-12 09:24:36'),
(3, 'brand 1', 'sadasda', NULL, 1, '2024-08-12 09:28:03', '2024-08-12 09:37:03');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `terms_and_conditions` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `parent_id`, `code`, `terms_and_conditions`, `created_at`, `updated_at`) VALUES
(1, 'القسم الاول', NULL, NULL, '123', NULL, '2024-08-11 05:33:50', '2024-08-11 05:33:50'),
(2, 'القسم الثانى', NULL, 1, '456', NULL, '2024-08-11 05:34:01', '2024-08-11 05:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `code`, `logo`, `address`, `phone`, `email`, `website`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'شركة 1', '2024', NULL, NULL, NULL, NULL, NULL, 1, '2024-08-08 12:16:54', '2024-08-08 12:16:54'),
(2, 'شركة 2', '555', NULL, NULL, NULL, NULL, NULL, 1, '2024-08-08 12:17:09', '2024-08-08 12:17:09');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customergroups`
--

CREATE TABLE `customergroups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `percentage` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customergroups`
--

INSERT INTO `customergroups` (`id`, `name`, `percentage`, `created_at`, `updated_at`) VALUES
(1, 'مجموعة العملاء 1', 10, '2024-08-15 08:26:35', '2024-08-15 08:26:35'),
(2, 'مجموعة العملاء 2', 20, '2024-08-15 08:26:40', '2024-08-15 08:26:40');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `type` enum('supplier','customer','both') DEFAULT NULL,
  `cuntry` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `other_mobile` varchar(255) DEFAULT NULL,
  `contact_id` varchar(255) DEFAULT NULL,
  `trade_name` varchar(255) DEFAULT NULL,
  `initial_balance` varchar(255) DEFAULT NULL,
  `tax_number` varchar(255) DEFAULT NULL,
  `credit_limit` varchar(255) DEFAULT NULL,
  `credit_days` varchar(255) DEFAULT NULL,
  `expected` varchar(255) DEFAULT NULL,
  `customergroup_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `journal_accounts` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `expected_start_date` varchar(255) DEFAULT NULL,
  `appointed_to` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `meeting_result` varchar(255) DEFAULT NULL,
  `message_link` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `lead_traffic_sources` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `credit_days_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `type`, `cuntry`, `city`, `state`, `address`, `mobile`, `other_mobile`, `contact_id`, `trade_name`, `initial_balance`, `tax_number`, `credit_limit`, `credit_days`, `expected`, `customergroup_id`, `company_id`, `journal_accounts`, `pic`, `expected_start_date`, `appointed_to`, `field`, `meeting_result`, `message_link`, `link`, `lead_traffic_sources`, `tags`, `credit_days_type`, `created_at`, `updated_at`) VALUES
(1, 'عميل 1', 'company@example.com', 'customer', 'Afghanistan', NULL, NULL, 'القاهرة / بدر', '01032961547', '22222222222', NULL, 'qwqw', '2313213', '2024', '1500', '4343', '314', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-15 10:10:44', '2024-08-28 07:52:39'),
(2, 'مورد 1', 'amr@yahoo.com', 'supplier', 'Afghanistan', 'الجيزة', 'القاهرة', 'القاهرة / بدر', NULL, '22222222222', NULL, 'qwqw', '312312', '31213', '312312312', '31231', '3123123', 2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-15 12:06:05', '2024-08-15 12:29:58'),
(3, 'مورد 2', 'amr@yahoo.com', 'supplier', 'Zimbabwe', 'rararar', 'بدر', 'العبور', '11111111111111', '22222222222', NULL, 'qwqw', '112121', '2024', '3323', '43', '2222', 2, 1, '3', NULL, '2024-08-20', '2', 'يشسيش', 'ضصثضصثضصث', 'شيسشيشي', 'ضثضصثضصثضصث', NULL, 'sasa , sasas , qwqwer', NULL, '2024-08-15 12:31:55', '2024-08-15 12:32:08'),
(4, 'يوسف الجبالي', 'amr1@yahoo.com', 'customer', 'Zimbabwe', 'ال', 'الولايه', 'القاهرة / بدر', '01850540154', '22222222222', NULL, 'qwqw', '4', '2024', '24', '1', '2', 1, NULL, '81', NULL, '2024-10-16', NULL, '4', 'منم', 'مننم', 'تنم', NULL, 'نمت', NULL, '2024-10-22 05:45:46', '2024-10-22 05:51:02');

-- --------------------------------------------------------

--
-- Table structure for table `expensecategories`
--

CREATE TABLE `expensecategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `account_category_id` varchar(255) DEFAULT NULL,
  `type` enum('operational','administrative','general') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expensecategories`
--

INSERT INTO `expensecategories` (`id`, `name`, `code`, `account_category_id`, `type`, `created_at`, `updated_at`) VALUES
(5, 'اسم الفئة:*', '222', NULL, 'administrative', '2024-09-04 11:44:20', '2024-09-04 11:53:01'),
(6, 'قصثصقثققثصقصثقصثق', '333', NULL, 'administrative', '2024-09-04 11:45:46', '2024-09-04 11:52:54');

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
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id`, `name`, `short_code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'gender 1', '11111', 'الوصف:الوصف:الوصف:', '2024-08-12 06:46:30', '2024-08-12 07:27:32'),
(2, 'gender 2', '2222', 'الوصف:الوصف:الوصف:', '2024-08-12 07:27:51', '2024-08-12 07:27:51');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `price_group` int(11) NOT NULL DEFAULT 0,
  `transaction_date` date NOT NULL,
  `pay_term_number` int(11) DEFAULT NULL,
  `pay_term_type` varchar(255) DEFAULT NULL,
  `pjt_is_amc` tinyint(1) NOT NULL DEFAULT 0,
  `forward_to_roles` varchar(255) DEFAULT NULL,
  `import_file` varchar(255) DEFAULT NULL,
  `shipping_charges` varchar(255) DEFAULT NULL,
  `delivered_to` varchar(255) DEFAULT NULL,
  `shipping_status` varchar(255) DEFAULT NULL,
  `shipping_details` varchar(255) DEFAULT NULL,
  `trafic_id` varchar(255) DEFAULT NULL,
  `campaign_id` varchar(255) DEFAULT NULL,
  `address_id` varchar(255) DEFAULT NULL,
  `shipment_id` varchar(255) DEFAULT NULL,
  `transaction_type_id` varchar(255) DEFAULT NULL,
  `account_category_id` varchar(255) DEFAULT NULL,
  `discount_type` varchar(255) DEFAULT NULL,
  `discount_amount` varchar(255) DEFAULT NULL,
  `rp_redeemed` varchar(255) DEFAULT NULL,
  `rp_redeemed_amount` varchar(255) DEFAULT NULL,
  `tax_rate_id` varchar(255) DEFAULT NULL,
  `tax_calculation_amount` varchar(255) DEFAULT NULL,
  `price_with_vat` varchar(255) DEFAULT NULL,
  `final_total` varchar(255) DEFAULT NULL,
  `sale_note` varchar(255) DEFAULT NULL,
  `is_direct_sale` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_note` varchar(255) DEFAULT NULL,
  `payment_amount` varchar(255) DEFAULT NULL,
  `payment_date` varchar(255) DEFAULT NULL,
  `payment_account_id` varchar(255) DEFAULT NULL,
  `payment_cheque_number` varchar(255) DEFAULT NULL,
  `payment_bank_account_number` varchar(255) DEFAULT NULL,
  `payment_ref1` varchar(255) DEFAULT NULL,
  `payment_ref2` varchar(255) DEFAULT NULL,
  `payment_ref3` varchar(255) DEFAULT NULL,
  `quotation_details_subject` varchar(255) DEFAULT NULL,
  `quotation_details_header_text` varchar(255) DEFAULT NULL,
  `terms_conditions` varchar(255) DEFAULT NULL,
  `approved_by_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `warehouse_id`, `customer_id`, `price_group`, `transaction_date`, `pay_term_number`, `pay_term_type`, `pjt_is_amc`, `forward_to_roles`, `import_file`, `shipping_charges`, `delivered_to`, `shipping_status`, `shipping_details`, `trafic_id`, `campaign_id`, `address_id`, `shipment_id`, `transaction_type_id`, `account_category_id`, `discount_type`, `discount_amount`, `rp_redeemed`, `rp_redeemed_amount`, `tax_rate_id`, `tax_calculation_amount`, `price_with_vat`, `final_total`, `sale_note`, `is_direct_sale`, `payment_status`, `payment_method`, `payment_note`, `payment_amount`, `payment_date`, `payment_account_id`, `payment_cheque_number`, `payment_bank_account_number`, `payment_ref1`, `payment_ref2`, `payment_ref3`, `quotation_details_subject`, `quotation_details_header_text`, `terms_conditions`, `approved_by_id`, `created_at`, `updated_at`) VALUES
(14, 1, 1, 1, '2024-08-22', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cash_on_delivery', NULL, '0.000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-27 06:04:49', '2024-08-27 06:04:49'),
(16, 1, 2, 1, '2024-08-30', 12, 'months', 1, 'maintainer_manager', NULL, '11111', 'صثضصث', 'shipment_prepared', 'ثصضضصثضصث', NULL, NULL, NULL, NULL, NULL, NULL, 'percentage', '2131213', '0', '0', '1', '0.000', NULL, NULL, 'ثضصثضثضصثضصثضث', '1', NULL, 'cash_on_delivery', '3صثضصثضصثضث', '312123123', '2024-09-07', NULL, NULL, NULL, NULL, NULL, NULL, '2131231231', NULL, 'ضصثضثضصثضثضص', '2', '2024-08-27 11:14:22', '2024-08-27 11:14:22');

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
(22, '2014_02_04_000000_create_country_state_city_table', 1),
(24, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(25, '2019_08_19_000000_create_failed_jobs_table', 1),
(26, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(27, '2024_07_04_084744_create_companies_table', 1),
(29, '2024_07_22_090254_create_warehouses_table', 1),
(30, '2024_07_23_083306_create_brands_table', 1),
(31, '2024_07_23_090037_create_genders_table', 1),
(32, '2024_07_23_090823_create_units_table', 1),
(33, '2024_07_23_095748_create_seasons_table', 1),
(35, '2024_07_23_130053_create_categories_table', 1),
(36, '2024_07_24_090008_create_products_table', 1),
(38, '2024_07_24_091427_create_sale_product_table', 1),
(39, '2024_07_31_125201_create_sales_agents_table', 1),
(40, '2024_08_01_090120_create_permission_tables', 1),
(41, '2024_08_05_130508_create_product_warehouse_table', 1),
(42, '2024_08_08_144432_create_shippingtypes_table', 2),
(43, '2024_08_08_145904_create_storenumbers_table', 3),
(44, '2024_08_11_085415_create_warranties_table', 4),
(45, '2024_08_11_141214_create_templates_table', 5),
(47, '2024_08_12_093153_create_genders_table', 7),
(48, '2024_08_12_104527_create_seasons_table', 8),
(49, '2024_08_12_115017_create_brands_table', 9),
(52, '2024_08_12_083349_create_sellingpricegroups_table', 10),
(53, '2024_08_13_124944_create_stockadjustments_table', 10),
(54, '2024_08_15_092718_create_customergroups_table', 11),
(55, '2024_07_21_092718_create_customergroups_table', 12),
(57, '2024_07_22_090223_create_customers_table', 13),
(70, '2024_07_23_123901_create_sales_table', 14),
(72, '2024_08_18_093331_create_invoices_table', 15),
(74, '2014_10_12_000000_create_users_table', 16),
(75, '2024_07_24_090133_create_bank_accounts_table', 17),
(76, '2024_08_26_104656_create_products_invoice_table', 18),
(77, '2024_09_03_133316_create_expensecategories_table', 19),
(78, '2024_09_03_140305_create_payment_types_table', 19);

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
(1, '', 2);

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
-- Table structure for table `payment_types`
--

CREATE TABLE `payment_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `transaction_percent` varchar(255) DEFAULT NULL,
  `transaction_fees` varchar(255) DEFAULT NULL,
  `transaction_tax` varchar(255) DEFAULT NULL,
  `expense_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_types`
--

INSERT INTO `payment_types` (`id`, `name`, `transaction_percent`, `transaction_fees`, `transaction_tax`, `expense_category_id`, `created_at`, `updated_at`) VALUES
(1, 'طرق الدفع:*', '11', '22', '33', 5, '2024-09-04 12:03:33', '2024-09-04 12:27:49');

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
(1, 'سشيشسي', 'web', '2024-09-02 10:47:06', '2024-09-02 10:47:06'),
(2, 'ءؤئؤئءؤ', 'web', '2024-09-02 10:47:06', '2024-09-02 10:47:06'),
(3, 'يسشي', 'web', '2024-09-02 10:58:36', '2024-09-02 10:58:36'),
(4, 'dsadasda', 'web', '2024-09-02 10:58:58', '2024-09-02 10:58:58'),
(5, 'xzczxcz', 'web', '2024-09-02 10:58:58', '2024-09-02 10:58:58'),
(6, 'dasda', 'web', '2024-09-02 11:01:44', '2024-09-02 11:01:44'),
(7, 'xczcxzc', 'web', '2024-09-02 11:01:44', '2024-09-02 11:01:44'),
(8, '121232312', 'web', '2024-09-02 11:02:22', '2024-09-02 11:02:22'),
(9, '5645645', 'web', '2024-09-02 11:06:31', '2024-09-02 11:06:31'),
(10, 'يسشيشي', 'web', '2024-09-02 11:12:47', '2024-09-02 11:12:47'),
(11, '3123123', 'web', '2024-09-02 11:29:12', '2024-09-02 11:29:12');

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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sub_unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `barcode_type` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `season_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `SKU` varchar(255) DEFAULT NULL,
  `enable_stock` tinyint(1) NOT NULL DEFAULT 0,
  `quantity_alert` varchar(255) DEFAULT NULL,
  `applicable_tax` varchar(255) DEFAULT NULL,
  `sales_tax_type` varchar(255) DEFAULT NULL,
  `electronic_invoice_type` varchar(255) DEFAULT NULL,
  `electronic_invoice_number` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `percent` varchar(255) DEFAULT NULL,
  `wholesale` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `single_dpp_inc_tax` varchar(255) DEFAULT NULL,
  `single_dpp` varchar(255) DEFAULT NULL,
  `profit_percent` varchar(255) DEFAULT NULL,
  `default_sell_price` int(11) DEFAULT NULL,
  `default_purchase_price` int(11) DEFAULT NULL,
  `group_price` int(11) DEFAULT NULL,
  `product_description` text DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `grams_per_items` varchar(255) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `marketer_commission` int(11) DEFAULT NULL,
  `affilate_type` varchar(255) DEFAULT NULL,
  `commission_type` varchar(255) DEFAULT NULL,
  `highest_price_for_sale` int(11) DEFAULT NULL,
  `lowest_price_for_sale` int(11) DEFAULT NULL,
  `cscart_disable_sync` tinyint(1) NOT NULL DEFAULT 0,
  `jumia_disable_sync` tinyint(1) NOT NULL DEFAULT 0,
  `salla_disable_sync` tinyint(1) NOT NULL DEFAULT 0,
  `amazon_disable_sync` tinyint(1) NOT NULL DEFAULT 0,
  `whatsapp_product_sku` tinyint(1) NOT NULL DEFAULT 0,
  `woocommerce_disable_sync` tinyint(1) NOT NULL DEFAULT 0,
  `enable_sr_no` varchar(255) DEFAULT NULL,
  `not_for_selling` varchar(255) DEFAULT NULL,
  `show_pos_combo` varchar(255) DEFAULT NULL,
  `mixed_combo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `sub_category_id`, `brand_id`, `unit_id`, `sub_unit_id`, `warehouse_id`, `barcode_type`, `company_id`, `season_id`, `gender_id`, `SKU`, `enable_stock`, `quantity_alert`, `applicable_tax`, `sales_tax_type`, `electronic_invoice_type`, `electronic_invoice_number`, `qty`, `percent`, `wholesale`, `type`, `single_dpp_inc_tax`, `single_dpp`, `profit_percent`, `default_sell_price`, `default_purchase_price`, `group_price`, `product_description`, `product_image`, `grams_per_items`, `weight`, `marketer_commission`, `affilate_type`, `commission_type`, `highest_price_for_sale`, `lowest_price_for_sale`, `cscart_disable_sync`, `jumia_disable_sync`, `salla_disable_sync`, `amazon_disable_sync`, `whatsapp_product_sku`, `woocommerce_disable_sync`, `enable_sr_no`, `not_for_selling`, `show_pos_combo`, `mixed_combo`, `created_at`, `updated_at`, `status`) VALUES
(1, 'اختبار 2', 1, NULL, 3, 1, NULL, 2, 'EAN13', 1, 2, 1, '1122', 1, '50', '11111', 'exclusive', NULL, NULL, '100', '50', NULL, 'single', '700', '1500', '25.000', 300, 200, 10000000, NULL, NULL, '1', NULL, 0, 'fixed', '0', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2024-08-12 09:54:04', '2024-08-12 11:20:18', 'active'),
(2, 'اختبار 1', 1, NULL, 2, 1, NULL, 1, 'EAN13', 1, 2, 1, '3123123', 1, '21321', NULL, 'exclusive', NULL, '21212', NULL, NULL, NULL, 'single', '500', '0', '25.000', 100, 50, 0, NULL, NULL, '1', NULL, 0, 'fixed', '0', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2024-08-12 11:13:04', '2024-08-13 10:21:00', 'active'),
(3, 'اختبار 3', NULL, NULL, NULL, 2, NULL, 1, 'EAN13', 1, 1, 1, '0125', 1, '20', '0', 'exclusive', NULL, '2121212', '10', '20', NULL, 'variable', '200', '100', '25.000', 400, 0, 0, NULL, NULL, '1', NULL, 0, 'fixed', '0', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2024-08-13 11:37:26', '2024-08-13 11:37:26', 'active'),
(4, 'غفغفغف', 1, 2, NULL, 2, NULL, 2, 'C39', 2, 2, 1, '32312312', 1, '12222', '1', 'exclusive', NULL, '3232323232323', '1111', '22222', NULL, 'single', '200', '100', '25.000', 5000, 0, 0, '2123123123123123123', NULL, '1', NULL, 12, 'fixed', '0', 222222, 11111, 0, 0, 0, 0, 12, 0, NULL, NULL, NULL, NULL, '2024-08-29 07:33:52', '2024-08-29 07:33:52', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `products_invoice`
--

CREATE TABLE `products_invoice` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_warehouse`
--

CREATE TABLE `product_warehouse` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'role 1', 'web', '2024-09-02 07:27:04', '2024-09-02 10:27:20'),
(2, 'role 2', 'web', '2024-09-02 07:27:14', '2024-09-02 07:27:14');

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
(3, 1),
(6, 2),
(7, 2),
(11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `price_group` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `shipment` varchar(255) DEFAULT NULL,
  `shipping_charges` varchar(255) DEFAULT NULL,
  `ref_no` varchar(255) DEFAULT NULL,
  `campaign` varchar(255) DEFAULT NULL,
  `trafic` varchar(255) DEFAULT NULL,
  `coupon` varchar(255) DEFAULT NULL,
  `crm_schedule` varchar(255) DEFAULT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` enum('pending','completed','cancelled','all','confirmed','my-pickup','ready','recieved','review','delivered','return','online','quotations') NOT NULL DEFAULT 'pending',
  `shipping_details` varchar(255) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `payment_date` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `sale_note` varchar(255) DEFAULT NULL,
  `staff_note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `customer_id`, `warehouse_id`, `price_group`, `address`, `shipment`, `shipping_charges`, `ref_no`, `campaign`, `trafic`, `coupon`, `crm_schedule`, `transaction_type`, `category_id`, `status`, `shipping_details`, `payment_method`, `payment_status`, `payment_date`, `note`, `sale_note`, `staff_note`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1', 'القاهرة / بدر', NULL, '4444', '5555', NULL, NULL, NULL, NULL, NULL, 1, 'confirmed', 'تفاصيل الشحن :', 'cash_on_delivery', NULL, NULL, NULL, 'ملحوظة البيع:', 'ملاحظة الموظفين:', '2024-08-22 08:04:53', '2024-09-03 11:53:06'),
(31, 2, 1, '0', '2', NULL, '0', NULL, NULL, '154', NULL, NULL, NULL, NULL, 'return', NULL, 'cash_on_delivery', NULL, NULL, NULL, NULL, NULL, '2024-08-27 08:52:29', '2024-08-27 08:52:29');

-- --------------------------------------------------------

--
-- Table structure for table `sales_agents`
--

CREATE TABLE `sales_agents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `family_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `commission_rate` decimal(5,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_agents`
--

INSERT INTO `sales_agents` (`id`, `first_name`, `last_name`, `family_name`, `email`, `phone`, `address`, `commission_rate`, `created_at`, `updated_at`) VALUES
(1, 'مندوب مبيعات 1', 'المندوب', 'اى اسك', 'company@example.com', '22222222222', 'القاهرة', 15.00, '2024-09-02 11:48:59', '2024-09-02 11:48:59');

-- --------------------------------------------------------

--
-- Table structure for table `sale_product`
--

CREATE TABLE `sale_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_product`
--

INSERT INTO `sale_product` (`id`, `sale_id`, `product_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(24, 1, 2, 10, 100.00, NULL, NULL),
(25, 1, 3, 2, 400.00, NULL, NULL),
(26, 31, 2, 1, 100.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seasons`
--

CREATE TABLE `seasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seasons`
--

INSERT INTO `seasons` (`id`, `name`, `short_code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'موسم 1', '11', 'eqweqwe', '2024-08-12 07:58:05', '2024-08-12 07:58:18'),
(2, 'موسم 2', '22', 'يضصثضصثضص', '2024-08-12 07:58:29', '2024-08-12 07:58:29');

-- --------------------------------------------------------

--
-- Table structure for table `sellingpricegroups`
--

CREATE TABLE `sellingpricegroups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shippingtypes`
--

CREATE TABLE `shippingtypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippingtypes`
--

INSERT INTO `shippingtypes` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'نوع المخزن 1', 'نوع المخزن 1نوع المخزن 1', '2024-08-08 11:52:16', '2024-08-08 11:52:47'),
(2, 'نوع المخزن 2', 'نوع المخزن 2نوع المخزن 2', '2024-08-08 11:53:01', '2024-08-08 11:53:01');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stockadjustments`
--

CREATE TABLE `stockadjustments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_no` varchar(255) DEFAULT NULL,
  `total_refund` decimal(10,2) DEFAULT NULL,
  `nature_of_deficiency_or_excess` varchar(255) NOT NULL,
  `order_date` date NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stockadjustments`
--

INSERT INTO `stockadjustments` (`id`, `reference_no`, `total_refund`, `nature_of_deficiency_or_excess`, `order_date`, `warehouse_id`, `reason`, `created_at`, `updated_at`) VALUES
(20, '21212', NULL, 'abnormal', '2024-08-27', 1, 'ضضقضصق', '2024-08-13 12:33:55', '2024-08-13 12:33:55'),
(21, '0001', NULL, 'normal', '2024-08-28', 1, NULL, '2024-08-13 12:35:33', '2024-08-13 12:35:33'),
(24, '002', 1400.00, 'normal', '2024-08-28', 1, 'wrewrw', '2024-08-13 12:39:29', '2024-08-13 12:39:29'),
(27, '003', 1900.00, 'abnormal', '2024-08-27', 1, 'dfadasdasdas', '2024-08-13 12:50:10', '2024-08-13 12:50:10');

-- --------------------------------------------------------

--
-- Table structure for table `stockadjustment_product`
--

CREATE TABLE `stockadjustment_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stockadjustment_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stockadjustment_product`
--

INSERT INTO `stockadjustment_product` (`id`, `stockadjustment_id`, `product_id`, `quantity`, `total`, `created_at`, `updated_at`) VALUES
(5, 27, 2, 3, 300.00, '2024-08-13 12:50:10', '2024-08-13 12:50:10'),
(6, 27, 3, 4, 1600.00, '2024-08-13 12:50:10', '2024-08-13 12:50:10');

-- --------------------------------------------------------

--
-- Table structure for table `storenumbers`
--

CREATE TABLE `storenumbers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storenumbers`
--

INSERT INTO `storenumbers` (`id`, `name`, `value`, `warehouse_id`, `created_at`, `updated_at`) VALUES
(1, 'رقم المتجر 1', '15445454', 1, '2024-08-08 12:43:00', '2024-08-08 12:48:23');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `variation_codes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`variation_codes`)),
  `variation_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`variation_values`)),
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `name`, `color`, `category_id`, `code`, `variation_codes`, `variation_values`, `description`, `created_at`, `updated_at`) VALUES
(2, 'تباين 1', '#f60909', 1, '2024', '[\"\\u0628\\u064a\\u064a\\u0628\\u064a\\u0628\\u064a\\u0628\\u0628\"]', '[\"22121212\"]', NULL, '2024-08-11 12:17:30', '2024-08-11 12:17:30'),
(3, 'اختبار 2', '#00ff33', 1, NULL, '[\"1111\",\"222\"]', '[\"\\u0627\\u0644\\u0642\\u064a\\u0645\\u0629 1\",\"\\u0627\\u0644\\u0642\\u064a\\u0645\\u0629 2\"]', NULL, '2024-08-11 12:23:50', '2024-08-11 12:23:50'),
(4, 'عميل 1', '#f60404', 2, NULL, '[\"11111\",\"44444\",\"55555\"]', '[\"\\u0627\\u0644\\u0642\\u064a\\u0645\\u0629 1\",\"\\u0627\\u0644\\u0642\\u064a\\u0645\\u0629 4\",\"\\u0627\\u0644\\u0642\\u064a\\u0645\\u0629 5\"]', NULL, '2024-08-11 12:32:45', '2024-08-11 12:32:45'),
(5, 'erwerw', '#1304dc', 2, 'qweqeqweqweqe', '[\"1111\",\"22222\",\"33333\"]', '[\"q1\",\"q2\",\"q4\"]', NULL, '2024-08-11 12:46:54', '2024-08-11 12:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `sub_unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `allow_decimal` varchar(255) DEFAULT NULL,
  `e_invoice_unit_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `short_name`, `description`, `is_active`, `sub_unit_id`, `allow_decimal`, `e_invoice_unit_type`, `created_at`, `updated_at`) VALUES
(1, 'الوحدة رقم 1', 'وحدة 1', NULL, 1, NULL, '0', '4K', '2024-08-08 11:36:36', '2024-08-08 11:38:24'),
(2, 'الوحدة رقم 2', 'وحدة 2', 'سشسشس', 1, 1, '1', '4K', '2024-08-08 11:38:08', '2024-08-11 11:00:29'),
(3, 'sas', 'وحدة 1 سيبس', 'dadasd', 0, 2, '0', '4K', '2024-08-11 10:25:58', '2024-08-11 11:00:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `type` enum('admin','user','employee','user_and_employee') NOT NULL DEFAULT 'user',
  `cmmsn_percent` varchar(255) DEFAULT NULL,
  `selected_contacts` tinyint(1) NOT NULL DEFAULT 0,
  `selected_contact_ids` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `customergroup_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED DEFAULT NULL,
  `access_all_categories` varchar(255) DEFAULT NULL,
  `access_all_accounts` varchar(255) DEFAULT NULL,
  `access_all_expenses` varchar(255) DEFAULT NULL,
  `transaction_number` varchar(255) DEFAULT NULL,
  `id_proof_name` varchar(255) DEFAULT NULL,
  `id_proof_number` varchar(255) DEFAULT NULL,
  `basic_salary` varchar(255) DEFAULT NULL,
  `duration_unit` varchar(255) DEFAULT NULL,
  `pjt_visit_hourly_rate` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `surname`, `username`, `contact_number`, `birth_date`, `gender`, `address`, `email`, `email_verified_at`, `password`, `avatar`, `type`, `cmmsn_percent`, `selected_contacts`, `selected_contact_ids`, `category_id`, `is_active`, `customergroup_id`, `role_id`, `warehouse_id`, `access_all_categories`, `access_all_accounts`, `access_all_expenses`, `transaction_number`, `id_proof_name`, `id_proof_number`, `basic_salary`, `duration_unit`, `pjt_visit_hourly_rate`, `signature`, `last_login_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'amr', 'adsadasfdaf', 'weqwewqe', 'dasdasdasdasda', 'رقم الاتصال:', NULL, NULL, NULL, 'amr@yahoo.com', NULL, '$2y$10$uS.CoKZegReK/1HdiwCu..kfZHyEG3510p2Wwcvz.We5bzPJfiChS', NULL, 'user_and_employee', '200', 1, NULL, 1, 0, NULL, 2, 2, 'access_all_categories', NULL, 'access_all_expenses', 'رقم التحويل (كاش):', 'اسم إثبات الهوية:', 'رقم إثبات الهوية:', '43242342', '43242342 وحدة المدة:', '432423423423423423', NULL, '2024-10-22 14:38:55', 'c0uE4jVFSQhxpavfEJPOkHBp2nMvt6HYiE2pFbUYPocVB9d8ELMhEssrAcbo', '2024-09-02 07:15:07', '2024-10-22 11:38:55'),
(6, 'amr', 'المندوب', 'موظف', 'amr@yahoo.com', NULL, NULL, NULL, NULL, 'amr1@yahoo.com', NULL, '$2y$10$URA7uZ8pX0M33JoJ4iBTr.xT.8rfUkFFJeOZJLwcLGrKFto5FAz9G', NULL, 'employee', '20', 1, NULL, 1, 1, NULL, 1, NULL, 'access_all_categories', NULL, 'access_all_expenses', 'رقم التحويل (كاش):', 'اسم إثبات الهوية:', 'رقم إثبات الهوية:', '312', 'وحدة المدة:', NULL, NULL, NULL, NULL, '2024-09-03 07:32:29', '2024-09-03 07:32:29');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `site_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `phone_alt` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `invoice_design` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `default_selling_price_set` varchar(255) DEFAULT NULL,
  `invoice_code` varchar(255) DEFAULT NULL,
  `pay_option` varchar(255) DEFAULT NULL,
  `default_payment_method` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `site_id`, `address`, `zip_code`, `country`, `city`, `phone_alt`, `phone`, `email`, `website`, `invoice_design`, `company_id`, `default_selling_price_set`, `invoice_code`, `pay_option`, `default_payment_method`, `created_at`, `updated_at`) VALUES
(1, 'مخزن 1', '2022', 'القاهرة / بدر', 'ewe', 'مصر', 'الجيزة', '222222222222', '111111111111111', 'company@example.com', 'company.com', 'Default', 1, 'يرجى الاختيار', NULL, NULL, 'اختر', '2024-08-08 12:20:05', '2024-08-08 12:20:05'),
(2, 'مخزن 3', '2022', 'العبور', '12345', 'مصر', 'القاهرة', '222222222222', '1111111111111', 'amr@yahoo.com', 'amr.com', 'Default', 2, 'يرجى الاختيار', NULL, 'اتصالات كاش', 'تحويل اتصالات كاش', '2024-08-08 12:20:32', '2024-08-08 12:20:32');

-- --------------------------------------------------------

--
-- Table structure for table `warranties`
--

CREATE TABLE `warranties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `duration` int(11) NOT NULL,
  `duration_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warranties`
--

INSERT INTO `warranties` (`id`, `name`, `description`, `duration`, `duration_type`, `created_at`, `updated_at`) VALUES
(1, 'الضمان', 'الضمانالضمانالضمان', 20, 'أشهر', '2024-08-11 06:53:03', '2024-08-11 06:53:03'),
(3, 'اختبار 2', 'شسشس', 323, 'months', '2024-08-11 07:07:23', '2024-08-11 07:07:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bank_accounts_account_number_unique` (`account_number`),
  ADD KEY `bank_accounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cities_state_id_foreign` (`state_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_user_id_foreign` (`user_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customergroups`
--
ALTER TABLE `customergroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_customergroup_id_foreign` (`customergroup_id`),
  ADD KEY `customers_company_id_foreign` (`company_id`);

--
-- Indexes for table `expensecategories`
--
ALTER TABLE `expensecategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `invoices_customer_id_foreign` (`customer_id`);

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
-- Indexes for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_types_expense_category_id_foreign` (`expense_category_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_unit_id_foreign` (`unit_id`),
  ADD KEY `products_sub_unit_id_foreign` (`sub_unit_id`),
  ADD KEY `products_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `products_company_id_foreign` (`company_id`),
  ADD KEY `products_season_id_foreign` (`season_id`),
  ADD KEY `products_gender_id_foreign` (`gender_id`);

--
-- Indexes for table `products_invoice`
--
ALTER TABLE `products_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_invoice_invoice_id_foreign` (`invoice_id`),
  ADD KEY `products_invoice_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_warehouse_product_id_foreign` (`product_id`),
  ADD KEY `product_warehouse_warehouse_id_foreign` (`warehouse_id`);

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
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_customer_id_foreign` (`customer_id`),
  ADD KEY `sales_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `sales_category_id_foreign` (`category_id`);

--
-- Indexes for table `sales_agents`
--
ALTER TABLE `sales_agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_product`
--
ALTER TABLE `sale_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_product_sale_id_foreign` (`sale_id`),
  ADD KEY `sale_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `seasons`
--
ALTER TABLE `seasons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sellingpricegroups`
--
ALTER TABLE `sellingpricegroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippingtypes`
--
ALTER TABLE `shippingtypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_country_id_foreign` (`country_id`);

--
-- Indexes for table `stockadjustments`
--
ALTER TABLE `stockadjustments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stockadjustments_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `stockadjustment_product`
--
ALTER TABLE `stockadjustment_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stockadjustment_product_stockadjustment_id_foreign` (`stockadjustment_id`),
  ADD KEY `stockadjustment_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `storenumbers`
--
ALTER TABLE `storenumbers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `storenumbers_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `templates_category_id_foreign` (`category_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `units_sub_unit_id_foreign` (`sub_unit_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_category_id_foreign` (`category_id`),
  ADD KEY `users_customergroup_id_foreign` (`customergroup_id`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouses_company_id_foreign` (`company_id`);

--
-- Indexes for table `warranties`
--
ALTER TABLE `warranties`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customergroups`
--
ALTER TABLE `customergroups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `expensecategories`
--
ALTER TABLE `expensecategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products_invoice`
--
ALTER TABLE `products_invoice`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `sales_agents`
--
ALTER TABLE `sales_agents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sale_product`
--
ALTER TABLE `sale_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `seasons`
--
ALTER TABLE `seasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sellingpricegroups`
--
ALTER TABLE `sellingpricegroups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shippingtypes`
--
ALTER TABLE `shippingtypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stockadjustments`
--
ALTER TABLE `stockadjustments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `stockadjustment_product`
--
ALTER TABLE `stockadjustment_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `storenumbers`
--
ALTER TABLE `storenumbers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `warranties`
--
ALTER TABLE `warranties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD CONSTRAINT `bank_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `customers_customergroup_id_foreign` FOREIGN KEY (`customergroup_id`) REFERENCES `customergroups` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoices_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD CONSTRAINT `payment_types_expense_category_id_foreign` FOREIGN KEY (`expense_category_id`) REFERENCES `expensecategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_gender_id_foreign` FOREIGN KEY (`gender_id`) REFERENCES `genders` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_season_id_foreign` FOREIGN KEY (`season_id`) REFERENCES `seasons` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_sub_unit_id_foreign` FOREIGN KEY (`sub_unit_id`) REFERENCES `units` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products_invoice`
--
ALTER TABLE `products_invoice`
  ADD CONSTRAINT `products_invoice_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`),
  ADD CONSTRAINT `products_invoice_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_warehouse`
--
ALTER TABLE `product_warehouse`
  ADD CONSTRAINT `product_warehouse_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_warehouse_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sales_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sale_product`
--
ALTER TABLE `sale_product`
  ADD CONSTRAINT `sale_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sale_product_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stockadjustments`
--
ALTER TABLE `stockadjustments`
  ADD CONSTRAINT `stockadjustments_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stockadjustment_product`
--
ALTER TABLE `stockadjustment_product`
  ADD CONSTRAINT `stockadjustment_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stockadjustment_product_stockadjustment_id_foreign` FOREIGN KEY (`stockadjustment_id`) REFERENCES `stockadjustments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `storenumbers`
--
ALTER TABLE `storenumbers`
  ADD CONSTRAINT `storenumbers_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `templates`
--
ALTER TABLE `templates`
  ADD CONSTRAINT `templates_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `units`
--
ALTER TABLE `units`
  ADD CONSTRAINT `units_sub_unit_id_foreign` FOREIGN KEY (`sub_unit_id`) REFERENCES `units` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `users_customergroup_id_foreign` FOREIGN KEY (`customergroup_id`) REFERENCES `customergroups` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD CONSTRAINT `warehouses_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
