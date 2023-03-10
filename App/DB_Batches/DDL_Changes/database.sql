-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2023 at 08:06 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `selten_crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `account_type`, `industry`, `annual_revenue`, `phone_fax`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `rating`, `phone_office`, `phone_alternate`, `website`, `ownership`, `employees`, `ticker_symbol`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `parent_id`, `sic_code`, `campaign_id`) VALUES
('1509469a-e1a7-4908-67b6-6394265cb78a', 'kamalesh', '2022-12-10 06:27:29', '2022-12-10 06:27:29', '1', '1', '', 0, '1', '', '', '', '12', '', '', '', '', '', NULL, '123', NULL, 'http://', NULL, '', NULL, '', '', '', '', '', '', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_audit`
--

CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_bugs`
--

CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_cases`
--

CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_contacts`
--

CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_cstm`
--

CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_cstm`
--

INSERT INTO `accounts_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('1509469a-e1a7-4908-67b6-6394265cb78a', 0.00000000, 0.00000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_leads_1_c`
--

CREATE TABLE `accounts_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `accounts_leads_1accounts_ida` varchar(36) DEFAULT NULL,
  `accounts_leads_1leads_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_opportunities`
--

CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts_opportunities`
--

INSERT INTO `accounts_opportunities` (`id`, `opportunity_id`, `account_id`, `date_modified`, `deleted`) VALUES
('9a750977-c80d-bf2e-8037-6394277df328', '6ed60655-7206-e3f6-2fe3-639427cffa37', '1509469a-e1a7-4908-67b6-6394265cb78a', '2022-12-10 06:29:48', 0);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_opportunities_1_c`
--

CREATE TABLE `accounts_opportunities_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `accounts_opportunities_1accounts_ida` varchar(36) DEFAULT NULL,
  `accounts_opportunities_1opportunities_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_tasks_1_c`
--

CREATE TABLE `accounts_tasks_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `accounts_tasks_1accounts_ida` varchar(36) DEFAULT NULL,
  `accounts_tasks_1tasks_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_actions`
--

CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl_actions`
--

INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('103307f5-6512-1e10-06bc-634e57b422ef', '2022-10-18 07:38:32', '2022-10-18 07:38:32', '1', '1', 'massupdate', 'EMP_Employees', 'module', 90, 0),
('103e1da8-9c09-e545-e244-634e3e371e65', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'AOR_Scheduled_Reports', 'module', 90, 0),
('1040d22e-bea2-8e9e-7c0a-634e3e43e5f8', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'AOD_Index', 'module', 90, 0),
('1059f3ba-909f-e05b-6e3b-634e3ef6c444', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'Campaigns', 'module', 90, 0),
('10701320-ad94-11f9-d8ca-634e3ef2512c', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'Meetings', 'module', 90, 0),
('10ab1795-ed84-2e57-fcc7-634e3ecb3f51', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'Cases', 'module', 90, 0),
('11e00b5b-9ab2-0315-a280-634e575b3ab2', '2022-10-18 07:38:32', '2022-10-18 07:38:32', '1', '1', 'list', 'EMP_Employees', 'module', 90, 0),
('1202cc6c-9042-0117-85e7-634e3ecaa122', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'AOR_Reports', 'module', 90, 0),
('12415892-18f7-3142-750a-634e3e84f8d4', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'Campaigns', 'module', 90, 0),
('125257d1-0582-8e05-753f-634e3ed29a59', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'AOD_Index', 'module', 90, 0),
('12d15687-75eb-88b0-5c84-634e3efb5c0d', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'Cases', 'module', 90, 0),
('1403e09e-7713-bfb2-88a3-634e3ecbe9ff', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'AOR_Reports', 'module', 90, 0),
('140f5a4f-e9d9-46ab-e5bc-634e3e3aad5c', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'Campaigns', 'module', 90, 0),
('143369cb-548e-4af1-ede3-634e3e405d50', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'AOR_Scheduled_Reports', 'module', 90, 0),
('144446e0-eb69-aba0-46b8-634e3e7b0e10', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'AOD_Index', 'module', 90, 0),
('147d9ce9-443c-f156-1049-634e3ec3cb12', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'Cases', 'module', 90, 0),
('1537b57c-7aca-1b67-65f3-634e3e3b4280', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'Notes', 'module', 89, 0),
('15a43f4b-0ff3-2182-1e07-634e3edac186', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'Campaigns', 'module', 90, 0),
('15fc104f-e64e-bae1-cc0f-635a3b433795', '2022-10-27 08:05:26', '2022-10-27 08:05:26', '1', '1', 'access', 'SLY_Salary', 'module', 89, 0),
('161f3e68-b500-b38c-11c1-634e3e8e35d7', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'Meetings', 'module', 90, 0),
('165dfef3-3797-88bb-a872-634e3e6c9bf5', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'AOR_Reports', 'module', 90, 0),
('16ccd798-692b-2188-6158-634e3e4ef69f', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'Cases', 'module', 90, 0),
('16d80e2c-eaa0-d5eb-24a5-634e3ec85f43', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'AOS_PDF_Templates', 'module', 89, 0),
('16f9603f-28a3-85b6-c13f-634e3e850ab4', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'AOD_Index', 'module', 90, 0),
('17394883-5fc9-7807-19fe-634e3e2870ae', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'Notes', 'module', 90, 0),
('17920609-5921-04a6-4419-634e3e1161f2', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'Campaigns', 'module', 90, 0),
('1838cb5e-6084-c6fc-bfc5-634e3e6ee540', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'AOR_Reports', 'module', 90, 0),
('189f76c8-aaa4-4b30-f7e0-634e3eea5a16', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'Cases', 'module', 90, 0),
('18f3a3b5-e085-2baa-e9af-634e3edf4bcb', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'AOD_Index', 'module', 90, 0),
('19294d20-9851-7719-36b1-634e3ee8dcbc', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'Notes', 'module', 90, 0),
('19986c36-f005-47f5-78f9-634e3e370c71', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'Campaigns', 'module', 90, 0),
('1a3311dc-6988-86fb-5600-634e3e31ea78', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'AOR_Reports', 'module', 90, 0),
('1ac13d48-5a31-0e34-18e0-634e3ee2d482', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'Notes', 'module', 90, 0),
('1bb37f57-44c7-3e2a-b71a-634e3eac91f2', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'Campaigns', 'module', 90, 0),
('1c75fa1a-e12e-2b34-c704-634e3e585c4b', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'Notes', 'module', 90, 0),
('1e88de0b-ad8a-c590-20bc-634e3ef5d7d7', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'Notes', 'module', 90, 0),
('1f8cf799-5c62-4360-f5ef-634e3eceecc1', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'EmailMarketing', 'module', 89, 0),
('2028b80c-d717-b2d9-3c57-634e3e156e6b', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'Notes', 'module', 90, 0),
('21a1c5e1-1f5e-cb27-3e6f-634e3e9513db', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'EmailMarketing', 'module', 90, 0),
('21de6d67-e4d6-0316-b7f4-634e3eddfe1b', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'Notes', 'module', 90, 0),
('21f00fd4-7311-ef93-fbfb-634e3e5dee84', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'jjwg_Maps', 'module', 90, 0),
('2394bace-298f-fafd-1b16-63f34c30ca4d', '2023-02-20 10:31:38', '2023-02-20 10:31:38', '1', '1', 'access', 'CLI_Clients', 'module', 89, 0),
('23bc1dc1-02fd-f015-2ff0-634e3e5f478e', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'EmailMarketing', 'module', 90, 0),
('248b8d91-1b25-9a09-7142-63cf6a33af01', '2023-01-24 05:21:42', '2023-01-24 05:21:42', '1', '1', 'access', 'EMP_Employee_List', 'module', 89, 0),
('25685860-69a2-f507-195d-634e3e308353', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'EmailMarketing', 'module', 90, 0),
('26a00ad3-dc21-5846-a1ba-634e3e34df25', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'jjwg_Maps', 'module', 90, 0),
('26de61d6-1460-7fc5-ac3b-634e3ef1ed3d', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'AOP_Case_Events', 'module', 89, 0),
('277f8293-2e14-af69-6f3a-634e3e940446', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'EmailMarketing', 'module', 90, 0),
('282e677a-174d-8e5a-0952-635a3bbf4141', '2022-10-27 08:05:26', '2022-10-27 08:05:26', '1', '1', 'view', 'SLY_Salary', 'module', 90, 0),
('28d80e6c-131e-4429-e5b9-634e3ea7c57c', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'Calls_Reschedule', 'module', 90, 0),
('291f2d11-8f0b-17ac-947a-634e3e85db6b', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'EmailMarketing', 'module', 90, 0),
('294abce9-1560-c7ba-80f3-634e3e547dd2', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'AOP_Case_Events', 'module', 90, 0),
('2a7e4771-67af-0dc7-dcd6-635a3b31cbb4', '2022-10-27 08:05:26', '2022-10-27 08:05:26', '1', '1', 'list', 'SLY_Salary', 'module', 90, 0),
('2b7dbb78-b5e4-9561-a6ec-634e3ef434a2', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'AOP_Case_Events', 'module', 90, 0),
('2b936c5f-3c59-770b-2a00-634e3e3598bb', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'EmailMarketing', 'module', 90, 0),
('2ce0d70d-cce3-c92c-e5ed-635a3b22eadb', '2022-10-27 08:05:26', '2022-10-27 08:05:26', '1', '1', 'edit', 'SLY_Salary', 'module', 90, 0),
('2d0df15f-bce6-6804-0093-634e3efd55fd', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'AOW_WorkFlow', 'module', 89, 0),
('2d2ad35d-922d-c62a-0f48-634e3e4659fc', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'EmailMarketing', 'module', 90, 0),
('2daab6c2-3654-2f78-f977-634e3ecc1691', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'AOP_Case_Events', 'module', 90, 0),
('2f3d380e-a3f4-9e3b-8354-635a3bf9ba04', '2022-10-27 08:05:26', '2022-10-27 08:05:26', '1', '1', 'delete', 'SLY_Salary', 'module', 90, 0),
('2f5050f5-2dc7-5e53-43c3-634e3e01071b', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'AOW_WorkFlow', 'module', 90, 0),
('310f49c0-52cc-9a94-c8b0-63d9f513c2e9', '2023-02-01 05:14:28', '2023-02-01 05:14:28', '1', '1', 'access', 'PAY_Payments', 'module', 89, 0),
('31168c63-b56d-4efe-640b-634e3e26f1b9', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'AOW_WorkFlow', 'module', 90, 0),
('31eae771-53cb-779c-12dd-635a3b261d01', '2022-10-27 08:05:26', '2022-10-27 08:05:26', '1', '1', 'import', 'SLY_Salary', 'module', 90, 0),
('33e96197-f59f-0e8e-5c26-634e3eb814e5', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'AOP_Case_Events', 'module', 90, 0),
('3442b40d-540f-428e-e370-635a3b769951', '2022-10-27 08:05:26', '2022-10-27 08:05:26', '1', '1', 'export', 'SLY_Salary', 'module', 90, 0),
('3486e42b-a501-d413-c8f8-634e3e771219', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'AOW_WorkFlow', 'module', 90, 0),
('360ef09e-a996-24e7-b982-634e3ebc0b69', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'AOP_Case_Events', 'module', 90, 0),
('368d275e-d2c7-01f3-7be0-634e3e548c3c', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'AOW_WorkFlow', 'module', 90, 0),
('36d83dc6-2bf0-3063-3b59-635a3b4b37dc', '2022-10-27 08:05:26', '2022-10-27 08:05:26', '1', '1', 'massupdate', 'SLY_Salary', 'module', 90, 0),
('38030a70-fb8c-21f9-12f5-634e3e78086a', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'AOP_Case_Events', 'module', 90, 0),
('38931867-a12c-a05c-5ed6-634e3eaeab88', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'AOW_WorkFlow', 'module', 90, 0),
('3a0c023a-0756-3690-dbb8-634e3e2ee614', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'AOS_PDF_Templates', 'module', 90, 0),
('3a76a546-f76e-0103-e23d-63f34c1e5c3d', '2023-02-20 10:31:38', '2023-02-20 10:31:38', '1', '1', 'view', 'CLI_Clients', 'module', 90, 0),
('3aa93e85-8260-66b1-25be-634e3e141880', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'AOW_WorkFlow', 'module', 90, 0),
('3aad0fab-9b5d-be15-1c7b-634e3e6cca6d', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'AM_TaskTemplates', 'module', 90, 0),
('3b7faacf-ea82-5eda-3048-634e3ebebbdf', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'AOP_Case_Events', 'module', 90, 0),
('3c20e2f7-0595-d4f9-e7ea-63cf6a57e701', '2023-01-24 05:21:42', '2023-01-24 05:21:42', '1', '1', 'view', 'EMP_Employee_List', 'module', 90, 0),
('3c56432b-ec84-74dc-80b9-634e3ef7b14f', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'AOW_WorkFlow', 'module', 90, 0),
('3d34fbf6-a1c9-c245-ca26-63f34c6e6578', '2023-02-20 10:31:38', '2023-02-20 10:31:38', '1', '1', 'list', 'CLI_Clients', 'module', 90, 0),
('3d530073-72f2-4b7f-9e49-634e57892b87', '2022-10-18 07:38:32', '2022-10-18 07:38:32', '1', '1', 'edit', 'EMP_Employees', 'module', 90, 0),
('3dd92275-d08d-08bb-b127-634e3e2d6462', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'jjwg_Address_Cache', 'module', 89, 0),
('3f15c53a-90da-68e8-c8d6-63cf6a398ae3', '2023-01-24 05:21:42', '2023-01-24 05:21:42', '1', '1', 'list', 'EMP_Employee_List', 'module', 90, 0),
('3fa416f9-f2d5-b25a-a535-63f34c0c642a', '2023-02-20 10:31:38', '2023-02-20 10:31:38', '1', '1', 'edit', 'CLI_Clients', 'module', 90, 0),
('3fd11335-7a90-c66f-0ff4-634e3e32885d', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'jjwg_Address_Cache', 'module', 90, 0),
('408a3f1d-4623-f28a-8ee5-634e3e9f6bec', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'SecurityGroups', 'module', 89, 0),
('421b4fb5-ed03-af32-c1b9-634e3ef805a8', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'jjwg_Address_Cache', 'module', 90, 0),
('422f9159-2f58-3f7a-d51a-63f34c50c764', '2023-02-20 10:31:38', '2023-02-20 10:31:38', '1', '1', 'delete', 'CLI_Clients', 'module', 90, 0),
('42f423e1-c0fe-6060-86da-634e3e74f840', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'SecurityGroups', 'module', 90, 0),
('430f209f-8669-6ac2-6908-63cf6aee5541', '2023-01-24 05:21:42', '2023-01-24 05:21:42', '1', '1', 'edit', 'EMP_Employee_List', 'module', 90, 0),
('442280b0-ce32-ea19-e428-634e3e293ead', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'jjwg_Address_Cache', 'module', 90, 0),
('4494b068-1902-b421-7624-634e3ecdff85', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'SecurityGroups', 'module', 90, 0),
('45229d8d-c99e-8156-aaf1-63f34c14e17d', '2023-02-20 10:31:38', '2023-02-20 10:31:38', '1', '1', 'import', 'CLI_Clients', 'module', 90, 0),
('45f56fe6-0938-eaaa-18f1-63cf6a627d59', '2023-01-24 05:21:42', '2023-01-24 05:21:42', '1', '1', 'delete', 'EMP_Employee_List', 'module', 90, 0),
('4657d138-fe02-b0f3-32c1-634e3ec840f8', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'jjwg_Address_Cache', 'module', 90, 0),
('4785ad84-1428-94e2-acf3-634e3e36156c', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'SecurityGroups', 'module', 90, 0),
('478ecd7b-526a-95bb-ba44-63f34cf69431', '2023-02-20 10:31:38', '2023-02-20 10:31:38', '1', '1', 'export', 'CLI_Clients', 'module', 90, 0),
('48d5e852-6917-faae-2dcf-634e3e0f59e3', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'jjwg_Address_Cache', 'module', 90, 0),
('48e3262a-5122-acb9-6fdc-63cf6ad347a2', '2023-01-24 05:21:42', '2023-01-24 05:21:42', '1', '1', 'import', 'EMP_Employee_List', 'module', 90, 0),
('4a5a6f54-24f9-1739-b8bf-63d9f50f9773', '2023-02-01 05:14:28', '2023-02-01 05:14:28', '1', '1', 'view', 'PAY_Payments', 'module', 90, 0),
('4b082f01-5775-c6d8-79e8-63f34c74c8de', '2023-02-20 10:31:38', '2023-02-20 10:31:38', '1', '1', 'massupdate', 'CLI_Clients', 'module', 90, 0),
('4b12964a-3859-3423-9868-634e3e98ae27', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'AM_ProjectHolidays', 'module', 89, 0),
('4b81acd7-a36e-748a-a0b4-63cf6a10b826', '2023-01-24 05:21:42', '2023-01-24 05:21:42', '1', '1', 'export', 'EMP_Employee_List', 'module', 90, 0),
('4bfdffc8-1e5d-7394-201c-634e3ef9a51b', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'jjwg_Address_Cache', 'module', 90, 0),
('4c0a2637-8080-70bd-d258-634e3e3c2a4a', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'SecurityGroups', 'module', 90, 0),
('4d194f43-1d14-24ec-33e2-63d9f5e4b04e', '2023-02-01 05:14:28', '2023-02-01 05:14:28', '1', '1', 'list', 'PAY_Payments', 'module', 90, 0),
('4db4668a-a918-7400-8740-634e3e12e327', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'Leads', 'module', 89, 0),
('4e3416e5-e2a6-2451-9345-63cf6aec721d', '2023-01-24 05:21:42', '2023-01-24 05:21:42', '1', '1', 'massupdate', 'EMP_Employee_List', 'module', 90, 0),
('4e6e3eea-1c2a-5e52-5586-634e3ec3d0cf', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'jjwg_Address_Cache', 'module', 90, 0),
('4ef0183e-d35e-ae64-d5b4-634e3e3a6353', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'AM_ProjectHolidays', 'module', 90, 0),
('4f0005d6-bd64-536c-65af-634e3e060513', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'Meetings', 'module', 89, 0),
('50051c1e-7eb2-8285-b4f7-634e3e94d317', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'Project', 'module', 89, 0),
('500a156b-7122-073b-98d9-63d9f54142ff', '2023-02-01 05:14:28', '2023-02-01 05:14:28', '1', '1', 'edit', 'PAY_Payments', 'module', 90, 0),
('5017a19f-2f08-4faf-ef6e-63e9c44f9432', '2023-02-13 05:00:53', '2023-02-13 05:00:53', '1', '1', 'access', 'SK_Skill', 'module', 89, 0),
('50c20710-c2c1-d48c-f9cd-634e3eb41745', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'AOR_Scheduled_Reports', 'module', 90, 0),
('52494a23-9791-27fc-2b7c-634e3e0c6c92', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'Project', 'module', 90, 0),
('527e7f37-53bb-06bf-47ee-634e3e374bae', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'SecurityGroups', 'module', 90, 0),
('529fd063-ce87-4e6a-c357-63d9f5535279', '2023-02-01 05:14:28', '2023-02-01 05:14:28', '1', '1', 'delete', 'PAY_Payments', 'module', 90, 0),
('53ffe17e-3999-d095-0703-634e3eafeaea', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'Project', 'module', 90, 0),
('54510635-6066-0af7-cb87-634e3effa1ed', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'jjwg_Maps', 'module', 90, 0),
('547c3834-7e7a-7a7b-91da-634e3e05fba1', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'SecurityGroups', 'module', 90, 0),
('5560c4ae-8d4e-8514-0bcd-63d9f5e7d32b', '2023-02-01 05:14:28', '2023-02-01 05:14:28', '1', '1', 'import', 'PAY_Payments', 'module', 90, 0),
('55de848e-f4c6-08f2-cbc5-634e3e31b6ac', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'Project', 'module', 90, 0),
('56579d67-f041-8af2-d87d-634e3e9d041a', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'AM_ProjectHolidays', 'module', 90, 0),
('57737d34-0a15-527c-3d76-634e3e02de1a', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'EAPM', 'module', 89, 0),
('57de9e4f-6980-121f-2221-634e3e78005d', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'SecurityGroups', 'module', 90, 0),
('57f20fb9-dc30-4b36-51e3-63d9f5f42cfa', '2023-02-01 05:14:28', '2023-02-01 05:14:28', '1', '1', 'export', 'PAY_Payments', 'module', 90, 0),
('58070690-4bae-6961-9486-634e3ed1fe9c', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'Calls_Reschedule', 'module', 90, 0),
('5827d0a0-8e36-51a4-f1de-634e3e81ca33', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'Project', 'module', 90, 0),
('59bf178d-01b2-a136-23f1-634e3ecbec4e', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'Project', 'module', 90, 0),
('59ca31e6-780e-b1af-53a5-634e3ed1926b', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'AM_ProjectHolidays', 'module', 90, 0),
('5a90d52c-69e5-4a6d-f84a-63d9f537c905', '2023-02-01 05:14:28', '2023-02-01 05:14:28', '1', '1', 'massupdate', 'PAY_Payments', 'module', 90, 0),
('5aacd64a-6a9e-f696-fbca-634e3e56d99d', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'EAPM', 'module', 90, 0),
('5b083109-f8cf-d7df-ff69-634e3e155fb2', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'AOS_Contracts', 'module', 89, 0),
('5b8a0431-5a3c-cc75-7c71-634e3ec838e5', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'Project', 'module', 90, 0),
('5bd1ef82-fc9b-bd92-3595-634e3ed3aaa9', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'AM_ProjectHolidays', 'module', 90, 0),
('5c81a1fa-745d-b2d1-4b5a-634e3ef56b40', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'EAPM', 'module', 90, 0),
('5d2b3aa8-30ce-be24-f8f7-634e3ecfa60d', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'AOS_Contracts', 'module', 90, 0),
('5d505239-cf3d-f18b-3ebb-634e3ea90284', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'Project', 'module', 90, 0),
('5e0303f3-c6d6-0fb4-5213-634e3ed0181e', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'AOS_PDF_Templates', 'module', 90, 0),
('5e0ddcdf-0277-6d71-ad28-634e3e52d49c', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'Tasks', 'module', 89, 0),
('5e1cb53c-7460-3b94-73ac-634e3eee79c8', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'Calls', 'module', 89, 0),
('5e5fb604-f55d-06ef-a421-634e3e74a37b', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'AM_ProjectHolidays', 'module', 90, 0),
('5ebc1383-2a68-9eb5-3c5f-634e3e1d53b0', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'EAPM', 'module', 90, 0),
('5f3632e0-f20d-72eb-2b1d-634e3ec12532', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'AOS_Contracts', 'module', 90, 0),
('604cfb7b-fca1-f930-7d19-63c8dfde91bc', '2023-01-19 06:11:07', '2023-01-19 06:11:07', '1', '1', 'access', 'EMP_Employee', 'module', 89, 0),
('6056837b-ca12-2384-1ece-634e3efa1d6d', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'AM_ProjectHolidays', 'module', 90, 0),
('60580338-0a2b-b196-e35e-634e3ee55304', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'Calls', 'module', 90, 0),
('60b4be63-97ac-2e5d-62c7-634e3e65c70c', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'EAPM', 'module', 90, 0),
('60c0124e-b849-06ee-bb0f-634e3e84f9be', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'AOS_Contracts', 'module', 90, 0),
('62221aa6-9432-50a5-cc6a-634e3e164017', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'Calls', 'module', 90, 0),
('627e2c55-b65c-782f-719b-634e3ecb6733', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'EAPM', 'module', 90, 0),
('628f68ef-5560-1ac8-91a0-634e3ef1b753', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'AM_ProjectHolidays', 'module', 90, 0),
('62c06a28-8e2b-3835-1a5b-634e3e7849d3', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'AOS_Contracts', 'module', 90, 0),
('6404c608-54b5-9bb8-cb2b-634e3e90f38e', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'Contacts', 'module', 89, 0),
('6431d98f-f186-f5ae-2191-634e3e9097c5', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'Calls', 'module', 90, 0),
('648a67ea-8de3-338b-95dd-634e3ef0260d', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'EAPM', 'module', 90, 0),
('648f20c3-01d2-c22d-02e5-634e3e721535', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'Tasks', 'module', 90, 0),
('64a0ad88-cba0-059a-b15c-634e3e4fff64', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'AOS_Contracts', 'module', 90, 0),
('64d423d8-3085-36dd-8240-634e3ef48b77', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'AOS_Product_Categories', 'module', 89, 0),
('64de0bce-6aa1-0374-ac30-634e57ea54db', '2022-10-18 07:38:32', '2022-10-18 07:38:32', '1', '1', 'delete', 'EMP_Employees', 'module', 90, 0),
('65ef96e5-7b00-32df-1543-634e3e9a01a6', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'Calls', 'module', 90, 0),
('66641a06-8f76-6e5a-7ad2-634e3e2bf63a', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'AOS_Contracts', 'module', 90, 0),
('66842107-0c3e-c156-67e1-634e3ea46b5e', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'EAPM', 'module', 90, 0),
('673149f8-7157-cb06-a578-634e3e21ae3e', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'Contacts', 'module', 90, 0),
('67a56147-fbbd-ee5f-cb37-634e3e03875d', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'AOS_Product_Categories', 'module', 90, 0),
('67f0675b-60bb-e865-e7e5-634e3e015564', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'Calls', 'module', 90, 0),
('685e392b-c3f8-2f62-64b3-634e3e15d7d6', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'AOS_Contracts', 'module', 90, 0),
('68f8697f-01d3-f8c9-53de-634e3e1a2b27', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'Tasks', 'module', 90, 0),
('6960d70a-72ea-d5b0-e820-634e3e6fdb17', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'AOS_Product_Categories', 'module', 90, 0),
('6966ebb8-913b-f8e5-c0bc-634e3e00bf08', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'Contacts', 'module', 90, 0),
('69b365a0-f827-c449-0fce-634e3e9cd263', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'Calls', 'module', 90, 0),
('6b3800fc-7e27-fc9b-f93c-634e3ebdeb12', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'Bugs', 'module', 89, 0),
('6b66d3e6-3f71-3acb-cd08-634e3e1f9e87', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'Contacts', 'module', 90, 0),
('6b74fb7c-7412-b86a-a79f-634e3eadbb7e', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'AOS_Product_Categories', 'module', 90, 0),
('6be9e4df-9a6e-18b5-dd38-634e3eb5a059', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'Calls', 'module', 90, 0),
('6d2a0ef3-a559-0aad-0f19-634e3e754277', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'Bugs', 'module', 90, 0),
('6d3c9938-2343-2f5a-71c9-634e3e2f31c0', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'Tasks', 'module', 90, 0),
('6d420d5c-5869-8582-3e6f-634e3e8bea1b', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'AOS_Product_Categories', 'module', 90, 0),
('6da59cdf-7e17-e126-39ce-63e9c499554a', '2023-02-13 05:00:53', '2023-02-13 05:00:53', '1', '1', 'view', 'SK_Skill', 'module', 90, 0),
('6dace313-8b60-ea42-99f3-634e3eeea6f7', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'Contacts', 'module', 90, 0),
('6e0a3fd5-0375-1319-b81f-634e3ed04097', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'FP_events', 'module', 89, 0),
('6edcc1a3-93c7-873c-11af-634e3e1e4caa', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'Bugs', 'module', 90, 0),
('6fb4c9f4-2f4a-4f75-7afc-634e3ed7a550', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'AOS_Product_Categories', 'module', 90, 0),
('6fd369f6-0c51-eae6-b654-634e3eacd171', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'Tasks', 'module', 90, 0),
('702d34d3-5d7c-2c3c-1408-634e3e03ada3', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'Contacts', 'module', 90, 0),
('70525342-4319-6158-2ff5-634e3e329f15', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'FP_events', 'module', 90, 0),
('7096ca6a-679f-a079-8ebc-634e3e694798', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'Bugs', 'module', 90, 0),
('709c8e0e-44d8-1cf6-09da-63e9c4446171', '2023-02-13 05:00:53', '2023-02-13 05:00:53', '1', '1', 'list', 'SK_Skill', 'module', 90, 0),
('71692206-be30-1712-5c45-634e3ed60168', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'AOS_Product_Categories', 'module', 90, 0),
('71ebdc56-8f06-b1f7-27bb-634e3e6923f2', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'Contacts', 'module', 90, 0),
('71ed2150-21c9-80eb-8f43-634e3e2221c7', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'Tasks', 'module', 90, 0),
('71ed5071-4742-05be-1f27-634e3ea742c4', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'jjwg_Markers', 'module', 89, 0),
('722e50cf-2562-3fa9-e52f-634e3e983998', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'Bugs', 'module', 90, 0),
('72b7c281-4fba-81a0-d097-634e3ed7b8dc', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'FP_events', 'module', 90, 0),
('7304b81c-212a-d416-22a2-634e3ee55333', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'Opportunities', 'module', 89, 0),
('736c6289-8253-d9e0-8252-63e9c4f723d2', '2023-02-13 05:00:53', '2023-02-13 05:00:53', '1', '1', 'edit', 'SK_Skill', 'module', 90, 0),
('73b48d88-ba55-c328-450d-634e3e7b45c1', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'AOS_Product_Categories', 'module', 90, 0),
('74490af8-29f9-a62d-3962-634e3e533058', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'Meetings', 'module', 90, 0),
('7490ecf6-7584-e055-1b2f-634e3ee89dee', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'Bugs', 'module', 90, 0),
('7494fa38-6f6e-7f3f-8266-634e3ea7fa12', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'Contacts', 'module', 90, 0),
('74af65be-2585-535b-cbe8-634e3ee58652', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'FP_events', 'module', 90, 0),
('7544e2ce-452c-ea43-bbd6-634e3e7bfadb', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'jjwg_Markers', 'module', 90, 0),
('754aadbd-76eb-8cce-be4c-634e3eee80d4', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'Opportunities', 'module', 90, 0),
('76070b28-c4bd-5c18-ecef-634e3e17639d', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'Tasks', 'module', 90, 0),
('7625f73e-ef2d-6e4f-78d8-63e9c4b87c8f', '2023-02-13 05:00:53', '2023-02-13 05:00:53', '1', '1', 'delete', 'SK_Skill', 'module', 90, 0),
('7630e367-140b-8315-ef07-634e3edda06c', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'Bugs', 'module', 90, 0),
('76dc8764-b04f-b7e1-e101-634e3e3be65b', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'FP_events', 'module', 90, 0),
('7708d267-dc54-1c42-479f-634e3eb914e4', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'Opportunities', 'module', 90, 0),
('77542cff-00ff-70cf-7554-634e3e76b99c', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'ProspectLists', 'module', 89, 0),
('77aa8241-3f8c-74a3-d56c-634e3eec4ab6', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'jjwg_Markers', 'module', 90, 0),
('77f4915f-c027-46f7-81c3-634e58c5f33e', '2022-10-18 07:39:25', '2022-10-18 07:39:25', '1', '1', 'access', 'SLY_Salaries', 'module', 89, 0),
('77f6e8de-cb61-e2d7-657d-634e3e258f95', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'Bugs', 'module', 90, 0),
('7835077e-b735-1c80-6aed-634e3ec93b9b', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'jjwg_Maps', 'module', 90, 0),
('78baa973-04cf-77f4-8ede-634e3e63fcfb', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'FP_events', 'module', 90, 0),
('78d7ff22-8d66-ccdd-9892-634e3ee20e23', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'Tasks', 'module', 90, 0),
('78e43d2d-53c9-68bf-6ad9-634e3e7a6a24', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'Opportunities', 'module', 90, 0),
('78f87803-3643-ec60-892d-63e9c49f3c57', '2023-02-13 05:00:53', '2023-02-13 05:00:53', '1', '1', 'import', 'SK_Skill', 'module', 90, 0),
('797f18b0-1c6b-18dd-ebae-63889ec7d898', '2022-12-01 12:31:04', '2022-12-01 12:31:04', '1', '1', 'access', 'sh_Salary_History', 'module', 89, 0),
('79c1c44c-69a7-e92a-1a0c-634e3ee51d8d', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'ProspectLists', 'module', 90, 0),
('79c90f75-a77f-73d5-c3da-634e3e7d749a', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'AOS_PDF_Templates', 'module', 90, 0),
('7a049b96-fd30-c11a-3d12-634e3ea5694d', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'jjwg_Markers', 'module', 90, 0),
('7aa732b4-1051-0a9e-00a5-634e3efa933c', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'Opportunities', 'module', 90, 0),
('7b080f26-4270-a20e-eb79-634e3e4768bf', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'FP_events', 'module', 90, 0),
('7b58126c-b69c-dd53-5833-634e3e6a3e9b', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'ProspectLists', 'module', 90, 0),
('7bf25ced-daf3-9f99-f611-63e9c47e1150', '2023-02-13 05:00:53', '2023-02-13 05:00:53', '1', '1', 'export', 'SK_Skill', 'module', 90, 0),
('7bfac7d7-0095-53fd-b336-634e3e8c5de0', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'jjwg_Markers', 'module', 90, 0),
('7c120808-1c02-19dc-a3ca-634e3e404343', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'Calls_Reschedule', 'module', 90, 0),
('7cb4efb9-b935-ce22-9566-634e3e50bdf6', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'Opportunities', 'module', 90, 0),
('7d4df8b7-1e03-b917-56df-634e3e2d01b0', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'FP_events', 'module', 90, 0),
('7d535fb9-ba6e-ab11-2a9d-634e3e9fb978', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'ProspectLists', 'module', 90, 0),
('7e3de2d0-97c8-21ce-f204-634e3e9b206b', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'Opportunities', 'module', 90, 0),
('7eaa20ec-7b9e-ce6a-d98d-63e9c4a774e6', '2023-02-13 05:00:53', '2023-02-13 05:00:53', '1', '1', 'massupdate', 'SK_Skill', 'module', 90, 0),
('7f8f7b68-cbf4-cf4e-b43b-634e3e9ad471', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'jjwg_Markers', 'module', 90, 0),
('80d24085-b5a3-d1ab-59cc-634e3ee8b498', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'Opportunities', 'module', 90, 0),
('81a608f7-ba06-bd5c-f4c3-634e3e1c32e9', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'jjwg_Markers', 'module', 90, 0),
('8256cf58-d208-2a20-82b5-63c8df836938', '2023-01-19 06:11:07', '2023-01-19 06:11:07', '1', '1', 'view', 'EMP_Employee', 'module', 90, 0),
('82e61d07-87d5-8fc0-1f8e-634e3e34e588', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'ProspectLists', 'module', 90, 0),
('83e4b99d-016b-5506-7e72-634e3e55bea6', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'jjwg_Markers', 'module', 90, 0),
('853c293f-e151-2100-ee70-634e3edf16d9', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'ProspectLists', 'module', 90, 0),
('8574d0fa-9b17-643c-2e47-63c8df7d977b', '2023-01-19 06:11:07', '2023-01-19 06:11:07', '1', '1', 'list', 'EMP_Employee', 'module', 90, 0),
('86d23265-d9ef-b201-b468-634e3ed23875', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'ProspectLists', 'module', 90, 0),
('880a11fe-985a-710e-f6aa-63c8df697289', '2023-01-19 06:11:07', '2023-01-19 06:11:07', '1', '1', 'edit', 'EMP_Employee', 'module', 90, 0),
('88c24db9-d7cc-a10e-8966-634e3e12c850', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'AOW_Processed', 'module', 89, 0),
('88eed79c-76fe-90c8-88b8-634e3e49ebdf', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'ProspectLists', 'module', 90, 0),
('892ff43e-d969-f6e9-8ba2-634e58eeea21', '2022-10-18 07:39:25', '2022-10-18 07:39:25', '1', '1', 'view', 'SLY_Salaries', 'module', 90, 0),
('8aa80427-5a59-743e-7f8a-63c8df88fd51', '2023-01-19 06:11:07', '2023-01-19 06:11:07', '1', '1', 'delete', 'EMP_Employee', 'module', 90, 0),
('8aaa223e-b91d-4a1e-62bd-634e3e4ce825', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'Leads', 'module', 90, 0),
('8aaf0f92-b1e7-3fd4-db60-634e3edd76e3', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'AOW_Processed', 'module', 90, 0),
('8bb98c99-24f3-cd34-09f7-634e58e08167', '2022-10-18 07:39:25', '2022-10-18 07:39:25', '1', '1', 'list', 'SLY_Salaries', 'module', 90, 0),
('8c4efe4a-745a-299c-f688-634e3e26f6c6', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'AOW_Processed', 'module', 90, 0),
('8cc2e494-8d4f-60b2-df3b-63889e15b777', '2022-12-01 12:31:04', '2022-12-01 12:31:04', '1', '1', 'view', 'sh_Salary_History', 'module', 90, 0),
('8d41c616-1895-f58f-3362-634e3e0889f7', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'Leads', 'module', 90, 0),
('8d4a2b6e-a70f-253c-3b42-63c8df79a76b', '2023-01-19 06:11:07', '2023-01-19 06:11:07', '1', '1', 'import', 'EMP_Employee', 'module', 90, 0),
('8dd60c41-2a40-79f2-169c-634e3e2bde1a', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'Meetings', 'module', 90, 0),
('8e3fec9d-c6e9-fcf2-d072-634e5842e60d', '2022-10-18 07:39:25', '2022-10-18 07:39:25', '1', '1', 'edit', 'SLY_Salaries', 'module', 90, 0),
('8e6ec961-e3aa-48dc-fe4d-634e3ec6635e', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'AOW_Processed', 'module', 90, 0),
('8fc2cdac-4263-1d55-1384-634e3e08915a', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'Leads', 'module', 90, 0),
('9000b140-19f7-badc-5143-63889e4a1c23', '2022-12-01 12:31:04', '2022-12-01 12:31:04', '1', '1', 'list', 'sh_Salary_History', 'module', 90, 0),
('90110aef-3202-8bc8-b479-634e3eef0dee', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'AOR_Scheduled_Reports', 'module', 90, 0),
('90598ed0-e829-f6c1-c716-63c8dfc477e9', '2023-01-19 06:11:07', '2023-01-19 06:11:07', '1', '1', 'export', 'EMP_Employee', 'module', 90, 0),
('9065f776-e89d-e1d7-152c-634e3eb84480', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'AOW_Processed', 'module', 90, 0),
('908c88f9-7a6d-7356-f87e-634e58e5b258', '2022-10-18 07:39:25', '2022-10-18 07:39:25', '1', '1', 'delete', 'SLY_Salaries', 'module', 90, 0),
('919a2679-3b6c-406a-f6f4-634e3e0dc764', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'Leads', 'module', 90, 0),
('92260182-06b3-0317-5f61-634e3e1682b2', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'AOW_Processed', 'module', 90, 0),
('928af680-a74f-f342-0ebf-63889e52c865', '2022-12-01 12:31:04', '2022-12-01 12:31:04', '1', '1', 'edit', 'sh_Salary_History', 'module', 90, 0),
('92fe7c7c-3639-7eab-dcac-63c8df4f04d2', '2023-01-19 06:11:07', '2023-01-19 06:11:07', '1', '1', 'massupdate', 'EMP_Employee', 'module', 90, 0),
('933640f0-60ee-6153-756a-634e3e88a35e', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'AM_ProjectTemplates', 'module', 89, 0),
('936fd2b9-ec5f-bc2e-fbf7-634e3ee5a8e8', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'Leads', 'module', 90, 0),
('937047f9-74e5-9917-fc2b-634e583c3ffa', '2022-10-18 07:39:25', '2022-10-18 07:39:25', '1', '1', 'import', 'SLY_Salaries', 'module', 90, 0),
('93d70f16-3ca1-2f59-f9e1-634e57ec4309', '2022-10-18 07:38:32', '2022-10-18 07:38:32', '1', '1', 'import', 'EMP_Employees', 'module', 90, 0),
('94438c10-0e52-c0a7-8cbe-634e3ebf4225', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'AOW_Processed', 'module', 90, 0),
('94ff512a-f239-5d25-0f47-63889ed62988', '2022-12-01 12:31:04', '2022-12-01 12:31:04', '1', '1', 'delete', 'sh_Salary_History', 'module', 90, 0),
('9524809d-19f9-1347-4b6f-634e3ea0be93', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'AOP_Case_Updates', 'module', 89, 0),
('95d316b9-4586-5bd6-b868-634e3e68ec32', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'Leads', 'module', 90, 0),
('95e6b818-ef5f-087e-8440-634e58c29f41', '2022-10-18 07:39:25', '2022-10-18 07:39:25', '1', '1', 'export', 'SLY_Salaries', 'module', 90, 0),
('960b66f6-3228-89e6-8b4e-634e3e866187', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'AOW_Processed', 'module', 90, 0),
('97d25ec3-dbc4-efc3-a565-634e3e82f12b', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'AM_ProjectTemplates', 'module', 90, 0),
('98122fab-916a-aed2-2453-63889e3fa43b', '2022-12-01 12:31:04', '2022-12-01 12:31:04', '1', '1', 'import', 'sh_Salary_History', 'module', 90, 0),
('982f626a-2198-7f0f-8b00-634e3ec6b66c', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'Leads', 'module', 90, 0),
('9875d0c5-a7c6-c840-e09c-634e58a12e0a', '2022-10-18 07:39:25', '2022-10-18 07:39:25', '1', '1', 'massupdate', 'SLY_Salaries', 'module', 90, 0),
('99146fe5-bda5-c344-419f-634e3e8ca925', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'AOP_Case_Updates', 'module', 90, 0),
('99aca3bd-f6e2-2534-56b5-634e3e83f61d', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'AM_ProjectTemplates', 'module', 90, 0),
('9aa6dd2e-b3a5-91b3-c107-63889e2d6897', '2022-12-01 12:31:04', '2022-12-01 12:31:04', '1', '1', 'export', 'sh_Salary_History', 'module', 90, 0),
('9b248569-cc6d-0d7d-b247-634e3ebbc182', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'AOP_Case_Updates', 'module', 90, 0),
('9bd25269-c098-7429-a133-634e3e47215f', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'AM_ProjectTemplates', 'module', 90, 0),
('9d074bf6-c233-96b2-60de-634e3e68d122', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'AOP_Case_Updates', 'module', 90, 0),
('9d904b33-3073-b1fa-af74-634e3e08e3fa', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'AM_ProjectTemplates', 'module', 90, 0),
('9d945ff3-373f-5d9e-b4ed-63889ec25392', '2022-12-01 12:31:04', '2022-12-01 12:31:04', '1', '1', 'massupdate', 'sh_Salary_History', 'module', 90, 0),
('9ed20a0b-0b21-fc84-920b-634e3e245774', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'AOS_PDF_Templates', 'module', 90, 0),
('9f51397f-ddaf-e47e-a553-634e3e989d82', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'AOP_Case_Updates', 'module', 90, 0),
('9f76424f-c3b2-cd9a-b190-634e3e4cbbb6', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'ProjectTask', 'module', 89, 0),
('a0c60067-847d-dd09-d2b2-634e3eb9539f', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'Calls_Reschedule', 'module', 90, 0),
('a1eadc5f-527c-e2dd-cb66-634e3e485ec2', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'ProjectTask', 'module', 90, 0),
('a1f8db22-cced-8291-e5f5-634e3e622377', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'AOP_Case_Updates', 'module', 90, 0),
('a2c805d2-c12b-b25f-dd85-634e3e3d458a', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'Cases', 'module', 89, 0),
('a36d05df-fdb3-60be-bb8b-634e3e2239ec', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'AOD_Index', 'module', 89, 0),
('a3d6d3bd-5a1f-5583-d31a-634e3e17e5ef', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'AM_ProjectTemplates', 'module', 90, 0),
('a4042d41-5298-c542-21f0-634e3e0d4f0a', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'ProjectTask', 'module', 90, 0),
('a42e0d7b-7698-0e7f-f7c1-634e3e1f3ffc', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'AOP_Case_Updates', 'module', 90, 0),
('a4b8dc8d-a05c-b749-bb66-634e3e8d5066', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'AOD_IndexEvent', 'module', 89, 0),
('a5e09bfe-7457-ca85-dd01-634e3e9d2bd2', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'AM_ProjectTemplates', 'module', 90, 0),
('a618d932-edea-2716-4df5-634e3ec4cb17', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'ProjectTask', 'module', 90, 0),
('a6600702-0872-585c-69c4-634e3e505b99', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'Calls_Reschedule', 'module', 90, 0),
('a69c2008-d70d-4c8b-e699-634e3e33c7af', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'AOP_Case_Updates', 'module', 90, 0),
('a7db6218-9c30-81d0-9c16-634e3efd1b37', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'ProjectTask', 'module', 90, 0),
('a851bd38-ff92-2d5c-b3e9-634e3ece82bf', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'AM_ProjectTemplates', 'module', 90, 0),
('a8706c9f-b4e2-f171-b483-634e3e4f58e9', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'Emails', 'module', 89, 0),
('a8b67b91-5574-ce94-1d82-634e3e378598', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'AOS_Invoices', 'module', 89, 0),
('aa2d99ac-35a4-bc41-c005-634e3e07db5b', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'ProjectTask', 'module', 90, 0),
('aa85b2c2-ce57-8d09-dc98-634e3e9dd0e6', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'Emails', 'module', 90, 0),
('aacf1fa5-da1b-d85b-2673-634e3e112602', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'AOD_IndexEvent', 'module', 90, 0),
('ab3d86ec-87d9-bcd5-dca5-634e3eac87a6', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'AOS_Invoices', 'module', 90, 0),
('ac0ca7e6-5ee3-bf3c-b9be-634e3e23ec8c', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'ProjectTask', 'module', 90, 0),
('ac924db0-1602-7b32-2b8a-634e3eeab4c7', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'Emails', 'module', 90, 0),
('ad28e499-6da4-5bf7-a7ce-634e3ece589b', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'AOD_IndexEvent', 'module', 90, 0),
('addd336d-ecf0-023f-8c64-634e3e403f54', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'AOS_Invoices', 'module', 90, 0),
('ae495ca1-3088-9b03-505a-634e3e7c6f2b', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'ProjectTask', 'module', 90, 0),
('ae7c7889-845d-b234-14c1-634e3e5a7852', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'Emails', 'module', 90, 0),
('aee36972-6e18-52ee-73f8-634e3e9d9cd8', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'AOD_IndexEvent', 'module', 90, 0),
('af8e7263-de06-60e7-ee93-638b35ca2fe2', '2022-12-03 11:41:49', '2022-12-03 11:41:49', '1', '1', 'access', 'pro_Projects', 'module', 89, 0),
('b0037042-03a6-479d-9ff9-634e3ee668e6', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'AOS_Invoices', 'module', 90, 0),
('b0750cbc-0c29-196f-9820-634e3e88fbf0', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'jjwg_Maps', 'module', 90, 0),
('b078de5d-48c5-8705-7c6d-634e3ed05f82', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'Emails', 'module', 90, 0),
('b0a00f13-ce26-9d92-7717-634e3ec781bf', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'AM_TaskTemplates', 'module', 90, 0),
('b0c5eb4f-dbfa-afb5-45bd-634e3e291e98', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'AOD_IndexEvent', 'module', 90, 0),
('b1940be2-10b7-491a-85b2-634e3e2bc97a', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'Meetings', 'module', 90, 0),
('b1c76440-d2a4-9541-75e8-634e3e4f7566', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'AOS_Invoices', 'module', 90, 0),
('b23ded3b-67cb-c841-4bce-634e3e0c9edf', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'Emails', 'module', 90, 0),
('b25f931f-861e-afe6-1dba-634e3e28f3a1', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'AOS_Quotes', 'module', 89, 0),
('b3a8c680-4427-df8e-308d-63884eb052b2', '2022-12-01 06:49:25', '2022-12-01 06:49:25', '1', '1', 'access', 'at_Attentance', 'module', 89, 0),
('b443be33-31f0-d81c-030c-634e3e62602d', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'Emails', 'module', 90, 0),
('b4859bd2-00ce-fce4-5786-634e3e96da1f', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'AOS_Invoices', 'module', 90, 0),
('b4c1cc63-93d9-7a8d-9e78-634e3eecaa76', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'AOD_IndexEvent', 'module', 90, 0),
('b57efeec-a901-0f3c-7bbf-634e3e0e6bf1', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'AOS_Quotes', 'module', 90, 0),
('b6262248-d69b-e8b1-3af3-634e3edfa1de', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'Emails', 'module', 90, 0),
('b66d60e8-e9c7-f89e-4f0d-634e3efb0b3e', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'AOS_Invoices', 'module', 90, 0),
('b67e2497-09a8-a2c6-8be0-634e3ee16062', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'AOD_IndexEvent', 'module', 90, 0),
('b7370794-10db-89a4-9119-634e3eb2d7ea', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'AOR_Reports', 'module', 89, 0),
('b74824f1-7a28-48a8-b399-634e3e0e9f6a', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'AOS_Quotes', 'module', 90, 0),
('b8706ee3-f5ed-e55e-0f85-634e3ee26eab', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'AOS_Products', 'module', 89, 0),
('b8e63a34-1572-543e-556e-634e3e911664', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'AOD_IndexEvent', 'module', 90, 0),
('b941a8cc-a257-ceb5-be6d-634e3ee1ef53', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'AOS_Quotes', 'module', 90, 0),
('b948c2fc-934a-5fa1-a7bc-634e3e9d1a68', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'AOS_Invoices', 'module', 90, 0),
('b9da055a-68d5-b020-d1df-634e3ed2deda', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'AOS_PDF_Templates', 'module', 90, 0),
('ba728691-264a-dd2a-82b6-634e3e901a16', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'AOS_Products', 'module', 90, 0),
('bb07d316-a1c8-d5db-58dd-634e3e09c6c2', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'AOS_Quotes', 'module', 90, 0),
('bba80532-cba0-2f97-9d49-634e3e0d4f45', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'Calls_Reschedule', 'module', 90, 0),
('bcb591a4-9cc1-14a1-92aa-634e3e4d2faa', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'AOS_Products', 'module', 90, 0),
('bd968615-703e-0405-0db3-634e3e67641c', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'AOS_Quotes', 'module', 90, 0),
('bec06224-94bb-5ec0-26e2-634e3e433fe2', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'AOS_Products', 'module', 90, 0),
('bf8c7f4a-7abf-726e-18fc-634e3e5467f7', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'AOS_Quotes', 'module', 90, 0),
('c0c36723-836b-34be-4ace-634e3e1e18f9', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'AOS_Products', 'module', 90, 0),
('c15a12ce-77f0-5e8b-166e-634e3ea8c530', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'AOS_Quotes', 'module', 90, 0),
('c2934d9d-5958-464c-ab46-634e3e92ef15', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'AOS_Products', 'module', 90, 0),
('c4a239da-11bd-2751-0185-634e3e4e9234', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'jjwg_Areas', 'module', 89, 0),
('c4aba78a-e646-d368-8fbf-634e3ee3bfff', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'AOS_Products', 'module', 90, 0),
('c561027c-f81a-cb04-76b1-634e5777dc92', '2022-10-18 07:38:32', '2022-10-18 07:38:32', '1', '1', 'export', 'EMP_Employees', 'module', 90, 0),
('c65f4437-379b-3698-763b-634e3ef92883', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'AOS_Products', 'module', 90, 0),
('c697e0db-0202-b411-8850-638b35812d37', '2022-12-03 11:41:49', '2022-12-03 11:41:49', '1', '1', 'view', 'pro_Projects', 'module', 90, 0),
('c6d91de7-fd0b-0619-0a0c-634e3e8ce61d', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'jjwg_Areas', 'module', 90, 0),
('c6e80131-fb23-7e28-535e-634e3ee16c4a', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'AOD_Index', 'module', 90, 0);
INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('c87f477f-e8a2-de3d-f61a-634e3e95fa24', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'FP_Event_Locations', 'module', 89, 0),
('c8eb4a47-a0f8-6d3c-4932-634e3efc75eb', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'EmailTemplates', 'module', 89, 0),
('c905bb85-7444-4e5e-ab46-634e3e36b478', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'jjwg_Areas', 'module', 90, 0),
('c93607d8-390f-cbeb-062d-638b35636703', '2022-12-03 11:41:49', '2022-12-03 11:41:49', '1', '1', 'list', 'pro_Projects', 'module', 90, 0),
('c95f03ee-32b3-c3fe-6b3a-634e3e5c63dc', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'Cases', 'module', 90, 0),
('c9760d59-0f8e-3ebe-efdc-634e3eb49897', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'AOR_Scheduled_Reports', 'module', 90, 0),
('c986a7d3-fa16-e84a-75d0-634e3e5aaa2a', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'Prospects', 'module', 89, 0),
('ca90e7a2-0f31-2f2e-fdf2-634e3efbe941', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'FP_Event_Locations', 'module', 90, 0),
('caee2c43-fabf-8a66-3a8c-634e3e860888', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'jjwg_Areas', 'module', 90, 0),
('cb15d4c5-96ed-61a0-f693-634e3ee4969f', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'EmailTemplates', 'module', 90, 0),
('cb9a79d4-f8c4-20f0-2770-63884e0fddeb', '2022-12-01 06:49:25', '2022-12-01 06:49:25', '1', '1', 'view', 'at_Attentance', 'module', 90, 0),
('cb9d13d1-5330-5f3c-b005-638b35877f42', '2022-12-03 11:41:49', '2022-12-03 11:41:49', '1', '1', 'edit', 'pro_Projects', 'module', 90, 0),
('cc162edf-1e2b-a2f8-1fc4-634e3e4f448a', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'Prospects', 'module', 90, 0),
('cd0f3e0e-5db5-c8d0-0156-634e3e55f621', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'jjwg_Areas', 'module', 90, 0),
('cd3b99e9-7696-afd8-e3b5-634e3ecfcd2f', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'EmailTemplates', 'module', 90, 0),
('cd795a18-6187-4adb-dc7a-634e3ef56f6a', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'FP_Event_Locations', 'module', 90, 0),
('cddb2fbf-5006-9207-47c2-638b354a2a02', '2022-12-03 11:41:49', '2022-12-03 11:41:49', '1', '1', 'delete', 'pro_Projects', 'module', 90, 0),
('ce1302a5-0e58-479b-209e-634e3e70730c', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'Meetings', 'module', 90, 0),
('ce2ce687-d760-bfcd-4619-63884e24d2bc', '2022-12-01 06:49:25', '2022-12-01 06:49:25', '1', '1', 'list', 'at_Attentance', 'module', 90, 0),
('cea7df66-1b70-ed52-f9ce-634e3edc57b7', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'Prospects', 'module', 90, 0),
('cedaa111-c7c3-74e1-bfc6-634e3e246988', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'Users', 'module', 89, 0),
('cedc7a3e-4980-b7bc-eda0-634e3e526912', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'EmailTemplates', 'module', 90, 0),
('cf33d001-aa88-13a6-bfcb-634e3efed404', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'jjwg_Areas', 'module', 90, 0),
('d02f6860-4dc1-946c-5842-638b35e7204a', '2022-12-03 11:41:49', '2022-12-03 11:41:49', '1', '1', 'import', 'pro_Projects', 'module', 90, 0),
('d089210c-5c69-940b-3133-634e3e44e9ac', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'EmailTemplates', 'module', 90, 0),
('d0b61e00-9dfe-ead2-f270-634e3ecac928', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'Users', 'module', 90, 0),
('d0bd5a6d-a938-6680-f413-634e3e9ec507', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'Prospects', 'module', 90, 0),
('d1023a6f-c846-97db-3137-634e3ecc365c', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'FP_Event_Locations', 'module', 90, 0),
('d1125b2b-91a8-0121-4fa4-63884e09750d', '2022-12-01 06:49:25', '2022-12-01 06:49:25', '1', '1', 'edit', 'at_Attentance', 'module', 90, 0),
('d188033e-0e13-3796-77f4-634e3e4c5265', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'Accounts', 'module', 89, 0),
('d1ad03b7-03dd-f0c4-d52a-634e3e0432a5', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'jjwg_Areas', 'module', 90, 0),
('d22d8b73-5644-5ec2-ddf1-634e3e66c6b5', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'EmailTemplates', 'module', 90, 0),
('d25af089-4525-4a18-b799-634e3e797cc5', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'Users', 'module', 90, 0),
('d26271a0-3397-b9a6-7f42-634e3e22e036', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'AOR_Scheduled_Reports', 'module', 89, 0),
('d292e78e-7321-d471-0949-638b35a720a4', '2022-12-03 11:41:49', '2022-12-03 11:41:49', '1', '1', 'export', 'pro_Projects', 'module', 90, 0),
('d2987b48-a5c6-f4fe-a71e-634e3ea6a816', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'Prospects', 'module', 90, 0),
('d33c2501-2e16-1dc2-819b-634e3e5c7bb4', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'FP_Event_Locations', 'module', 90, 0),
('d37d6876-9080-dbef-b57f-634e3e976cc2', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'Accounts', 'module', 90, 0),
('d3ad3916-369d-2b25-886b-63884e84bf90', '2022-12-01 06:49:25', '2022-12-01 06:49:25', '1', '1', 'delete', 'at_Attentance', 'module', 90, 0),
('d3f8e4cc-95e8-63b9-eefe-634e3ebb419f', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'jjwg_Areas', 'module', 90, 0),
('d3fcfbdc-d19c-9333-3a08-634e3e86aa0c', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'EmailTemplates', 'module', 90, 0),
('d421d673-3a90-5480-a922-634e3e8ebaff', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'Users', 'module', 90, 0),
('d440b94b-7a3f-2ba3-fa18-634e3ec74f03', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'Prospects', 'module', 90, 0),
('d4cc150a-1123-f8e1-37ea-634e3ecd03b6', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'AOR_Scheduled_Reports', 'module', 90, 0),
('d52f018b-3909-59be-5f0b-634e3e97c222', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'jjwg_Maps', 'module', 90, 0),
('d5504016-f075-3558-8338-638b35ef7e3d', '2022-12-03 11:41:49', '2022-12-03 11:41:49', '1', '1', 'massupdate', 'pro_Projects', 'module', 90, 0),
('d55dc033-179f-56eb-94de-634e3e5f9999', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'FP_Event_Locations', 'module', 90, 0),
('d6001298-8a77-c49b-833c-634e3e4373b3', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'Accounts', 'module', 90, 0),
('d6410af9-b3c1-6e68-c807-63884e6111fe', '2022-12-01 06:49:25', '2022-12-01 06:49:25', '1', '1', 'import', 'at_Attentance', 'module', 90, 0),
('d645390e-931e-0cf4-2b28-634e3ee38916', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'EmailTemplates', 'module', 90, 0),
('d6587d77-4bef-307e-84b1-634e3e5b6f79', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'Users', 'module', 90, 0),
('d6a737d0-bb1e-b0f2-21d2-634e3eaac357', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'Prospects', 'module', 90, 0),
('d6cf0ede-a527-0b31-7883-634e3e80a5a7', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'AOR_Scheduled_Reports', 'module', 90, 0),
('d7b4a277-5a98-b95f-1c6c-634e3ecceea1', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'Accounts', 'module', 90, 0),
('d81a30f1-6347-6ae6-6faf-634e3efae53e', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'Users', 'module', 90, 0),
('d83dae76-d813-b064-14d0-634e3e01a28e', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'FP_Event_Locations', 'module', 90, 0),
('d85b0a41-6793-fe27-1565-634e3e3fb912', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'Prospects', 'module', 90, 0),
('d8bec745-ad54-862a-e4c5-63884e47b3b3', '2022-12-01 06:49:25', '2022-12-01 06:49:25', '1', '1', 'export', 'at_Attentance', 'module', 90, 0),
('d9ec7f0f-93d3-a6a6-b29e-634e3e146a75', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'Accounts', 'module', 90, 0),
('da0d0316-92e3-a448-1a29-634e3e3d8166', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'AOS_PDF_Templates', 'module', 90, 0),
('da31d079-d28f-b145-cc6f-634e3e45455d', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'Users', 'module', 90, 0),
('da5c01bd-5eda-8054-5655-634e3e8dec7c', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'Calls_Reschedule', 'module', 90, 0),
('da79cf25-6b02-84aa-281a-634e3ebb0522', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'FP_Event_Locations', 'module', 90, 0),
('db368ac8-c74b-fd0d-1757-634e3e7bf36f', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'Documents', 'module', 89, 0),
('db619b7e-481c-df53-9255-63884e2d161d', '2022-12-01 06:49:25', '2022-12-01 06:49:25', '1', '1', 'massupdate', 'at_Attentance', 'module', 90, 0),
('dbc3e4da-839b-022e-829d-634e3e230990', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'Accounts', 'module', 90, 0),
('dbf1156b-ea3a-1b6a-b71b-634e3e2c6c01', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'Users', 'module', 90, 0),
('de3e0544-669e-9712-afdf-634e3eedca21', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'Documents', 'module', 90, 0),
('de554e4c-58fe-16a6-b10e-634e3e447902', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'Accounts', 'module', 90, 0),
('de9e9d4f-00b6-7fef-76d0-634e57f5c825', '2022-10-18 07:38:32', '2022-10-18 07:38:32', '1', '1', 'access', 'EMP_Employees', 'module', 89, 0),
('e00e3829-ead7-a4bc-2805-634e3e2aef8f', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'Accounts', 'module', 90, 0),
('e07c5a65-654e-5984-d9ee-634e3ed86044', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'Documents', 'module', 90, 0),
('e22d0913-5948-f972-cb26-634e3e018b51', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'AOR_Reports', 'module', 90, 0),
('e27f3ea4-573c-c36d-3d37-634e3e681198', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'Documents', 'module', 90, 0),
('e4c4b2c3-3632-3cab-4936-634e3e5086bd', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'Documents', 'module', 90, 0),
('e64c0b60-105f-8bfb-3eaf-634e3edc1ab1', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'Campaigns', 'module', 89, 0),
('e6df0628-e84d-d0b9-0e9d-634e3e7b93ee', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'AM_TaskTemplates', 'module', 89, 0),
('e6e4da40-9aa9-7e25-1edd-634e3e00f83e', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'Documents', 'module', 90, 0),
('e75d0132-1b01-21c6-4b35-634e3e87bef2', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'AOD_Index', 'module', 90, 0),
('e88e709e-cc68-8e29-a255-634e3ee58df7', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'export', 'Documents', 'module', 90, 0),
('e9e74fa7-7cd3-66a1-2743-634e3e8689d0', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'AM_TaskTemplates', 'module', 90, 0),
('ea3ad53c-a5ae-4c73-5826-634e3e24bf6c', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'Documents', 'module', 90, 0),
('ea5a0ac8-febe-cde4-4460-634e3ebf96bd', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'Meetings', 'module', 90, 0),
('ebfca40b-36b7-86ab-7a05-634e3e1a176f', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'AM_TaskTemplates', 'module', 90, 0),
('ec5806b9-b864-ef6a-9b1b-634e3e38d0ef', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'Cases', 'module', 90, 0),
('ee6151aa-a311-ab09-0fe9-634e3e4dced3', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'edit', 'AM_TaskTemplates', 'module', 90, 0),
('ef8f456d-70c4-b56c-a756-634e3e1dc63a', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'jjwg_Maps', 'module', 89, 0),
('f06e3b9b-c7d5-7c91-3b82-634e3eb48e40', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'delete', 'AM_TaskTemplates', 'module', 90, 0),
('f245e9d6-0254-c096-2c41-634e3eb129dd', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'view', 'jjwg_Maps', 'module', 90, 0),
('f2498d8e-c6d1-0f03-515f-634e57d52879', '2022-10-18 07:38:32', '2022-10-18 07:38:32', '1', '1', 'view', 'EMP_Employees', 'module', 90, 0),
('f2bb8aaa-20e2-6d83-e00a-634e3e3826c5', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'import', 'AM_TaskTemplates', 'module', 90, 0),
('f2e431ad-ad93-eb90-cd0f-634e3e5589c6', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'access', 'Calls_Reschedule', 'module', 89, 0),
('f52b0db5-1ca9-269e-9dda-634e3e3c43af', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'massupdate', 'AOS_PDF_Templates', 'module', 90, 0),
('fec3076b-bd69-5a1b-32df-634e3e5e0b4d', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '', 'list', 'AOR_Reports', 'module', 90, 0);

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles`
--

CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl_roles`
--

INSERT INTO `acl_roles` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `description`, `deleted`) VALUES
('46f0b097-365e-001e-94fe-63d7b914542e', '2023-01-30 12:35:41', '2023-01-30 14:05:20', '1', '1', 'Administration', NULL, 0),
('6107ef79-7840-b925-6480-6350e837e5cc', '2022-10-20 06:20:19', '2023-01-30 12:34:55', '1', '1', 'Admin', '', 1),
('7260c339-879b-2705-c43b-6350e86a6956', '2022-10-20 06:21:32', '2023-01-30 12:34:55', '1', '1', 'Accounts', '', 1),
('c2012072-6d7a-c77d-e70f-63d7b9315945', '2023-01-30 12:36:04', '2023-01-30 12:36:04', '1', '1', 'Employee', '', 0),
('d75eee8c-8c5e-606e-404e-6350e95ca92d', '2022-10-20 06:22:07', '2023-01-30 12:34:55', '1', '1', 'Employees', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles_actions`
--

CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl_roles_actions`
--

INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('10734c73-7e0e-9757-d63c-63d7cf489db4', '46f0b097-365e-001e-94fe-63d7b914542e', 'a6600702-0872-585c-69c4-634e3e505b99', 0, '2023-01-30 14:09:02', 0),
('10ddaf5e-de08-b5a7-34f7-63d7cf3c5879', '46f0b097-365e-001e-94fe-63d7b914542e', '64d423d8-3085-36dd-8240-634e3ef48b77', 0, '2023-01-30 14:09:02', 0),
('1158cd5b-0db1-5c58-8d0f-63d7cfaf7ffb', '46f0b097-365e-001e-94fe-63d7b914542e', 'e64c0b60-105f-8bfb-3eaf-634e3edc1ab1', 0, '2023-01-30 14:09:02', 0),
('11c3dcf6-9065-7999-41dd-63d7cf65f704', '46f0b097-365e-001e-94fe-63d7b914542e', '6d420d5c-5869-8582-3e6f-634e3e8bea1b', 0, '2023-01-30 14:09:02', 0),
('11f00fed-6998-24a7-8feb-63d7cf06f7e5', '46f0b097-365e-001e-94fe-63d7b914542e', '16d80e2c-eaa0-d5eb-24a5-634e3ec85f43', 0, '2023-01-30 14:09:02', 0),
('12cc1d7f-640d-1322-148a-63d7cf908cbc', '46f0b097-365e-001e-94fe-63d7b914542e', '15a43f4b-0ff3-2182-1e07-634e3edac186', 0, '2023-01-30 14:09:02', 0),
('12fe265a-c3d1-03ce-57c2-63d7cf6bbcb2', '46f0b097-365e-001e-94fe-63d7b914542e', '6b74fb7c-7412-b86a-a79f-634e3eadbb7e', 0, '2023-01-30 14:09:02', 0),
('139302ea-24f8-c0ce-4cc8-63d7cfef73c0', '46f0b097-365e-001e-94fe-63d7b914542e', '65ef96e5-7b00-32df-1543-634e3e9a01a6', 0, '2023-01-30 14:09:02', 0),
('13b20faf-bb9e-f774-16b9-63d7cf8bac5e', '46f0b097-365e-001e-94fe-63d7b914542e', '140f5a4f-e9d9-46ab-e5bc-634e3e3aad5c', 0, '2023-01-30 14:09:02', 0),
('13e43db4-8dc2-0945-ae40-63d7cfc139d3', '46f0b097-365e-001e-94fe-63d7b914542e', '71692206-be30-1712-5c45-634e3ed60168', 0, '2023-01-30 14:09:02', 0),
('14c7bedd-e8d6-d2af-0d73-63d7cfef3e46', '46f0b097-365e-001e-94fe-63d7b914542e', '6fb4c9f4-2f4a-4f75-7afc-634e3ed7a550', 0, '2023-01-30 14:09:02', 0),
('14e5890e-aba9-6d7d-6b79-63d7cf07a8d7', '46f0b097-365e-001e-94fe-63d7b914542e', '19986c36-f005-47f5-78f9-634e3e370c71', 0, '2023-01-30 14:09:02', 0),
('15d0c601-2b19-3121-71bf-63d7cf71df4b', '46f0b097-365e-001e-94fe-63d7b914542e', '6960d70a-72ea-d5b0-e820-634e3e6fdb17', 0, '2023-01-30 14:09:02', 0),
('15f5ecb4-eec2-7e8a-7e71-63d7cfd1fe25', '46f0b097-365e-001e-94fe-63d7b914542e', '17920609-5921-04a6-4419-634e3e1161f2', 0, '2023-01-30 14:09:02', 0),
('16b75157-0cc1-a224-bff0-63d7cf744221', '46f0b097-365e-001e-94fe-63d7b914542e', '73b48d88-ba55-c328-450d-634e3e7b45c1', 0, '2023-01-30 14:09:02', 0),
('170e09c3-db19-7821-7bf5-63d7cfe62b8d', '46f0b097-365e-001e-94fe-63d7b914542e', '12415892-18f7-3142-750a-634e3e84f8d4', 0, '2023-01-30 14:09:02', 0),
('179fc739-711a-3f7a-a789-63d7cfc9722c', '46f0b097-365e-001e-94fe-63d7b914542e', '67a56147-fbbd-ee5f-cb37-634e3e03875d', 0, '2023-01-30 14:09:02', 0),
('1877485e-a197-15cd-21d6-63d7cf08940c', '46f0b097-365e-001e-94fe-63d7b914542e', '1bb37f57-44c7-3e2a-b71a-634e3eac91f2', 0, '2023-01-30 14:09:02', 0),
('18e01524-0761-9ddb-1a25-63d7cf652a08', '46f0b097-365e-001e-94fe-63d7b914542e', 'b8706ee3-f5ed-e55e-0f85-634e3ee26eab', 0, '2023-01-30 14:09:02', 0),
('198d7474-a398-274d-67e1-63d7cf70ef64', '46f0b097-365e-001e-94fe-63d7b914542e', '1059f3ba-909f-e05b-6e3b-634e3ef6c444', 0, '2023-01-30 14:09:02', 0),
('19c679fb-fa24-7e5c-df16-63d7cf8a3d4d', '46f0b097-365e-001e-94fe-63d7b914542e', 'c0c36723-836b-34be-4ace-634e3e1e18f9', 0, '2023-01-30 14:09:02', 0),
('1aa1d3ff-6601-c701-af76-63d7cf978439', '46f0b097-365e-001e-94fe-63d7b914542e', '26de61d6-1460-7fc5-ac3b-634e3ef1ed3d', 0, '2023-01-30 14:09:02', 0),
('1aae5146-e41b-032b-828e-63d7cf873ee4', '46f0b097-365e-001e-94fe-63d7b914542e', 'bec06224-94bb-5ec0-26e2-634e3e433fe2', 0, '2023-01-30 14:09:02', 0),
('1b94551d-0624-2888-e427-63d7cf59c3a5', '46f0b097-365e-001e-94fe-63d7b914542e', 'c4aba78a-e646-d368-8fbf-634e3ee3bfff', 0, '2023-01-30 14:09:02', 0),
('1bb6c4c3-90e0-9d33-5656-63d7cf18b3d8', '46f0b097-365e-001e-94fe-63d7b914542e', '33e96197-f59f-0e8e-5c26-634e3eb814e5', 0, '2023-01-30 14:09:02', 0),
('1c7a945b-9729-654b-1947-63d7cf46d56b', '46f0b097-365e-001e-94fe-63d7b914542e', 'c2934d9d-5958-464c-ab46-634e3e92ef15', 0, '2023-01-30 14:09:02', 0),
('1cd1ca76-815e-9aa0-3f6d-63d7cf0f1e8e', '46f0b097-365e-001e-94fe-63d7b914542e', '2daab6c2-3654-2f78-f977-634e3ecc1691', 0, '2023-01-30 14:09:02', 0),
('1d831527-9430-ae9f-66e6-63d7cfa77f5d', '46f0b097-365e-001e-94fe-63d7b914542e', 'bcb591a4-9cc1-14a1-92aa-634e3e4d2faa', 0, '2023-01-30 14:09:02', 0),
('1e06b66b-b520-7adc-7f16-63d7cfa3ea8f', '46f0b097-365e-001e-94fe-63d7b914542e', '38030a70-fb8c-21f9-12f5-634e3e78086a', 0, '2023-01-30 14:09:02', 0),
('1e6994f4-281f-daab-f95e-63d7cf4addb2', '46f0b097-365e-001e-94fe-63d7b914542e', 'c65f4437-379b-3698-763b-634e3ef92883', 0, '2023-01-30 14:09:02', 0),
('1f506e84-7c7b-ad9a-6cac-63d7cfcb84c6', '46f0b097-365e-001e-94fe-63d7b914542e', 'ba728691-264a-dd2a-82b6-634e3e901a16', 0, '2023-01-30 14:09:02', 0),
('1f7b5021-6d2b-2325-4848-63d7cf8cfbe1', '46f0b097-365e-001e-94fe-63d7b914542e', '360ef09e-a996-24e7-b982-634e3ebc0b69', 0, '2023-01-30 14:09:02', 0),
('20376dc3-246a-5976-ba71-63d7cf7aad60', '46f0b097-365e-001e-94fe-63d7b914542e', '4b12964a-3859-3423-9868-634e3e98ae27', 0, '2023-01-30 14:09:02', 0),
('2060c6a3-96eb-bfe2-a8f8-63d7cf6db855', '46f0b097-365e-001e-94fe-63d7b914542e', '2b7dbb78-b5e4-9561-a6ec-634e3ef434a2', 0, '2023-01-30 14:09:02', 0),
('211f0cdd-8779-2b8a-b8bb-63d7cf66a5c0', '46f0b097-365e-001e-94fe-63d7b914542e', '5bd1ef82-fc9b-bd92-3595-634e3ed3aaa9', 0, '2023-01-30 14:09:02', 0),
('21767d98-7ff2-4811-f5fc-63d7cf93c9a1', '46f0b097-365e-001e-94fe-63d7b914542e', '3b7faacf-ea82-5eda-3048-634e3ebebbdf', 0, '2023-01-30 14:09:02', 0),
('22076ca9-6532-1294-a285-63d7cf935de8', '46f0b097-365e-001e-94fe-63d7b914542e', '59ca31e6-780e-b1af-53a5-634e3ed1926b', 0, '2023-01-30 14:09:02', 0),
('22889f5e-6426-1119-02a3-63d7cf2b4206', '46f0b097-365e-001e-94fe-63d7b914542e', '294abce9-1560-c7ba-80f3-634e3e547dd2', 0, '2023-01-30 14:09:02', 0),
('23402bdb-4921-3482-c8fc-63d7cfbcdbac', '46f0b097-365e-001e-94fe-63d7b914542e', '6056837b-ca12-2384-1ece-634e3efa1d6d', 0, '2023-01-30 14:09:02', 0),
('236e116f-e793-69cd-2c86-63d7cf4cdc64', '46f0b097-365e-001e-94fe-63d7b914542e', '9524809d-19f9-1347-4b6f-634e3ea0be93', 0, '2023-01-30 14:09:02', 0),
('24256407-f339-5317-5ab0-63d7cf9dffac', '46f0b097-365e-001e-94fe-63d7b914542e', '5e5fb604-f55d-06ef-a421-634e3e74a37b', 0, '2023-01-30 14:09:02', 0),
('2453971b-f06f-ba9d-d35f-63d7cfb4a33b', '46f0b097-365e-001e-94fe-63d7b914542e', '9f51397f-ddaf-e47e-a553-634e3e989d82', 0, '2023-01-30 14:09:02', 0),
('24800bdb-9e66-2d55-8829-63d7cf430a4e', '46f0b097-365e-001e-94fe-63d7b914542e', '5e1cb53c-7460-3b94-73ac-634e3eee79c8', 0, '2023-01-30 14:09:02', 0),
('24ea0461-9802-67a3-65ee-63d7cf98882f', '46f0b097-365e-001e-94fe-63d7b914542e', '6431d98f-f186-f5ae-2191-634e3e9097c5', 0, '2023-01-30 14:09:02', 0),
('252e493d-1235-acf4-6ffa-63d7cf515681', '46f0b097-365e-001e-94fe-63d7b914542e', '56579d67-f041-8af2-d87d-634e3e9d041a', 0, '2023-01-30 14:09:02', 0),
('2548038a-747e-2b1b-051e-63d7cfad873b', '46f0b097-365e-001e-94fe-63d7b914542e', '9ed20a0b-0b21-fc84-920b-634e3e245774', 0, '2023-01-30 14:09:02', 0),
('25ccffa6-f7fa-4961-3589-63d7cf00651e', '46f0b097-365e-001e-94fe-63d7b914542e', '9d074bf6-c233-96b2-60de-634e3e68d122', 0, '2023-01-30 14:09:02', 0),
('26db7265-bfaf-37db-46ee-63d7cf1c2856', '46f0b097-365e-001e-94fe-63d7b914542e', '628f68ef-5560-1ac8-91a0-634e3ef1b753', 0, '2023-01-30 14:09:02', 0),
('26ffc73e-9945-bac3-6196-63d7cfd649f9', '46f0b097-365e-001e-94fe-63d7b914542e', 'a42e0d7b-7698-0e7f-f7c1-634e3e1f3ffc', 0, '2023-01-30 14:09:02', 0),
('27e0071b-85df-6328-db84-63d7cfe02e49', '46f0b097-365e-001e-94fe-63d7b914542e', '754aadbd-76eb-8cce-be4c-634e3eee80d4', 0, '2023-01-30 14:09:02', 0),
('27e930d1-5d59-e2b2-c958-63d7cfec2ccb', '46f0b097-365e-001e-94fe-63d7b914542e', 'a1f8db22-cced-8291-e5f5-634e3e622377', 0, '2023-01-30 14:09:02', 0),
('28153156-ba55-bd50-58c2-63d7cf9ce87d', '46f0b097-365e-001e-94fe-63d7b914542e', '4ef0183e-d35e-ae64-d5b4-634e3e3a6353', 0, '2023-01-30 14:09:02', 0),
('28cded4c-bb08-c707-607a-63d7cf158dbc', '46f0b097-365e-001e-94fe-63d7b914542e', '9b248569-cc6d-0d7d-b247-634e3ebbc182', 0, '2023-01-30 14:09:02', 0),
('28fbfeaf-808b-946f-76d0-63d7cf310a9f', '46f0b097-365e-001e-94fe-63d7b914542e', 'e6df0628-e84d-d0b9-0e9d-634e3e7b93ee', 0, '2023-01-30 14:09:02', 0),
('29b24112-70fd-3c3a-0dee-63d7cf424c30', '46f0b097-365e-001e-94fe-63d7b914542e', 'a69c2008-d70d-4c8b-e699-634e3e33c7af', 0, '2023-01-30 14:09:02', 0),
('29e25bb3-0aff-7083-50ad-63d7cf7226b2', '46f0b097-365e-001e-94fe-63d7b914542e', 'f06e3b9b-c7d5-7c91-3b82-634e3eb48e40', 0, '2023-01-30 14:09:02', 0),
('2a979535-e7db-7cda-78a0-63d7cfa19660', '46f0b097-365e-001e-94fe-63d7b914542e', '99146fe5-bda5-c344-419f-634e3e8ca925', 0, '2023-01-30 14:09:02', 0),
('2ae998dd-bf97-3446-fb84-63d7cfacf88c', '46f0b097-365e-001e-94fe-63d7b914542e', 'ee6151aa-a311-ab09-0fe9-634e3e4dced3', 0, '2023-01-30 14:09:02', 0),
('2b76c7ec-2d5e-e3f0-4362-63d7cf90cef6', '46f0b097-365e-001e-94fe-63d7b914542e', 'a2c805d2-c12b-b25f-dd85-634e3e3d458a', 0, '2023-01-30 14:09:02', 0),
('2bd09188-a02d-b36d-e7c3-63d7cf314931', '46f0b097-365e-001e-94fe-63d7b914542e', 'b0a00f13-ce26-9d92-7717-634e3ec781bf', 0, '2023-01-30 14:09:02', 0),
('2c5b8491-44d7-223e-f8bd-63d7cf1f1d7c', '46f0b097-365e-001e-94fe-63d7b914542e', '12d15687-75eb-88b0-5c84-634e3efb5c0d', 0, '2023-01-30 14:09:02', 0),
('2cb76133-626b-9680-9e95-63d7cfc0384e', '46f0b097-365e-001e-94fe-63d7b914542e', 'f2bb8aaa-20e2-6d83-e00a-634e3e3826c5', 0, '2023-01-30 14:09:02', 0),
('2d40869e-a28d-7fa8-a836-63d7cffee392', '46f0b097-365e-001e-94fe-63d7b914542e', '10ab1795-ed84-2e57-fcc7-634e3ecb3f51', 0, '2023-01-30 14:09:02', 0),
('2dfa1c40-b9eb-6513-a5af-63d7cf3ed0ec', '46f0b097-365e-001e-94fe-63d7b914542e', 'ebfca40b-36b7-86ab-7a05-634e3e1a176f', 0, '2023-01-30 14:09:02', 0),
('2e442230-ce12-4424-b843-63d7cfa71130', '46f0b097-365e-001e-94fe-63d7b914542e', '16ccd798-692b-2188-6158-634e3e4ef69f', 0, '2023-01-30 14:09:02', 0),
('2ee6a13d-c643-98a5-01d5-63d7cfc099e5', '46f0b097-365e-001e-94fe-63d7b914542e', '3aad0fab-9b5d-be15-1c7b-634e3e6cca6d', 0, '2023-01-30 14:09:02', 0),
('2f2989e4-ad1c-eb9c-92d4-63d7cfa3fc83', '46f0b097-365e-001e-94fe-63d7b914542e', '147d9ce9-443c-f156-1049-634e3ec3cb12', 0, '2023-01-30 14:09:02', 0),
('2fcd0107-4cdc-6dd5-f30b-63d7cf861770', '46f0b097-365e-001e-94fe-63d7b914542e', 'e9e74fa7-7cd3-66a1-2743-634e3e8689d0', 0, '2023-01-30 14:09:02', 0),
('305e7a20-8343-657f-b3c1-63d7cf63b14c', '46f0b097-365e-001e-94fe-63d7b914542e', 'ec5806b9-b864-ef6a-9b1b-634e3e38d0ef', 0, '2023-01-30 14:09:02', 0),
('30c64711-e269-285f-2b62-63d7cfcc5ae9', '46f0b097-365e-001e-94fe-63d7b914542e', '9f76424f-c3b2-cd9a-b190-634e3e4cbbb6', 0, '2023-01-30 14:09:02', 0),
('31445905-9f0f-9d2a-dac0-63d7cf5dcf0a', '46f0b097-365e-001e-94fe-63d7b914542e', '189f76c8-aaa4-4b30-f7e0-634e3eea5a16', 0, '2023-01-30 14:09:02', 0),
('31a985ec-0fc6-2860-3a00-63d7cf70c59b', '46f0b097-365e-001e-94fe-63d7b914542e', 'a7db6218-9c30-81d0-9c16-634e3efd1b37', 0, '2023-01-30 14:09:02', 0),
('3223a634-9a9f-7a92-be33-63d7cf42b77c', '46f0b097-365e-001e-94fe-63d7b914542e', 'c95f03ee-32b3-c3fe-6b3a-634e3e5c63dc', 0, '2023-01-30 14:09:02', 0),
('32ff857f-dc72-878f-5aa8-63d7cf2d6f95', '46f0b097-365e-001e-94fe-63d7b914542e', 'a618d932-edea-2716-4df5-634e3ec4cb17', 0, '2023-01-30 14:09:02', 0),
('33067d02-76f6-327e-3c64-63d7cf2dcb7a', '46f0b097-365e-001e-94fe-63d7b914542e', '6404c608-54b5-9bb8-cb2b-634e3e90f38e', 0, '2023-01-30 14:09:02', 0),
('33390a08-fd9a-c2f7-1e35-63d7cffddb8d', '46f0b097-365e-001e-94fe-63d7b914542e', '69b365a0-f827-c449-0fce-634e3e9cd263', 0, '2023-01-30 14:09:02', 0),
('33b30488-c32b-5613-85c3-63d7cfcaaba3', '46f0b097-365e-001e-94fe-63d7b914542e', '79c90f75-a77f-73d5-c3da-634e3e7d749a', 0, '2023-01-30 14:09:02', 0),
('33eb6153-a02c-d2da-30e8-63d7cf468f6c', '46f0b097-365e-001e-94fe-63d7b914542e', '6dace313-8b60-ea42-99f3-634e3eeea6f7', 0, '2023-01-30 14:09:02', 0),
('34bf95b0-cb91-59c5-2001-63d7cf6113cd', '46f0b097-365e-001e-94fe-63d7b914542e', 'ac0ca7e6-5ee3-bf3c-b9be-634e3e23ec8c', 0, '2023-01-30 14:09:02', 0),
('34eaa0d1-85bb-21c5-2443-63d7cf5c0591', '46f0b097-365e-001e-94fe-63d7b914542e', '6b66d3e6-3f71-3acb-cd08-634e3e1f9e87', 0, '2023-01-30 14:09:02', 0),
('35a7d386-412e-d056-ab7b-63d7cff78cd3', '46f0b097-365e-001e-94fe-63d7b914542e', 'aa2d99ac-35a4-bc41-c005-634e3e07db5b', 0, '2023-01-30 14:09:02', 0),
('362bb3f2-00aa-1ea1-6ef8-63d7cf1ec104', '46f0b097-365e-001e-94fe-63d7b914542e', '71ebdc56-8f06-b1f7-27bb-634e3e6923f2', 0, '2023-01-30 14:09:02', 0),
('368c9091-aa56-9896-7511-63d7cffeaba0', '46f0b097-365e-001e-94fe-63d7b914542e', 'a4042d41-5298-c542-21f0-634e3e0d4f0a', 0, '2023-01-30 14:09:02', 0),
('3710e35d-a470-5db3-a046-63d7cf0f4123', '46f0b097-365e-001e-94fe-63d7b914542e', '702d34d3-5d7c-2c3c-1408-634e3e03ada3', 0, '2023-01-30 14:09:02', 0),
('3774f435-c179-8451-57cc-63d7cf88da60', '46f0b097-365e-001e-94fe-63d7b914542e', 'ae495ca1-3088-9b03-505a-634e3e7c6f2b', 0, '2023-01-30 14:09:02', 0),
('37f66346-8ab3-00ea-3c19-63d7cfd336d4', '46f0b097-365e-001e-94fe-63d7b914542e', '6966ebb8-913b-f8e5-c0bc-634e3e00bf08', 0, '2023-01-30 14:09:02', 0),
('385c3145-cdb1-4f0e-c606-63d7cfb82bfd', '46f0b097-365e-001e-94fe-63d7b914542e', 'a1eadc5f-527c-e2dd-cb66-634e3e485ec2', 0, '2023-01-30 14:09:02', 0),
('38d94a95-8483-24c6-40d1-63d7cfc99ef8', '46f0b097-365e-001e-94fe-63d7b914542e', '7494fa38-6f6e-7f3f-8266-634e3ea7fa12', 0, '2023-01-30 14:09:02', 0),
('399599a7-489b-4b39-a6fe-63d7cf487006', '46f0b097-365e-001e-94fe-63d7b914542e', '933640f0-60ee-6153-756a-634e3e88a35e', 0, '2023-01-30 14:09:02', 0),
('39be280a-85fc-3d26-936b-63d7cfdea977', '46f0b097-365e-001e-94fe-63d7b914542e', '673149f8-7157-cb06-a578-634e3e21ae3e', 0, '2023-01-30 14:09:02', 0),
('3a8e22e2-8536-5aec-d8c1-63d7cf0538a9', '46f0b097-365e-001e-94fe-63d7b914542e', '9d904b33-3073-b1fa-af74-634e3e08e3fa', 0, '2023-01-30 14:09:02', 0),
('3aa3e359-2dd4-a96c-7564-63d7cfcdb82a', '46f0b097-365e-001e-94fe-63d7b914542e', '5b083109-f8cf-d7df-ff69-634e3e155fb2', 0, '2023-01-30 14:09:02', 0),
('3b7355f1-ca79-cb2d-a427-63d7cfbca387', '46f0b097-365e-001e-94fe-63d7b914542e', '9bd25269-c098-7429-a133-634e3e47215f', 0, '2023-01-30 14:09:02', 0),
('3bd7be03-46b6-f07f-c926-63d7cf02cf5d', '46f0b097-365e-001e-94fe-63d7b914542e', '62c06a28-8e2b-3835-1a5b-634e3e7849d3', 0, '2023-01-30 14:09:02', 0),
('3c56c3c5-2e36-6269-03df-63d7cfe8bb18', '46f0b097-365e-001e-94fe-63d7b914542e', 'a5e09bfe-7457-ca85-dd01-634e3e9d2bd2', 0, '2023-01-30 14:09:02', 0),
('3ce1326a-4e27-c9ba-8c85-63d7cff6a8bb', '46f0b097-365e-001e-94fe-63d7b914542e', '60c0124e-b849-06ee-bb0f-634e3e84f9be', 0, '2023-01-30 14:09:02', 0),
('3d341a00-3f9a-1702-bf4e-63d7cffac0ce', '46f0b097-365e-001e-94fe-63d7b914542e', 'a3d6d3bd-5a1f-5583-d31a-634e3e17e5ef', 0, '2023-01-30 14:09:02', 0),
('3dc409ab-c011-0b6e-2996-63d7cf8f7ee5', '46f0b097-365e-001e-94fe-63d7b914542e', '66641a06-8f76-6e5a-7ad2-634e3e2bf63a', 0, '2023-01-30 14:09:02', 0),
('3e6c47b6-d7b5-2461-4d36-63d7cf8e4d1e', '46f0b097-365e-001e-94fe-63d7b914542e', '99aca3bd-f6e2-2534-56b5-634e3e83f61d', 0, '2023-01-30 14:09:02', 0),
('3eaa85a8-5892-59cd-77f5-63d7cf718a69', '46f0b097-365e-001e-94fe-63d7b914542e', '64a0ad88-cba0-059a-b15c-634e3e4fff64', 0, '2023-01-30 14:09:02', 0),
('3f8fc8c6-e2ed-af73-22a4-63d7cf9702ba', '46f0b097-365e-001e-94fe-63d7b914542e', '5f3632e0-f20d-72eb-2b1d-634e3ec12532', 0, '2023-01-30 14:09:02', 0),
('3fa78ea7-4ec5-eab6-7c9b-63d7cfce72c9', '46f0b097-365e-001e-94fe-63d7b914542e', 'a851bd38-ff92-2d5c-b3e9-634e3ece82bf', 0, '2023-01-30 14:09:02', 0),
('408bf652-a596-e693-8b96-63d7cfec6bf9', '46f0b097-365e-001e-94fe-63d7b914542e', '97d25ec3-dbc4-efc3-a565-634e3e82f12b', 0, '2023-01-30 14:09:02', 0),
('40cb82a9-eb72-4523-2d5a-63d7cf614773', '46f0b097-365e-001e-94fe-63d7b914542e', '685e392b-c3f8-2f62-64b3-634e3e15d7d6', 0, '2023-01-30 14:09:02', 0),
('4172586c-0093-fdad-9b43-63d7cf0abbc3', '46f0b097-365e-001e-94fe-63d7b914542e', 'af8e7263-de06-60e7-ee93-638b35ca2fe2', 89, '2023-01-30 14:09:02', 0),
('41b0ed5e-a712-d5e3-41e7-63d7cf2d7324', '46f0b097-365e-001e-94fe-63d7b914542e', '5d2b3aa8-30ce-be24-f8f7-634e3ecfa60d', 0, '2023-01-30 14:09:02', 0),
('421801a1-2bd1-2abf-3399-63d7cfc0b416', '46f0b097-365e-001e-94fe-63d7b914542e', 'da0d0316-92e3-a448-1a29-634e3e3d8166', 0, '2023-01-30 14:09:02', 0),
('42967092-2b26-db29-e41a-63d7cf2584fe', '46f0b097-365e-001e-94fe-63d7b914542e', 'db368ac8-c74b-fd0d-1757-634e3e7bf36f', 0, '2023-01-30 14:09:02', 0),
('42c86b14-e4c1-7cb1-4209-63d7cf91f9cb', '46f0b097-365e-001e-94fe-63d7b914542e', 'cddb2fbf-5006-9207-47c2-638b354a2a02', 90, '2023-01-30 14:09:02', 0),
('437bc62e-9e91-7386-321f-63d7cfec1dfd', '46f0b097-365e-001e-94fe-63d7b914542e', 'e4c4b2c3-3632-3cab-4936-634e3e5086bd', 0, '2023-01-30 14:09:02', 0),
('43ba61ca-5a5e-b0ab-f200-63d7cf0fb2f6', '46f0b097-365e-001e-94fe-63d7b914542e', 'cb9d13d1-5330-5f3c-b005-638b35877f42', 90, '2023-01-30 14:09:02', 0),
('444403a8-31bf-3975-1cf4-63d7cf3e3ecd', '46f0b097-365e-001e-94fe-63d7b914542e', '67f0675b-60bb-e865-e7e5-634e3e015564', 0, '2023-01-30 14:09:02', 0),
('4475bc70-6a37-3c49-118e-63d7cf1f788f', '46f0b097-365e-001e-94fe-63d7b914542e', 'e27f3ea4-573c-c36d-3d37-634e3e681198', 0, '2023-01-30 14:09:02', 0),
('44a066a3-b0b5-ad07-59a4-63d7cf107eb6', '46f0b097-365e-001e-94fe-63d7b914542e', 'd292e78e-7321-d471-0949-638b35a720a4', 90, '2023-01-30 14:09:02', 0),
('45576d98-087d-9521-b6cf-63d7cf033af3', '46f0b097-365e-001e-94fe-63d7b914542e', 'e88e709e-cc68-8e29-a255-634e3ee58df7', 0, '2023-01-30 14:09:02', 0),
('45813291-d4d6-06a3-6996-63d7cf153bd4', '46f0b097-365e-001e-94fe-63d7b914542e', 'd02f6860-4dc1-946c-5842-638b35e7204a', 90, '2023-01-30 14:09:02', 0),
('4665c25c-5d4b-bf41-3e24-63d7cf4ee355', '46f0b097-365e-001e-94fe-63d7b914542e', 'c93607d8-390f-cbeb-062d-638b35636703', 90, '2023-01-30 14:09:02', 0),
('469987d0-26cb-8717-1283-63d7cfcf56d0', '46f0b097-365e-001e-94fe-63d7b914542e', 'e6e4da40-9aa9-7e25-1edd-634e3e00f83e', 0, '2023-01-30 14:09:02', 0),
('477f784c-a308-578c-2b8f-63d7cf5b0f86', '46f0b097-365e-001e-94fe-63d7b914542e', 'e07c5a65-654e-5984-d9ee-634e3ed86044', 0, '2023-01-30 14:09:02', 0),
('48656332-70ef-70db-7e56-63d7cf4b0982', '46f0b097-365e-001e-94fe-63d7b914542e', 'ea3ad53c-a5ae-4c73-5826-634e3e24bf6c', 0, '2023-01-30 14:09:02', 0),
('48cfa7b8-b469-bdf8-29d4-63d7cfe2ccaa', '46f0b097-365e-001e-94fe-63d7b914542e', 'd5504016-f075-3558-8338-638b35ef7e3d', 90, '2023-01-30 14:09:02', 0),
('494aaefd-7828-00ee-ed32-63d7cfdff0a9', '46f0b097-365e-001e-94fe-63d7b914542e', 'de3e0544-669e-9712-afdf-634e3eedca21', 0, '2023-01-30 14:09:02', 0),
('49b23867-6c5b-eadc-b3cd-63d7cf111c40', '46f0b097-365e-001e-94fe-63d7b914542e', 'c697e0db-0202-b411-8850-638b35812d37', 90, '2023-01-30 14:09:02', 0),
('4a304157-9a1a-d1bf-051f-63d7cf2f7930', '46f0b097-365e-001e-94fe-63d7b914542e', '57737d34-0a15-527c-3d76-634e3e02de1a', 0, '2023-01-30 14:09:02', 0),
('4a996f69-a1a0-2e90-8019-63d7cf97f517', '46f0b097-365e-001e-94fe-63d7b914542e', '50051c1e-7eb2-8285-b4f7-634e3e94d317', 89, '2023-01-30 14:09:02', 0),
('4b155e00-661d-9267-675a-63d7cfec7e29', '46f0b097-365e-001e-94fe-63d7b914542e', '60b4be63-97ac-2e5d-62c7-634e3e65c70c', 0, '2023-01-30 14:09:02', 0),
('4b806bfb-72b9-59de-ec33-63d7cf9d3365', '46f0b097-365e-001e-94fe-63d7b914542e', '5827d0a0-8e36-51a4-f1de-634e3e81ca33', 90, '2023-01-30 14:09:02', 0),
('4c787349-9942-9e82-e93d-63d7cfb5a42f', '46f0b097-365e-001e-94fe-63d7b914542e', '5ebc1383-2a68-9eb5-3c5f-634e3e1d53b0', 0, '2023-01-30 14:09:02', 0),
('4cbe3837-4c05-2cf4-d259-63d7cffeea6a', '46f0b097-365e-001e-94fe-63d7b914542e', '55de848e-f4c6-08f2-cbc5-634e3e31b6ac', 90, '2023-01-30 14:09:02', 0),
('4d5d9a06-af51-d560-c37d-63d7cf07ba96', '46f0b097-365e-001e-94fe-63d7b914542e', '648a67ea-8de3-338b-95dd-634e3ef0260d', 0, '2023-01-30 14:09:02', 0),
('4da361e4-5dcc-0d6e-4baa-63d7cfa786e6', '46f0b097-365e-001e-94fe-63d7b914542e', '5b8a0431-5a3c-cc75-7c71-634e3ec838e5', 90, '2023-01-30 14:09:02', 0),
('4e43b560-5879-2dfe-0893-63d7cfe6596f', '46f0b097-365e-001e-94fe-63d7b914542e', '627e2c55-b65c-782f-719b-634e3ecb6733', 0, '2023-01-30 14:09:02', 0),
('4ead355f-0117-33b6-b865-63d7cf5ecdfb', '46f0b097-365e-001e-94fe-63d7b914542e', '59bf178d-01b2-a136-23f1-634e3ecbec4e', 90, '2023-01-30 14:09:02', 0),
('4f2872fa-01bf-50d8-1d28-63d7cf0146b9', '46f0b097-365e-001e-94fe-63d7b914542e', '5c81a1fa-745d-b2d1-4b5a-634e3ef56b40', 0, '2023-01-30 14:09:02', 0),
('4f936d8f-af18-5fdd-781c-63d7cff28287', '46f0b097-365e-001e-94fe-63d7b914542e', '53ffe17e-3999-d095-0703-634e3eafeaea', 90, '2023-01-30 14:09:02', 0),
('500ed114-1c15-0bdb-9541-63d7cf547014', '46f0b097-365e-001e-94fe-63d7b914542e', '66842107-0c3e-c156-67e1-634e3ea46b5e', 0, '2023-01-30 14:09:02', 0),
('5078067b-49e1-ad38-e489-63d7cf8484cc', '46f0b097-365e-001e-94fe-63d7b914542e', 'b9da055a-68d5-b020-d1df-634e3ed2deda', 0, '2023-01-30 14:09:02', 0),
('51b7bcc3-e809-7266-5fac-63d7cf020284', '46f0b097-365e-001e-94fe-63d7b914542e', '5d505239-cf3d-f18b-3ebb-634e3ea90284', 90, '2023-01-30 14:09:02', 0),
('52236fe6-62f6-f2c5-e843-63d7cffd10a4', '46f0b097-365e-001e-94fe-63d7b914542e', '5aacd64a-6a9e-f696-fbca-634e3e56d99d', 0, '2023-01-30 14:09:02', 0),
('529e493b-6570-b3f5-c6f8-63d7cfdfe2ce', '46f0b097-365e-001e-94fe-63d7b914542e', '52494a23-9791-27fc-2b7c-634e3e0c6c92', 90, '2023-01-30 14:09:02', 0),
('530d5788-d322-2da7-76a0-63d7cf7fafb4', '46f0b097-365e-001e-94fe-63d7b914542e', '604cfb7b-fca1-f930-7d19-63c8dfde91bc', 0, '2023-01-30 14:09:02', 0),
('53853016-3bab-2352-539e-63d7cf77fd87', '46f0b097-365e-001e-94fe-63d7b914542e', 'b25f931f-861e-afe6-1dba-634e3e28f3a1', 0, '2023-01-30 14:09:02', 0),
('53f1a972-5f05-0cd7-06b8-63d7cff7549f', '46f0b097-365e-001e-94fe-63d7b914542e', '8aa80427-5a59-743e-7f8a-63c8df88fd51', 0, '2023-01-30 14:09:02', 0),
('546b9683-c60b-e921-12e3-63d7cf50dcf0', '46f0b097-365e-001e-94fe-63d7b914542e', 'bb07d316-a1c8-d5db-58dd-634e3e09c6c2', 0, '2023-01-30 14:09:02', 0),
('54d96434-58e3-313c-f091-63d7cfe637ae', '46f0b097-365e-001e-94fe-63d7b914542e', '880a11fe-985a-710e-f6aa-63c8df697289', 0, '2023-01-30 14:09:02', 0),
('55514030-9f1a-66f6-20b5-63d7cfe2a8c3', '46f0b097-365e-001e-94fe-63d7b914542e', 'b941a8cc-a257-ceb5-be6d-634e3ee1ef53', 0, '2023-01-30 14:09:02', 0),
('55bc0261-b7a8-5267-3854-63d7cf842c07', '46f0b097-365e-001e-94fe-63d7b914542e', '90598ed0-e829-f6c1-c716-63c8dfc477e9', 0, '2023-01-30 14:09:02', 0),
('56379fd9-e93c-7fb7-2e4e-63d7cfcfab11', '46f0b097-365e-001e-94fe-63d7b914542e', 'bf8c7f4a-7abf-726e-18fc-634e3e5467f7', 0, '2023-01-30 14:09:02', 0),
('56a1b654-531e-0c67-7578-63d7cfbcfe43', '46f0b097-365e-001e-94fe-63d7b914542e', '8d4a2b6e-a70f-253c-3b42-63c8df79a76b', 0, '2023-01-30 14:09:02', 0),
('579d9361-3e38-6e5a-ad9b-63d7cf2b946c', '46f0b097-365e-001e-94fe-63d7b914542e', 'bd968615-703e-0405-0db3-634e3e67641c', 0, '2023-01-30 14:09:02', 0),
('58061df4-a050-7f79-390f-63d7cfbf525a', '46f0b097-365e-001e-94fe-63d7b914542e', '8574d0fa-9b17-643c-2e47-63c8df7d977b', 0, '2023-01-30 14:09:02', 0),
('5884193a-dd1c-0932-0e9e-63d7cf21800d', '46f0b097-365e-001e-94fe-63d7b914542e', 'b74824f1-7a28-48a8-b399-634e3e0e9f6a', 0, '2023-01-30 14:09:02', 0),
('58eea8c1-670f-987f-775b-63d7cf2a308d', '46f0b097-365e-001e-94fe-63d7b914542e', '92fe7c7c-3639-7eab-dcac-63c8df4f04d2', 0, '2023-01-30 14:09:02', 0),
('596abca9-2e8c-3d96-d21c-63d7cfefe26d', '46f0b097-365e-001e-94fe-63d7b914542e', 'c15a12ce-77f0-5e8b-166e-634e3ea8c530', 0, '2023-01-30 14:09:02', 0),
('59d37aef-7ac0-a70f-a242-63d7cf93871e', '46f0b097-365e-001e-94fe-63d7b914542e', '8256cf58-d208-2a20-82b5-63c8df836938', 0, '2023-01-30 14:09:02', 0),
('5a5192a3-7192-9678-d05a-63d7cf9645d1', '46f0b097-365e-001e-94fe-63d7b914542e', 'b57efeec-a901-0f3c-7bbf-634e3e0e6bf1', 0, '2023-01-30 14:09:02', 0),
('5ab92918-012e-5214-d277-63d7cf159f38', '46f0b097-365e-001e-94fe-63d7b914542e', '1f8cf799-5c62-4360-f5ef-634e3eceecc1', 0, '2023-01-30 14:09:02', 0),
('5b3840b6-e15a-6928-8e3d-63d7cf68c2e0', '46f0b097-365e-001e-94fe-63d7b914542e', 'b7370794-10db-89a4-9119-634e3eb2d7ea', 0, '2023-01-30 14:09:02', 0),
('5b9d2cbd-348e-b6cd-85f0-63d7cfdd7f79', '46f0b097-365e-001e-94fe-63d7b914542e', '277f8293-2e14-af69-6f3a-634e3e940446', 0, '2023-01-30 14:09:02', 0),
('5c2565f8-bfa8-ef79-e462-63d7cff99587', '46f0b097-365e-001e-94fe-63d7b914542e', '1403e09e-7713-bfb2-88a3-634e3ecbe9ff', 0, '2023-01-30 14:09:02', 0),
('5c810dcb-337b-ddc2-81fd-63d7cfb0caef', '46f0b097-365e-001e-94fe-63d7b914542e', '62221aa6-9432-50a5-cc6a-634e3e164017', 0, '2023-01-30 14:09:02', 0),
('5c83a4ac-ca69-0955-3586-63d7cfba01b6', '46f0b097-365e-001e-94fe-63d7b914542e', '25685860-69a2-f507-195d-634e3e308353', 0, '2023-01-30 14:09:02', 0),
('5d74fb33-bd88-af8c-56be-63d7cfe9d1c7', '46f0b097-365e-001e-94fe-63d7b914542e', '1202cc6c-9042-0117-85e7-634e3ecaa122', 0, '2023-01-30 14:09:02', 0),
('5db9255e-ae5d-7d95-f144-63d7cf098b39', '46f0b097-365e-001e-94fe-63d7b914542e', '2b936c5f-3c59-770b-2a00-634e3e3598bb', 0, '2023-01-30 14:09:02', 0),
('5e5b42b5-0303-64f0-9027-63d7cf515635', '46f0b097-365e-001e-94fe-63d7b914542e', '1838cb5e-6084-c6fc-bfc5-634e3e6ee540', 0, '2023-01-30 14:09:02', 0),
('5e9f6744-bf87-26b8-9477-63d7cf0158c0', '46f0b097-365e-001e-94fe-63d7b914542e', '291f2d11-8f0b-17ac-947a-634e3e85db6b', 0, '2023-01-30 14:09:02', 0),
('5edc0132-176f-1677-c011-63d7cfe57c9e', '46f0b097-365e-001e-94fe-63d7b914542e', '5e0303f3-c6d6-0fb4-5213-634e3ed0181e', 0, '2023-01-30 14:09:02', 0),
('5f638169-83c9-9fc5-0444-63d7cfaf6084', '46f0b097-365e-001e-94fe-63d7b914542e', '165dfef3-3797-88bb-a872-634e3e6c9bf5', 0, '2023-01-30 14:09:02', 0),
('5fb100f3-7e71-1c6f-528f-63d7cf0a1d8d', '46f0b097-365e-001e-94fe-63d7b914542e', '23bc1dc1-02fd-f015-2ff0-634e3e5f478e', 0, '2023-01-30 14:09:02', 0),
('6045135c-b235-ff54-7e8e-63d7cff505d9', '46f0b097-365e-001e-94fe-63d7b914542e', 'fec3076b-bd69-5a1b-32df-634e3e5e0b4d', 0, '2023-01-30 14:09:02', 0),
('6098f905-e141-a6f0-243e-63d7cfacc093', '46f0b097-365e-001e-94fe-63d7b914542e', '2d2ad35d-922d-c62a-0f48-634e3e4659fc', 0, '2023-01-30 14:09:02', 0),
('6128417c-0cf5-073a-3787-63d7cf6c7fd7', '46f0b097-365e-001e-94fe-63d7b914542e', '1a3311dc-6988-86fb-5600-634e3e31ea78', 0, '2023-01-30 14:09:02', 0),
('61719151-6efa-ec1a-1ed0-63d7cf2d6451', '46f0b097-365e-001e-94fe-63d7b914542e', '21a1c5e1-1f5e-cb27-3e6f-634e3e9513db', 0, '2023-01-30 14:09:02', 0),
('62501f32-7a57-5d40-fbac-63d7cf2eb217', '46f0b097-365e-001e-94fe-63d7b914542e', 'c8eb4a47-a0f8-6d3c-4932-634e3efc75eb', 0, '2023-01-30 14:09:02', 0),
('62619799-8374-b58d-7460-63d7cff69199', '46f0b097-365e-001e-94fe-63d7b914542e', 'e22d0913-5948-f972-cb26-634e3e018b51', 0, '2023-01-30 14:09:02', 0),
('634830c3-fb53-8e76-508e-63d7cf823503', '46f0b097-365e-001e-94fe-63d7b914542e', '77f4915f-c027-46f7-81c3-634e58c5f33e', 0, '2023-01-30 14:09:02', 0),
('6390b1eb-c9c7-7667-40d6-63d7cf3c85b1', '46f0b097-365e-001e-94fe-63d7b914542e', 'd089210c-5c69-940b-3133-634e3e44e9ac', 0, '2023-01-30 14:09:02', 0),
('64328e04-e830-ec3d-20dd-63d7cf21cfe9', '46f0b097-365e-001e-94fe-63d7b914542e', '908c88f9-7a6d-7356-f87e-634e58e5b258', 0, '2023-01-30 14:09:02', 0),
('64736897-fc76-06b2-9564-63d7cfe0dad7', '46f0b097-365e-001e-94fe-63d7b914542e', 'cedc7a3e-4980-b7bc-eda0-634e3e526912', 0, '2023-01-30 14:09:02', 0),
('651b6da0-3fa4-5e2d-3dc7-63d7cfadc4fb', '46f0b097-365e-001e-94fe-63d7b914542e', '8e3fec9d-c6e9-fcf2-d072-634e5842e60d', 0, '2023-01-30 14:09:02', 0),
('6558539d-61ff-b858-f011-63d7cfb7ce11', '46f0b097-365e-001e-94fe-63d7b914542e', 'd3fcfbdc-d19c-9333-3a08-634e3e86aa0c', 0, '2023-01-30 14:09:02', 0),
('661278a1-e1ea-c039-b28a-63d7cfd97818', '46f0b097-365e-001e-94fe-63d7b914542e', '95e6b818-ef5f-087e-8440-634e58c29f41', 0, '2023-01-30 14:09:02', 0),
('663e7ad1-f31a-675e-3af7-63d7cfb37c83', '46f0b097-365e-001e-94fe-63d7b914542e', 'd22d8b73-5644-5ec2-ddf1-634e3e66c6b5', 0, '2023-01-30 14:09:02', 0),
('66f20d73-5001-d995-3848-63d7cf44ccc4', '46f0b097-365e-001e-94fe-63d7b914542e', '937047f9-74e5-9917-fc2b-634e583c3ffa', 0, '2023-01-30 14:09:02', 0),
('674a37df-db85-d723-d19c-63d7cf5293f6', '46f0b097-365e-001e-94fe-63d7b914542e', 'cd3b99e9-7696-afd8-e3b5-634e3ecfcd2f', 0, '2023-01-30 14:09:02', 0),
('68340fca-7e65-bb94-2b0e-63d7cf1cb8bb', '46f0b097-365e-001e-94fe-63d7b914542e', '8bb98c99-24f3-cd34-09f7-634e58e08167', 0, '2023-01-30 14:09:02', 0),
('687b429e-6f70-518b-b814-63d7cf04e94c', '46f0b097-365e-001e-94fe-63d7b914542e', 'd645390e-931e-0cf4-2b28-634e3ee38916', 0, '2023-01-30 14:09:02', 0),
('691b6f09-72d8-0323-1193-63d7cfb48b78', '46f0b097-365e-001e-94fe-63d7b914542e', '9875d0c5-a7c6-c840-e09c-634e58a12e0a', 0, '2023-01-30 14:09:02', 0),
('69607636-ac38-eeb4-987b-63d7cfe34d36', '46f0b097-365e-001e-94fe-63d7b914542e', 'cb15d4c5-96ed-61a0-f693-634e3ee4969f', 0, '2023-01-30 14:09:02', 0),
('6a01b3cd-29bf-e05d-8d28-63d7cfb6f559', '46f0b097-365e-001e-94fe-63d7b914542e', '892ff43e-d969-f6e9-8ba2-634e58eeea21', 0, '2023-01-30 14:09:02', 0),
('6a4038d5-5e8a-8732-3cde-63d7cfb788fc', '46f0b097-365e-001e-94fe-63d7b914542e', 'a8706c9f-b4e2-f171-b483-634e3e4f58e9', 0, '2023-01-30 14:09:02', 0),
('6ae84c75-c899-edea-cde0-63d7cf5351a3', '46f0b097-365e-001e-94fe-63d7b914542e', '15fc104f-e64e-bae1-cc0f-635a3b433795', 0, '2023-01-30 14:09:02', 0),
('6b237f52-22af-93a6-d2cb-63d7cf1d0ce5', '46f0b097-365e-001e-94fe-63d7b914542e', 'b078de5d-48c5-8705-7c6d-634e3ed05f82', 0, '2023-01-30 14:09:02', 0),
('6bce525f-9dfb-799d-2e24-63d7cf21a489', '46f0b097-365e-001e-94fe-63d7b914542e', '2f3d380e-a3f4-9e3b-8354-635a3bf9ba04', 0, '2023-01-30 14:09:02', 0),
('6c0ab0aa-a76c-4ee6-c4ca-63d7cf3650e6', '46f0b097-365e-001e-94fe-63d7b914542e', 'ae7c7889-845d-b234-14c1-634e3e5a7852', 0, '2023-01-30 14:09:02', 0),
('6cf1424d-bcd2-fcd2-8edd-63d7cf88171d', '46f0b097-365e-001e-94fe-63d7b914542e', 'b443be33-31f0-d81c-030c-634e3e62602d', 0, '2023-01-30 14:09:02', 0),
('6d910e41-00ec-cdcf-6bc1-63d7cf23bcae', '46f0b097-365e-001e-94fe-63d7b914542e', '6be9e4df-9a6e-18b5-dd38-634e3eb5a059', 0, '2023-01-30 14:09:02', 0),
('6ddcd4c8-b84d-c2e2-73fa-63d7cf21dd3c', '46f0b097-365e-001e-94fe-63d7b914542e', '2ce0d70d-cce3-c92c-e5ed-635a3b22eadb', 0, '2023-01-30 14:09:02', 0),
('6e24702b-bc74-33e5-ed4d-63d7cf4e5c77', '46f0b097-365e-001e-94fe-63d7b914542e', 'b23ded3b-67cb-c841-4bce-634e3e0c9edf', 0, '2023-01-30 14:09:02', 0),
('6ec3c338-018b-f387-327b-63d7cf2b43b9', '46f0b097-365e-001e-94fe-63d7b914542e', '3442b40d-540f-428e-e370-635a3b769951', 0, '2023-01-30 14:09:02', 0),
('6f5f0f95-1c50-6778-2412-63d7cfae1260', '46f0b097-365e-001e-94fe-63d7b914542e', 'f52b0db5-1ca9-269e-9dda-634e3e3c43af', 0, '2023-01-30 14:09:02', 0),
('6fcb71c4-5e1b-ee1f-42d4-63d7cfd28c7b', '46f0b097-365e-001e-94fe-63d7b914542e', '31eae771-53cb-779c-12dd-635a3b261d01', 0, '2023-01-30 14:09:02', 0),
('705d5862-e385-d96d-7d7e-63d7cf765d32', '46f0b097-365e-001e-94fe-63d7b914542e', 'ac924db0-1602-7b32-2b8a-634e3eeab4c7', 0, '2023-01-30 14:09:02', 0),
('70b27db1-c19a-1d02-1af9-63d7cf3bf35a', '46f0b097-365e-001e-94fe-63d7b914542e', '2a7e4771-67af-0dc7-dcd6-635a3b31cbb4', 0, '2023-01-30 14:09:02', 0),
('7145322a-e539-bc46-760d-63d7cf78fd38', '46f0b097-365e-001e-94fe-63d7b914542e', 'b6262248-d69b-e8b1-3af3-634e3edfa1de', 0, '2023-01-30 14:09:02', 0),
('7198455e-f01b-3129-d337-63d7cf5731e9', '46f0b097-365e-001e-94fe-63d7b914542e', '36d83dc6-2bf0-3063-3b59-635a3b4b37dc', 0, '2023-01-30 14:09:02', 0),
('72818bbb-466b-f000-25a4-63d7cf3ab078', '46f0b097-365e-001e-94fe-63d7b914542e', 'aa85b2c2-ce57-8d09-dc98-634e3e9dd0e6', 0, '2023-01-30 14:09:02', 0),
('72d98430-62d8-7755-0cbd-63d7cf8f5667', '46f0b097-365e-001e-94fe-63d7b914542e', '282e677a-174d-8e5a-0952-635a3bbf4141', 0, '2023-01-30 14:09:02', 0),
('736751cf-2b99-e3c6-a2bf-63d7cf528d7d', '46f0b097-365e-001e-94fe-63d7b914542e', '248b8d91-1b25-9a09-7142-63cf6a33af01', 89, '2023-01-30 14:09:02', 0),
('73bcc5ab-862e-0ac6-2832-63d7cf8f9b85', '46f0b097-365e-001e-94fe-63d7b914542e', '797f18b0-1c6b-18dd-ebae-63889ec7d898', 89, '2023-01-30 14:09:02', 0),
('744d353d-1140-74b9-2785-63d7cf2e5f79', '46f0b097-365e-001e-94fe-63d7b914542e', '45f56fe6-0938-eaaa-18f1-63cf6a627d59', 90, '2023-01-30 14:09:02', 0),
('749d85b7-00fc-648f-ec8b-63d7cfa5f3a1', '46f0b097-365e-001e-94fe-63d7b914542e', '94ff512a-f239-5d25-0f47-63889ed62988', 90, '2023-01-30 14:09:02', 0),
('7533c7dd-4e69-8ff9-ecdc-63d7cf6b6deb', '46f0b097-365e-001e-94fe-63d7b914542e', '430f209f-8669-6ac2-6908-63cf6aee5541', 90, '2023-01-30 14:09:02', 0),
('7580da14-28d3-0c14-5f9b-63d7cfb1f57c', '46f0b097-365e-001e-94fe-63d7b914542e', '928af680-a74f-f342-0ebf-63889e52c865', 90, '2023-01-30 14:09:02', 0),
('763c3377-5cc0-39f8-b7df-63d7cfba2be9', '46f0b097-365e-001e-94fe-63d7b914542e', '4b81acd7-a36e-748a-a0b4-63cf6a10b826', 90, '2023-01-30 14:09:02', 0),
('766af3e6-a8c2-a158-351d-63d7cfdfbe3a', '46f0b097-365e-001e-94fe-63d7b914542e', '9aa6dd2e-b3a5-91b3-c107-63889e2d6897', 90, '2023-01-30 14:09:02', 0),
('77220a8d-9671-bf04-82e0-63d7cff55291', '46f0b097-365e-001e-94fe-63d7b914542e', '48e3262a-5122-acb9-6fdc-63cf6ad347a2', 90, '2023-01-30 14:09:02', 0),
('7773fa5f-49c6-fd23-1691-63d7cfcf21a0', '46f0b097-365e-001e-94fe-63d7b914542e', '98122fab-916a-aed2-2453-63889e3fa43b', 90, '2023-01-30 14:09:02', 0),
('785bb49c-f381-b1a7-9011-63d7cff5170c', '46f0b097-365e-001e-94fe-63d7b914542e', '9000b140-19f7-badc-5143-63889e4a1c23', 90, '2023-01-30 14:09:02', 0),
('78628837-0935-4508-279a-63d7cfb9b6d0', '46f0b097-365e-001e-94fe-63d7b914542e', '3f15c53a-90da-68e8-c8d6-63cf6a398ae3', 90, '2023-01-30 14:09:02', 0),
('79457e0d-fbe6-3935-f5cf-63d7cfc43982', '46f0b097-365e-001e-94fe-63d7b914542e', '9d945ff3-373f-5d9e-b4ed-63889ec25392', 90, '2023-01-30 14:09:02', 0),
('79467878-12f3-dd10-d6ef-63d7cf568015', '46f0b097-365e-001e-94fe-63d7b914542e', '4e3416e5-e2a6-2451-9345-63cf6aec721d', 90, '2023-01-30 14:09:02', 0),
('7a2f43c4-e8e2-6c88-1aea-63d7cf3589f1', '46f0b097-365e-001e-94fe-63d7b914542e', '3c20e2f7-0595-d4f9-e7ea-63cf6a57e701', 90, '2023-01-30 14:09:02', 0),
('7a2fc4e8-9233-2897-8165-63d7cfa15afc', '46f0b097-365e-001e-94fe-63d7b914542e', '8cc2e494-8d4f-60b2-df3b-63889e15b777', 90, '2023-01-30 14:09:02', 0),
('7b148b12-a8f2-8794-05d0-63d7cfd2c3a6', '46f0b097-365e-001e-94fe-63d7b914542e', 'de9e9d4f-00b6-7fef-76d0-634e57f5c825', 0, '2023-01-30 14:09:02', 0),
('7b166871-33d7-1922-be12-63d7cfddc546', '46f0b097-365e-001e-94fe-63d7b914542e', 'd26271a0-3397-b9a6-7f42-634e3e22e036', 0, '2023-01-30 14:09:02', 0),
('7b920961-b31f-15e0-cc12-63d7cfb48d60', '46f0b097-365e-001e-94fe-63d7b914542e', '60580338-0a2b-b196-e35e-634e3ee55304', 0, '2023-01-30 14:09:02', 0),
('7bfae153-f2d8-abb8-f816-63d7cf70eb78', '46f0b097-365e-001e-94fe-63d7b914542e', '64de0bce-6aa1-0374-ac30-634e57ea54db', 0, '2023-01-30 14:09:02', 0),
('7bfdd2a0-775b-962a-92b8-63d7cfa489d8', '46f0b097-365e-001e-94fe-63d7b914542e', '90110aef-3202-8bc8-b479-634e3eef0dee', 0, '2023-01-30 14:09:02', 0),
('7cdd0ec4-f993-8b4d-c66c-63d7cf35e8c0', '46f0b097-365e-001e-94fe-63d7b914542e', '3d530073-72f2-4b7f-9e49-634e57892b87', 0, '2023-01-30 14:09:02', 0),
('7d375981-3e01-2a09-87f9-63d7cfd32503', '46f0b097-365e-001e-94fe-63d7b914542e', '50c20710-c2c1-d48c-f9cd-634e3eb41745', 0, '2023-01-30 14:09:02', 0),
('7e40cd8c-f90e-69fd-9acd-63d7cffed237', '46f0b097-365e-001e-94fe-63d7b914542e', 'c561027c-f81a-cb04-76b1-634e5777dc92', 0, '2023-01-30 14:09:02', 0),
('7e40e9c8-f6df-756b-0998-63d7cf4eec60', '46f0b097-365e-001e-94fe-63d7b914542e', '103e1da8-9c09-e545-e244-634e3e371e65', 0, '2023-01-30 14:09:02', 0),
('7f26049e-1e23-d12a-4b70-63d7cf8e8f9e', '46f0b097-365e-001e-94fe-63d7b914542e', '93d70f16-3ca1-2f59-f9e1-634e57ec4309', 0, '2023-01-30 14:09:02', 0),
('7f27b439-9bd8-b05c-d3b3-63d7cf553614', '46f0b097-365e-001e-94fe-63d7b914542e', 'c9760d59-0f8e-3ebe-efdc-634e3eb49897', 0, '2023-01-30 14:09:02', 0),
('800c0be6-4136-b1b4-0013-63d7cffa4938', '46f0b097-365e-001e-94fe-63d7b914542e', '11e00b5b-9ab2-0315-a280-634e575b3ab2', 0, '2023-01-30 14:09:02', 0),
('8010b7a3-53d2-6571-0695-63d7cf1ca111', '46f0b097-365e-001e-94fe-63d7b914542e', 'd6cf0ede-a527-0b31-7883-634e3e80a5a7', 0, '2023-01-30 14:09:02', 0),
('80ee2642-70dc-b100-07e6-63d7cf4b3a64', '46f0b097-365e-001e-94fe-63d7b914542e', '103307f5-6512-1e10-06bc-634e57b422ef', 0, '2023-01-30 14:09:02', 0),
('80f8bb9f-6c4e-bcb1-5cd9-63d7cf141991', '46f0b097-365e-001e-94fe-63d7b914542e', '143369cb-548e-4af1-ede3-634e3e405d50', 0, '2023-01-30 14:09:02', 0),
('81d5e2f1-5033-edc8-da91-63d7cf81433e', '46f0b097-365e-001e-94fe-63d7b914542e', 'f2498d8e-c6d1-0f03-515f-634e57d52879', 0, '2023-01-30 14:09:02', 0),
('81dc1ece-9a8d-8c4f-a714-63d7cfe3686c', '46f0b097-365e-001e-94fe-63d7b914542e', 'd4cc150a-1123-f8e1-37ea-634e3ecd03b6', 0, '2023-01-30 14:09:02', 0),
('8312da70-da23-d19d-3f54-63d7cf196a82', '46f0b097-365e-001e-94fe-63d7b914542e', '6e0a3fd5-0375-1319-b81f-634e3ed04097', 0, '2023-01-30 14:09:02', 0),
('83212dd3-ce69-e501-7356-63d7cf7ac2de', '46f0b097-365e-001e-94fe-63d7b914542e', '408a3f1d-4623-f28a-8ee5-634e3e9f6bec', 0, '2023-01-30 14:09:02', 0),
('837f053b-4cb9-5df7-50ad-63d7cf2a9772', '46f0b097-365e-001e-94fe-63d7b914542e', '3a0c023a-0756-3690-dbb8-634e3e2ee614', 0, '2023-01-30 14:09:02', 0),
('83f9724c-0479-8797-033a-63d7cfeac457', '46f0b097-365e-001e-94fe-63d7b914542e', '76dc8764-b04f-b7e1-e101-634e3e3be65b', 0, '2023-01-30 14:09:02', 0),
('84087d4d-3565-ae30-6c35-63d7cf1ee282', '46f0b097-365e-001e-94fe-63d7b914542e', '4c0a2637-8080-70bd-d258-634e3e3c2a4a', 0, '2023-01-30 14:09:02', 0),
('84eca5dc-eb7f-9e27-bf3a-63d7cff0a85b', '46f0b097-365e-001e-94fe-63d7b914542e', '4785ad84-1428-94e2-acf3-634e3e36156c', 0, '2023-01-30 14:09:02', 0),
('84f9a6ea-d4be-331a-11df-63d7cfb22c14', '46f0b097-365e-001e-94fe-63d7b914542e', '74af65be-2585-535b-cbe8-634e3ee58652', 0, '2023-01-30 14:09:02', 0),
('85f8204e-2e4e-90d6-08cb-63d7cf9faef7', '46f0b097-365e-001e-94fe-63d7b914542e', '547c3834-7e7a-7a7b-91da-634e3e05fba1', 0, '2023-01-30 14:09:02', 0),
('89646211-c4e3-2bbb-9c50-63d7cf3e4543', '46f0b097-365e-001e-94fe-63d7b914542e', '527e7f37-53bb-06bf-47ee-634e3e374bae', 0, '2023-01-30 14:09:02', 0),
('8a4ac606-0672-1bb1-05bc-63d7cfcd5d4b', '46f0b097-365e-001e-94fe-63d7b914542e', '4494b068-1902-b421-7624-634e3ecdff85', 0, '2023-01-30 14:09:02', 0),
('8b19603d-71c3-f2da-fc41-63d7cfcde271', '46f0b097-365e-001e-94fe-63d7b914542e', '7b080f26-4270-a20e-eb79-634e3e4768bf', 0, '2023-01-30 14:09:02', 0),
('8b334ede-9495-a3ca-3037-63d7cff7fc3a', '46f0b097-365e-001e-94fe-63d7b914542e', '57de9e4f-6980-121f-2221-634e3e78005d', 0, '2023-01-30 14:09:02', 0),
('8c1b91fe-323c-85a2-7a38-63d7cff598c6', '46f0b097-365e-001e-94fe-63d7b914542e', '42f423e1-c0fe-6060-86da-634e3e74f840', 0, '2023-01-30 14:09:02', 0),
('8cd709d9-5312-33fb-fc9f-63d7cf04dfff', '46f0b097-365e-001e-94fe-63d7b914542e', '78baa973-04cf-77f4-8ede-634e3e63fcfb', 0, '2023-01-30 14:09:02', 0),
('8cea08c7-3595-2b3a-cb8c-63d7cf71acbf', '46f0b097-365e-001e-94fe-63d7b914542e', 'f2e431ad-ad93-eb90-cd0f-634e3e5589c6', 0, '2023-01-30 14:09:02', 0),
('8e473543-0ebb-6fc7-32dc-63d7cf469ff3', '46f0b097-365e-001e-94fe-63d7b914542e', '77542cff-00ff-70cf-7554-634e3e76b99c', 0, '2023-01-30 14:09:02', 0),
('8f2ed468-4ebd-be48-0ec0-63d7cfc95605', '46f0b097-365e-001e-94fe-63d7b914542e', '82e61d07-87d5-8fc0-1f8e-634e3e34e588', 0, '2023-01-30 14:09:02', 0),
('8f5d6c81-b9f5-1d11-4850-63d7cfa0f562', '46f0b097-365e-001e-94fe-63d7b914542e', '72b7c281-4fba-81a0-d097-634e3ed7b8dc', 0, '2023-01-30 14:09:02', 0),
('90107d13-4ffd-512c-4c64-63d7cf7d93ab', '46f0b097-365e-001e-94fe-63d7b914542e', '7d535fb9-ba6e-ab11-2a9d-634e3e9fb978', 0, '2023-01-30 14:09:02', 0),
('9043df4c-2c25-ee5f-588f-63d7cf5f2061', '46f0b097-365e-001e-94fe-63d7b914542e', '7d4df8b7-1e03-b917-56df-634e3e2d01b0', 0, '2023-01-30 14:09:02', 0),
('918c0d73-39f6-0a95-89a4-63d7cf94c308', '46f0b097-365e-001e-94fe-63d7b914542e', '88c24db9-d7cc-a10e-8966-634e3e12c850', 0, '2023-01-30 14:09:02', 0),
('91df5552-a756-2ee9-dd7a-63d7cf0ce22a', '46f0b097-365e-001e-94fe-63d7b914542e', '86d23265-d9ef-b201-b468-634e3ed23875', 0, '2023-01-30 14:09:02', 0),
('91f50ea7-4a57-9504-5b7a-63d7cffd9230', '46f0b097-365e-001e-94fe-63d7b914542e', '70525342-4319-6158-2ff5-634e3e329f15', 0, '2023-01-30 14:09:02', 0),
('92e97b93-5ce3-1500-242e-63d7cfb5627d', '46f0b097-365e-001e-94fe-63d7b914542e', 'a36d05df-fdb3-60be-bb8b-634e3e2239ec', 0, '2023-01-30 14:09:02', 0),
('93194783-e98d-0ab1-4894-63d7cf4f3376', '46f0b097-365e-001e-94fe-63d7b914542e', '853c293f-e151-2100-ee70-634e3edf16d9', 0, '2023-01-30 14:09:02', 0),
('93ffe1ce-ebdc-7a6e-9740-63d7cfddb68f', '46f0b097-365e-001e-94fe-63d7b914542e', '7b58126c-b69c-dd53-5833-634e3e6a3e9b', 0, '2023-01-30 14:09:02', 0),
('941e06de-1219-9f97-75a0-63d7cf3ac99d', '46f0b097-365e-001e-94fe-63d7b914542e', '125257d1-0582-8e05-753f-634e3ed29a59', 0, '2023-01-30 14:09:02', 0),
('94e74ee8-faae-15f6-dd04-63d7cfa577dc', '46f0b097-365e-001e-94fe-63d7b914542e', '88eed79c-76fe-90c8-88b8-634e3e49ebdf', 0, '2023-01-30 14:09:02', 0),
('950462bd-264e-d634-158b-63d7cf85d706', '46f0b097-365e-001e-94fe-63d7b914542e', '1040d22e-bea2-8e9e-7c0a-634e3e43e5f8', 0, '2023-01-30 14:09:02', 0),
('95ceeac7-cdd3-bb9f-af1b-63d7cf55ecb9', '46f0b097-365e-001e-94fe-63d7b914542e', '79c1c44c-69a7-e92a-1a0c-634e3ee51d8d', 0, '2023-01-30 14:09:02', 0),
('95eaef81-73b9-7c26-ebe8-63d7cfc6cc35', '46f0b097-365e-001e-94fe-63d7b914542e', '16f9603f-28a3-85b6-c13f-634e3e850ab4', 0, '2023-01-30 14:09:02', 0),
('96b6aff4-997f-9aa7-1cc6-63d7cf427517', '46f0b097-365e-001e-94fe-63d7b914542e', 'c986a7d3-fa16-e84a-75d0-634e3e5aaa2a', 0, '2023-01-30 14:09:02', 0),
('96d08492-c1b6-8e10-3e1e-63d7cf5a9f13', '46f0b097-365e-001e-94fe-63d7b914542e', '144446e0-eb69-aba0-46b8-634e3e7b0e10', 0, '2023-01-30 14:09:02', 0),
('97b0d441-b89f-ab28-2afb-63d7cf5340f5', '46f0b097-365e-001e-94fe-63d7b914542e', 'e75d0132-1b01-21c6-4b35-634e3e87bef2', 0, '2023-01-30 14:09:02', 0),
('97c038ed-a953-3858-fbea-63d7cf52f913', '46f0b097-365e-001e-94fe-63d7b914542e', 'd2987b48-a5c6-f4fe-a71e-634e3ea6a816', 0, '2023-01-30 14:09:02', 0),
('98eb28a2-154d-3178-8cd3-63d7cf14f342', '46f0b097-365e-001e-94fe-63d7b914542e', '18f3a3b5-e085-2baa-e9af-634e3edf4bcb', 0, '2023-01-30 14:09:02', 0),
('9903b7a7-b033-4ea4-16cb-63d7cf248fd6', '46f0b097-365e-001e-94fe-63d7b914542e', 'd0bd5a6d-a938-6680-f413-634e3e9ec507', 0, '2023-01-30 14:09:02', 0),
('99d83aec-78ed-afe8-c3e1-63d7cf4746f9', '46f0b097-365e-001e-94fe-63d7b914542e', 'c6e80131-fb23-7e28-535e-634e3ee16c4a', 0, '2023-01-30 14:09:02', 0),
('99ed053a-2a60-ba83-09df-63d7cf8b1e22', '46f0b097-365e-001e-94fe-63d7b914542e', 'd6a737d0-bb1e-b0f2-21d2-634e3eaac357', 0, '2023-01-30 14:09:02', 0),
('9add4ad7-c7fc-884b-0e16-63d7cf35c6cf', '46f0b097-365e-001e-94fe-63d7b914542e', 'a4b8dc8d-a05c-b749-bb66-634e3e8d5066', 0, '2023-01-30 14:09:02', 0),
('9bc07069-95bc-d273-1391-63d7cfd17a20', '46f0b097-365e-001e-94fe-63d7b914542e', 'd440b94b-7a3f-2ba3-fa18-634e3ec74f03', 0, '2023-01-30 14:09:02', 0),
('9bc1fd1d-01f6-d375-b6c8-63d7cfc1afd9', '46f0b097-365e-001e-94fe-63d7b914542e', 'b0c5eb4f-dbfa-afb5-45bd-634e3e291e98', 0, '2023-01-30 14:09:02', 0),
('9ca75674-85cf-c798-884e-63d7cfa644af', '46f0b097-365e-001e-94fe-63d7b914542e', 'aee36972-6e18-52ee-73f8-634e3e9d9cd8', 0, '2023-01-30 14:09:02', 0),
('9cab77f3-00d9-3930-6bbf-63d7cfcf5615', '46f0b097-365e-001e-94fe-63d7b914542e', 'cea7df66-1b70-ed52-f9ce-634e3edc57b7', 0, '2023-01-30 14:09:02', 0),
('9d8d4738-dd8f-fede-0eb1-63d7cfc85140', '46f0b097-365e-001e-94fe-63d7b914542e', 'b67e2497-09a8-a2c6-8be0-634e3ee16062', 0, '2023-01-30 14:09:02', 0),
('9de57a24-a1dd-fdda-205c-63d7cfe91916', '46f0b097-365e-001e-94fe-63d7b914542e', 'd85b0a41-6793-fe27-1565-634e3e3fb912', 0, '2023-01-30 14:09:02', 0),
('9e3d06a1-ab03-0c01-c5e5-63d7cf14735a', '46f0b097-365e-001e-94fe-63d7b914542e', '7c120808-1c02-19dc-a3ca-634e3e404343', 0, '2023-01-30 14:09:02', 0),
('9ecc6a18-333a-622b-b3fc-63d7cf5fc5a3', '46f0b097-365e-001e-94fe-63d7b914542e', 'cc162edf-1e2b-a2f8-1fc4-634e3e4f448a', 0, '2023-01-30 14:09:02', 0),
('9ecf19aa-bd33-4ca7-8922-63d7cf773f78', '46f0b097-365e-001e-94fe-63d7b914542e', 'b4c1cc63-93d9-7a8d-9e78-634e3eecaa76', 0, '2023-01-30 14:09:02', 0),
('9facc4bf-1d1d-2cb2-ed5a-63d7cf7dd900', '46f0b097-365e-001e-94fe-63d7b914542e', '5e0ddcdf-0277-6d71-ad28-634e3e52d49c', 0, '2023-01-30 14:09:02', 0),
('9faf2693-7f03-68f2-8515-63d7cf1504d8', '46f0b097-365e-001e-94fe-63d7b914542e', 'ad28e499-6da4-5bf7-a7ce-634e3ece589b', 0, '2023-01-30 14:09:02', 0),
('9ffb0e80-7c7d-5955-1323-63d7cf2cff92', '46f0b097-365e-001e-94fe-63d7b914542e', '9065f776-e89d-e1d7-152c-634e3eb84480', 0, '2023-01-30 14:09:02', 0),
('a09505eb-f256-b1e2-4635-63d7cf05592c', '46f0b097-365e-001e-94fe-63d7b914542e', 'b8e63a34-1572-543e-556e-634e3e911664', 0, '2023-01-30 14:09:02', 0),
('a0b3a6bc-6d77-9260-9263-63d7cfa59799', '46f0b097-365e-001e-94fe-63d7b914542e', '6fd369f6-0c51-eae6-b654-634e3eacd171', 0, '2023-01-30 14:09:02', 0),
('a17866b0-0e83-6edf-c0b5-63d7cfcf8d58', '46f0b097-365e-001e-94fe-63d7b914542e', 'aacf1fa5-da1b-d85b-2673-634e3e112602', 0, '2023-01-30 14:09:02', 0),
('a19ab435-29aa-c706-08ff-63d7cf7d983a', '46f0b097-365e-001e-94fe-63d7b914542e', '6d3c9938-2343-2f5a-71c9-634e3e2f31c0', 0, '2023-01-30 14:09:02', 0),
('a2808206-50b5-0842-886b-63d7cffa6b94', '46f0b097-365e-001e-94fe-63d7b914542e', 'a8b67b91-5574-ce94-1d82-634e3e378598', 0, '2023-01-30 14:09:02', 0),
('a2d456ba-296f-7d5a-9b46-63d7cf15351a', '46f0b097-365e-001e-94fe-63d7b914542e', '76070b28-c4bd-5c18-ecef-634e3e17639d', 0, '2023-01-30 14:09:02', 0),
('a36899f4-51c2-1a21-8e45-63d7cf4ea5aa', '46f0b097-365e-001e-94fe-63d7b914542e', 'b1c76440-d2a4-9541-75e8-634e3e4f7566', 0, '2023-01-30 14:09:02', 0),
('a3badc33-ffe2-949a-3dd0-63d7cf583a4e', '46f0b097-365e-001e-94fe-63d7b914542e', '71ed2150-21c9-80eb-8f43-634e3e2221c7', 0, '2023-01-30 14:09:02', 0),
('a4a0f528-0b1b-cd19-c6cd-63d7cff6dbdf', '46f0b097-365e-001e-94fe-63d7b914542e', '68f8697f-01d3-f8c9-53de-634e3e1a2b27', 0, '2023-01-30 14:09:02', 0),
('a4a9e6aa-0a93-c8b8-d47d-63d7cfc625bc', '46f0b097-365e-001e-94fe-63d7b914542e', 'b0037042-03a6-479d-9ff9-634e3ee668e6', 0, '2023-01-30 14:09:02', 0),
('a588469a-737b-8073-58b3-63d7cfb19599', '46f0b097-365e-001e-94fe-63d7b914542e', '78d7ff22-8d66-ccdd-9892-634e3ee20e23', 0, '2023-01-30 14:09:02', 0),
('a58d1fc6-af12-44e0-274a-63d7cff95cce', '46f0b097-365e-001e-94fe-63d7b914542e', 'b66d60e8-e9c7-f89e-4f0d-634e3efb0b3e', 0, '2023-01-30 14:09:02', 0),
('a66b0e16-0f84-ed61-b720-63d7cf50207b', '46f0b097-365e-001e-94fe-63d7b914542e', 'b4859bd2-00ce-fce4-5786-634e3e96da1f', 0, '2023-01-30 14:09:02', 0),
('a66e8d2b-b742-1079-8087-63d7cf4276c5', '46f0b097-365e-001e-94fe-63d7b914542e', '648f20c3-01d2-c22d-02e5-634e3e721535', 0, '2023-01-30 14:09:02', 0),
('a75144e9-c7a1-2f3b-9910-63d7cfcaba4f', '46f0b097-365e-001e-94fe-63d7b914542e', 'addd336d-ecf0-023f-8c64-634e3e403f54', 0, '2023-01-30 14:09:02', 0),
('a75485cc-109d-9c1f-58ff-63d7cfc433a0', '46f0b097-365e-001e-94fe-63d7b914542e', '2d0df15f-bce6-6804-0093-634e3efd55fd', 0, '2023-01-30 14:09:02', 0),
('a837286b-3326-ae32-f17e-63d7cfa9bdc5', '46f0b097-365e-001e-94fe-63d7b914542e', 'b948c2fc-934a-5fa1-a7bc-634e3e9d1a68', 0, '2023-01-30 14:09:02', 0),
('a8ba2dc0-06de-3853-bdbf-63d7cf6cead6', '46f0b097-365e-001e-94fe-63d7b914542e', '368d275e-d2c7-01f3-7be0-634e3e548c3c', 0, '2023-01-30 14:09:02', 0),
('a91f886f-66ff-0275-a6eb-63d7cf16a5ed', '46f0b097-365e-001e-94fe-63d7b914542e', 'ab3d86ec-87d9-bcd5-dca5-634e3eac87a6', 0, '2023-01-30 14:09:02', 0),
('a9a13880-0f1a-5787-94df-63d7cf031489', '46f0b097-365e-001e-94fe-63d7b914542e', '3486e42b-a501-d413-c8f8-634e3e771219', 0, '2023-01-30 14:09:02', 0),
('aa8822d6-4a0f-7e12-0a0b-63d7cf0be865', '46f0b097-365e-001e-94fe-63d7b914542e', '3aa93e85-8260-66b1-25be-634e3e141880', 0, '2023-01-30 14:09:02', 0),
('aaadf9e4-4350-49c7-1899-63d7cfc75991', '46f0b097-365e-001e-94fe-63d7b914542e', '4db4668a-a918-7400-8740-634e3e12e327', 0, '2023-01-30 14:09:02', 0),
('ab6cfcb3-4c7d-b2ba-6817-63d7cf6b0e89', '46f0b097-365e-001e-94fe-63d7b914542e', '38931867-a12c-a05c-5ed6-634e3eaeab88', 0, '2023-01-30 14:09:02', 0),
('abf11ebc-eaae-5b72-5114-63d7cfce274d', '46f0b097-365e-001e-94fe-63d7b914542e', '919a2679-3b6c-406a-f6f4-634e3e0dc764', 0, '2023-01-30 14:09:02', 0),
('ac536312-86fe-d551-0b49-63d7cfbd5b79', '46f0b097-365e-001e-94fe-63d7b914542e', '31168c63-b56d-4efe-640b-634e3e26f1b9', 0, '2023-01-30 14:09:02', 0),
('acd80b82-5e95-ddd0-556f-63d7cf701182', '46f0b097-365e-001e-94fe-63d7b914542e', '8fc2cdac-4263-1d55-1384-634e3e08915a', 0, '2023-01-30 14:09:02', 0),
('ad3b3fa4-c109-7a70-ca8d-63d7cf3502af', '46f0b097-365e-001e-94fe-63d7b914542e', '3c56432b-ec84-74dc-80b9-634e3ef7b14f', 0, '2023-01-30 14:09:02', 0),
('adbf9dd0-a8c4-eecc-3ebb-63d7cf833487', '46f0b097-365e-001e-94fe-63d7b914542e', '95d316b9-4586-5bd6-b868-634e3e68ec32', 0, '2023-01-30 14:09:02', 0),
('ae3d0f71-ec14-f6c5-b355-63d7cfc145dd', '46f0b097-365e-001e-94fe-63d7b914542e', '8e6ec961-e3aa-48dc-fe4d-634e3ec6635e', 0, '2023-01-30 14:09:02', 0),
('ae73ac32-a889-d3c2-c8ef-63d7cf577c80', '46f0b097-365e-001e-94fe-63d7b914542e', '2f5050f5-2dc7-5e53-43c3-634e3e01071b', 0, '2023-01-30 14:09:02', 0),
('aefc4a86-06eb-0783-58f5-63d7cf94a0b9', '46f0b097-365e-001e-94fe-63d7b914542e', '936fd2b9-ec5f-bc2e-fbf7-634e3ee5a8e8', 0, '2023-01-30 14:09:02', 0),
('af57043e-e577-4841-47e6-63d7cfac6af9', '46f0b097-365e-001e-94fe-63d7b914542e', '58070690-4bae-6961-9486-634e3ed1fe9c', 0, '2023-01-30 14:09:02', 0),
('afe39875-1c65-64e9-76e3-63d7cfad1930', '46f0b097-365e-001e-94fe-63d7b914542e', '8d41c616-1895-f58f-3362-634e3e0889f7', 0, '2023-01-30 14:09:02', 0),
('b0cb61b8-d9b6-f713-e291-63d7cf8d9087', '46f0b097-365e-001e-94fe-63d7b914542e', '982f626a-2198-7f0f-8b00-634e3ec6b66c', 0, '2023-01-30 14:09:02', 0),
('b1d51fc6-81be-0e97-0290-63d7cf3f8f64', '46f0b097-365e-001e-94fe-63d7b914542e', '8aaa223e-b91d-4a1e-62bd-634e3e4ce825', 0, '2023-01-30 14:09:02', 0),
('b2bd0c94-e22b-c72e-48a5-63d7cfc363cc', '46f0b097-365e-001e-94fe-63d7b914542e', 'c87f477f-e8a2-de3d-f61a-634e3e95fa24', 0, '2023-01-30 14:09:02', 0),
('b3a47113-83e8-1975-893d-63d7cf088705', '46f0b097-365e-001e-94fe-63d7b914542e', 'd33c2501-2e16-1dc2-819b-634e3e5c7bb4', 0, '2023-01-30 14:09:02', 0),
('b5e86342-5ced-e854-3f00-63d7cf6f5fa2', '46f0b097-365e-001e-94fe-63d7b914542e', 'd1023a6f-c846-97db-3137-634e3ecc365c', 0, '2023-01-30 14:09:02', 0),
('b6d0bf78-34c5-2131-83a9-63d7cfa5596f', '46f0b097-365e-001e-94fe-63d7b914542e', 'd83dae76-d813-b064-14d0-634e3e01a28e', 0, '2023-01-30 14:09:02', 0),
('b7b85124-8295-99ff-7118-63d7cfca5d0a', '46f0b097-365e-001e-94fe-63d7b914542e', 'd55dc033-179f-56eb-94de-634e3e5f9999', 0, '2023-01-30 14:09:02', 0),
('ba4782d0-253e-fba1-3a43-63d7cf0e138e', '46f0b097-365e-001e-94fe-63d7b914542e', 'cd795a18-6187-4adb-dc7a-634e3ef56f6a', 0, '2023-01-30 14:09:02', 0);
INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('bb2e7e50-66b0-cc28-5beb-63d7cfb763a5', '46f0b097-365e-001e-94fe-63d7b914542e', 'da79cf25-6b02-84aa-281a-634e3ebb0522', 0, '2023-01-30 14:09:02', 0),
('bc15bbee-0202-ee13-1953-63d7cf080ed4', '46f0b097-365e-001e-94fe-63d7b914542e', 'ca90e7a2-0f31-2f2e-fdf2-634e3efbe941', 0, '2023-01-30 14:09:02', 0),
('bca5006a-300d-641a-4557-63d7cf63df29', '46f0b097-365e-001e-94fe-63d7b914542e', '94438c10-0e52-c0a7-8cbe-634e3ebf4225', 0, '2023-01-30 14:09:02', 0),
('bcfce3d2-e941-3318-e84a-63d7cface15a', '46f0b097-365e-001e-94fe-63d7b914542e', '3dd92275-d08d-08bb-b127-634e3e2d6462', 0, '2023-01-30 14:09:02', 0),
('be3a1672-999d-b7f7-d088-63d7cf1bc030', '46f0b097-365e-001e-94fe-63d7b914542e', '4657d138-fe02-b0f3-32c1-634e3ec840f8', 0, '2023-01-30 14:09:02', 0),
('bf20b49e-6301-8987-277c-63d7cf968f02', '46f0b097-365e-001e-94fe-63d7b914542e', '442280b0-ce32-ea19-e428-634e3e293ead', 0, '2023-01-30 14:09:02', 0),
('c02a2f25-379b-c001-c0f4-63d7cfef4468', '46f0b097-365e-001e-94fe-63d7b914542e', '4bfdffc8-1e5d-7394-201c-634e3ef9a51b', 0, '2023-01-30 14:09:02', 0),
('c110c996-533a-2bfe-c0d4-63d7cfe7f3cb', '46f0b097-365e-001e-94fe-63d7b914542e', '48d5e852-6917-faae-2dcf-634e3e0f59e3', 0, '2023-01-30 14:09:02', 0),
('c1f74eaa-62bf-47ae-497e-63d7cf3ac66a', '46f0b097-365e-001e-94fe-63d7b914542e', '421b4fb5-ed03-af32-c1b9-634e3ef805a8', 0, '2023-01-30 14:09:02', 0),
('c2db06a9-3d70-8599-cd1f-63d7cfe31d70', '46f0b097-365e-001e-94fe-63d7b914542e', '4e6e3eea-1c2a-5e52-5586-634e3ec3d0cf', 0, '2023-01-30 14:09:02', 0),
('c41ee133-800c-4110-3563-63d7cfdcc086', '46f0b097-365e-001e-94fe-63d7b914542e', '3fd11335-7a90-c66f-0ff4-634e3e32885d', 0, '2023-01-30 14:09:02', 0),
('c505affe-58f9-94df-5719-63d7cf8a644b', '46f0b097-365e-001e-94fe-63d7b914542e', 'c4a239da-11bd-2751-0185-634e3e4e9234', 0, '2023-01-30 14:09:02', 0),
('c5d10fb2-cc83-2af0-bed3-63d7cf01d2ee', '46f0b097-365e-001e-94fe-63d7b914542e', 'bba80532-cba0-2f97-9d49-634e3e0d4f45', 0, '2023-01-30 14:09:02', 0),
('c5ee8aa7-aa9d-74d1-82b2-63d7cf593da4', '46f0b097-365e-001e-94fe-63d7b914542e', 'cd0f3e0e-5db5-c8d0-0156-634e3e55f621', 0, '2023-01-30 14:09:02', 0),
('c6d551cc-c921-569a-a782-63d7cf95db17', '46f0b097-365e-001e-94fe-63d7b914542e', 'caee2c43-fabf-8a66-3a8c-634e3e860888', 0, '2023-01-30 14:09:02', 0),
('c7d7e51a-b5d9-fbe3-3d87-63d7cf275dc8', '46f0b097-365e-001e-94fe-63d7b914542e', 'd1ad03b7-03dd-f0c4-d52a-634e3e0432a5', 0, '2023-01-30 14:09:02', 0),
('c8baf589-6fe6-59d7-2a99-63d7cf081aea', '46f0b097-365e-001e-94fe-63d7b914542e', 'cf33d001-aa88-13a6-bfcb-634e3efed404', 0, '2023-01-30 14:09:02', 0),
('c9fffd1a-3e4c-a319-21e0-63d7cf10fd10', '46f0b097-365e-001e-94fe-63d7b914542e', 'c905bb85-7444-4e5e-ab46-634e3e36b478', 0, '2023-01-30 14:09:02', 0),
('cae79a03-8480-3e6e-ae00-63d7cfa1edc3', '46f0b097-365e-001e-94fe-63d7b914542e', 'd3f8e4cc-95e8-63b9-eefe-634e3ebb419f', 0, '2023-01-30 14:09:02', 0),
('cbca3d03-b7ae-1fd2-6bd7-63d7cf71cbb7', '46f0b097-365e-001e-94fe-63d7b914542e', 'c6d91de7-fd0b-0619-0a0c-634e3e8ce61d', 0, '2023-01-30 14:09:02', 0),
('ccb125cc-feee-2c57-e770-63d7cfc17bc0', '46f0b097-365e-001e-94fe-63d7b914542e', '71ed5071-4742-05be-1f27-634e3ea742c4', 0, '2023-01-30 14:09:02', 0),
('cd9736d8-aed5-a021-2d8a-63d7cf8a7f43', '46f0b097-365e-001e-94fe-63d7b914542e', '7bfac7d7-0095-53fd-b336-634e3e8c5de0', 0, '2023-01-30 14:09:02', 0),
('ce39785c-4052-70b6-fb45-63d7cf324038', '46f0b097-365e-001e-94fe-63d7b914542e', 'access', 0, '2023-01-30 14:09:02', 0),
('ce9f76e4-d98c-e532-0941-63d7cf5be26e', '46f0b097-365e-001e-94fe-63d7b914542e', '7a049b96-fd30-c11a-3d12-634e3ea5694d', 0, '2023-01-30 14:09:02', 0),
('cfe1c3f5-6db5-8a96-8ffe-63d7cf75c6df', '46f0b097-365e-001e-94fe-63d7b914542e', '81a608f7-ba06-bd5c-f4c3-634e3e1c32e9', 0, '2023-01-30 14:09:02', 0),
('cfe7c47c-743a-6cdd-a8f0-63d7cf62fc3d', '46f0b097-365e-001e-94fe-63d7b914542e', 'delete', 0, '2023-01-30 14:09:02', 0),
('d0c824d4-7030-a8d5-7f08-63d7cf8db5cd', '46f0b097-365e-001e-94fe-63d7b914542e', '7f8f7b68-cbf4-cf4e-b43b-634e3e9ad471', 0, '2023-01-30 14:09:02', 0),
('d10c6123-dd9d-3551-ca3c-63d7cf91dfd6', '46f0b097-365e-001e-94fe-63d7b914542e', 'edit', 0, '2023-01-30 14:09:02', 0),
('d1ae48a0-897e-e448-8ede-63d7cf2c35a9', '46f0b097-365e-001e-94fe-63d7b914542e', '77aa8241-3f8c-74a3-d56c-634e3eec4ab6', 0, '2023-01-30 14:09:02', 0),
('d2200279-ef90-89d7-61bb-63d7cf4762b8', '46f0b097-365e-001e-94fe-63d7b914542e', '92260182-06b3-0317-5f61-634e3e1682b2', 0, '2023-01-30 14:09:02', 0),
('d2951e3b-93db-ab0d-9587-63d7cf294cfa', '46f0b097-365e-001e-94fe-63d7b914542e', '83e4b99d-016b-5506-7e72-634e3e55bea6', 0, '2023-01-30 14:09:02', 0),
('d31949f8-a404-7c9c-5b0a-63d7cf92bac8', '46f0b097-365e-001e-94fe-63d7b914542e', 'export', 0, '2023-01-30 14:09:02', 0),
('d377e025-72f3-9b69-c64e-63d7cf51789d', '46f0b097-365e-001e-94fe-63d7b914542e', '7544e2ce-452c-ea43-bbd6-634e3e7bfadb', 0, '2023-01-30 14:09:02', 0),
('d4b6fbd0-e500-0b18-060d-63d7cf23cc8f', '46f0b097-365e-001e-94fe-63d7b914542e', 'ef8f456d-70c4-b56c-a756-634e3e1dc63a', 0, '2023-01-30 14:09:02', 0),
('d52481b0-b88e-ee59-14ec-63d7cfed8fc3', '46f0b097-365e-001e-94fe-63d7b914542e', 'import', 0, '2023-01-30 14:09:02', 0),
('d59d0a32-3fb1-8351-a396-63d7cfa04669', '46f0b097-365e-001e-94fe-63d7b914542e', '54510635-6066-0af7-cb87-634e3effa1ed', 0, '2023-01-30 14:09:02', 0),
('d6490112-be24-09ad-f336-63d7cf9cc6e1', '46f0b097-365e-001e-94fe-63d7b914542e', 'a0c60067-847d-dd09-d2b2-634e3eb9539f', 0, '2023-01-30 14:09:02', 0),
('d6493401-8aa6-9078-4d2f-63d7cf201110', '46f0b097-365e-001e-94fe-63d7b914542e', 'list', 0, '2023-01-30 14:09:02', 0),
('d6a68ad5-e2c5-9d39-1a78-63d7cfebf634', '46f0b097-365e-001e-94fe-63d7b914542e', '26a00ad3-dc21-5846-a1ba-634e3e34df25', 0, '2023-01-30 14:09:02', 0),
('d77ede37-1c24-b960-118c-63d7cfa67348', '46f0b097-365e-001e-94fe-63d7b914542e', 'massupdate', 0, '2023-01-30 14:09:02', 0),
('d78a0771-c5a0-5d21-e3a4-63d7cf891491', '46f0b097-365e-001e-94fe-63d7b914542e', 'b0750cbc-0c29-196f-9820-634e3e88fbf0', 0, '2023-01-30 14:09:02', 0),
('d8707ca1-849c-cede-0f36-63d7cffbf860', '46f0b097-365e-001e-94fe-63d7b914542e', '7835077e-b735-1c80-6aed-634e3ec93b9b', 0, '2023-01-30 14:09:02', 0),
('d8ca1f9e-f90b-2cb4-cab9-63d7cfbcb089', '46f0b097-365e-001e-94fe-63d7b914542e', 'view', 0, '2023-01-30 14:09:02', 0),
('d9563bb3-34d3-6eb3-79eb-63d7cff5eab8', '46f0b097-365e-001e-94fe-63d7b914542e', '21f00fd4-7311-ef93-fbfb-634e3e5dee84', 0, '2023-01-30 14:09:02', 0),
('d9da4383-fcd6-9686-dc55-63d7cf118210', '46f0b097-365e-001e-94fe-63d7b914542e', 'd188033e-0e13-3796-77f4-634e3e4c5265', 0, '2023-01-30 14:09:02', 0),
('da9c5c22-66ee-de8e-9a29-63d7cfe9c8ee', '46f0b097-365e-001e-94fe-63d7b914542e', 'd52f018b-3909-59be-5f0b-634e3e97c222', 0, '2023-01-30 14:09:02', 0),
('db45857a-c94e-058f-ba7f-63d7cf1e4427', '46f0b097-365e-001e-94fe-63d7b914542e', 'd9ec7f0f-93d3-a6a6-b29e-634e3e146a75', 0, '2023-01-30 14:09:02', 0),
('db793c5a-74b8-4e9b-dfb4-63d7cfec1005', '46f0b097-365e-001e-94fe-63d7b914542e', 'f245e9d6-0254-c096-2c41-634e3eb129dd', 0, '2023-01-30 14:09:02', 0),
('dc4f0e8a-32c9-b9b6-eba4-63d7cfd72b67', '46f0b097-365e-001e-94fe-63d7b914542e', '4f0005d6-bd64-536c-65af-634e3e060513', 0, '2023-01-30 14:09:02', 0),
('dc54ce33-d069-cbb8-5129-63d7cf829296', '46f0b097-365e-001e-94fe-63d7b914542e', 'd7b4a277-5a98-b95f-1c6c-634e3ecceea1', 0, '2023-01-30 14:09:02', 0),
('dd236539-c169-99ba-fad9-63d7cf4f06cb', '46f0b097-365e-001e-94fe-63d7b914542e', 'ce1302a5-0e58-479b-209e-634e3e70730c', 0, '2023-01-30 14:09:02', 0),
('dd5e765e-6952-637f-4406-63d7cf590f81', '46f0b097-365e-001e-94fe-63d7b914542e', 'de554e4c-58fe-16a6-b10e-634e3e447902', 0, '2023-01-30 14:09:02', 0),
('de22e50d-e447-c624-f6f5-63d7cf67f641', '46f0b097-365e-001e-94fe-63d7b914542e', 'b1940be2-10b7-491a-85b2-634e3e2bc97a', 0, '2023-01-30 14:09:02', 0),
('de3ed399-1653-c240-fea2-63d7cfcbf2bf', '46f0b097-365e-001e-94fe-63d7b914542e', 'dbc3e4da-839b-022e-829d-634e3e230990', 0, '2023-01-30 14:09:02', 0),
('df08fddd-a876-6492-bf36-63d7cf464357', '46f0b097-365e-001e-94fe-63d7b914542e', '10701320-ad94-11f9-d8ca-634e3ef2512c', 0, '2023-01-30 14:09:02', 0),
('df4a90fb-0c37-ae23-b444-63d7cf269baa', '46f0b097-365e-001e-94fe-63d7b914542e', 'd6001298-8a77-c49b-833c-634e3e4373b3', 0, '2023-01-30 14:09:02', 0),
('e04c5937-df97-30ea-4759-63d7cf9c9267', '46f0b097-365e-001e-94fe-63d7b914542e', 'ea5a0ac8-febe-cde4-4460-634e3ebf96bd', 0, '2023-01-30 14:09:02', 0),
('e0cc70b0-2698-6822-d59f-63d7cf05f120', '46f0b097-365e-001e-94fe-63d7b914542e', 'e00e3829-ead7-a4bc-2805-634e3e2aef8f', 0, '2023-01-30 14:09:02', 0),
('e1332cad-804e-4525-9e63-63d7cf15ce3a', '46f0b097-365e-001e-94fe-63d7b914542e', '8dd60c41-2a40-79f2-169c-634e3e2bde1a', 0, '2023-01-30 14:09:02', 0),
('e1b0e271-21a0-bbfd-da1e-63d7cfe85853', '46f0b097-365e-001e-94fe-63d7b914542e', 'd37d6876-9080-dbef-b57f-634e3e976cc2', 0, '2023-01-30 14:09:02', 0),
('e219d2f7-d62c-7440-c8d1-63d7cf148878', '46f0b097-365e-001e-94fe-63d7b914542e', '161f3e68-b500-b38c-11c1-634e3e8e35d7', 0, '2023-01-30 14:09:02', 0),
('e2820cc8-199f-af5f-8bed-63d7cf948b4f', '46f0b097-365e-001e-94fe-63d7b914542e', '8c4efe4a-745a-299c-f688-634e3e26f6c6', 0, '2023-01-30 14:09:02', 0),
('e2c80031-2d07-f2a2-19e2-63d7cfbb70c7', '46f0b097-365e-001e-94fe-63d7b914542e', 'b3a8c680-4427-df8e-308d-63884eb052b2', 89, '2023-01-30 14:09:02', 0),
('e2fd48c1-25ce-f66f-d24c-63d7cfb41fee', '46f0b097-365e-001e-94fe-63d7b914542e', '74490af8-29f9-a62d-3962-634e3e533058', 0, '2023-01-30 14:09:02', 0),
('e3de3cde-4d06-9481-f271-63d7cf65b050', '46f0b097-365e-001e-94fe-63d7b914542e', 'd3ad3916-369d-2b25-886b-63884e84bf90', 90, '2023-01-30 14:09:02', 0),
('e3e3bb1b-ce78-47b2-2d99-63d7cfc2a333', '46f0b097-365e-001e-94fe-63d7b914542e', '1537b57c-7aca-1b67-65f3-634e3e3b4280', 0, '2023-01-30 14:09:02', 0),
('e4eb3684-880c-ea3f-24e0-63d7cf64b880', '46f0b097-365e-001e-94fe-63d7b914542e', '1c75fa1a-e12e-2b34-c704-634e3e585c4b', 0, '2023-01-30 14:09:02', 0),
('e4f60325-c3ac-cd6a-cb30-63d7cf429aa1', '46f0b097-365e-001e-94fe-63d7b914542e', 'd1125b2b-91a8-0121-4fa4-63884e09750d', 90, '2023-01-30 14:09:02', 0),
('e5d1bdd0-7547-93f5-1a4a-63d7cfe57a9f', '46f0b097-365e-001e-94fe-63d7b914542e', '1ac13d48-5a31-0e34-18e0-634e3ee2d482', 0, '2023-01-30 14:09:02', 0),
('e5d64ef4-f5c1-74dd-666d-63d7cf8a788f', '46f0b097-365e-001e-94fe-63d7b914542e', 'd8bec745-ad54-862a-e4c5-63884e47b3b3', 90, '2023-01-30 14:09:02', 0),
('e6b96496-03d1-4cc0-394c-63d7cf0b1fc7', '46f0b097-365e-001e-94fe-63d7b914542e', '2028b80c-d717-b2d9-3c57-634e3e156e6b', 0, '2023-01-30 14:09:02', 0),
('e70a308b-0cc8-d6ee-4b9f-63d7cf4d7ca5', '46f0b097-365e-001e-94fe-63d7b914542e', 'd6410af9-b3c1-6e68-c807-63884e6111fe', 90, '2023-01-30 14:09:02', 0),
('e7a053b5-77ea-c6b5-52bc-63d7cf20e741', '46f0b097-365e-001e-94fe-63d7b914542e', '1e88de0b-ad8a-c590-20bc-634e3ef5d7d7', 0, '2023-01-30 14:09:02', 0),
('e7a202cd-1190-74c3-14ed-63d7cf1f44c5', '46f0b097-365e-001e-94fe-63d7b914542e', '28d80e6c-131e-4429-e5b9-634e3ea7c57c', 0, '2023-01-30 14:09:02', 0),
('e83e4e05-7f93-6e94-cd20-63d7cf34331b', '46f0b097-365e-001e-94fe-63d7b914542e', 'ce2ce687-d760-bfcd-4619-63884e24d2bc', 90, '2023-01-30 14:09:02', 0),
('e886cf9e-0f34-6533-630e-63d7cf46d012', '46f0b097-365e-001e-94fe-63d7b914542e', '19294d20-9851-7719-36b1-634e3ee8dcbc', 0, '2023-01-30 14:09:02', 0),
('e94ca1bb-c0f2-bed6-207e-63d7cfaf5471', '46f0b097-365e-001e-94fe-63d7b914542e', 'db619b7e-481c-df53-9255-63884e2d161d', 90, '2023-01-30 14:09:02', 0),
('e96d759d-b8e6-c14a-0236-63d7cf004b06', '46f0b097-365e-001e-94fe-63d7b914542e', '21de6d67-e4d6-0316-b7f4-634e3eddfe1b', 0, '2023-01-30 14:09:02', 0),
('ea61a9fb-b1c8-94c6-73ae-63d7cf87e17d', '46f0b097-365e-001e-94fe-63d7b914542e', 'cb9a79d4-f8c4-20f0-2770-63884e0fddeb', 90, '2023-01-30 14:09:02', 0),
('eaa6b7b4-65b9-7080-da65-63d7cf52b42b', '46f0b097-365e-001e-94fe-63d7b914542e', '17394883-5fc9-7807-19fe-634e3e2870ae', 0, '2023-01-30 14:09:02', 0),
('eb4a6dcd-a54f-c6ef-0427-63d7cfbefecb', '46f0b097-365e-001e-94fe-63d7b914542e', '6b3800fc-7e27-fc9b-f93c-634e3ebdeb12', 0, '2023-01-30 14:09:02', 0),
('eb8979d7-92ef-8764-164e-63d7cf7f00fb', '46f0b097-365e-001e-94fe-63d7b914542e', '7304b81c-212a-d416-22a2-634e3ee55333', 0, '2023-01-30 14:09:02', 0),
('ec59c66a-62fa-b8e8-c0ec-63d7cfc89002', '46f0b097-365e-001e-94fe-63d7b914542e', '722e50cf-2562-3fa9-e52f-634e3e983998', 0, '2023-01-30 14:09:02', 0),
('ec90d6dd-cd95-35fe-ae00-63d7cf8a700c', '46f0b097-365e-001e-94fe-63d7b914542e', '7aa732b4-1051-0a9e-00a5-634e3efa933c', 0, '2023-01-30 14:09:02', 0),
('ed76edf9-bf7a-931d-9c08-63d7cf86313b', '46f0b097-365e-001e-94fe-63d7b914542e', '78e43d2d-53c9-68bf-6ad9-634e3e7a6a24', 0, '2023-01-30 14:09:02', 0),
('edcd3ac6-722e-8332-12f5-63d7cfbe1c17', '46f0b097-365e-001e-94fe-63d7b914542e', '7096ca6a-679f-a079-8ebc-634e3e694798', 0, '2023-01-30 14:09:02', 0),
('ee5e9e69-d5bc-c9a1-13e5-63d7cf8bcce6', '46f0b097-365e-001e-94fe-63d7b914542e', '7e3de2d0-97c8-21ce-f204-634e3e9b206b', 0, '2023-01-30 14:09:02', 0),
('eee4a127-9604-5c0a-5ffc-63d7cfd0365c', '46f0b097-365e-001e-94fe-63d7b914542e', '7630e367-140b-8315-ef07-634e3edda06c', 0, '2023-01-30 14:09:02', 0),
('ef49992e-f60a-fc0c-b81a-63d7cf2c69cb', '46f0b097-365e-001e-94fe-63d7b914542e', '7cb4efb9-b935-ce22-9566-634e3e50bdf6', 0, '2023-01-30 14:09:02', 0),
('effce687-3a20-42a4-f676-63d7cfe43425', '46f0b097-365e-001e-94fe-63d7b914542e', '7490ecf6-7584-e055-1b2f-634e3ee89dee', 0, '2023-01-30 14:09:02', 0),
('f0ef07ba-b019-ef59-74a1-63d7cf6a16e5', '46f0b097-365e-001e-94fe-63d7b914542e', '960b66f6-3228-89e6-8b4e-634e3e866187', 0, '2023-01-30 14:09:02', 0),
('f137c168-8be8-254d-ccff-63d7cf1387f8', '46f0b097-365e-001e-94fe-63d7b914542e', '6edcc1a3-93c7-873c-11af-634e3e1e4caa', 0, '2023-01-30 14:09:02', 0),
('f149b384-a6ba-e1a1-3473-63d7cf5cece5', '46f0b097-365e-001e-94fe-63d7b914542e', '7708d267-dc54-1c42-479f-634e3eb914e4', 0, '2023-01-30 14:09:02', 0),
('f24def1f-8f21-a138-dc9b-63d7cf6f6e57', '46f0b097-365e-001e-94fe-63d7b914542e', '77f6e8de-cb61-e2d7-657d-634e3e258f95', 0, '2023-01-30 14:09:02', 0),
('f2510fcc-6e55-2c6e-e7ac-63d7cff605ad', '46f0b097-365e-001e-94fe-63d7b914542e', '80d24085-b5a3-d1ab-59cc-634e3ee8b498', 0, '2023-01-30 14:09:02', 0),
('f3334b8e-a59d-fa6b-0697-63d7cfdb5fae', '46f0b097-365e-001e-94fe-63d7b914542e', '6d2a0ef3-a559-0aad-0f19-634e3e754277', 0, '2023-01-30 14:09:02', 0),
('f5d702db-5239-69aa-90ec-63d7cf9ba524', '46f0b097-365e-001e-94fe-63d7b914542e', 'da5c01bd-5eda-8054-5655-634e3e8dec7c', 0, '2023-01-30 14:09:02', 0),
('ff530a68-2af3-fa4e-a7a7-63d7cf9deea3', '46f0b097-365e-001e-94fe-63d7b914542e', '8aaf0f92-b1e7-3fd4-db60-634e3edd76e3', 0, '2023-01-30 14:09:02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles_users`
--

CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl_roles_users`
--

INSERT INTO `acl_roles_users` (`id`, `role_id`, `user_id`, `date_modified`, `deleted`) VALUES
('848949c6-4aaf-5710-c00f-63d7ce0665bb', '46f0b097-365e-001e-94fe-63d7b914542e', '42e1c8dc-ae01-9efb-5fee-63d7ceb668ef', '2023-01-30 14:05:20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projectholidays`
--

CREATE TABLE `am_projectholidays` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `holiday_date` date DEFAULT NULL,
  `resourse_users` varchar(100) DEFAULT 'Contacts',
  `resource_id` varchar(36) DEFAULT NULL,
  `resource_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projectholidays_audit`
--

CREATE TABLE `am_projectholidays_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projectholidays_project_c`
--

CREATE TABLE `am_projectholidays_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projectholidays_projectproject_ida` varchar(36) DEFAULT NULL,
  `am_projectholidays_projectam_projectholidays_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates`
--

CREATE TABLE `am_projecttemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `priority` varchar(100) DEFAULT 'High'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_audit`
--

CREATE TABLE `am_projecttemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_projecttemplates_project_1_c`
--

CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates`
--

CREATE TABLE `am_tasktemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `priority` varchar(100) DEFAULT 'High',
  `percent_complete` varchar(255) DEFAULT NULL,
  `predecessors` int(255) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT '0',
  `relationship_type` varchar(100) DEFAULT 'FS',
  `task_number` int(255) DEFAULT NULL,
  `order_number` int(255) DEFAULT NULL,
  `estimated_effort` int(255) DEFAULT NULL,
  `utilization` varchar(100) DEFAULT '0',
  `duration` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates_am_projecttemplates_c`
--

CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `am_tasktemplates_audit`
--

CREATE TABLE `am_tasktemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aod_index`
--

CREATE TABLE `aod_index` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `last_optimised` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aod_index`
--

INSERT INTO `aod_index` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `last_optimised`, `location`) VALUES
('1', 'Index', '2022-10-18 05:49:18', '2022-10-18 05:49:18', '1', '1', NULL, 0, NULL, NULL, 'modules/AOD_Index/Index/Index');

-- --------------------------------------------------------

--
-- Table structure for table `aod_indexevent`
--

CREATE TABLE `aod_indexevent` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT '0',
  `record_id` char(36) DEFAULT NULL,
  `record_module` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aod_indexevent`
--

INSERT INTO `aod_indexevent` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `error`, `success`, `record_id`, `record_module`) VALUES
('13a5d887-65c7-e995-6eb9-635babe643b3', 'harish', '2022-10-28 10:14:04', '2022-10-28 10:17:43', '1', '1', NULL, 0, '', NULL, 1, 'bb084835-1dee-8b7e-d159-635bab2a11e2', 'SLY_Salary'),
('14ddf9b9-ca6b-bf30-68e0-63c91ff26dee', 'PRO_2', '2023-01-19 10:44:53', '2023-01-19 10:44:53', '1', '1', NULL, 0, NULL, NULL, 1, 'aa19b04f-fb44-6261-f084-63c91f53d74e', 'pro_Projects'),
('1523191f-66c8-2311-8439-63c8f2fa3f60', 'test', '2023-01-19 07:36:08', '2023-01-19 07:36:08', '1', '1', NULL, 0, NULL, NULL, 1, '9b2336e7-4847-8e4b-4ecf-63c8f26b365b', 'EMP_Employee'),
('159882a3-0ae5-23b1-bc32-63f61f26fbde', 'ATT_13', '2023-02-22 13:59:14', '2023-02-22 13:59:14', '1', '1', NULL, 0, NULL, NULL, 1, '300cadf5-b3b8-c036-0b5a-63f61fcc7abc', 'at_Attentance'),
('172b4f5c-3d6c-471b-09f8-63f2ff6b87b8', 'PRO_8', '2023-02-20 05:06:19', '2023-02-22 05:00:32', '1', '1', NULL, 0, '', NULL, 1, '4c7b7103-b5ef-3c17-5b99-63f2ffdb27a6', 'pro_Projects'),
('17305da5-3fce-3bf8-3362-635b83ce121c', 'lokesh', '2022-10-28 07:22:04', '2022-10-28 07:22:04', '1', '1', NULL, 0, '', NULL, 1, 'cbc3a03b-8d1d-901f-0be6-635b8332e558', 'SLY_Salary'),
('18119797-aca9-51f9-9e87-63cb7397a8cf', '', '2023-01-21 05:08:15', '2023-01-21 05:08:15', '1', '1', NULL, 0, NULL, NULL, 1, 'e4ae3856-ae28-f4c2-d122-63cb737ba244', 'EMP_Employee'),
('1e7ee015-e1dc-29dd-0f6e-63cb735e8a73', '', '2023-01-21 05:11:15', '2023-01-21 05:11:15', '1', '1', NULL, 0, NULL, NULL, 1, '805aedcf-7c30-8a30-2e0c-63cb738d6a52', 'EMP_Employee'),
('1ee00293-54d4-8fa8-657e-63500c81e36e', '', '2022-10-19 14:40:16', '2022-10-19 14:40:16', '1', '1', NULL, 0, NULL, NULL, 1, 'c4cf923f-b3c3-3128-565c-63500cabb86b', 'EMP_Employees'),
('244690af-ac33-54a8-e126-63f744973ea4', 'ATT_3', '2023-02-23 10:50:34', '2023-02-23 10:50:34', '1', '1', NULL, 0, NULL, NULL, 1, '915b3b90-74f9-2c97-4809-63f74474dc1d', 'PAY_Payments'),
('25241ab6-4d43-9735-9683-635a16228551', '', '2022-10-27 05:28:28', '2022-10-27 05:35:55', '1', '1', NULL, 0, '', NULL, 1, '9e95406f-5098-f348-35c9-635a167080bb', 'SLY_Salaries'),
('26e468d4-96e5-4ecf-9807-635247f735f1', 'test', '2022-10-21 07:16:32', '2022-10-21 07:16:32', '1', '1', NULL, 0, NULL, NULL, 1, '88831df5-3f1f-e1db-a68e-6352472a4104', 'EMP_Employees'),
('284e5293-e276-a88d-9ef2-63590bbe7627', 'kamalesh', '2022-10-26 10:25:08', '2022-10-26 10:25:08', '1', '1', NULL, 0, NULL, NULL, 1, '7c72333a-73e4-3610-e67b-63590bebda4e', 'EMP_Employees'),
('29b7ac2a-2a35-0fea-4231-635a14c6f73d', '', '2022-10-27 05:18:28', '2022-10-27 05:31:10', '1', '1', NULL, 0, '', NULL, 1, '86154a57-661f-ef10-acea-635a140f2404', 'SLY_Salaries'),
('2b1e084e-ae72-3207-9473-63885cf7dfa8', 'test', '2022-12-01 07:50:57', '2022-12-01 07:50:57', '1', '1', NULL, 0, NULL, NULL, 1, 'cdd90384-4e9a-b619-52ab-63885c5cbc10', 'at_Attentance'),
('2b4d7829-c7d5-9c15-db9f-635b732a7317', 'kamalesh', '2022-10-28 06:13:55', '2022-10-28 06:13:55', '1', '1', NULL, 0, '', NULL, 1, 'e19f30e1-045d-a841-2e10-635b733b2caf', 'SLY_Salary'),
('2c65f32f-ef3c-0ca7-943c-63d4c0be3022', 'ATT_12', '2023-01-28 06:27:48', '2023-01-28 06:27:48', '1', '1', NULL, 0, '', NULL, 1, 'a145dfab-9847-3981-e0e8-63d4c0747d08', 'at_Attentance'),
('2d2d3b73-dea6-43b8-0464-635a22031447', 'harish', '2022-10-27 06:17:05', '2022-10-29 05:25:28', '1', '1', NULL, 0, '', NULL, 1, '985ed570-bcee-2221-8aab-635a226d209f', 'EMP_Employees'),
('2d730ce6-6a53-7169-8f4a-639424cfde22', 'Mr. kamalesh kali', '2022-12-10 06:17:14', '2022-12-10 06:17:14', '1', '1', NULL, 0, NULL, NULL, 1, '2653a62e-19ca-b543-142f-63942407df80', 'Leads'),
('2e3e413d-1c62-7790-d0e4-638b3c975493', 'PRO_1', '2022-12-03 12:08:15', '2022-12-03 12:08:15', '1', '1', NULL, 0, NULL, NULL, 1, '5ef1276c-3ff7-0ae7-4ceb-638b3c999078', 'pro_Projects'),
('2e816255-7c3b-7fa0-0c4f-635008ad4e2d', 'test', '2022-10-19 14:25:12', '2022-10-19 14:25:12', '1', '1', NULL, 0, NULL, NULL, 1, 'c031dc64-fe99-3c14-195f-635008404965', 'SLY_Salaries'),
('2ed4d4f4-d150-c851-84f1-635b737b1305', 'kamalesh', '2022-10-28 06:13:28', '2022-10-28 06:13:28', '1', '1', NULL, 0, '', NULL, 1, '1b780d43-aedf-7a78-088e-635b73b94b08', 'SLY_Salary'),
('2fd051e2-04c2-1b1d-c87d-635cb9932668', 'harish ragavendran', '2022-10-29 05:25:54', '2022-10-29 05:25:54', '1', '1', NULL, 0, '', NULL, 1, 'e7c58bd7-0b7d-442e-843a-635cb9e4e1d2', 'SLY_Salary'),
('3161ba1f-d003-22a6-d323-63c91b640709', 'karthi', '2023-01-19 10:31:20', '2023-01-19 10:38:05', '1', '1', NULL, 0, '', NULL, 1, 'b1ef0c7e-b911-ef95-b118-63c91b7ad840', 'EMP_Employee'),
('325408d7-a98f-d86a-d244-63f5fb7b40c6', 'EMP_8', '2023-02-22 11:22:51', '2023-02-22 11:22:51', '1', '1', NULL, 0, NULL, NULL, 1, 'b60c5610-6fa0-1c8d-79fc-63f5fbc8becf', 'EMP_Employee_List'),
('3d014f77-2fc1-d6c4-0940-635b72a84ba2', 'akash', '2022-10-28 06:11:38', '2022-10-29 10:21:11', '1', '1', NULL, 0, '', NULL, 1, 'cb3406cc-befa-d024-d3a9-635b72d5485d', 'EMP_Employees'),
('3d722672-d2ff-0e3c-8fc4-63d3b3ca9075', 'ATT_9', '2023-01-27 11:20:51', '2023-01-27 11:20:51', '1', '1', NULL, 0, NULL, NULL, 1, 'd9675e71-2598-b64d-a6af-63d3b32db81f', 'at_Attentance'),
('3e12164a-976d-b320-b4d2-635b736b9684', 'karthi', '2022-10-28 06:14:14', '2022-10-28 06:14:14', '1', '1', NULL, 0, '', NULL, 1, '1209ec17-ad24-661f-fa51-635b73530dda', 'SLY_Salary'),
('3f354725-caae-918c-47ee-63cf77eb1789', 'kamalesh', '2023-01-24 06:16:34', '2023-01-24 06:21:38', '1', '1', NULL, 0, '', NULL, 1, '92fd65e2-d16c-6639-9299-63cf77ae0def', 'EMP_Employee_List'),
('43a97973-1a13-ba0d-c8de-63d3b05a1e4d', 'PRO_5', '2023-01-27 11:07:59', '2023-01-27 11:07:59', '1', '1', NULL, 0, NULL, NULL, 1, 'd682fb16-2809-2ac8-c921-63d3b0731e4b', 'pro_Projects'),
('46500415-65bd-df8e-4651-63591c7c9e3d', 'kamalesh', '2022-10-26 11:41:13', '2022-10-26 11:41:13', '1', '1', NULL, 0, NULL, NULL, 1, 'a4a39935-898a-4eaa-9592-63591cbaee64', 'EMP_Employees'),
('49bf92c7-6112-9110-fc35-63cf7a0eab25', 'PRO_4', '2023-01-24 06:26:30', '2023-01-24 06:26:30', '1', '1', NULL, 0, NULL, NULL, 1, 'f0ec95a4-3726-ae4c-0232-63cf7a684e80', 'pro_Projects'),
('4aca4c83-47aa-1bee-9352-63593f0e382b', 'test', '2022-10-26 14:07:31', '2022-10-26 14:07:31', '1', '1', NULL, 0, NULL, NULL, 1, 'c60c7cf4-a6d7-0a3e-60c6-63593fdd2391', 'SLY_Salaries'),
('4bed8c97-b214-1df1-88d9-63d3ada9606b', 'ATT_7', '2023-01-27 10:55:50', '2023-01-27 10:55:50', '1', '1', NULL, 0, '', NULL, 1, '5a170d44-07c1-22c3-ebcd-63d3ad0e5d45', 'at_Attentance'),
('4cd2c2bd-be30-5765-de81-635b829e1772', 'vicknesh', '2022-10-28 07:19:28', '2022-10-28 10:26:11', '1', '1', NULL, 0, '', NULL, 1, 'b53f831f-542a-a084-3199-635b82857865', 'SLY_Salary'),
('53674d2c-8e7f-e6d4-e3e8-639036f1aef4', 'SLH_3', '2022-12-07 06:45:01', '2022-12-07 06:45:01', '1', '1', NULL, 0, NULL, NULL, 1, 'd8f5b02d-4a3a-9682-e91c-63903631bb09', 'sh_Salary_History'),
('55907435-5581-e06d-dba9-635a1b8466ce', '', '2022-10-27 05:45:37', '2022-10-27 05:46:17', '1', '1', NULL, 0, '', NULL, 1, 'a93adf25-1236-4553-a10b-635a1b7aaeca', 'SLY_Salaries'),
('569e32a3-8c0d-acf5-05b9-63d3b4ea3108', 'ATT_10', '2023-01-27 11:23:40', '2023-01-27 11:23:40', '1', '1', NULL, 0, '', NULL, 1, '13480227-3f80-a014-351c-63d3b4736d3e', 'at_Attentance'),
('585da08a-dda2-44a5-53b0-635250efd85c', 'test', '2022-10-21 07:55:43', '2022-10-21 07:55:43', '1', '1', NULL, 0, NULL, NULL, 1, '11c51292-62e1-1c02-84ae-635250f8d628', 'EMP_Employees'),
('589a3568-2fb2-aa93-df86-639033e4db1b', 'EMP_10', '2022-12-07 06:34:22', '2022-12-07 06:34:22', '1', '1', NULL, 0, NULL, NULL, 1, '8e230360-35ff-5aed-8fca-6390336d95b0', 'EMP_Employees'),
('595a30b2-6672-141d-6af6-63500c1b57df', 'testing', '2022-10-19 14:42:40', '2022-10-19 14:42:40', '1', '1', NULL, 0, NULL, NULL, 1, '2579f732-a3be-b867-e044-63500ca2ed48', 'SLY_Salaries'),
('5b32ed04-7188-2021-9523-63f6201f7579', 'SLH_7', '2023-02-22 14:02:23', '2023-02-22 14:02:23', '1', '1', NULL, 0, NULL, NULL, 1, 'ddb45ace-061c-f43c-79bd-63f620512dfc', 'sh_Salary_History'),
('5de612ff-b4a9-a05d-0ee5-63d3ae78ed29', 'ATT_8', '2023-01-27 10:59:15', '2023-01-27 10:59:15', '1', '1', NULL, 0, '', NULL, 1, '16ee83cc-d0e3-4f22-a44e-63d3ae6aacd3', 'at_Attentance'),
('5e5a16c7-aed5-440b-8b7f-63c922af5a60', 'EMP_11', '2023-01-19 10:57:06', '2023-01-19 10:57:06', '1', '1', NULL, 0, NULL, NULL, 1, 'e70fa988-c5f1-1cf5-4e48-63c92238dbbf', 'EMP_Employees'),
('5fc55fa6-d556-06c0-7c45-635cbbd750ec', 'Kamalesh', '2022-10-29 05:34:00', '2022-10-29 05:34:00', '1', '1', NULL, 0, '', NULL, 1, 'ed5a9a98-f236-0ad4-159b-635cbbe44206', 'SLY_Salary'),
('60513ac1-ddad-4b33-0a26-635a65ed6781', 'kamalesh', '2022-10-27 11:02:30', '2022-10-28 05:35:51', '1', '1', NULL, 0, '', NULL, 1, 'c57bb7ee-a30b-02ed-29fb-635a65543ad5', 'SLY_Salary'),
('643be9d7-5c6f-4608-8a81-63d11514f0d8', 'ATT_3', '2023-01-25 11:42:07', '2023-01-27 05:34:38', '1', '1', NULL, 0, '', NULL, 1, '1ad5051c-9f2f-cfc2-08c3-63d1151dc6de', 'at_Attentance'),
('64d25281-3202-f744-4674-635cbe92f84e', '', '2022-10-29 05:47:56', '2022-10-29 05:47:56', '1', '1', NULL, 0, '', NULL, 1, 'ade5ae0b-ea9f-0440-6d7d-635cbe28c533', 'SLY_Salary'),
('64d7042a-942d-91cd-c4c5-63ea62f50d7c', 'raj', '2023-02-13 16:16:22', '2023-02-14 05:40:33', '1', '1', NULL, 0, '', NULL, 1, '90ac729c-16df-59fb-b021-63ea62bd8fa3', 'SK_Skill'),
('64f3cbfd-e1a0-31eb-5b84-63819c0f4719', 'harish', '2022-11-26 04:58:21', '2022-11-26 04:58:21', '1', '1', NULL, 0, '', NULL, 1, 'c850150b-02eb-e251-c572-63819cc3ef0a', 'EMP_Employees'),
('6581576d-0bda-cdaf-b915-638ee601614c', 'logo.ico', '2022-12-06 06:52:16', '2022-12-06 06:52:16', '1', '1', NULL, 0, NULL, 'Mime type image/x-icon not supported', 0, '514c6cb0-cc98-cc13-5d69-638ee6584413', 'DocumentRevisions'),
('67f3e4cd-7f81-9cd5-4f7b-635cb62f3b15', 'harish.k', '2022-10-29 05:15:35', '2022-10-29 05:15:35', '1', '1', NULL, 0, '', NULL, 1, '27f3c811-140c-9631-7e72-635cb6b211ce', 'SLY_Salary'),
('6a1aef79-fd03-b20a-a71b-635cba121b73', 'EMP_1', '2022-10-29 05:32:36', '2023-01-19 10:44:53', '1', '1', NULL, 0, '', NULL, 1, '4267076e-77d2-728c-1c98-635cba7dc597', 'EMP_Employees'),
('6a3f1833-d2fd-fb6a-0adb-63902ed62a73', 'EMP_9', '2022-12-07 06:12:37', '2022-12-07 06:12:37', '1', '1', NULL, 0, '', NULL, 1, '5bd00ed3-6e14-65c8-31f2-63902e565c69', 'EMP_Employees'),
('6d985493-1b8f-a9e9-be45-63d3b3ba5348', 'SLH_5', '2023-01-27 11:21:36', '2023-01-27 11:21:36', '1', '1', NULL, 0, NULL, NULL, 1, '3e650d03-7e3a-c769-46ed-63d3b398d909', 'sh_Salary_History'),
('6e3c6836-3feb-2370-ebe5-635cbe48146a', '', '2022-10-29 05:46:46', '2022-10-29 05:46:46', '1', '1', NULL, 0, '', NULL, 1, 'a3d2eb5f-ce4c-3115-5ded-635cbe22b654', 'SLY_Salary'),
('6f2a00cf-4bb8-f8e9-a174-635a35408e4a', 'lokesh', '2022-10-27 07:40:22', '2022-10-27 07:40:22', '1', '1', NULL, 0, NULL, NULL, 1, 'd9d2f752-0ca0-3fe1-2733-635a35049420', 'SLY_Salaries'),
('71574ea0-3f65-40c2-963e-63d0c1b2421a', 'EMP_1', '2023-01-25 05:45:14', '2023-01-30 13:29:41', '1', '1', NULL, 0, '', NULL, 1, '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', 'EMP_Employee_List'),
('7685edf1-4bdf-c49b-e7c9-63591e3f90fd', 'karan', '2022-10-26 11:46:53', '2022-10-26 11:58:03', '1', '1', NULL, 0, '', NULL, 1, '276df170-d60e-3f2b-f20c-63591ed41461', 'EMP_Employees'),
('7ab06951-e15d-dabb-3b93-63593efb2092', 'lokesh', '2022-10-26 14:04:59', '2022-10-26 14:04:59', '1', '1', NULL, 0, NULL, NULL, 1, '5b690da2-f44b-f71c-7a73-63593e62d278', 'SLY_Salaries'),
('7d4c5f80-1d25-d5b2-7952-63f6efae9106', 'vicky', '2023-02-23 04:44:27', '2023-02-23 04:44:27', '1', '1', NULL, 0, NULL, NULL, 1, 'ef01054e-d73b-c93e-3046-63f6ef629224', 'SK_Skill'),
('7f695f9a-9867-1238-c842-63d117e2cf3d', 'SLH_4', '2023-01-25 11:50:05', '2023-01-25 11:50:05', '1', '1', NULL, 0, NULL, NULL, 1, '3004f8c2-d10d-5495-f45f-63d1170f8c4b', 'sh_Salary_History'),
('81899b63-4bfa-6657-dced-63d3a7629f64', 'ATT_6', '2023-01-27 10:30:55', '2023-01-27 10:30:55', '1', '1', NULL, 0, NULL, NULL, 1, '38c58fbf-8fd0-1e67-546e-63d3a7b75223', 'at_Attentance'),
('87c3a9af-9e85-808c-d2b0-6350d798f3de', 'karthick', '2022-10-20 05:07:11', '2022-10-20 05:07:11', '1', '1', NULL, 0, NULL, NULL, 1, '48c21a37-ed6b-6c14-67ca-6350d7c55397', 'SLY_Salaries'),
('89261a21-5ecb-4f99-a235-638ee64f691e', 'kamalesh', '2022-12-06 06:52:16', '2022-12-06 06:52:16', '1', '1', NULL, 0, NULL, NULL, 1, '460f1886-8ee6-13a0-64dc-638ee63043cf', 'Documents'),
('8abc0750-3b93-3e41-6b03-639018e19a14', 'SLH_2', '2022-12-07 04:38:58', '2022-12-07 04:38:58', '1', '1', NULL, 0, NULL, NULL, 1, '29002cc4-987e-7a57-cdb8-63901843fcd2', 'sh_Salary_History'),
('8b7de780-00af-806a-d931-63590c6de2a3', 'vicky', '2022-10-26 10:31:18', '2022-10-26 10:31:18', '1', '1', NULL, 0, NULL, NULL, 1, '565a94bf-aabb-9d78-ba1e-63590c3f398c', 'EMP_Employees'),
('8b869518-be1b-b12f-bb90-63593f19144d', 'test', '2022-10-26 14:08:30', '2022-10-26 14:08:30', '1', '1', NULL, 0, NULL, NULL, 1, '30e1cc9f-4076-c498-8c86-63593fe36db1', 'SLY_Salaries'),
('8f7fc039-a3b1-2e80-4a17-635922b1e2b1', 'karthi', '2022-10-26 12:05:05', '2022-10-26 13:44:00', '1', '1', NULL, 0, '', NULL, 1, '4347719f-33ee-e81f-e8a8-635922b72386', 'EMP_Employees'),
('90f4904b-cb8b-23b0-f18c-63eb1952dba9', 'karthi', '2023-02-14 05:17:05', '2023-02-23 04:46:09', '1', '1', NULL, 0, '', NULL, 1, '60e1cd4b-b3a1-177f-5ee3-63eb195bd4fc', 'SK_Skill'),
('9132d71b-cd54-7d9f-c942-63524c2e19cb', 'Admin', '2022-10-21 07:40:46', '2022-10-21 07:40:46', '1', '1', NULL, 0, NULL, NULL, 1, '49c825ec-fb61-9f88-7f9d-63524c815ef9', 'EMP_Employees'),
('915d5cd6-f81d-6a82-6a0c-639426b2fe90', 'kamalesh', '2022-12-10 06:27:29', '2022-12-10 06:27:29', '1', '1', NULL, 0, NULL, NULL, 1, '1509469a-e1a7-4908-67b6-6394265cb78a', 'Accounts'),
('9241ca04-cb07-0d46-3309-63f624d5c784', 'ATT_2', '2023-02-22 14:18:56', '2023-02-22 14:18:56', '1', '1', NULL, 0, NULL, NULL, 1, '21794ff6-3240-07f1-20e9-63f62425babb', 'PAY_Payments'),
('9392feb0-7049-ae56-fbdf-635cb6ba1fe4', 'harish.kali', '2022-10-29 05:11:36', '2022-10-29 05:11:36', '1', '1', NULL, 0, '', NULL, 1, '13471fa6-3ebc-de64-0c01-635cb645bb85', 'SLY_Salary'),
('96cc947b-f1bb-860b-16e5-635bae6e9090', 'vicknesh', '2022-10-28 10:25:30', '2022-10-28 10:25:30', '1', '1', NULL, 0, '', NULL, 1, '58bdff80-4e77-ecae-aeae-635bae555c82', 'SLY_Salary'),
('96e419ea-1eb3-fba1-9fc5-63c9355fcc19', 'PRO_3', '2023-01-19 12:18:28', '2023-01-19 12:18:28', '1', '1', NULL, 0, NULL, NULL, 1, '191d9827-a895-32ef-9dd3-63c935979d22', 'pro_Projects'),
('96e98a33-7b13-e70c-5b64-634f97ab304d', '', '2022-10-19 06:20:06', '2022-10-19 06:20:06', '1', '1', NULL, 0, NULL, NULL, 1, '65dd3473-c619-3205-626a-634f97148e86', 'EMP_Employees'),
('99dd84cf-874f-33dd-5a3b-6351509b6cb3', '', '2022-10-20 13:44:04', '2022-10-20 13:44:04', '1', '1', NULL, 0, NULL, NULL, 1, '204ea969-ba36-c0b8-38ee-635127d4f225', 'EMP_Employees'),
('9a51310f-1eca-4151-c9a1-63942735fc50', 'kamalesh', '2022-12-10 06:29:48', '2022-12-10 06:29:48', '1', '1', NULL, 0, NULL, NULL, 1, '6ed60655-7206-e3f6-2fe3-639427cffa37', 'Opportunities'),
('9aba343f-9d45-3e19-51f5-63f5a4f5ead5', 'EMP_6', '2023-02-22 05:12:18', '2023-02-22 05:12:18', '1', '1', NULL, 0, NULL, NULL, 1, '344b0904-cbdb-dcdd-0b5c-63f5a4745aa5', 'EMP_Employee_List'),
('9c7ceb34-6079-8bf9-e6af-635151bf7c10', 'admin', '2022-10-20 13:48:11', '2022-10-20 13:48:11', '1', '1', NULL, 0, NULL, NULL, 1, '5d2c8682-32c1-9544-caed-635151097137', 'EMP_Employees'),
('9f77fd64-8c29-52de-a2ff-63d3b7166c1a', 'ATT_11', '2023-01-27 11:36:04', '2023-01-27 11:36:04', '1', '1', NULL, 0, '', NULL, 1, '38b0f80d-9b14-d2e7-393d-63d3b77be099', 'at_Attentance'),
('a4d83eb8-f633-2bab-6e5d-6388a1552f44', 'kamalesh', '2022-12-01 12:43:20', '2022-12-01 12:43:20', '1', '1', NULL, 0, NULL, NULL, 1, 'e9cb18e3-65d5-a354-f5c7-6388a1bb39a7', 'sh_Salary_History'),
('a728de0a-adb1-a515-114c-6350d63042e2', '', '2022-10-20 05:03:58', '2022-10-20 05:20:47', '1', '1', NULL, 0, '', NULL, 1, '2d5d80b8-b22e-7042-6e8f-6350d655dd16', 'EMP_Employees'),
('a8360c2f-d6aa-8805-4148-63c936f2750d', 'EMP_12', '2023-01-19 12:25:15', '2023-01-19 12:25:15', '1', '1', NULL, 0, NULL, NULL, 1, '78f3faff-0612-a504-3830-63c93663badd', 'EMP_Employees'),
('ab387530-91c3-719b-3bd9-635a1da8ea20', 'kamalesh', '2022-10-27 05:54:48', '2022-10-27 05:54:48', '1', '1', NULL, 0, NULL, NULL, 1, '23d2383b-c38d-f285-ffe6-635a1dd6e0fe', 'SLY_Salaries'),
('ace82c52-694b-c55c-53e2-6381a67e19af', 'kamalesh', '2022-11-26 05:37:33', '2022-11-26 05:37:33', '1', '1', NULL, 0, '', NULL, 1, '574076fd-97d0-bf3e-00da-6381a64c69b8', 'EMP_Employees'),
('aec36d8c-eea8-a529-060c-63eb434e8780', 'kamalesh', '2023-02-14 08:16:09', '2023-02-23 04:43:52', '1', '1', NULL, 0, '', NULL, 1, '68689fc6-73a9-8110-d365-63eb43fef40f', 'SK_Skill'),
('afa47fbd-cc04-9b10-a149-635b6b089fb5', 'karthi', '2022-10-28 05:42:58', '2022-10-28 05:44:59', '1', '1', NULL, 0, '', NULL, 1, '74156368-6d53-ad2e-a5e8-635b6b3a8ced', 'SLY_Salary'),
('afa9ab2f-d835-2d76-ca68-635b827b0dd5', 'kamalesh', '2022-10-28 07:17:28', '2022-10-28 07:17:28', '1', '1', NULL, 0, '', NULL, 1, '706bf2af-ae68-a308-dceb-635b82298ed1', 'SLY_Salary'),
('b019ce69-e48e-1806-f697-63524e9714ac', 'kamalesh', '2022-10-21 07:47:10', '2022-10-21 07:47:10', '1', '1', NULL, 0, NULL, NULL, 1, '660f2374-5389-5946-5078-63524e681967', 'EMP_Employees'),
('b207c424-54b3-49ef-1bfd-63f6ef34dd96', 'karan', '2023-02-23 04:45:16', '2023-02-23 04:45:16', '1', '1', NULL, 0, NULL, NULL, 1, '695c9ee1-d925-311e-feec-63f6ef6033ca', 'SK_Skill'),
('b2144f8c-7dd6-0aa3-5d42-635a124ee7f0', 'lokesh', '2022-10-27 05:09:15', '2022-10-27 05:09:15', '1', '1', NULL, 0, NULL, NULL, 1, 'ebbdbef2-98ff-b915-6fc7-635a125c9731', 'SLY_Salaries'),
('b22e0be9-874f-cd2a-4e38-635a3dd27fc9', 'lokesh', '2022-10-27 08:14:54', '2022-10-27 08:14:54', '1', '1', NULL, 0, NULL, NULL, 1, '21cd9ad5-eb71-2aa4-4ba5-635a3d9f9d91', 'SLY_Salary'),
('b32f7ef9-3fe7-88d5-eae1-63593ec2c253', 'lokesh', '2022-10-26 14:05:41', '2022-10-26 14:05:41', '1', '1', NULL, 0, NULL, NULL, 1, '60e80281-ddb4-43c5-ca44-63593ed8f7fb', 'SLY_Salaries'),
('b342a4e3-6793-6d34-b14c-63f5b825b7f6', 'PRO_9', '2023-02-22 06:37:19', '2023-02-22 06:37:19', '1', '1', NULL, 0, NULL, NULL, 1, '5c7abcb2-e4db-5d0d-d335-63f5b87a74ee', 'pro_Projects'),
('b583808f-ee88-d486-1756-63d3a347b55d', 'ATT_5', '2023-01-27 10:11:51', '2023-01-27 10:58:30', '1', '1', NULL, 0, '', NULL, 1, '351eeb9a-e442-e7e8-0830-63d3a3912004', 'at_Attentance'),
('b60605d8-bc24-7fab-7b13-635b8962cfc8', 'kamalesh', '2022-10-28 07:47:35', '2022-10-28 07:47:35', '1', '1', NULL, 0, '', NULL, 1, 'a8683512-ce0c-a11d-0131-635b89800c54', 'SLY_Salary'),
('b6cc3afb-68d8-4e02-fd15-63cb76ec7991', '', '2023-01-21 05:22:16', '2023-01-21 06:28:08', '1', '1', NULL, 0, '', NULL, 1, '4bf00790-19dd-da3b-cae9-63cb76293e2b', 'EMP_Employee'),
('b6da70a7-7410-b995-8209-63d3b7f7d72c', 'SLH_6', '2023-01-27 11:35:34', '2023-01-27 11:35:34', '1', '1', NULL, 0, '', NULL, 1, '5db49c71-3350-55e8-0950-63d3b77a23a4', 'sh_Salary_History'),
('b765175f-9e34-e235-ac95-635a3c7ac9b0', 'lokesh', '2022-10-27 08:09:56', '2022-10-27 08:09:56', '1', '1', NULL, 0, NULL, NULL, 1, '2e8b85ad-61b9-5793-ad15-635a3c93dfdb', 'SLY_Salary'),
('bde9cf46-a4a2-35f0-b114-634f8e9bf301', '', '2022-10-19 05:41:33', '2022-10-19 13:15:29', '1', '1', NULL, 0, '', NULL, 1, '5e4c86b7-b5f3-ffc6-63ba-634f8e8aee5c', 'EMP_Employees'),
('bff5fd0c-fd6e-9630-8608-635bab0ef208', 'harish', '2022-10-28 10:13:32', '2022-10-28 10:13:32', '1', '1', NULL, 0, NULL, NULL, 1, '62400fe6-c81e-cce8-aa37-635bab8750dd', 'EMP_Employees'),
('c25c0cfd-63fa-09a2-27d3-63e9c740b3e8', 'mani', '2023-02-13 05:17:48', '2023-02-23 04:45:47', '1', '1', NULL, 0, '', NULL, 1, '5c3cbdc0-46e3-4aac-fab5-63e9c77cb4f0', 'SK_Skill'),
('c5d76285-786b-fc87-d233-63f5c9d55318', 'PRO_10', '2023-02-22 07:52:42', '2023-03-01 11:45:50', '1', '1', NULL, 0, '', NULL, 1, '5f9d8183-5ee9-394f-651e-63f5c95bb6ca', 'pro_Projects'),
('c7041eb4-e9c8-0a87-0a4f-63cb79d6e563', '', '2023-01-21 05:37:00', '2023-01-21 05:37:00', '1', '1', NULL, 0, NULL, NULL, 1, '2f1ce1cf-dbe8-31f1-2bac-63cb79e799c1', 'EMP_Employee'),
('c790152e-dd9b-8f17-9d54-635b795ec34e', 'karthi', '2022-10-28 06:41:47', '2022-10-28 06:41:47', '1', '1', NULL, 0, '', NULL, 1, '84b88284-a5bb-7860-6583-635b794ab284', 'EMP_Employees'),
('c87f8ee0-64a9-3c05-d23b-634fd6577c02', '', '2022-10-19 10:48:53', '2022-10-19 10:48:53', '1', '1', NULL, 0, NULL, NULL, 1, '9d70a3d2-414e-e435-a7c7-634fd61d872c', 'EMP_Employees'),
('c9cd6e97-f3e6-2417-74fa-63d3bafc4298', 'EMP_3', '2023-01-27 11:50:10', '2023-01-30 12:30:58', '1', '1', NULL, 0, '', NULL, 1, '55de057b-8cc0-423f-18cb-63d3ba47c4d2', 'EMP_Employee_List'),
('ce0c0171-9215-979d-26ed-63c8e63a0ed3', 'kamalesh', '2023-01-19 06:41:44', '2023-01-19 10:22:16', '1', '1', NULL, 0, '', NULL, 1, 'dc30881f-172c-dee8-8b05-63c8e625416c', 'EMP_Employee'),
('d0726f36-da6f-1ace-6e4a-635b734dd873', 'Employees', '2022-10-28 06:15:22', '2022-10-28 06:15:22', '1', '1', NULL, 0, '', NULL, 1, '86242914-fa7b-250d-a79c-635b73a87197', 'SLY_Salary'),
('d17c7bb9-9a48-f5a9-d3ea-63d3b5cb7ca6', 'PRO_7', '2023-01-27 11:28:27', '2023-03-01 13:19:27', '1', '1', NULL, 0, '', NULL, 1, '6baefc3b-b985-a6d4-73cc-63d3b5c3f3ba', 'pro_Projects'),
('d3300b56-6729-55fb-915a-63da168538e1', 'kamalesh', '2023-02-01 07:35:26', '2023-02-01 07:35:26', '1', '1', NULL, 0, NULL, NULL, 1, '55007ae1-476a-c74a-bd9e-63da16def25c', 'PAY_Payments'),
('d3b45ccc-a1e2-77f7-7633-635cbc53bff4', 'kamalesh.k', '2022-10-29 05:39:43', '2022-10-29 05:39:43', '1', '1', NULL, 0, '', NULL, 1, 'ba49bb1d-73be-1ddf-66be-635cbcba82f2', 'SLY_Salary'),
('d3ef25fc-ccd9-7b47-c3ac-63d36dc34aec', 'ATT_4', '2023-01-27 06:22:45', '2023-01-27 06:22:45', '1', '1', NULL, 0, NULL, NULL, 1, '455fd05a-5532-2356-ac14-63d36d24864b', 'at_Attentance'),
('d6ee59bf-7e23-ed70-1044-63d3c23bd6c4', 'EMP_4', '2023-01-27 12:22:26', '2023-01-31 12:26:28', '1', '1', NULL, 0, '', NULL, 1, '1b1f65dd-3f65-dfd6-e636-63d3c2f4ad2e', 'EMP_Employee_List'),
('d6f5e848-2c33-a085-2113-63c8f0bed205', 'admin', '2023-01-19 07:27:48', '2023-01-19 07:27:48', '1', '1', NULL, 0, NULL, NULL, 1, '60a9f033-8312-1453-246d-63c8f004f335', 'EMP_Employee'),
('d74642fc-8413-2aac-2431-635b7cd6d5cf', 'kamalesh', '2022-10-28 06:55:56', '2022-10-28 06:57:50', '1', '1', NULL, 0, '', NULL, 1, '738ed7bb-9148-bf0e-3f66-635b7cfb0481', 'SLY_Salary'),
('d7700ff6-f7ca-eaac-0ebb-63d3b3340a32', 'PRO_6', '2023-01-27 11:21:16', '2023-01-27 11:21:16', '1', '1', NULL, 0, NULL, NULL, 1, 'bdf3ede9-8411-e6a4-1bfa-63d3b3aa98e9', 'pro_Projects'),
('db96e6bf-d007-3cad-e234-63c91928fd79', 'lokesh', '2023-01-19 10:21:20', '2023-01-19 10:21:20', '1', '1', NULL, 0, NULL, NULL, 1, '3f4417ec-dc7e-e252-d9e7-63c919777f24', 'EMP_Employee'),
('e3afba0b-fdd6-6115-6200-6388573b40f1', 'kamalesh', '2022-12-01 07:26:04', '2022-12-01 07:26:04', '1', '1', NULL, 0, NULL, NULL, 1, '34f4395e-a987-17e2-a421-638857392f07', 'at_Attentance'),
('e4af0274-f86a-9f62-3b27-63f5fa9082c5', 'EMP_7', '2023-02-22 11:20:30', '2023-02-22 11:20:30', '1', '1', NULL, 0, NULL, NULL, 1, '81a1ade6-8a93-f010-f494-63f5fa4fe72b', 'EMP_Employee_List'),
('e71d0757-060e-4bb5-1a2c-635249ae0e4d', 'kamalesh', '2022-10-21 07:27:05', '2022-10-21 07:27:05', '1', '1', NULL, 0, NULL, NULL, 1, 'b4528914-7ac8-df22-307a-635249e04ee9', 'EMP_Employees'),
('ec1d0a0c-d6be-e066-c658-63f4c94b4766', 'EMP_5', '2023-02-21 13:39:32', '2023-02-21 13:39:32', '1', '1', NULL, 0, NULL, NULL, 1, '508492db-9f9c-45e4-c9d3-63f4c90d7ec7', 'EMP_Employee_List'),
('ee9c5d2a-f3fa-3a5c-382d-63527f757b8d', 'karthi', '2022-10-21 11:15:07', '2022-10-21 11:15:07', '1', '1', NULL, 0, NULL, NULL, 1, 'a5bc2304-6e99-dda5-d649-63527f6a1abb', 'EMP_Employees');

-- --------------------------------------------------------

--
-- Table structure for table `aod_indexevent_audit`
--

CREATE TABLE `aod_indexevent_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aod_index_audit`
--

CREATE TABLE `aod_index_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_events`
--

CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_events_audit`
--

CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_updates`
--

CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aop_case_updates_audit`
--

CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_charts`
--

CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `x_field` int(11) DEFAULT NULL,
  `y_field` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_conditions`
--

CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_fields`
--

CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_reports`
--

CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_reports_audit`
--

CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aor_scheduled_reports`
--

CREATE TABLE `aor_scheduled_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `schedule` varchar(100) DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `email_recipients` longtext,
  `aor_report_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts`
--

CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts_audit`
--

CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_contracts_documents`
--

CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_invoices`
--

CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int(11) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_invoices_audit`
--

CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_line_item_groups`
--

CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_line_item_groups_audit`
--

CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_pdf_templates`
--

CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` text,
  `pdffooter` text,
  `margin_left` int(255) DEFAULT '15',
  `margin_right` int(255) DEFAULT '15',
  `margin_top` int(255) DEFAULT '16',
  `margin_bottom` int(255) DEFAULT '16',
  `margin_header` int(255) DEFAULT '9',
  `margin_footer` int(255) DEFAULT '9'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_pdf_templates_audit`
--

CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products`
--

CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_audit`
--

CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_quotes`
--

CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text,
  `number` int(11) DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_products_quotes_audit`
--

CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_product_categories`
--

CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT '0',
  `parent_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_product_categories_audit`
--

CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes`
--

CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int(11) NOT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_aos_invoices_c`
--

CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_audit`
--

CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_os_contracts_c`
--

CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aos_quotes_project_c`
--

CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_actions`
--

CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int(255) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_conditions`
--

CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_processed`
--

CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_processed_aow_actions`
--

CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_workflow`
--

CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Create',
  `multiple_runs` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aow_workflow_audit`
--

CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `at_attentance`
--

CREATE TABLE `at_attentance` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `record_number` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `at_attentance`
--

INSERT INTO `at_attentance` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `record_number`) VALUES
('13480227-3f80-a014-351c-63d3b4736d3e', 'ATT_10', NULL, '2023-02-22 07:09:35', '1', '1', '', 1, NULL, 10),
('16ee83cc-d0e3-4f22-a44e-63d3ae6aacd3', 'ATT_8', NULL, '2023-01-27 11:19:51', '1', '1', 'test', 1, NULL, 8),
('1ad5051c-9f2f-cfc2-08c3-63d1151dc6de', 'ATT_3', '2023-01-25 11:42:07', '2023-01-27 06:24:43', '1', '1', 'test', 1, '', 3),
('300cadf5-b3b8-c036-0b5a-63f61fcc7abc', 'ATT_13', '2023-02-22 13:59:14', '2023-02-22 13:59:14', '1', '1', 'test', 0, NULL, 13),
('34f4395e-a987-17e2-a421-638857392f07', 'kamalesh', '2022-12-01 07:26:04', '2023-01-24 06:23:19', '1', '1', 'test', 1, '1', 1),
('351eeb9a-e442-e7e8-0830-63d3a3912004', 'ATT_5', '2023-01-27 10:11:51', '2023-01-27 11:20:02', '1', '1', 'test', 1, '', 5),
('38b0f80d-9b14-d2e7-393d-63d3b77be099', 'ATT_11', NULL, '2023-01-27 11:36:04', '1', '1', 'test', 0, NULL, 11),
('38c58fbf-8fd0-1e67-546e-63d3a7b75223', 'ATT_6', '2023-01-27 10:30:55', '2023-01-27 11:20:02', '1', '1', '', 1, NULL, 6),
('455fd05a-5532-2356-ac14-63d36d24864b', 'ATT_4', '2023-01-27 06:22:45', '2023-01-27 06:24:53', '1', '1', 'test', 1, NULL, 4),
('5a170d44-07c1-22c3-ebcd-63d3ad0e5d45', 'ATT_7', NULL, '2023-01-27 11:20:02', '1', '1', 'test', 1, NULL, 7),
('a145dfab-9847-3981-e0e8-63d4c0747d08', 'ATT_12', NULL, '2023-01-28 06:27:48', '1', '1', 'test', 0, NULL, 12),
('cdd90384-4e9a-b619-52ab-63885c5cbc10', 'test', '2022-12-01 07:50:57', '2023-01-24 06:23:19', '1', '1', 'testing', 1, '1', 2),
('d9675e71-2598-b64d-a6af-63d3b32db81f', 'ATT_9', '2023-01-27 11:20:51', '2023-01-27 11:20:51', '1', '1', 'test', 0, NULL, 9);

-- --------------------------------------------------------

--
-- Table structure for table `at_attentance_audit`
--

CREATE TABLE `at_attentance_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `at_attentance_cstm`
--

CREATE TABLE `at_attentance_cstm` (
  `id_c` char(36) NOT NULL,
  `entry_time_c` datetime DEFAULT NULL,
  `exit_time_c` datetime DEFAULT NULL,
  `attentance_absent_c` varchar(255) DEFAULT NULL,
  `attentance_joining_date_c` date DEFAULT NULL,
  `attentance_emp_name_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `at_attentance_cstm`
--

INSERT INTO `at_attentance_cstm` (`id_c`, `entry_time_c`, `exit_time_c`, `attentance_absent_c`, `attentance_joining_date_c`, `attentance_emp_name_c`) VALUES
('13480227-3f80-a014-351c-63d3b4736d3e', '2023-01-26 23:00:00', '2023-01-04 23:00:00', '7', '2023-01-06', 'kamalesh.K'),
('16ee83cc-d0e3-4f22-a44e-63d3ae6aacd3', '2023-01-04 23:00:00', '2023-01-03 23:00:00', '5', '2023-01-05', 'kamalesh.K'),
('1ad5051c-9f2f-cfc2-08c3-63d1151dc6de', '2023-01-24 23:00:00', '2023-01-09 23:00:00', '2', '2023-01-19', 'kamal'),
('300cadf5-b3b8-c036-0b5a-63f61fcc7abc', '2023-02-21 23:00:00', '2021-03-15 23:00:00', '3', '2023-02-22', 'mani'),
('34f4395e-a987-17e2-a421-638857392f07', '2022-11-30 23:00:00', '2022-12-08 23:00:00', NULL, NULL, NULL),
('351eeb9a-e442-e7e8-0830-63d3a3912004', '2023-01-26 23:00:00', '2023-01-15 23:00:00', '7', '2023-01-07', 'kamal'),
('38b0f80d-9b14-d2e7-393d-63d3b77be099', '2023-01-26 23:00:00', '2023-01-03 23:00:00', '2', '2023-01-07', 'kamalesh.K'),
('38c58fbf-8fd0-1e67-546e-63d3a7b75223', '2023-01-26 23:00:00', '2023-01-11 23:00:00', '2', '2023-01-05', 'kali'),
('455fd05a-5532-2356-ac14-63d36d24864b', '2023-01-02 09:00:00', '2023-01-01 19:00:00', '7', '2023-01-02', 'karthick raj'),
('5a170d44-07c1-22c3-ebcd-63d3ad0e5d45', '2023-01-09 23:00:00', '2023-01-03 23:00:00', '1', '2023-01-05', 'kamalesh.K'),
('a145dfab-9847-3981-e0e8-63d4c0747d08', '2023-01-27 23:00:00', '2023-01-11 23:00:00', '3', '2023-01-05', 'Karthick Raj'),
('cdd90384-4e9a-b619-52ab-63885c5cbc10', '2022-11-30 23:00:00', '2022-12-07 23:00:00', NULL, NULL, NULL),
('d9675e71-2598-b64d-a6af-63d3b32db81f', '2023-01-26 23:00:00', '2023-01-03 23:00:00', '2', '2023-01-05', 'raja');

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bugs_audit`
--

CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_contacts`
--

CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_leads`
--

CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_reschedule`
--

CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_reschedule_audit`
--

CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_users`
--

CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `tracker_count` int(11) DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns_audit`
--

CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_log`
--

CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_trkrs`
--

CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(30) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  `contact_created_by_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases_audit`
--

CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases_bugs`
--

CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases_cstm`
--

CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cli_clients`
--

CREATE TABLE `cli_clients` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cli_clients_audit`
--

CREATE TABLE `cli_clients_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cli_clients_cstm`
--

CREATE TABLE `cli_clients_cstm` (
  `id_c` char(36) NOT NULL,
  `client_name_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`category`, `name`, `value`) VALUES
('notify', 'fromaddress', 'do_not_reply@example.com'),
('notify', 'fromname', 'SuiteCRM'),
('notify', 'send_by_default', '1'),
('notify', 'on', '1'),
('notify', 'send_from_assigning_user', '0'),
('info', 'sugar_version', '6.5.20'),
('MySettings', 'tab', 'YToxNDp7czo0OiJIb21lIjtzOjQ6IkhvbWUiO3M6ODoiQWNjb3VudHMiO3M6ODoiQWNjb3VudHMiO3M6MTM6ImF0X0F0dGVudGFuY2UiO3M6MTM6ImF0X0F0dGVudGFuY2UiO3M6ODoiQ29udGFjdHMiO3M6ODoiQ29udGFjdHMiO3M6NToiVGFza3MiO3M6NToiVGFza3MiO3M6ODoiTWVldGluZ3MiO3M6ODoiTWVldGluZ3MiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTc6InNoX1NhbGFyeV9IaXN0b3J5IjtzOjE3OiJzaF9TYWxhcnlfSGlzdG9yeSI7czo1OiJMZWFkcyI7czo1OiJMZWFkcyI7czoxMjoicHJvX1Byb2plY3RzIjtzOjEyOiJwcm9fUHJvamVjdHMiO3M6MTc6IkVNUF9FbXBsb3llZV9MaXN0IjtzOjE3OiJFTVBfRW1wbG95ZWVfTGlzdCI7czoxMjoiUEFZX1BheW1lbnRzIjtzOjEyOiJQQVlfUGF5bWVudHMiO3M6ODoiU0tfU2tpbGwiO3M6ODoiU0tfU2tpbGwiO3M6MTE6IkNMSV9DbGllbnRzIjtzOjExOiJDTElfQ2xpZW50cyI7fQ=='),
('portal', 'on', '0'),
('tracker', 'Tracker', '1'),
('system', 'skypeout_on', '1'),
('sugarfeed', 'enabled', '1'),
('sugarfeed', 'module_UserFeed', '1'),
('sugarfeed', 'module_Cases', '1'),
('sugarfeed', 'module_Contacts', '1'),
('sugarfeed', 'module_Leads', '1'),
('sugarfeed', 'module_Opportunities', '1'),
('Update', 'CheckUpdates', 'manual'),
('system', 'name', 'Selten Technologies'),
('system', 'adminwizard', '1'),
('notify', 'allow_default_outbound', '0'),
('MySettings', 'disable_useredit', 'no'),
('MySettings', 'hide_subpanels', 'YTowOnt9'),
('proxy', 'on', '0'),
('proxy', 'host', ''),
('proxy', 'port', ''),
('proxy', 'auth', '0'),
('proxy', 'username', 'admin'),
('proxy', 'password', 'ZvkxtBb2Zro=');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT '0',
  `portal_user_type` varchar(100) DEFAULT 'Single'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_audit`
--

CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_bugs`
--

CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cases`
--

CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cstm`
--

CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_users`
--

CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cron_remove_documents`
--

CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `document_name`, `doc_id`, `doc_type`, `doc_url`, `active_date`, `exp_date`, `category_id`, `subcategory_id`, `status_id`, `document_revision_id`, `related_doc_id`, `related_doc_rev_id`, `is_template`, `template_type`) VALUES
('460f1886-8ee6-13a0-64dc-638ee63043cf', '2022-12-06 06:52:16', '2022-12-06 06:52:16', '1', '1', 'test', 0, NULL, 'kamalesh', '', 'Sugar', '', '2022-12-06', NULL, 'Sales', NULL, 'Expired', '514c6cb0-cc98-cc13-5d69-638ee6584413', NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `documents_accounts`
--

CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_bugs`
--

CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_cases`
--

CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_contacts`
--

CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_opportunities`
--

CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `document_revisions`
--

CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `document_revisions`
--

INSERT INTO `document_revisions` (`id`, `change_log`, `document_id`, `doc_id`, `doc_type`, `doc_url`, `date_entered`, `created_by`, `filename`, `file_ext`, `file_mime_type`, `revision`, `deleted`, `date_modified`) VALUES
('514c6cb0-cc98-cc13-5d69-638ee6584413', 'Document Created', '460f1886-8ee6-13a0-64dc-638ee63043cf', '', 'Sugar', '', '2022-12-06 06:52:16', '1', 'logo.ico', 'ico', 'image/x-icon', '1', 0, '2022-12-06 06:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `eapm`
--

CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emailman`
--

CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails_beans`
--

CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails_email_addr_rel`
--

CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails_text`
--

CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_addresses`
--

CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_addresses`
--

INSERT INTO `email_addresses` (`id`, `email_address`, `email_address_caps`, `invalid_email`, `opt_out`, `date_created`, `date_modified`, `deleted`) VALUES
('6292251d-5f28-926c-31c4-63d7ce4ecc6f', 'Ragukumar123@gmail.com', 'RAGUKUMAR123@GMAIL.COM', 0, 0, '2023-01-30 14:03:17', '2023-01-30 14:03:17', 0),
('bcf7e85c-9423-768b-2608-634e3e887d50', 'harishkali7218@gmail.com', 'HARISHKALI7218@GMAIL.COM', 0, 0, '2022-10-18 05:50:02', '2022-10-18 05:50:02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_addr_bean_rel`
--

CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_addr_bean_rel`
--

INSERT INTO `email_addr_bean_rel` (`id`, `email_address_id`, `bean_id`, `bean_module`, `primary_address`, `reply_to_address`, `date_created`, `date_modified`, `deleted`) VALUES
('62456391-ad5c-aacc-3b7b-63d7ce570e2b', '6292251d-5f28-926c-31c4-63d7ce4ecc6f', '42e1c8dc-ae01-9efb-5fee-63d7ceb668ef', 'Users', 1, 0, '2023-01-30 14:03:17', '2023-01-30 14:03:17', 0),
('bca0e06a-c4a6-f2d1-8624-634e3e51f8f2', 'bcf7e85c-9423-768b-2608-634e3e887d50', '1', 'Users', 1, 0, '2022-10-18 05:50:02', '2022-10-18 05:50:02', 0),
('ef51f603-bd80-2676-28f1-639433c8fcac', 'bcf7e85c-9423-768b-2608-634e3e887d50', 'cedc344d-e69a-331d-33cb-63943345eb53', 'Users', 1, 0, '2022-12-10 07:23:08', '2022-12-10 07:23:08', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_cache`
--

CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) UNSIGNED DEFAULT NULL,
  `imap_uid` int(10) UNSIGNED DEFAULT NULL,
  `msgno` int(10) UNSIGNED DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_marketing`
--

CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_marketing_prospect_lists`
--

CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `body_html` text,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `published`, `name`, `description`, `subject`, `body`, `body_html`, `deleted`, `assigned_user_id`, `text_only`, `type`) VALUES
('135629d8-f29d-ad7f-da42-634e3e9ef72a', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '1', 'off', 'Joomla Account Creation', 'Template used when informing a contact that they\'ve been given an account on the joomla portal.', 'Support Portal Account Created', 'Hi $contact_name,\r\n					   An account has been created for you at $portal_address.\r\n					   You may login using this email address and the password $joomla_pass', '<p>Hi $contact_name,</p>\r\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\r\n					    <p>You may login using this email address and the password $joomla_pass</p>', 0, NULL, NULL, NULL),
('196e9c29-8548-b67a-e946-634e3e280aa9', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '1', 'off', 'Case Creation', 'Template to send to a contact when a case is received from them.', '$acase_name [CASE:$acase_case_number]', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\r\n					   Status:		$acase_status\r\n					   Reference:	$acase_case_number\r\n					   Description:	$acase_description', '<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Description</td><td>$acase_description</td></tr></tbody></table>', 0, NULL, NULL, NULL),
('1fe3ed12-c861-fc8e-32be-634e3ec6021e', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '1', 'off', 'Contact Case Update', 'Template to send to a contact when their case is updated.', '$acase_name update [CASE:$acase_case_number]', 'Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description', '<p>Hi $contact_first_name $contact_last_name,</p>\r\n					    <p> </p>\r\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\r\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>', 0, NULL, NULL, NULL),
('2a6372ef-382c-7e74-3642-634e3eb55508', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '1', 'off', 'User Case Update', 'Email template to send to a Sugar user when their case is updated.', '$acase_name (# $acase_case_number) update', 'Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description\r\n                        You may review this Case at:\r\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;', '<p>Hi $user_first_name $user_last_name,</p>\r\n					   <p> </p>\r\n					   <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					   <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\r\n					   <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\r\n					   <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>\r\n					   ', 0, NULL, NULL, NULL),
('86d41609-8f83-7f30-8561-634e3e95df2a', '2013-05-24 14:31:45', '2022-10-18 05:48:09', '1', '1', 'off', 'Event Invite Template', 'Default event invite template.', 'You have been invited to $fp_events_name', 'Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n', '\r\n<p>Dear $contact_name,</p>\r\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p>$fp_events_description</p>\r\n<p>If you would like to accept this invititation please click accept.</p>\r\n<p> $fp_events_link or $fp_events_link_declined</p>\r\n<p>Yours Sincerely,</p>\r\n', 0, NULL, NULL, 'email'),
('97b4718d-f0f5-3d50-349c-634e3e7b5c38', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '1', 'off', 'System-generated password email', 'This template is used when the System Administrator sends a new password to a user.', 'New account information', '\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.', '<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, NULL),
('9e0626cf-b50f-24ec-e514-634e3e82ba6e', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '1', 'off', 'Forgot Password email', 'This template is used to send a user a link to click to reset the user\'s account password.', 'Reset your account password', '\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid', '<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, NULL),
('ed980007-6458-8317-af56-634e3e84dddb', '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '1', 'off', 'Case Closure', 'Template for informing a contact that their case has been closed.', '$acase_name [CASE:$acase_case_number] closed', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					   Status:				$acase_status\r\n					   Reference:			$acase_case_number\r\n					   Resolution:			$acase_resolution', '<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Resolution</td><td>$acase_resolution</td></tr></tbody></table>', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emp_employee`
--

CREATE TABLE `emp_employee` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `record_number` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_employees`
--

CREATE TABLE `emp_employees` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `record_number` int(255) NOT NULL,
  `absent_c` int(11) DEFAULT NULL,
  `hours_c` datetime DEFAULT NULL,
  `name_c` varchar(255) DEFAULT NULL,
  `report_c` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_employees_at_attentance_1_c`
--

CREATE TABLE `emp_employees_at_attentance_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `emp_employees_at_attentance_1emp_employees_ida` varchar(36) DEFAULT NULL,
  `emp_employees_at_attentance_1at_attentance_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_employees_audit`
--

CREATE TABLE `emp_employees_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_employees_cstm`
--

CREATE TABLE `emp_employees_cstm` (
  `id_c` char(36) NOT NULL,
  `employe_conform_date_c` date DEFAULT NULL,
  `employe_join_date_c` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_employees_documents_1_c`
--

CREATE TABLE `emp_employees_documents_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `emp_employees_documents_1emp_employees_ida` varchar(36) DEFAULT NULL,
  `emp_employees_documents_1documents_idb` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emp_employees_documents_1_c`
--

INSERT INTO `emp_employees_documents_1_c` (`id`, `date_modified`, `deleted`, `emp_employees_documents_1emp_employees_ida`, `emp_employees_documents_1documents_idb`, `document_revision_id`) VALUES
('7e3ae7f1-2e4a-da26-4622-638ee6673d18', '2022-12-06 06:52:16', 0, '4267076e-77d2-728c-1c98-635cba7dc597', '460f1886-8ee6-13a0-64dc-638ee63043cf', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emp_employees_pro_projects_1_c`
--

CREATE TABLE `emp_employees_pro_projects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `emp_employees_pro_projects_1emp_employees_ida` varchar(36) DEFAULT NULL,
  `emp_employees_pro_projects_1pro_projects_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emp_employees_pro_projects_1_c`
--

INSERT INTO `emp_employees_pro_projects_1_c` (`id`, `date_modified`, `deleted`, `emp_employees_pro_projects_1emp_employees_ida`, `emp_employees_pro_projects_1pro_projects_idb`) VALUES
('abf14abb-8328-1c99-5655-63c91f0de0c0', '2023-01-19 10:44:53', 0, '4267076e-77d2-728c-1c98-635cba7dc597', 'aa19b04f-fb44-6261-f084-63c91f53d74e');

-- --------------------------------------------------------

--
-- Table structure for table `emp_employees_sh_salary_history_1_c`
--

CREATE TABLE `emp_employees_sh_salary_history_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `emp_employees_sh_salary_history_1emp_employees_ida` varchar(36) DEFAULT NULL,
  `emp_employees_sh_salary_history_1sh_salary_history_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_employees_tasks_1_c`
--

CREATE TABLE `emp_employees_tasks_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `emp_employees_tasks_1emp_employees_ida` varchar(36) DEFAULT NULL,
  `emp_employees_tasks_1tasks_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_employee_audit`
--

CREATE TABLE `emp_employee_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_employee_cstm`
--

CREATE TABLE `emp_employee_cstm` (
  `id_c` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_employee_list`
--

CREATE TABLE `emp_employee_list` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `record_number` int(255) NOT NULL,
  `emp_skill_c` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emp_employee_list`
--

INSERT INTO `emp_employee_list` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `record_number`, `emp_skill_c`) VALUES
('1b1f65dd-3f65-dfd6-e636-63d3c2f4ad2e', 'EMP_4', '2023-01-27 12:22:26', '2023-01-31 12:26:28', '1', '1', NULL, 0, '', 4, NULL),
('28e7bb6e-ffd9-89a5-1af9-63d0c1069938', 'EMP_1', '2023-01-25 05:45:14', '2023-01-30 13:29:41', '1', '1', NULL, 0, '', 1, NULL),
('344b0904-cbdb-dcdd-0b5c-63f5a4745aa5', 'EMP_6', '2023-02-22 05:12:18', '2023-02-22 05:12:18', '1', '1', NULL, 0, NULL, 6, '0'),
('508492db-9f9c-45e4-c9d3-63f4c90d7ec7', 'EMP_5', '2023-02-21 13:39:32', '2023-02-21 13:39:32', '1', '1', NULL, 0, NULL, 5, NULL),
('55de057b-8cc0-423f-18cb-63d3ba47c4d2', 'EMP_3', '2023-01-27 11:50:10', '2023-01-30 12:30:58', '1', '1', NULL, 0, '', 3, NULL),
('81a1ade6-8a93-f010-f494-63f5fa4fe72b', 'EMP_7', '2023-02-22 11:20:30', '2023-02-22 11:20:30', '1', '1', NULL, 0, NULL, 7, '2'),
('92fd65e2-d16c-6639-9299-63cf77ae0def', 'kamalesh', '2023-01-24 06:16:34', '2023-01-25 05:43:50', '1', '1', NULL, 1, '', 2, NULL),
('b60c5610-6fa0-1c8d-79fc-63f5fbc8becf', 'EMP_8', '2023-02-22 11:22:51', '2023-02-22 11:22:51', '1', '1', NULL, 0, NULL, 8, '1');

-- --------------------------------------------------------

--
-- Table structure for table `emp_employee_list_at_attentance_1_c`
--

CREATE TABLE `emp_employee_list_at_attentance_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `emp_employee_list_at_attentance_1emp_employee_list_ida` varchar(36) DEFAULT NULL,
  `emp_employee_list_at_attentance_1at_attentance_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emp_employee_list_at_attentance_1_c`
--

INSERT INTO `emp_employee_list_at_attentance_1_c` (`id`, `date_modified`, `deleted`, `emp_employee_list_at_attentance_1emp_employee_list_ida`, `emp_employee_list_at_attentance_1at_attentance_idb`) VALUES
('195bc85e-8447-9f4e-2df3-63d3ae8abac4', '2023-01-27 11:19:51', 1, '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', '16ee83cc-d0e3-4f22-a44e-63d3ae6aacd3'),
('35ca003c-b7c4-3a27-8d29-63d3b4b1cdb0', '2023-02-22 07:09:35', 1, '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', '13480227-3f80-a014-351c-63d3b4736d3e'),
('381c5228-939e-1024-2076-63d3a3572370', '2023-01-27 11:20:02', 1, '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', '351eeb9a-e442-e7e8-0830-63d3a3912004'),
('3b0c5186-ba1b-c2ef-8f49-63d3a7c68238', '2023-01-27 11:20:02', 1, '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', '38c58fbf-8fd0-1e67-546e-63d3a7b75223'),
('3b5cdd9a-dbfb-866a-7d6e-63d3b7f2042e', '2023-01-27 11:36:04', 0, '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', '38b0f80d-9b14-d2e7-393d-63d3b77be099'),
('43680d9f-7e23-02f4-5353-63d1159733ba', '2023-01-27 06:24:43', 1, '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', '1ad5051c-9f2f-cfc2-08c3-63d1151dc6de'),
('4e7f2a60-7008-0906-34bf-63d3aaad21e1', '2023-01-27 10:42:59', 0, '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', '4c22d689-c40c-2101-2547-63d3aaaf3213'),
('50a771df-7195-0fc9-d638-63d3aaa8c7ba', '2023-01-27 10:43:29', 0, '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', '4c9ff2fb-2974-ccb2-6aff-63d3aa4a838b'),
('67944653-a56d-55e1-f7af-63d3a2117d84', '2023-01-27 10:09:55', 0, '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', '64cd96b2-68eb-bb57-89a7-63d3a2098afc'),
('71013062-91dd-82b5-5672-63d36ddcb0b7', '2023-01-27 06:24:53', 1, '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', '455fd05a-5532-2356-ac14-63d36d24864b'),
('7f6f09c3-1687-2278-2b7f-63d3adf96f61', '2023-01-27 11:20:02', 1, '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', '5a170d44-07c1-22c3-ebcd-63d3ad0e5d45'),
('a3c0ddca-6e7c-6b63-8d7a-63d4c0d934f9', '2023-01-28 06:27:48', 0, '1b1f65dd-3f65-dfd6-e636-63d3c2f4ad2e', 'a145dfab-9847-3981-e0e8-63d4c0747d08'),
('c3ce4356-8c35-303f-823d-63d3a9f51346', '2023-01-27 10:37:10', 0, '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', 'c0d615f7-5103-3abd-856d-63d3a9d90871'),
('c9f57655-70fb-43a8-4c98-63d3adb3f0f0', '2023-01-27 10:54:48', 0, '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', 'c76ef537-3930-a7c3-d0d0-63d3adc4757c'),
('dbefb6a0-504a-7642-ba66-63d3b3c2e465', '2023-01-27 11:20:51', 0, '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', 'd9675e71-2598-b64d-a6af-63d3b32db81f'),
('edb4fbc4-7f3b-7f99-c631-63d3adc7e4ef', '2023-01-27 10:54:09', 0, '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', 'ea119023-49ce-a0cb-7815-63d3ada2054b');

-- --------------------------------------------------------

--
-- Table structure for table `emp_employee_list_audit`
--

CREATE TABLE `emp_employee_list_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emp_employee_list_cstm`
--

CREATE TABLE `emp_employee_list_cstm` (
  `id_c` char(36) NOT NULL,
  `emp_username_c` varchar(255) DEFAULT NULL,
  `emp_email_c` varchar(255) DEFAULT NULL,
  `emp_address_c` text,
  `emp_contact_c` varchar(255) DEFAULT NULL,
  `emp_gender_c` varchar(100) DEFAULT NULL,
  `emp_dob_c` date DEFAULT NULL,
  `employee_status_c` varchar(100) DEFAULT NULL,
  `various_types_c` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emp_employee_list_cstm`
--

INSERT INTO `emp_employee_list_cstm` (`id_c`, `emp_username_c`, `emp_email_c`, `emp_address_c`, `emp_contact_c`, `emp_gender_c`, `emp_dob_c`, `employee_status_c`, `various_types_c`) VALUES
('1b1f65dd-3f65-dfd6-e636-63d3c2f4ad2e', 'Karthick Raj', 'karthi123@gmail.com', '', '12348562', 'male', '2023-01-19', 'active', NULL),
('28e7bb6e-ffd9-89a5-1af9-63d0c1069938', 'kamalesh.K', 'test123@gmail.com', '', '985634532', 'male', '2023-01-09', 'active', NULL),
('344b0904-cbdb-dcdd-0b5c-63f5a4745aa5', 'karan', 'karan123@gmail.com', '', '9876543432', 'male', '2023-02-11', 'active', NULL),
('508492db-9f9c-45e4-c9d3-63f4c90d7ec7', 'Mani', 'mani123@gmail.com', '', '7654345676', 'male', '2023-02-23', 'active', NULL),
('55de057b-8cc0-423f-18cb-63d3ba47c4d2', 'vicknesh', 'test123@gmail.com', '', '6545676554', 'male', '2023-01-13', 'active', NULL),
('81a1ade6-8a93-f010-f494-63f5fa4fe72b', 'harish', 'harish123@gmail.com', '', '8765536432', 'male', '2023-02-16', 'active', NULL),
('92fd65e2-d16c-6639-9299-63cf77ae0def', 'kamalesh', 'kamalesh123@gmail.com', 'test', '12348562', 'male', '2023-01-04', NULL, NULL),
('b60c5610-6fa0-1c8d-79fc-63f5fbc8becf', 'test', 'test123@gmail.com', '', '7654345676', '^male^,^female^', '2023-02-11', 'active', '');

-- --------------------------------------------------------

--
-- Table structure for table `emp_employee_list_pro_projects_1_c`
--

CREATE TABLE `emp_employee_list_pro_projects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `emp_employee_list_pro_projects_1emp_employee_list_ida` varchar(36) DEFAULT NULL,
  `emp_employee_list_pro_projects_1pro_projects_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emp_employee_list_pro_projects_1_c`
--

INSERT INTO `emp_employee_list_pro_projects_1_c` (`id`, `date_modified`, `deleted`, `emp_employee_list_pro_projects_1emp_employee_list_ida`, `emp_employee_list_pro_projects_1pro_projects_idb`) VALUES
('24db7d79-1331-e2e7-ab30-63d36c9478c5', '2023-01-27 07:06:22', 1, '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', 'f0ec95a4-3726-ae4c-0232-63cf7a684e80'),
('5f42bdd8-8008-62ef-6947-63ff50772de5', '2023-03-01 13:19:27', 1, '1b1f65dd-3f65-dfd6-e636-63d3c2f4ad2e', '6baefc3b-b985-a6d4-73cc-63d3b5c3f3ba'),
('64d3f31f-4650-b75b-feef-63ff50ded3fa', '2023-03-01 13:19:27', 1, '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', '6baefc3b-b985-a6d4-73cc-63d3b5c3f3ba'),
('6904875e-511d-2388-3ea2-63f5c99e4fd0', '2023-02-23 04:47:54', 1, '344b0904-cbdb-dcdd-0b5c-63f5a4745aa5', '5f9d8183-5ee9-394f-651e-63f5c95bb6ca'),
('6b36f094-8456-cedd-8956-63ff50a8fa82', '2023-03-01 13:19:27', 0, '1b1f65dd-3f65-dfd6-e636-63d3c2f4ad2e', '6baefc3b-b985-a6d4-73cc-63d3b5c3f3ba'),
('6de172ee-21ca-8d5c-a8f9-63d3b5b9661e', '2023-03-01 13:19:27', 1, '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', '6baefc3b-b985-a6d4-73cc-63d3b5c3f3ba'),
('b641359d-aad9-e397-8caf-63f6efa4d6e9', '2023-02-23 04:47:54', 1, '508492db-9f9c-45e4-c9d3-63f4c90d7ec7', '5f9d8183-5ee9-394f-651e-63f5c95bb6ca'),
('b9f61067-f9bf-7e70-1796-63f6ef2dad87', '2023-02-23 04:47:54', 1, '344b0904-cbdb-dcdd-0b5c-63f5a4745aa5', '5f9d8183-5ee9-394f-651e-63f5c95bb6ca'),
('c0207845-7a0b-4436-4bf7-63f6ef65ef5d', '2023-02-23 04:47:54', 0, '508492db-9f9c-45e4-c9d3-63f4c90d7ec7', '5f9d8183-5ee9-394f-651e-63f5c95bb6ca'),
('c0888cb8-c5de-f35d-2a95-63d3b37cc59e', '2023-01-27 11:21:16', 0, '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', 'bdf3ede9-8411-e6a4-1bfa-63d3b3aa98e9'),
('da79bb06-c2ca-28d8-9b94-63d3b0bdcc2b', '2023-01-27 11:20:18', 1, '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', 'd682fb16-2809-2ac8-c921-63d3b0731e4b');

-- --------------------------------------------------------

--
-- Table structure for table `emp_employee_list_sh_salary_history_1_c`
--

CREATE TABLE `emp_employee_list_sh_salary_history_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `emp_employee_list_sh_salary_history_1emp_employee_list_ida` varchar(36) DEFAULT NULL,
  `emp_employee_list_sh_salary_history_1sh_salary_history_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emp_employee_list_sh_salary_history_1_c`
--

INSERT INTO `emp_employee_list_sh_salary_history_1_c` (`id`, `date_modified`, `deleted`, `emp_employee_list_sh_salary_history_1emp_employee_list_ida`, `emp_employee_list_sh_salary_history_1sh_salary_history_idb`) VALUES
('32e56cb9-2c26-b9ea-315a-63d117859d5d', '2023-01-27 07:06:54', 1, '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', '3004f8c2-d10d-5495-f45f-63d1170f8c4b'),
('5fdad38b-1d57-095e-e6de-63d3b793fa22', '2023-01-27 11:35:34', 0, '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', '5db49c71-3350-55e8-0950-63d3b77a23a4'),
('73ab0797-4ce4-736a-62d9-63d3b361b09e', '2023-01-27 11:21:36', 0, '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', '3e650d03-7e3a-c769-46ed-63d3b398d909');

-- --------------------------------------------------------

--
-- Table structure for table `fields_meta_data`
--

CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint(6) DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fields_meta_data`
--

INSERT INTO `fields_meta_data` (`id`, `name`, `vname`, `comments`, `help`, `custom_module`, `type`, `len`, `required`, `default_value`, `date_modified`, `deleted`, `audited`, `massupdate`, `duplicate_merge`, `reportable`, `importable`, `ext1`, `ext2`, `ext3`, `ext4`) VALUES
('Accountsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Accounts', 'varchar', 255, 0, NULL, '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Accounts', 'varchar', 255, 0, NULL, '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Accounts', 'float', 10, 0, '0.00000000', '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Accountsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Accounts', 'float', 11, 0, '0.00000000', '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('at_Attentanceattentance_absent_c', 'attentance_absent_c', 'LBL_ATTENTANCE_ABSENT_C', '', '', 'at_Attentance', 'varchar', 255, 0, '', '2023-01-25 04:52:39', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('at_Attentanceattentance_emp_name_c', 'attentance_emp_name_c', 'LBL_ATTENTANCE_EMP_NAME_C', '', '', 'at_Attentance', 'varchar', 255, 1, '', '2023-01-25 10:51:50', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('at_Attentanceattentance_joining_date_c', 'attentance_joining_date_c', 'LBL_ATTENTANCE_JOINING_DATE_C', '', '', 'at_Attentance', 'date', NULL, 1, '', '2023-01-25 04:55:07', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('at_Attentanceentry_time_c', 'entry_time_c', 'LBL_ENTRY_TIME_C', '', '', 'at_Attentance', 'datetimecombo', NULL, 1, 'now&12:00am', '2022-12-01 06:59:14', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('at_Attentanceexit_time_c', 'exit_time_c', 'LBL_EXIT_TIME_C', '', '', 'at_Attentance', 'datetimecombo', NULL, 1, '', '2022-12-01 06:59:55', 0, 1, 0, 0, 1, 'true', '', '', '', ''),
('Casesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Cases', 'varchar', 255, 0, NULL, '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Cases', 'varchar', 255, 0, NULL, '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Cases', 'float', 10, 0, '0.00000000', '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Cases', 'float', 11, 0, '0.00000000', '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('CLI_Clientsclient_name_c', 'client_name_c', 'LBL_CLIENT_NAME_C', '', '', 'CLI_Clients', 'varchar', 255, 1, '', '2023-02-22 11:14:50', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Contactsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Contacts', 'varchar', 255, 0, NULL, '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Contacts', 'varchar', 255, 0, NULL, '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Contacts', 'float', 10, 0, '0.00000000', '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Contacts', 'float', 11, 0, '0.00000000', '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('EMP_Employeesemploye_conform_date_c', 'employe_conform_date_c', 'LBL_EMPLOYE_CONFORM_DATE_C', '', '', 'EMP_Employees', 'date', NULL, 1, '', '2022-12-07 06:22:15', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('EMP_Employeesemploye_join_date_c', 'employe_join_date_c', 'LBL_EMPLOYE_JOIN_DATE_C', '', '', 'EMP_Employees', 'date', NULL, 1, '', '2022-12-07 06:21:35', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('EMP_Employeeuser_attentance_history_c', 'user_attentance_history_c', 'LBL_USER_ATTENTANCE_HISTORY_C', '', '', 'EMP_Employee', 'relate', 255, 1, NULL, '2023-01-19 06:32:45', 0, 0, 0, 0, 1, 'true', '', 'at_Attentance', 'at_attentance_id_c', ''),
('EMP_Employeeuser_project_c', 'user_project_c', 'LBL_USER_PROJECT_C', '', '', 'EMP_Employee', 'relate', 255, 0, NULL, '2023-01-21 05:13:30', 0, 0, 0, 0, 1, 'true', '', 'pro_Projects', 'pro_projects_id_c', ''),
('EMP_Employee_Listemployee_status_c', 'employee_status_c', 'LBL_EMPLOYEE_STATUS_C', '', '', 'EMP_Employee_List', 'enum', 100, 1, '', '2023-01-30 05:27:30', 0, 0, 0, 0, 1, 'true', 'sales_probability_dom', '', '', ''),
('EMP_Employee_Listemp_address_c', 'emp_address_c', 'LBL_EMP_ADDRESS_C', '', '', 'EMP_Employee_List', 'text', NULL, 1, '', '2023-01-24 05:28:40', 0, 0, 0, 0, 1, 'true', '', '4', '60', ''),
('EMP_Employee_Listemp_contact_c', 'emp_contact_c', 'LBL_EMP_CONTACT_C', '', '', 'EMP_Employee_List', 'varchar', 255, 1, '', '2023-01-24 05:29:44', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('EMP_Employee_Listemp_dob_c', 'emp_dob_c', 'LBL_EMP_DOB_C', '', '', 'EMP_Employee_List', 'date', NULL, 1, '', '2023-01-24 05:32:43', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('EMP_Employee_Listemp_email_c', 'emp_email_c', 'LBL_EMP_EMAIL_C', '', '', 'EMP_Employee_List', 'varchar', 255, 1, '', '2023-01-24 05:27:58', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('EMP_Employee_Listemp_gender_c', 'emp_gender_c', 'LBL_EMP_GENDER_C', '', '', 'EMP_Employee_List', 'enum', 100, 1, '', '2023-01-24 05:31:05', 0, 0, 0, 0, 1, 'true', 'gender_list', '', '', ''),
('EMP_Employee_Listemp_username_c', 'emp_username_c', 'LBL_EMP_USERNAME_C', NULL, NULL, 'EMP_Employee_List', 'varchar', 255, 1, NULL, '2023-01-25 10:50:13', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('EMP_Employee_Listvarious_types_c', 'various_types_c', 'LBL_VARIOUS_TYPES', '', '', 'EMP_Employee_List', 'multienum', 100, 0, NULL, '2023-02-27 06:10:46', 0, 0, 0, 0, 1, 'true', 'various_types_list', '', '', ''),
('Leadsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Leads', 'varchar', 255, 0, NULL, '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Leads', 'varchar', 255, 0, NULL, '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Leads', 'float', 10, 0, '0.00000000', '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Leads', 'float', 11, 0, '0.00000000', '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Meetings', 'varchar', 255, 0, NULL, '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Meetings', 'varchar', 255, 0, NULL, '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Meetings', 'float', 10, 0, '0.00000000', '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Meetings', 'float', 11, 0, '0.00000000', '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Opportunities', 'varchar', 255, 0, NULL, '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Opportunities', 'varchar', 255, 0, NULL, '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Opportunities', 'float', 10, 0, '0.00000000', '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Opportunities', 'float', 11, 0, '0.00000000', '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('PAY_Paymentscurrency_id', 'currency_id', 'LBL_CURRENCY', '', '', 'PAY_Payments', 'currency_id', 36, 0, NULL, '2023-02-01 05:29:35', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('PAY_Paymentsia_any_pending_payments_c', 'ia_any_pending_payments_c', 'LBL_IA_ANY_PENDING_PAYMENTS_C', '', '', 'PAY_Payments', 'bool', 255, 0, '0', '2023-02-01 05:33:21', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('PAY_Paymentspayment_amount_in_rupees_c', 'payment_amount_in_rupees_c', 'LBL_PAYMENT_AMOUNT_IN_RUPEES_C', '', '', 'PAY_Payments', 'currency', 26, 1, '', '2023-02-01 05:29:35', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('PAY_Paymentspayment_day_c', 'payment_day_c', 'LBL_PAYMENT_DAY_C', NULL, NULL, 'PAY_Payments', 'enum', 100, 1, NULL, '2023-02-02 05:21:54', 0, 0, 0, 0, 1, 'true', 'payment_day_c_list', NULL, NULL, NULL),
('PAY_Paymentspayment_method_c', 'payment_method_c', 'LBL_PAYMENT_METHOD_C', '', '', 'PAY_Payments', 'enum', 100, 1, '', '2023-02-01 05:28:18', 0, 0, 0, 0, 1, 'true', 'payment_terms', '', '', ''),
('PAY_Paymentspayment_month_c', 'payment_month_c', 'LBL_PAYMENT_MONTH_C', '', '', 'PAY_Payments', 'enum', 100, 1, '', '2023-02-02 05:15:16', 0, 0, 0, 0, 1, 'true', 'payment_month_c_list', '', '', ''),
('PAY_Paymentspayment_revenue_c', 'payment_revenue_c', 'LBL_PAYMENT_REVENUE_C', '', '', 'PAY_Payments', 'int', 255, 1, '', '2023-02-01 05:32:16', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('PAY_Paymentspayment_year_c', 'payment_year_c', 'LBL_PAYMENT_YEAR_C', '', '', 'PAY_Payments', 'enum', 100, 1, '', '2023-02-02 05:09:38', 0, 0, 0, 0, 1, 'true', 'payment_year_c_list', '', '', ''),
('PAY_Paymentspending_total_amount_c', 'pending_total_amount_c', 'LBL_PENDING_TOTAL_AMOUNT_C', '', '', 'PAY_Payments', 'currency', 26, 0, '', '2023-02-01 05:34:40', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Projectjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Project', 'varchar', 255, 0, NULL, '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Project', 'varchar', 255, 0, NULL, '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Project', 'float', 10, 0, '0.00000000', '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Project', 'float', 11, 0, '0.00000000', '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Prospects', 'varchar', 255, 0, NULL, '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Prospects', 'varchar', 255, 0, NULL, '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Prospects', 'float', 10, 0, '0.00000000', '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Prospects', 'float', 11, 0, '0.00000000', '2022-10-18 05:48:09', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('pro_Projectsemp_employee_list_id_c', 'emp_employee_list_id_c', 'LBL_PROJECT_ASSIGN_TO_C_EMP_EMPLOYEE_LIST_ID', '', '', 'pro_Projects', 'id', 36, 0, NULL, '2023-02-02 04:54:03', 0, 0, 0, 0, 0, 'true', '', '', '', ''),
('pro_Projectsproject_assign_to_c', 'project_assign_to_c', 'LBL_PROJECT_ASSIGN_TO_C', '', '', 'pro_Projects', 'relate', 255, 1, NULL, '2023-02-02 04:54:03', 0, 0, 0, 0, 1, 'true', '', 'EMP_Employee_List', 'emp_employee_list_id_c', ''),
('pro_Projectsproject_date_start_c', 'project_date_start_c', 'LBL_PROJECT_DATE_START_C', '', '', 'pro_Projects', 'date', NULL, 1, '', '2022-12-03 11:46:56', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('pro_Projectsproject_expected_income_c', 'project_expected_income_c', 'LBL_PROJECT_EXPECTED_INCOME_C', NULL, NULL, 'pro_Projects', 'int', 255, 1, NULL, '2023-02-02 04:54:41', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('pro_Projectsproject_name_c', 'project_name_c', 'LBL_PROJECT_NAME_C', '', '', 'pro_Projects', 'varchar', 255, 1, '', '2022-12-03 11:47:27', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('pro_Projectsproject_report_c', 'project_report_c', 'LBL_PROJECT_REPORT_C', '', '', 'pro_Projects', 'text', NULL, 1, '', '2022-12-03 11:46:07', 0, 0, 0, 0, 1, 'true', '', '4', '60', ''),
('pro_Projectsproject_service_type_c', 'project_service_type_c', 'LBL_PROJECT_SERVICE_TYPE_C', '', '', 'pro_Projects', 'enum', 100, 1, '', '2023-02-02 05:02:43', 0, 0, 0, 0, 1, 'true', 'custom_fields_merge_dup_dom', '', '', ''),
('sh_Salary_Historyemploye_salary_amont_c', 'employe_salary_amont_c', 'LBL_EMPLOYE_SALARY_AMONT_C', '', '', 'sh_Salary_History', 'int', 255, 1, '', '2022-12-01 12:38:26', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('sh_Salary_Historyemploye_salary_date_c', 'employe_salary_date_c', 'LBL_EMPLOYE_SALARY_DATE_C', '', '', 'sh_Salary_History', 'date', NULL, 1, '', '2022-12-01 12:39:45', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('sh_Salary_Historysalary_hours_logged_c', 'salary_hours_logged_c', 'LBL_SALARY_HOURS_LOGGED_C', '', '', 'sh_Salary_History', 'datetimecombo', NULL, 1, '', '2022-12-01 12:40:35', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('sh_Salary_Historysly_history_emp_name_c', 'sly_history_emp_name_c', 'LBL_SLY_HISTORY_EMP_NAME_C', '', '', 'sh_Salary_History', 'varchar', 255, 1, '', '2023-01-25 10:54:11', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('sh_Salary_Historysly_history_months_slaray_c', 'sly_history_months_slaray_c', 'LBL_SLY_HISTORY_MONTHS_SLARAY_C', '', '', 'sh_Salary_History', 'int', 255, 1, '', '2023-01-25 05:13:26', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('SK_Skillskill_name_c', 'skill_name_c', 'LBL_SKILL_NAME_C', NULL, NULL, 'SK_Skill', 'varchar', 255, 1, NULL, '2023-02-13 05:10:46', 0, 0, 0, 0, 1, 'true', NULL, NULL, NULL, NULL),
('SK_Skillskill_proficion_c', 'skill_proficion_c', 'LBL_SKILL_PROFICION_C', NULL, NULL, 'SK_Skill', 'enum', 100, 0, NULL, '2023-02-13 05:11:11', 0, 0, 0, 0, 1, 'true', 'skill_proficion_c_list', NULL, NULL, NULL),
('SLY_Salariesuser_c', 'user_c', 'LBL_USER_C', '', '', 'SLY_Salaries', 'varchar', 255, 0, '', '2022-10-18 07:47:50', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Usersemployee_date_of_birth_c', 'employee_date_of_birth_c', 'LBL_EMPLOYEE_DATE_OF_BIRTH_C', '', '', 'Users', 'date', NULL, 1, '', '2023-02-09 10:15:25', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Usersemployee_gender_c', 'employee_gender_c', 'LBL_EMPLOYEE_GENDER_C', '', '', 'Users', 'enum', 100, 1, '', '2023-02-09 10:14:18', 0, 0, 0, 0, 1, 'true', 'gender_list', '', '', ''),
('Usersemployee_id_c', 'employee_id_c', 'LBL_EMPLOYEE_ID_C', '', '', 'Users', 'int', 255, 1, '', '2023-02-09 10:25:25', 0, 0, 0, 0, 1, 'true', '', '', '', ''),
('Usersemploye_qualification_c', 'employe_qualification_c', 'LBL_EMPLOYE_QUALIFICATION_C', '', '', 'Users', 'text', NULL, 0, '', '2023-02-09 13:23:20', 0, 0, 0, 0, 1, 'true', '', '4', '40', '');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `folders_rel`
--

CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `folders_subscriptions`
--

CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events`
--

CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_audit`
--

CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_contacts_c`
--

CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_fp_event_delegates_1_c`
--

CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_fp_event_locations_1_c`
--

CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_leads_1_c`
--

CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_events_prospects_1_c`
--

CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations`
--

CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations_audit`
--

CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fp_event_locations_fp_events_1_c`
--

CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `import_maps`
--

CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email`
--

CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `delete_seen` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_autoreply`
--

CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_cache_ts`
--

CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_address_cache`
--

CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(26,8) DEFAULT NULL,
  `lng` float(26,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_address_cache_audit`
--

CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_areas`
--

CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_areas_audit`
--

CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps`
--

CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(26,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_audit`
--

CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_jjwg_areas_c`
--

CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_maps_jjwg_markers_c`
--

CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_markers`
--

CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(26,8) DEFAULT '0.00000000',
  `jjwg_maps_lng` float(26,8) DEFAULT '0.00000000',
  `marker_image` varchar(100) DEFAULT 'company'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jjwg_markers_audit`
--

CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `job_queue`
--

CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `salutation`, `first_name`, `last_name`, `title`, `photo`, `department`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `assistant`, `assistant_phone`, `converted`, `refered_by`, `lead_source`, `lead_source_description`, `status`, `status_description`, `reports_to_id`, `account_name`, `account_description`, `contact_id`, `account_id`, `opportunity_id`, `opportunity_name`, `opportunity_amount`, `campaign_id`, `birthdate`, `portal_name`, `portal_app`, `website`) VALUES
('2653a62e-19ca-b543-142f-63942407df80', '2022-12-10 06:17:14', '2022-12-10 06:17:14', '1', '1', '', 0, '1', 'Mr.', 'kamalesh', 'kali', 'test', NULL, 'Ece', 0, NULL, '86762233', '12345', NULL, 'sd', '', '', '', '', '', '', '', '', '', '', NULL, NULL, 0, '', '', '', 'New', '', NULL, '12345', NULL, '', '', '', NULL, '', '', NULL, NULL, NULL, 'http://');

-- --------------------------------------------------------

--
-- Table structure for table `leads_accounts_1_c`
--

CREATE TABLE `leads_accounts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_accounts_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_accounts_1accounts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leads_audit`
--

CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leads_cstm`
--

CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `leads_cstm`
--

INSERT INTO `leads_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('2653a62e-19ca-b543-142f-63942407df80', 0.00000000, 0.00000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leads_opportunities_1_c`
--

CREATE TABLE `leads_opportunities_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_opportunities_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_opportunities_1opportunities_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leads_tasks_1_c`
--

CREATE TABLE `leads_tasks_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `leads_tasks_1leads_ida` varchar(36) DEFAULT NULL,
  `leads_tasks_1tasks_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `linked_documents`
--

CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_contacts`
--

CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_cstm`
--

CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_leads`
--

CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_users`
--

CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_consumer`
--

CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_nonce`
--

CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_tokens`
--

CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities`
--

CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `opportunities`
--

INSERT INTO `opportunities` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `opportunity_type`, `campaign_id`, `lead_source`, `amount`, `amount_usdollar`, `currency_id`, `date_closed`, `next_step`, `sales_stage`, `probability`) VALUES
('6ed60655-7206-e3f6-2fe3-639427cffa37', 'kamalesh', '2022-12-10 06:29:48', '2022-12-10 06:29:48', '1', '1', '', 0, '1', '', '', '', 12, 12, '-99', '2022-12-07', '', 'Prospecting', 10);

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_accounts_1_c`
--

CREATE TABLE `opportunities_accounts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `opportunities_accounts_1opportunities_ida` varchar(36) DEFAULT NULL,
  `opportunities_accounts_1accounts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_audit`
--

CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_contacts`
--

CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_cstm`
--

CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `opportunities_cstm`
--

INSERT INTO `opportunities_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('6ed60655-7206-e3f6-2fe3-639427cffa37', 0.00000000, 0.00000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_leads_1_c`
--

CREATE TABLE `opportunities_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `opportunities_leads_1opportunities_ida` varchar(36) DEFAULT NULL,
  `opportunities_leads_1leads_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_tasks_1_c`
--

CREATE TABLE `opportunities_tasks_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `opportunities_tasks_1opportunities_ida` varchar(36) DEFAULT NULL,
  `opportunities_tasks_1tasks_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `outbound_email`
--

CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` int(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `outbound_email`
--

INSERT INTO `outbound_email` (`id`, `name`, `type`, `user_id`, `mail_sendtype`, `mail_smtptype`, `mail_smtpserver`, `mail_smtpport`, `mail_smtpuser`, `mail_smtppass`, `mail_smtpauth_req`, `mail_smtpssl`) VALUES
('27be91bb-0ea5-d57b-60ae-634e3e309167', 'system', 'system', '1', 'SMTP', 'gmail', 'smtp.gmail.com', 587, 'harishkali7218@gmail.com', 'Y4cOgmFjsBL8zyM6uVRaxg==', 1, 2),
('6e72ddc9-d664-938d-8a90-63d7cee93b64', 'system', 'system-override', '42e1c8dc-ae01-9efb-5fee-63d7ceb668ef', 'SMTP', 'gmail', 'smtp.gmail.com', 587, 'Administration', 'IT4od3XACz+gi8q1jj5oig==', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pay_payments`
--

CREATE TABLE `pay_payments` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `record_number` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pay_payments`
--

INSERT INTO `pay_payments` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `record_number`) VALUES
('21794ff6-3240-07f1-20e9-63f62425babb', 'ATT_2', '2023-02-22 14:18:56', '2023-02-22 14:18:56', '1', '1', NULL, 0, NULL, 2),
('55007ae1-476a-c74a-bd9e-63da16def25c', 'kamalesh', '2023-02-01 07:35:26', '2023-02-01 07:35:26', '1', '1', NULL, 0, NULL, 1),
('915b3b90-74f9-2c97-4809-63f74474dc1d', 'ATT_3', '2023-02-23 10:50:34', '2023-02-23 10:50:34', '1', '1', NULL, 0, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `pay_payments_audit`
--

CREATE TABLE `pay_payments_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pay_payments_cstm`
--

CREATE TABLE `pay_payments_cstm` (
  `id_c` char(36) NOT NULL,
  `payment_method_c` varchar(100) DEFAULT NULL,
  `payment_amount_in_rupees_c` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `payment_revenue_c` int(255) DEFAULT NULL,
  `ia_any_pending_payments_c` tinyint(1) DEFAULT '0',
  `pending_total_amount_c` decimal(26,6) DEFAULT NULL,
  `payment_year_c` varchar(100) DEFAULT NULL,
  `payment_month_c` varchar(100) DEFAULT NULL,
  `payment_day_c` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pay_payments_cstm`
--

INSERT INTO `pay_payments_cstm` (`id_c`, `payment_method_c`, `payment_amount_in_rupees_c`, `currency_id`, `payment_revenue_c`, `ia_any_pending_payments_c`, `pending_total_amount_c`, `payment_year_c`, `payment_month_c`, `payment_day_c`) VALUES
('21794ff6-3240-07f1-20e9-63f62425babb', 'net_banking', '7000.000000', NULL, 7, 1, '12.000000', '2019', 'march', '4'),
('55007ae1-476a-c74a-bd9e-63da16def25c', 'cash', '7000.000000', NULL, 7, 1, '12.000000', NULL, NULL, NULL),
('915b3b90-74f9-2c97-4809-63f74474dc1d', 'net_banking', '7000.000000', NULL, 7, 1, NULL, '2019', 'april', '2');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_accounts`
--

CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_bugs`
--

CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_cases`
--

CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_contacts`
--

CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_opportunities`
--

CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_products`
--

CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_contacts_1_c`
--

CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_cstm`
--

CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_task`
--

CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `relationship_type` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT '1',
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int(11) DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_task_audit`
--

CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_users_1_c`
--

CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospects`
--

CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospects_cstm`
--

CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_lists`
--

CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_lists_prospects`
--

CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_list_campaigns`
--

CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pro_projects`
--

CREATE TABLE `pro_projects` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `record_number` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pro_projects`
--

INSERT INTO `pro_projects` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `record_number`) VALUES
('191d9827-a895-32ef-9dd3-63c935979d22', 'PRO_3', '2023-01-19 12:18:28', '2023-01-24 06:23:41', '1', '1', NULL, 1, NULL, 3),
('4c7b7103-b5ef-3c17-5b99-63f2ffdb27a6', 'PRO_8', '2023-02-20 05:06:19', '2023-02-22 05:00:32', '1', '1', NULL, 0, '', 8),
('5c7abcb2-e4db-5d0d-d335-63f5b87a74ee', 'PRO_9', '2023-02-22 06:37:19', '2023-02-22 06:37:19', '1', '1', NULL, 0, NULL, 9),
('5ef1276c-3ff7-0ae7-4ceb-638b3c999078', 'PRO_1', '2022-12-03 12:08:15', '2023-01-19 10:44:08', '1', '1', 'test', 1, '1', 1),
('5f9d8183-5ee9-394f-651e-63f5c95bb6ca', 'PRO_10', '2023-02-22 07:52:42', '2023-03-01 11:45:50', '1', '1', NULL, 0, '', 10),
('6baefc3b-b985-a6d4-73cc-63d3b5c3f3ba', 'PRO_7', '2023-01-27 11:28:27', '2023-03-01 13:19:27', '1', '1', NULL, 0, '', 7),
('aa19b04f-fb44-6261-f084-63c91f53d74e', 'PRO_2', '2023-01-19 10:44:53', '2023-01-24 06:23:41', '1', '1', 'test', 1, '1', 2),
('bdf3ede9-8411-e6a4-1bfa-63d3b3aa98e9', 'PRO_6', '2023-01-27 11:21:16', '2023-01-27 11:21:16', '1', '1', NULL, 0, NULL, 6),
('d682fb16-2809-2ac8-c921-63d3b0731e4b', 'PRO_5', '2023-01-27 11:07:59', '2023-01-27 11:20:18', '1', '1', NULL, 1, NULL, 5),
('f0ec95a4-3726-ae4c-0232-63cf7a684e80', 'PRO_4', '2023-01-24 06:26:30', '2023-01-27 07:06:28', '1', '1', NULL, 1, NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `pro_projects_audit`
--

CREATE TABLE `pro_projects_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pro_projects_cstm`
--

CREATE TABLE `pro_projects_cstm` (
  `id_c` char(36) NOT NULL,
  `project_report_c` text,
  `project_date_start_c` date DEFAULT NULL,
  `project_name_c` varchar(255) DEFAULT NULL,
  `project_expected_income_c` int(255) DEFAULT NULL,
  `emp_employee_list_id_c` char(36) DEFAULT NULL,
  `project_service_type_c` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pro_projects_cstm`
--

INSERT INTO `pro_projects_cstm` (`id_c`, `project_report_c`, `project_date_start_c`, `project_name_c`, `project_expected_income_c`, `emp_employee_list_id_c`, `project_service_type_c`) VALUES
('191d9827-a895-32ef-9dd3-63c935979d22', '', '2023-01-25', 'beakon', 10000, NULL, NULL),
('4c7b7103-b5ef-3c17-5b99-63f2ffdb27a6', '', '2023-02-17', 'selten ', 10000, '1b1f65dd-3f65-dfd6-e636-63d3c2f4ad2e', 'crm_services'),
('5c7abcb2-e4db-5d0d-d335-63f5b87a74ee', '', '2023-02-10', 'BMD', 10000, '508492db-9f9c-45e4-c9d3-63f4c90d7ec7', 'digital_marketing'),
('5ef1276c-3ff7-0ae7-4ceb-638b3c999078', 'test', '2022-12-09', 'beakon', 123, NULL, NULL),
('5f9d8183-5ee9-394f-651e-63f5c95bb6ca', '', '2023-02-15', 'selten technologies', 10000, '508492db-9f9c-45e4-c9d3-63f4c90d7ec7', '^crm_services^'),
('6baefc3b-b985-a6d4-73cc-63d3b5c3f3ba', '', '2023-01-11', 'QIC', 10000, '1b1f65dd-3f65-dfd6-e636-63d3c2f4ad2e', '^crm_services^,^digital_marketing^'),
('aa19b04f-fb44-6261-f084-63c91f53d74e', 'test', '2023-01-17', 'beakon', 10000, NULL, NULL),
('bdf3ede9-8411-e6a4-1bfa-63d3b3aa98e9', '', '2023-01-20', 'beakon', 10000, NULL, NULL),
('d682fb16-2809-2ac8-c921-63d3b0731e4b', '', '2023-01-04', 'beakon', 10000, NULL, NULL),
('f0ec95a4-3726-ae4c-0232-63cf7a684e80', '', '2023-01-02', 'Beakon', 7000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pro_projects_pay_payments_1_c`
--

CREATE TABLE `pro_projects_pay_payments_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `pro_projects_pay_payments_1pro_projects_ida` varchar(36) DEFAULT NULL,
  `pro_projects_pay_payments_1pay_payments_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--

CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relationships`
--

INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('1000058a-8ac4-e14a-e800-63ff3b952d02', 'emp_employees_tasks_1', 'EMP_Employees', 'emp_employees', 'id', 'Tasks', 'tasks', 'id', 'emp_employees_tasks_1_c', 'emp_employees_tasks_1emp_employees_ida', 'emp_employees_tasks_1tasks_idb', 'many-to-many', NULL, NULL, 0, 0),
('106b5ebd-fb1e-d915-3444-63ff3b883fcb', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('108b35d4-e2c5-346c-245b-63ff3bb792de', 'jjwg_address_cache_modified_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('10a20724-42cb-88a9-57cd-63ff3b9f7ed8', 'fp_events_leads_1', 'FP_events', 'fp_events', 'id', 'Leads', 'leads', 'id', 'fp_events_leads_1_c', 'fp_events_leads_1fp_events_ida', 'fp_events_leads_1leads_idb', 'many-to-many', NULL, NULL, 0, 0),
('11480146-72ce-1f91-25f7-63ff3b7fa6b4', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('11aa9b41-d8cb-7ee4-85e6-63ff3b98af92', 'fp_events_prospects_1', 'FP_events', 'fp_events', 'id', 'Prospects', 'prospects', 'id', 'fp_events_prospects_1_c', 'fp_events_prospects_1fp_events_ida', 'fp_events_prospects_1prospects_idb', 'many-to-many', NULL, NULL, 0, 0),
('11c6b3b1-b4c2-0411-9384-63ff3b4061e0', 'jjwg_address_cache_created_by', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1246188b-4794-e02c-d669-63ff3b16f7f8', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Calls', 0, 0),
('12b82923-a4a3-688c-1d7d-63ff3bb3f0c2', 'fp_event_locations_fp_events_1', 'FP_Event_Locations', 'fp_event_locations', 'id', 'FP_events', 'fp_events', 'id', 'fp_event_locations_fp_events_1_c', 'fp_event_locations_fp_events_1fp_event_locations_ida', 'fp_event_locations_fp_events_1fp_events_idb', 'many-to-many', NULL, NULL, 0, 0),
('1315bb3d-c6b0-73a1-d982-63ff3b0d2d18', 'jjwg_address_cache_assigned_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('137c2c9b-8547-44a4-9486-63ff3bc72752', 'calls_reschedule', 'Calls', 'calls', 'id', 'Calls_Reschedule', 'calls_reschedule', 'call_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('139e9e07-d931-4e11-6524-63ff3b98409b', 'jjwg_maps_jjwg_areas', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'jjwg_maps_jjwg_areas_c', 'jjwg_maps_5304wg_maps_ida', 'jjwg_maps_41f2g_areas_idb', 'many-to-many', NULL, NULL, 0, 0),
('1412b50d-13af-0189-b101-63ff3bf1597d', 'project_tasks_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('14fd2d7b-32a4-27dd-1d13-63ff3b7d4e3a', 'jjwg_maps_jjwg_markers', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'jjwg_maps_jjwg_markers_c', 'jjwg_maps_b229wg_maps_ida', 'jjwg_maps_2e31markers_idb', 'many-to-many', NULL, NULL, 0, 0),
('159edaa5-0b96-b5db-407f-63ff3b9bd8df', 'project_tasks_tasks', 'ProjectTask', 'project_task', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('15f1e08d-21ff-d599-0f71-63ff3b3821f8', 'leads_accounts_1', 'Leads', 'leads', 'id', 'Accounts', 'accounts', 'id', 'leads_accounts_1_c', 'leads_accounts_1leads_ida', 'leads_accounts_1accounts_idb', 'many-to-many', NULL, NULL, 0, 0),
('1604d79d-c03d-05eb-548e-63ff3b51fd0f', 'aod_indexevent_modified_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('16a86847-d01c-8cb4-f8e0-63ff3b55f1cc', 'project_tasks_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('16e156ca-f3d3-a24e-b865-63ff3b479935', 'leads_opportunities_1', 'Leads', 'leads', 'id', 'Opportunities', 'opportunities', 'id', 'leads_opportunities_1_c', 'leads_opportunities_1leads_ida', 'leads_opportunities_1opportunities_idb', 'many-to-many', NULL, NULL, 0, 0),
('17319951-c37e-145b-1874-63ff3bfe8e4d', 'aod_indexevent_created_by', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('17b47a2d-e5be-2209-124c-63ff3be2739b', 'project_tasks_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('17d141de-b095-d9e0-5698-63ff3bb438af', 'leads_tasks_1', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'id', 'leads_tasks_1_c', 'leads_tasks_1leads_ida', 'leads_tasks_1tasks_idb', 'many-to-many', NULL, NULL, 0, 0),
('17e003f4-b6e2-79ca-24b5-63ff3b4eb52e', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('18001ec5-77f5-da89-ff46-63ff3b267156', 'aod_indexevent_assigned_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('18babb1b-baf2-78a1-451b-63ff3b59908c', 'aos_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('18bb34bf-3971-5a6f-a117-63ff3be08fa7', 'opportunities_accounts_1', 'Opportunities', 'opportunities', 'id', 'Accounts', 'accounts', 'id', 'opportunities_accounts_1_c', 'opportunities_accounts_1opportunities_ida', 'opportunities_accounts_1accounts_idb', 'many-to-many', NULL, NULL, 0, 0),
('18ca29e0-c2ce-2dec-4eef-63ff3bb708f2', 'project_tasks_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('199e0cd5-6ee0-e5c8-10f2-63ff3bf107ef', 'projects_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('19aa68f6-ce44-be37-fbbe-63ff3bd7f0c7', 'opportunities_leads_1', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'id', 'opportunities_leads_1_c', 'opportunities_leads_1opportunities_ida', 'opportunities_leads_1leads_idb', 'many-to-many', NULL, NULL, 0, 0),
('19e2c2a9-42b6-345c-c348-63ff3bb7a49c', 'project_tasks_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1a041d46-eede-ccff-47ef-63ff3b6c40fa', 'aos_quotes_created_by', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1aeb863a-8137-23fb-263c-63ff3b9922fa', 'aos_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1b131b94-4fe7-223e-05ba-63ff3b85d78b', 'opportunities_tasks_1', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'id', 'opportunities_tasks_1_c', 'opportunities_tasks_1opportunities_ida', 'opportunities_tasks_1tasks_idb', 'many-to-many', NULL, NULL, 0, 0),
('1b5225d7-a44f-3f52-3192-63ff3b9b6f4e', 'project_tasks_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1bfb2e5e-cd3e-25f6-7361-63ff3b16ea3d', 'project_contacts_1', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'project_contacts_1_c', 'project_contacts_1project_ida', 'project_contacts_1contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('1c5f7c6d-3c44-4ff9-9168-63ff3b218c2c', 'project_tasks_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1c90f4e5-00b1-c5cd-f97b-63ff3b0a804f', 'aos_quotes_aos_product_quotes', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1ceb3593-5488-62b6-2834-63ff3bcf92da', 'project_users_1', 'Project', 'project', 'id', 'Users', 'users', 'id', 'project_users_1_c', 'project_users_1project_ida', 'project_users_1users_idb', 'many-to-many', NULL, NULL, 0, 0),
('1d727db6-7aaa-459b-2bb8-63ff3b111f93', 'aos_quotes_aos_line_item_groups', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1dede3cf-e734-6669-a934-63ff3b162744', 'pro_projects_pay_payments_1', 'pro_Projects', 'pro_projects', 'id', 'PAY_Payments', 'pay_payments', 'id', 'pro_projects_pay_payments_1_c', 'pro_projects_pay_payments_1pro_projects_ida', 'pro_projects_pay_payments_1pay_payments_idb', 'many-to-many', NULL, NULL, 0, 0),
('1e420f33-b596-df74-c671-63ff3b3db9bb', 'emp_employee_list_pro_projects_1', 'EMP_Employee_List', 'emp_employee_list', 'id', 'pro_Projects', 'pro_projects', 'id', 'emp_employee_list_pro_projects_1_c', 'emp_employee_list_pro_projects_1emp_employee_list_ida', 'emp_employee_list_pro_projects_1pro_projects_idb', 'many-to-many', NULL, NULL, 0, 0),
('1ee07d64-e0df-b29e-9c28-63ff3b26c81d', 'securitygroups_acl_roles', 'SecurityGroups', 'securitygroups', 'id', 'ACLRoles', 'acl_roles', 'id', 'securitygroups_acl_roles', 'securitygroup_id', 'role_id', 'many-to-many', NULL, NULL, 0, 0),
('1fcbc67d-38ba-eafd-f599-63ff3b7f58b9', 'securitygroups_accounts', 'SecurityGroups', 'securitygroups', 'id', 'Accounts', 'accounts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Accounts', 0, 0),
('2026d5bd-fc62-cb07-3a8e-63ff3bab5e7f', 'pay_payments_modified_user', 'Users', 'users', 'id', 'PAY_Payments', 'pay_payments', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('211eee5e-7a08-3f6e-5683-63ff3ba7c251', 'securitygroups_bugs', 'SecurityGroups', 'securitygroups', 'id', 'Bugs', 'bugs', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Bugs', 0, 0),
('217dd4e4-4303-ae14-cad2-63ff3bf05a55', 'pay_payments_created_by', 'Users', 'users', 'id', 'PAY_Payments', 'pay_payments', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('22059470-82db-d4c0-d42f-63ff3b327b34', 'securitygroups_calls', 'SecurityGroups', 'securitygroups', 'id', 'Calls', 'calls', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Calls', 0, 0),
('22450664-4664-6157-c6e9-63ff3bf4e1f2', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('22643cb0-0f4a-1809-593f-63ff3bf47d90', 'pay_payments_assigned_user', 'Users', 'users', 'id', 'PAY_Payments', 'pay_payments', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('22e83893-f887-97a6-eda9-63ff3b7fe919', 'securitygroups_campaigns', 'SecurityGroups', 'securitygroups', 'id', 'Campaigns', 'campaigns', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Campaigns', 0, 0),
('23822a31-b5a9-322a-fc19-63ff3b8df2ea', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('23eb19bc-7315-6f4e-d98a-63ff3bc8ace0', 'securitygroups_cases', 'SecurityGroups', 'securitygroups', 'id', 'Cases', 'cases', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Cases', 0, 0),
('24699223-06bc-526a-63f6-63ff3b0da6e7', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('24cbbf56-bf3d-210f-47f5-63ff3b3947f9', 'securitygroups_contacts', 'SecurityGroups', 'securitygroups', 'id', 'Contacts', 'contacts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Contacts', 0, 0),
('25597fff-bdf7-737d-d59b-63ff3bff0191', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('25ad3349-e35f-fe1d-3148-63ff3b008a47', 'securitygroups_documents', 'SecurityGroups', 'securitygroups', 'id', 'Documents', 'documents', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Documents', 0, 0),
('263c1083-8276-8393-7463-63ff3bedd7ee', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('2697fffd-86da-32dc-0995-63ff3bc1f80d', 'securitygroups_emails', 'SecurityGroups', 'securitygroups', 'id', 'Emails', 'emails', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Emails', 0, 0),
('27169b09-2d31-0df2-abcd-63ff3bf7dfc3', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('277b16d1-2f31-1252-36cf-63ff3bbe563c', 'securitygroups_emailtemplates', 'SecurityGroups', 'securitygroups', 'id', 'EmailTemplates', 'email_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'EmailTemplates', 0, 0),
('27e00f87-dd80-4754-2b40-63ff3b99237d', 'aow_actions_modified_user', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('27fb8cb5-c06a-1259-1a8a-63ff3b625e6c', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('28625edc-443c-d282-9e5a-63ff3bf905a6', 'securitygroups_leads', 'SecurityGroups', 'securitygroups', 'id', 'Leads', 'leads', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Leads', 0, 0),
('28e49e70-9a35-c85e-c8ca-63ff3bc9e5e5', 'emails_meetings_rel', 'Emails', 'emails', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('292c082f-102a-ed81-f7c1-63ff3b58c90e', 'aow_actions_created_by', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('295a5279-8e09-dc37-ebfb-63ff3bf86000', 'securitygroups_meetings', 'SecurityGroups', 'securitygroups', 'id', 'Meetings', 'meetings', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Meetings', 0, 0),
('2a5b1f3e-7edf-2358-642a-63ff3b2f7e7f', 'securitygroups_notes', 'SecurityGroups', 'securitygroups', 'id', 'Notes', 'notes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Notes', 0, 0),
('2acecf00-e5c2-7a10-2fb3-63ff3b7053c6', 'campaigns_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2aee0931-9283-f9a4-fbf4-63ff3b6c864a', 'projects_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('2bd188a6-5ff6-15b4-2b43-63ff3bfc0985', 'securitygroups_opportunities', 'SecurityGroups', 'securitygroups', 'id', 'Opportunities', 'opportunities', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Opportunities', 0, 0),
('2c4945a7-593a-0ef7-3405-63ff3b83ef84', 'campaigns_created_by', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2cd10f50-a3a2-8f2c-135c-63ff3b070164', 'emp_employee_list_sh_salary_history_1', 'EMP_Employee_List', 'emp_employee_list', 'id', 'sh_Salary_History', 'sh_salary_history', 'id', 'emp_employee_list_sh_salary_history_1_c', 'emp_employee_list_sh_salary_history_1emp_employee_list_ida', 'emp_employee_list_sh_salary_history_1sh_salary_history_idb', 'many-to-many', NULL, NULL, 0, 0),
('2cdce156-84d3-b39d-c229-63ff3b908458', 'securitygroups_project', 'SecurityGroups', 'securitygroups', 'id', 'Project', 'project', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Project', 0, 0),
('2d5c72ab-c6ec-da17-c40c-63ff3b876ac8', 'campaigns_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2dbfa0c4-57a6-3731-4c27-63ff3b199052', 'securitygroups_project_task', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('2e9bee88-cd3b-16ff-a0d7-63ff3b314421', 'securitygroups_prospect_lists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('2ecbfae2-1afc-3409-6616-63ff3baea218', 'pro_projects_modified_user', 'Users', 'users', 'id', 'pro_Projects', 'pro_projects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2efd8554-59a1-4aa0-afe8-63ff3bef04b6', 'campaign_accounts', 'Campaigns', 'campaigns', 'id', 'Accounts', 'accounts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2f81349a-e0fe-b8eb-18b4-63ff3b8334f8', 'securitygroups_prospects', 'SecurityGroups', 'securitygroups', 'id', 'Prospects', 'prospects', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Prospects', 0, 0),
('2f8f3f7c-deba-dc0c-ff1b-63ff3bbc9c36', 'aod_index_modified_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('300d1dc6-9ccd-b861-d889-63ff3b2b84be', 'campaign_contacts', 'Campaigns', 'campaigns', 'id', 'Contacts', 'contacts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('301941e9-5b44-b1bf-4562-63ff3b18ce89', 'pro_projects_created_by', 'Users', 'users', 'id', 'pro_Projects', 'pro_projects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('30613f94-4809-576b-59a7-63ff3b088df9', 'securitygroups_tasks', 'SecurityGroups', 'securitygroups', 'id', 'Tasks', 'tasks', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Tasks', 0, 0),
('3158133c-a931-8ed8-73ea-63ff3b7bc523', 'aod_index_created_by', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('31664eb7-c9b4-8419-77bd-63ff3bff0cac', 'pro_projects_assigned_user', 'Users', 'users', 'id', 'pro_Projects', 'pro_projects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('31776ed4-4856-9b1f-3529-63ff3bb46c45', 'campaign_leads', 'Campaigns', 'campaigns', 'id', 'Leads', 'leads', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('31afb901-abf6-8e2e-9366-63ff3bf093c3', 'securitygroups_users', 'SecurityGroups', 'securitygroups', 'id', 'Users', 'users', 'id', 'securitygroups_users', 'securitygroup_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('323ce908-4787-5040-c7e4-63ff3b1a3ebb', 'aod_index_assigned_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('329308c2-d17d-0500-e67b-63ff3b4cc057', 'campaign_prospects', 'Campaigns', 'campaigns', 'id', 'Prospects', 'prospects', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('339af5c4-eabe-fbda-f37e-63ff3bc68e51', 'campaign_opportunities', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('34a856ac-494f-df2c-f7c7-63ff3bb24922', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('34fd05a0-8aa9-c7ef-2d2d-63ff3b833395', 'aow_workflow_modified_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3584a10a-178d-04d7-9b89-63ff3b05669f', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3648fd9a-3334-aa05-0149-63ff3b2b534b', 'aow_workflow_created_by', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('366bacbe-58da-91f7-97c1-63ff3bfe8c4c', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('369bcf95-39a3-12dd-6cb2-63ff3b4b6e46', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3720dcbf-edff-9666-d28d-63ff3b501088', 'aow_workflow_assigned_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('379e5e2b-4871-5d6d-fee0-63ff3b248d63', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('37fb04e5-77ee-cb8d-8b41-63ff3b831c6d', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3858e3b1-2b2e-b76d-bdaf-63ff3bc2cb13', 'aow_workflow_aow_conditions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Conditions', 'aow_conditions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('387e2bff-6316-85b6-490f-63ff3b58a62c', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('38debd0d-3873-9072-4680-63ff3bf29728', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3941f1df-26a8-9e69-7f6f-63ff3b7148b1', 'aow_workflow_aow_actions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Actions', 'aow_actions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('39c7c9ed-fffa-434a-70ac-63ff3bf453b7', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('3a410e3b-9a7b-7c18-ff51-63ff3b23b904', 'aow_workflow_aow_processed', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Processed', 'aow_processed', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3ba10314-c245-3d2a-54e2-63ff3b868b27', 'projects_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('3cc21e3b-3fba-c366-d929-63ff3b7bb187', 'calls_reschedule_modified_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3d7bacba-f301-0676-9015-63ff3bf33e53', 'aop_case_events_modified_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3e1b2116-ed8e-0c83-8b3d-63ff3b678c21', 'calls_reschedule_created_by', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3ec29d0d-bb83-e8e7-6dd0-63ff3bc2ae4e', 'aop_case_events_created_by', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3f0be546-9aa0-6e07-6aec-63ff3b2c1db9', 'calls_reschedule_assigned_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3f939f7b-38e5-f425-90d0-63ff3b29c314', 'aop_case_events_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4063786d-9eb9-2e74-a98f-63ff3bac044e', 'cases_aop_case_events', 'Cases', 'cases', 'id', 'AOP_Case_Events', 'aop_case_events', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('40fc025f-e3bc-ef15-aeda-63ff3bb70e95', 'jjwg_areas_modified_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('42600908-ded9-8a5a-3cd7-63ff3bc0fd16', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('45233628-52c0-02be-76a2-63ff3b02c10f', 'prospectlists_assigned_user', 'Users', 'users', 'id', 'prospectlists', 'prospect_lists', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('464830a0-41c3-c1e3-c682-63ff3bce3233', 'aow_processed_modified_user', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('473e33f5-8db5-8637-41db-63ff3b58db7f', 'sly_salaries_modified_user', 'Users', 'users', 'id', 'SLY_Salaries', 'sly_salaries', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4747df9f-832b-b13c-3597-63ff3b38ec6f', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4798a04d-ba2a-89a5-87f2-63ff3bfd3747', 'aow_processed_created_by', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('489343a2-c801-4a21-0899-63ff3b7cd5ab', 'sly_salaries_created_by', 'Users', 'users', 'id', 'SLY_Salaries', 'sly_salaries', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4894c8aa-614e-b025-978d-63ff3bbef98b', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4991332b-e998-b027-884f-63ff3b0af568', 'sly_salaries_assigned_user', 'Users', 'users', 'id', 'SLY_Salaries', 'sly_salaries', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4ae1962f-8bba-d23d-07c2-63ff3bb9ef84', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4ca6ee6f-4539-8017-c2b2-63ff3bec32a8', 'tasks_notes', 'Tasks', 'tasks', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4d1ee355-2387-f0af-0e2b-63ff3bf72a9a', 'aop_case_updates_modified_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4f2af277-5d2a-cbba-daf2-63ff3b985568', 'aop_case_updates_created_by', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5068cb3a-3c79-9ec6-f23c-63ff3baf6539', 'aop_case_updates_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5138e123-6ed1-f873-85e1-63ff3bc33a93', 'cases_aop_case_updates', 'Cases', 'cases', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('51f50691-424d-d199-c2e3-63ff3b48190f', 'projects_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'project_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5236329b-eca6-0ae1-8e92-63ff3b14b4ed', 'aop_case_updates_notes', 'AOP_Case_Updates', 'aop_case_updates', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOP_Case_Updates', 0, 0),
('535b77bc-b52e-b3ea-1aa7-63ff3b4ca570', 'sly_salary_modified_user', 'Users', 'users', 'id', 'SLY_Salary', 'sly_salary', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('53993b25-61f3-f954-43c0-63ff3b1e364f', 'aow_conditions_modified_user', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('545704ca-095b-4be8-23f2-63ff3b5383af', 'prospects_modified_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5481c9e0-032f-d35e-b7e0-63ff3bc3919e', 'aow_conditions_created_by', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('548a0fe8-7bbc-deae-68b8-63ff3bf9684e', 'jjwg_areas_created_by', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('549526ba-26e6-852a-f5c8-63ff3bfc4afc', 'sly_salary_created_by', 'Users', 'users', 'id', 'SLY_Salary', 'sly_salary', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('558d85ec-14d8-8404-1093-63ff3b83039b', 'prospects_created_by', 'Users', 'users', 'id', 'Prospects', 'prospects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('558fa5b9-3058-3dc8-f277-63ff3b6fe756', 'sly_salary_assigned_user', 'Users', 'users', 'id', 'SLY_Salary', 'sly_salary', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('566bd929-e716-e613-34fd-63ff3bc7888f', 'prospects_assigned_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('57953ed1-930d-278a-d0f1-63ff3b84e739', 'prospects_email_addresses', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('586efa08-408b-8c4c-6be5-63ff3b52d17e', 'prospects_email_addresses_primary', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('59503a19-d947-2d21-b3ce-63ff3be0627e', 'prospect_tasks', 'Prospects', 'prospects', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('5a3b484c-3f72-f66a-a451-63ff3b593d81', 'prospect_notes', 'Prospects', 'prospects', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('5b2220ab-e3b2-e778-00fb-63ff3b02dfd3', 'prospect_meetings', 'Prospects', 'prospects', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('5c6b8e25-d3e9-7b6b-645e-63ff3b36b6b2', 'prospect_calls', 'Prospects', 'prospects', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('5d4e22dd-6a50-1b43-b293-63ff3b6914ca', 'prospect_emails', 'Prospects', 'prospects', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('5e5ff66a-4c6a-9b6c-5d26-63ff3be16609', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Prospects', 0, 0),
('5e610a3b-eef0-01ed-d5bb-63ff3b232ae3', 'aor_reports_modified_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5fc0e6d8-393d-1ef3-b7a1-63ff3b1562c2', 'aor_reports_created_by', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('609ea97c-f7ca-ea99-327f-63ff3b707a1f', 'aor_reports_assigned_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('614e91f7-cb03-0935-6d1c-63ff3b89134b', 'at_attentance_modified_user', 'Users', 'users', 'id', 'at_Attentance', 'at_attentance', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('617ce9e2-48b7-28c0-22d4-63ff3bf4ba5f', 'aor_reports_aor_fields', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Fields', 'aor_fields', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('61a9d91a-3ad8-1bc1-a1de-63ff3b4dc381', 'sh_salary_history_modified_user', 'Users', 'users', 'id', 'sh_Salary_History', 'sh_salary_history', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('627edfc4-e701-3c84-b635-63ff3b3542cd', 'aor_reports_aor_conditions', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Conditions', 'aor_conditions', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6290cbcf-791a-437b-e0c5-63ff3b553e9d', 'at_attentance_created_by', 'Users', 'users', 'id', 'at_Attentance', 'at_attentance', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('630dff37-7f7d-3322-39f3-63ff3b486e54', 'sh_salary_history_created_by', 'Users', 'users', 'id', 'sh_Salary_History', 'sh_salary_history', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('630e0020-acc4-c501-f992-63ff3b39d69f', 'jjwg_areas_assigned_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('630e03ae-95d8-969e-a371-63ff3ba465d0', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('63614381-3fd7-7b39-9198-63ff3b3fed2e', 'aor_scheduled_reports_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('637828ae-7122-df80-bbe1-63ff3b521ab9', 'at_attentance_assigned_user', 'Users', 'users', 'id', 'at_Attentance', 'at_attentance', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('641d15ae-0541-0762-f613-63ff3bba582d', 'sh_salary_history_assigned_user', 'Users', 'users', 'id', 'sh_Salary_History', 'sh_salary_history', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('64340494-727c-501b-3597-63ff3b940583', 'fp_event_locations_modified_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('649c31e0-580b-d75e-5cac-63ff3bcafbc8', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6b42d485-a29d-b8d3-0d99-63ff3b975424', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6bf151aa-400b-642d-89a3-63ff3b15190e', 'cli_clients_modified_user', 'Users', 'users', 'id', 'CLI_Clients', 'cli_clients', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6d4ae254-7f25-ae83-6fbd-63ff3b9a918a', 'cli_clients_created_by', 'Users', 'users', 'id', 'CLI_Clients', 'cli_clients', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6e52a0db-4803-0c3e-f7c8-63ff3be80e40', 'cli_clients_assigned_user', 'Users', 'users', 'id', 'CLI_Clients', 'cli_clients', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6e9958d0-a511-1a43-501c-63ff3bcbc85f', 'aor_fields_modified_user', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6fddb990-7639-1b10-8eb9-63ff3b4c5058', 'securitygroups_modified_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6fe26e3e-db82-fb6b-0e0f-63ff3b258999', 'aor_fields_created_by', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('71207fe5-87f7-543f-f18c-63ff3ba3f5a7', 'securitygroups_created_by', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7206eea1-5bcc-d779-bf89-63ff3b7d40d0', 'securitygroups_assigned_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('737f017f-9d75-83c8-8ac4-63ff3b829481', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('77910a95-f246-42c8-90e8-63ff3b4ac4f4', 'aor_charts_modified_user', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('781a1410-5e79-7bc9-4489-63ff3b8d882c', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('78d48421-bdcd-0fd9-6ab5-63ff3bfc6333', 'aor_charts_created_by', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('79b119c3-8b48-1ec5-2e1c-63ff3b8d507f', 'aor_charts_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Charts', 'aor_charts', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('79d2deec-eee9-5ff5-a81f-63ff3bd49887', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('79e2bbad-52c3-e7c0-1ad3-63ff3b640a81', 'emp_employee_modified_user', 'Users', 'users', 'id', 'EMP_Employee', 'emp_employee', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7a86c9d4-17e8-8386-4ace-63ff3bad7f67', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7b23437c-dbcd-40d6-5d6a-63ff3b0bfde7', 'emp_employee_created_by', 'Users', 'users', 'id', 'EMP_Employee', 'emp_employee', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7b6befa5-95b1-9ef6-0fda-63ff3b7c5a6c', 'documents_assigned_user', 'Users', 'users', 'id', 'Documents', 'documents', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7b9d09a9-cb28-4fa1-67b0-63ff3bc73a16', 'fp_event_locations_created_by', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7c029645-3e27-3e64-dff5-63ff3b2b6234', 'emp_employee_assigned_user', 'Users', 'users', 'id', 'EMP_Employee', 'emp_employee', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7c60bea1-37fa-ef35-2ee3-63ff3b6d91e6', 'document_revisions', 'Documents', 'documents', 'id', 'DocumentRevisions', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d6ad0da-0557-01b4-6442-63ff3bb903a3', 'sk_skill_modified_user', 'Users', 'users', 'id', 'SK_Skill', 'sk_skill', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7dba19ea-3902-2a2e-0a86-63ff3b10484b', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('7eb0ea8c-f022-3573-1c9e-63ff3b5e3bd6', 'sk_skill_created_by', 'Users', 'users', 'id', 'SK_Skill', 'sk_skill', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7ee00b58-20f1-ecb7-4110-63ff3bb707cc', 'projects_tasks', 'Project', 'project', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('7f120f71-c9df-bb9b-e6b2-63ff3bb1077b', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7fa08950-88d9-8d43-04b4-63ff3b707b52', 'sk_skill_assigned_user', 'Users', 'users', 'id', 'SK_Skill', 'sk_skill', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7ff1a035-c21a-954d-4051-63ff3b4821ce', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'job_queue', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('81a38700-8dc5-c253-cfa5-63ff3bfcea61', 'schedulersjobs_assigned_user', 'Users', 'users', 'id', 'SchedulersJobs', 'schedulersjobs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('83396771-caa6-d346-0e69-63ff3bbcb864', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('849b0ac2-63ce-37ec-2e93-63ff3b196cfa', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('84cb538b-c673-a680-4520-63ff3bddfd73', 'aor_conditions_modified_user', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('862d1e18-a64b-4fcb-f2af-63ff3b4ae9e7', 'aor_conditions_created_by', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('870e08a0-75f3-846b-43b8-63ff3b4cc9d0', 'aos_line_item_groups_modified_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('889742fd-97d1-873f-b6ad-63ff3bf3e08a', 'emp_employees_modified_user', 'Users', 'users', 'id', 'EMP_Employees', 'emp_employees', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('89dbe569-1cbc-2536-9b00-63ff3b8da1e5', 'emp_employees_created_by', 'Users', 'users', 'id', 'EMP_Employees', 'emp_employees', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8ac28779-2b73-6e40-df32-63ff3bfe0544', 'emp_employees_assigned_user', 'Users', 'users', 'id', 'EMP_Employees', 'emp_employees', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8edefe66-8c54-c2c9-acb6-63ff3b30d4be', 'aor_scheduled_reports_modified_user', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('900a062d-3f01-6f7e-6f2a-63ff3be81a11', 'fp_event_locations_assigned_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9024eb6f-8e23-8e9d-3c0b-63ff3b0c65a8', 'aor_scheduled_reports_created_by', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('91dffab8-d2d2-0458-52c5-63ff3b2f01ce', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('939e4b86-fcb5-4e6b-4555-63ff3b3cfa68', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9473370d-bd96-1f3c-5494-63ff3bc399cf', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9491da51-fc5b-4aaf-3667-63ff3bb3646d', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('95c919a1-fc99-3a63-0217-63ff3baf23fc', 'contacts_email_addresses', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('95cc822b-9425-348e-a821-63ff3b02caac', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('96748bd9-1bd2-1fd6-5222-63ff3be4895f', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('969a4918-e33f-fda8-398f-63ff3b31fae9', 'contacts_email_addresses_primary', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('96ff65fd-52e9-5318-ddc4-63ff3b205c8d', 'leads_email_addresses', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('977d6891-694c-0680-0178-63ff3baeb0bd', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('97ae09a2-65aa-9ed9-e612-63ff3bdb8e9a', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('97be9b0e-94d5-80cc-ba5e-63ff3b8f39e5', 'emp_employee_list_modified_user', 'Users', 'users', 'id', 'EMP_Employee_List', 'emp_employee_list', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('98549b6d-bb42-eba9-8d38-63ff3b98900f', 'leads_email_addresses_primary', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('985d6f72-ec82-caef-8a11-63ff3bd473b4', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9914f320-61b7-592f-c6d0-63ff3bdce64a', 'emp_employee_list_created_by', 'Users', 'users', 'id', 'EMP_Employee_List', 'emp_employee_list', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('993511d5-135a-d098-78c7-63ff3b977a22', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('99af2228-868d-a703-8459-63ff3b051792', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('99fcb77b-cd71-c8ba-2a6f-63ff3bba84e9', 'emp_employee_list_assigned_user', 'Users', 'users', 'id', 'EMP_Employee_List', 'emp_employee_list', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9a123ef4-0ad7-f1dd-6f7b-63ff3bbe8902', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9b3019f3-7967-7ed2-10dc-63ff3b277a78', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('9b4212d1-6645-6223-e90a-63ff3b8c4ddb', 'contact_tasks_parent', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('9c32db55-4289-dd76-376d-63ff3b9dc54e', 'contact_notes_parent', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('9c6b4db2-32b7-c110-9ab0-63ff3bfd434c', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('9d277c5a-631c-7cef-8101-63ff3beb5d85', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Contacts', 0, 0),
('9d412896-16ec-8b42-7c4e-63ff3b8b93bd', 'aos_contracts_modified_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9d670ea8-28d1-238b-f9ba-63ff3b681370', 'aos_line_item_groups_created_by', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9d9cd1ce-8c74-7e11-5a06-63ff3b4d8d6f', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('9dffefe7-f7bd-aa88-8115-63ff3bbb2234', 'contact_aos_quotes', 'Contacts', 'contacts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9e330c43-0fad-4973-df03-63ff3bd7c2d3', 'optimistic_locking', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('9e7e7cac-a528-d1cc-6767-63ff3bf6d924', 'aos_contracts_created_by', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ed1b200-40b0-a2e9-1f68-63ff3b4664ab', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('9f00278a-a628-0db6-ddd7-63ff3b9e2006', 'contact_aos_invoices', 'Contacts', 'contacts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9f6b3e49-14da-87b7-3920-63ff3b548616', 'aos_contracts_assigned_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a02a6e5a-f940-abc5-03f6-63ff3b84beee', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('a0416f7e-def0-c714-bbb0-63ff3bd6172d', 'contact_aos_contracts', 'Contacts', 'contacts', 'id', 'AOS_Contracts', 'aos_contracts', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a055313c-8485-1889-5176-63ff3bebab16', 'aos_contracts_aos_products_quotes', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a16695ed-5c9e-f943-2025-63ff3b734a63', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Leads', 0, 0),
('a1a74a80-fcba-5c12-c34c-63ff3be42ec1', 'aos_contracts_aos_line_item_groups', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a1b75c76-f435-6906-d87d-63ff3b0e2191', 'contacts_aop_case_updates', 'Contacts', 'contacts', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('a251ec5d-849c-c707-27e0-63ff3bc31330', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a6653275-37d2-3064-d95d-63ff3b58b733', 'am_projecttemplates_modified_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a797942f-ef02-71e1-8fac-63ff3b52f503', 'am_projecttemplates_created_by', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a880192c-376e-5706-7a20-63ff3bfd6822', 'am_projecttemplates_assigned_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ab0604e2-690c-a129-af79-63ff3b4fd588', 'unified_search', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('ae966a24-1f2b-ccb7-160d-63ff3be587aa', 'aos_invoices_modified_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b003ad1e-5187-e25b-7939-63ff3bee92bd', 'aos_invoices_created_by', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b0e7af63-31cd-c3c0-8e34-63ff3be5a5f1', 'aos_invoices_assigned_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b1470be7-e414-4c43-f1b5-63ff3b8e50e4', 'aos_line_item_groups_assigned_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b1678d6c-3cef-9617-4af9-63ff3be1cf1f', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b1c76a7d-255e-a95f-736d-63ff3b736cfa', 'aos_invoices_aos_product_quotes', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b2a7c3a0-9bfe-5597-199f-63ff3b017088', 'aos_invoices_aos_line_item_groups', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b36c0bd4-0170-7c78-9027-63ff3be118e2', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b466ca73-09da-9414-5a49-63ff3b5655af', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b4d038da-e6bb-f248-4e0d-63ff3b23db2f', 'am_tasktemplates_modified_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b547190b-a1ce-01cd-8d5d-63ff3b9160a6', 'accounts_email_addresses', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('b615d371-d00e-9705-efef-63ff3bd4833e', 'am_tasktemplates_created_by', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b62729e7-6244-d00c-f34e-63ff3b05214c', 'accounts_email_addresses_primary', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('b6435580-5814-e6c5-3b10-63ff3baade6c', 'sugarfeed_modified_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b75f9409-387e-0066-da7f-63ff3b7cc723', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b7715a21-be7f-3083-479d-63ff3b559d4c', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b77ac04d-27b0-04ec-26dc-63ff3b9a2fe7', 'am_tasktemplates_assigned_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b77e6bbe-729e-85dd-4b90-63ff3b4d0a1b', 'sugarfeed_created_by', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b85ed87c-7f93-af11-4b98-63ff3b89ab80', 'sugarfeed_assigned_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b86b83ea-2bf8-fd81-67d0-63ff3b2ef1a4', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b8b6acff-3da0-b17a-8eac-63ff3b968661', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b95286fc-a4fa-9455-bcc0-63ff3b17fdb1', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('b9894752-da58-5c8d-4b5c-63ff3b8879c2', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b9f45286-28b7-ca16-aad5-63ff3bd7dc48', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('ba32b11c-8dcb-a1a0-b4fa-63ff3babbab1', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('ba5dd9a6-7dfb-873a-9813-63ff3b885f52', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('baeb943f-4b64-b2f7-a3ab-63ff3b518444', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('bb1108fd-0ab6-819e-f355-63ff3ba8051c', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('bb4fed67-8d9c-5765-11a0-63ff3bdf3bbd', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('bbde9502-f17b-3026-6844-63ff3b477aea', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('bc09fc23-1c03-7ebe-0cd2-63ff3b66f20b', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('bc8550f1-8566-f3dc-6dd9-63ff3b42186a', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('bcefbc74-127e-fceb-86bb-63ff3b19c42c', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('bd567b24-a965-edfd-689e-63ff3b8268be', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('bd7b0751-f815-6e95-3248-63ff3b7bf5b1', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('bddecce0-04ef-21ae-82f4-63ff3bd34713', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('be377e0b-14c4-cbb5-93b4-63ff3b93b3b4', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('be743a84-8aa3-847f-6250-63ff3b3968b9', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('be9993d4-810e-0d3f-1062-63ff3b50c5fc', 'aos_pdf_templates_modified_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bf172243-39e7-6542-7fb2-63ff3bc7a882', 'account_campaign_log', 'Accounts', 'accounts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Accounts', 0, 0),
('bf22d74f-a6f4-c68f-f21b-63ff3beb8bc8', 'calls_leads', 'Calls', 'calls', 'id', 'Leads', 'leads', 'id', 'calls_leads', 'call_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('bf67e3a0-9c8d-99d2-1633-63ff3b782e47', 'cases_created_contact', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'contact_created_by_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bfba0095-d3f8-2e3a-c701-63ff3b838fec', 'groups_aos_product_quotes', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'group_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c00d5e9c-86e6-66cd-71d7-63ff3bbf9449', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('c00fe09c-27ba-60a2-6a1d-63ff3b3f8106', 'account_aos_quotes', 'Accounts', 'accounts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c0b18b06-c9e7-057f-2024-63ff3b7b8ae1', 'aos_pdf_templates_created_by', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c0f839a8-d9f7-56ac-3d4e-63ff3b5fb638', 'account_aos_invoices', 'Accounts', 'accounts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c1025e4a-268b-2bec-8c30-63ff3ba978a1', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('c1e9604c-fe1c-a8bc-da3c-63ff3bebc810', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('c1fd88ed-16d4-aee1-78f3-63ff3b6a34c1', 'account_aos_contracts', 'Accounts', 'accounts', 'id', 'AOS_Contracts', 'aos_contracts', 'contract_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c2152efc-8846-8678-0e88-63ff3bcf2a80', 'aos_pdf_templates_assigned_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c2d682bc-d2df-4c5d-33e4-63ff3b1190c7', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('c3edde7d-911a-cbc3-cae9-63ff3b5f76ef', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Bugs', 0, 0),
('c57f082d-906e-3f87-bf4a-63ff3b5db4b8', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Cases', 0, 0),
('c5a1f05d-41f1-b8c6-c785-63ff3bf86b4a', 'am_projectholidays_modified_user', 'Users', 'users', 'id', 'AM_ProjectHolidays', 'am_projectholidays', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c6858749-e3fc-10d9-a15f-63ff3b1068ed', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Opportunities', 0, 0),
('c6f1b706-941d-24dd-df56-63ff3bc30ed1', 'am_projectholidays_created_by', 'Users', 'users', 'id', 'AM_ProjectHolidays', 'am_projectholidays', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c78872a6-2e2b-ee45-3fa7-63ff3bfb90ce', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Tasks', 0, 0),
('c82eba4b-4484-7778-78fb-63ff3b84e4c1', 'am_projectholidays_assigned_user', 'Users', 'users', 'id', 'AM_ProjectHolidays', 'am_projectholidays', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c870751c-d4d5-0843-66bf-63ff3bc4bb1e', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('c94660ff-8e5f-f1d4-f4ce-63ff3b90fd23', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'ProjectTask', 0, 0),
('c9dd30e2-995e-cbf3-4985-63ff3bc70c93', 'eapm_modified_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ca207871-fc83-b10d-72be-63ff3b2fa26e', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Project', 0, 0),
('cb131737-4c02-ead4-652e-63ff3bd1ecba', 'eapm_created_by', 'Users', 'users', 'id', 'EAPM', 'eapm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cb5eed14-c4c3-3f8b-9313-63ff3b90a231', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospects', 'prospects', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('cbe7d107-5be5-8bc9-157f-63ff3b1d39dc', 'eapm_assigned_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cc4b0f7f-d5b3-b247-5c08-63ff3bca205a', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('ccc4ed6b-77f5-1b70-ff5f-63ff3bddb2ed', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cd31b46a-36bb-fdee-4ea2-63ff3b2ef6ad', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('ce181b31-2855-885d-78c1-63ff3b549e97', 'meetings_leads', 'Meetings', 'meetings', 'id', 'Leads', 'leads', 'id', 'meetings_leads', 'meeting_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('ce1ff0cf-6ff3-767a-3746-63ff3bfbeb69', 'aos_product_categories_modified_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ce287e3c-5746-a607-7529-63ff3bd8578a', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cef91796-3de7-94a1-2a04-63ff3b0c63a9', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('cf1bda20-dcdf-d47c-51d0-63ff3ba79c8e', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cf763f2f-a8dc-6278-f230-63ff3baaeab8', 'aos_product_categories_created_by', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cfdc6c4e-0f4d-c810-9778-63ff3bb823c0', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0),
('d0125023-fa65-c774-895a-63ff3b95be67', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('d05bb488-d1a5-9572-d337-63ff3b8886a3', 'aos_product_categories_assigned_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d0ba58cb-fb9f-985c-a6df-63ff3b4b16f6', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d12cc8b2-cac0-d46b-9f6b-63ff3b9216ac', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('d159938b-c044-6b72-2032-63ff3baea9fc', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0),
('d162dec5-4049-6fa6-1dba-63ff3b3c8527', 'sub_product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'parent_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d2005152-a7b8-cd94-198f-63ff3b583f35', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d239996a-4bbd-83ad-db59-63ff3bc11df1', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0),
('d2896bfa-fb68-7429-6399-63ff3bebf6e1', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('d31c4586-59ad-a9c4-eb88-63ff3b13ec44', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0),
('d3371474-c352-86ef-0898-63ff3b0428cd', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d3970bd4-e919-c577-38d7-63ff3bd3781b', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('d40c0ebd-3835-7da8-10cb-63ff3b39dd81', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0),
('d416a224-7996-0a24-de17-63ff3ba21983', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('d4c41aba-ef5d-c5c3-692b-63ff3b4b3be9', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('d4e0b9a4-ac56-5276-e3f4-63ff3b9ba5fd', 'oauthkeys_modified_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauthkeys', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d4fed8dc-7142-1c9f-9819-63ff3b0541e9', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('d544e0d9-2660-f9d0-98b3-63ff3bd02859', 'prospect_list_accounts', 'ProspectLists', 'prospect_lists', 'id', 'Accounts', 'accounts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Accounts', 0, 0),
('d5c5189c-2ea8-ae46-c17b-63ff3b3cb338', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d5dee4cf-3331-4ba5-fdd9-63ff3bd7566d', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('d6302951-3743-c7b8-9e61-63ff3b6ad620', 'oauthkeys_created_by', 'Users', 'users', 'id', 'OAuthKeys', 'oauthkeys', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d67c70c5-c60f-253f-7cdd-63ff3bdc2da9', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('d6bf194d-2013-90de-a7e3-63ff3b12c3b3', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('d6c91695-be97-1590-073c-63ff3b8b07c8', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d7046f97-75bb-9f4a-c80b-63ff3b183455', 'jjwg_maps_modified_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d7225a73-e5ad-7f24-dd8c-63ff3b7fc768', 'oauthkeys_assigned_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauthkeys', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d7659443-6959-64db-e274-63ff3b03dd77', 'projects_bugs', 'Project', 'project', 'id', 'Bugs', 'bugs', 'id', 'projects_bugs', 'project_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('d7a1483e-4669-2f89-4832-63ff3b611aa8', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('d865f634-9bf9-def9-e0dd-63ff3b23022a', 'jjwg_maps_created_by', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d8741371-3bb6-e385-2fb7-63ff3bb581da', 'projects_cases', 'Project', 'project', 'id', 'Cases', 'cases', 'id', 'projects_cases', 'project_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('d8d968b1-c463-345b-3d67-63ff3b414303', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d8e075fb-caa2-f937-1982-63ff3bd9f98b', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d9447891-4df5-37e6-3c8c-63ff3bca5407', 'jjwg_maps_assigned_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d97016ae-0e81-100d-1ca6-63ff3b0a2b02', 'projects_accounts', 'Project', 'project', 'id', 'Accounts', 'accounts', 'id', 'projects_accounts', 'project_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('d9b9f501-7497-1a3f-61ab-63ff3b7a176b', 'opportunity_currencies', 'Opportunities', 'opportunities', 'currency_id', 'Currencies', 'currencies', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d9eb6379-c1f3-10d6-6130-63ff3b397ea8', 'users_email_addresses', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('da749d84-3053-18ad-86d9-63ff3b12293e', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'projects_contacts', 'project_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('daf30c6d-5e40-0ced-c7cf-63ff3bf713e8', 'users_email_addresses_primary', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('db5ab3bc-7673-6a72-8f7c-63ff3b8c580b', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'projects_opportunities', 'project_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('dc177c6f-09bc-86b2-efa6-63ff3b2e48ea', 'opportunities_campaign', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dca22569-9b18-a21a-612c-63ff3baffeae', 'acl_roles_actions', 'ACLRoles', 'acl_roles', 'id', 'ACLActions', 'acl_actions', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0),
('dd7626a2-53bc-bda0-7e6a-63ff3b6e405c', 'opportunity_aos_quotes', 'Opportunities', 'opportunities', 'id', 'AOS_Quotes', 'aos_quotes', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dd96aac1-05c8-9c13-f35a-63ff3b203989', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('ddc7c1c9-8a67-132b-61d1-63ff3bb0991f', 'consumer_tokens', 'OAuthKeys', 'oauth_consumer', 'id', 'OAuthTokens', 'oauth_tokens', 'consumer', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ddcc6f43-f199-974e-4a4a-63ff3b70424b', 'aos_products_modified_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('de5501cb-3df5-1126-ceb7-63ff3b155291', 'opportunity_aos_contracts', 'Opportunities', 'opportunities', 'id', 'AOS_Contracts', 'aos_contracts', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('de8c6f0f-d8ab-4437-5ba9-63ff3b57c666', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0),
('df0c8094-5566-ce9a-2226-63ff3be68585', 'oauthtokens_assigned_user', 'Users', 'users', 'id', 'OAuthTokens', 'oauth_tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('df0f9f83-d760-54d9-d067-63ff3b505f23', 'aos_products_created_by', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('df73d8dd-2220-6b51-7a06-63ff3ba9058f', 'leads_documents', 'Leads', 'leads', 'id', 'Documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0),
('dff3bd6a-5322-4884-14e4-63ff3bd30015', 'aos_products_assigned_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e08790d6-a23f-fe61-6ad2-63ff3b229e2f', 'documents_accounts', 'Documents', 'documents', 'id', 'Accounts', 'accounts', 'id', 'documents_accounts', 'document_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('e0e24886-be7e-e838-4a89-63ff3b878012', 'product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Products', 'aos_products', 'aos_product_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e1748db6-c53f-b240-2405-63ff3be7601b', 'documents_contacts', 'Documents', 'documents', 'id', 'Contacts', 'contacts', 'id', 'documents_contacts', 'document_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('e1d37420-d3d2-04ca-1ed8-63ff3bceada3', 'campaignlog_contact', 'CampaignLog', 'campaign_log', 'related_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e2acde07-ebf2-a594-b5c7-63ff3b160043', 'documents_opportunities', 'Documents', 'documents', 'id', 'Opportunities', 'opportunities', 'id', 'documents_opportunities', 'document_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('e349d87f-392a-83d2-a24a-63ff3bce8e0a', 'campaignlog_lead', 'CampaignLog', 'campaign_log', 'related_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e3b30ca1-92fe-b029-934f-63ff3bceed0e', 'documents_cases', 'Documents', 'documents', 'id', 'Cases', 'cases', 'id', 'documents_cases', 'document_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('e45e5cb9-fb13-5e93-0b82-63ff3b1c00bb', 'campaignlog_created_opportunities', 'CampaignLog', 'campaign_log', 'related_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e4a85e2c-5b91-8341-51b3-63ff3b22cf4c', 'documents_bugs', 'Documents', 'documents', 'id', 'Bugs', 'bugs', 'id', 'documents_bugs', 'document_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('e578ea06-18a3-5f1d-512f-63ff3bb5c96c', 'campaignlog_targeted_users', 'CampaignLog', 'campaign_log', 'target_id', 'Users', 'users', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e590ac7d-1da1-24a1-9ef5-63ff3bafc885', 'accounts_leads_1', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'id', 'accounts_leads_1_c', 'accounts_leads_1accounts_ida', 'accounts_leads_1leads_idb', 'many-to-many', NULL, NULL, 0, 0),
('e64ea5aa-c683-030e-65d0-63ff3b24bc4d', 'emailtemplates_assigned_user', 'Users', 'users', 'id', 'EmailTemplates', 'email_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e6795140-9d3e-06ac-abd0-63ff3ba9f6f6', 'accounts_opportunities_1', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities_1_c', 'accounts_opportunities_1accounts_ida', 'accounts_opportunities_1opportunities_idb', 'many-to-many', NULL, NULL, 0, 0),
('e6a32511-576f-84f4-13a7-63ff3bf3c921', 'campaignlog_sent_emails', 'CampaignLog', 'campaign_log', 'related_id', 'Emails', 'emails', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e705067d-eecc-07f0-eeab-63ff3b3b9136', 'fp_events_contacts', 'FP_events', 'fp_events', 'id', 'Contacts', 'contacts', 'id', 'fp_events_contacts_c', 'fp_events_contactsfp_events_ida', 'fp_events_contactscontacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('e75eacaa-4e4f-0305-1d3f-63ff3b0883fc', 'accounts_tasks_1', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'id', 'accounts_tasks_1_c', 'accounts_tasks_1accounts_ida', 'accounts_tasks_1tasks_idb', 'many-to-many', NULL, NULL, 0, 0),
('e761187a-f4d9-c7dc-2c78-63ff3be97f26', 'jjwg_markers_modified_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e84581f8-3107-301d-7a28-63ff3b8e0ca8', 'am_projectholidays_project', 'Project', 'project', 'id', 'AM_ProjectHolidays', 'am_projectholidays', 'id', 'am_projectholidays_project_c', 'am_projectholidays_projectproject_ida', 'am_projectholidays_projectam_projectholidays_idb', 'many-to-many', NULL, NULL, 0, 0),
('e8deb536-76aa-9063-942a-63ff3b53c36c', 'jjwg_markers_created_by', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e93f89b9-bd87-19bf-6967-63ff3bb49ece', 'am_projecttemplates_project_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Project', 'project', 'id', 'am_projecttemplates_project_1_c', 'am_projecttemplates_project_1am_projecttemplates_ida', 'am_projecttemplates_project_1project_idb', 'many-to-many', NULL, NULL, 0, 0),
('e9d32381-97ab-8d8f-b8eb-63ff3b31f1fe', 'jjwg_markers_assigned_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ea2e9774-2bc4-d41a-702c-63ff3b8805df', 'am_tasktemplates_am_projecttemplates', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'id', 'am_tasktemplates_am_projecttemplates_c', 'am_tasktemplates_am_projecttemplatesam_projecttemplates_ida', 'am_tasktemplates_am_projecttemplatesam_tasktemplates_idb', 'many-to-many', NULL, NULL, 0, 0),
('eb142c47-c489-b137-1b6d-63ff3b1af8cc', 'aos_contracts_documents', 'AOS_Contracts', 'aos_contracts', 'id', 'Documents', 'documents', 'id', 'aos_contracts_documents', 'aos_contracts_id', 'documents_id', 'many-to-many', NULL, NULL, 0, 0),
('ebfebdfe-6145-43ec-461d-63ff3b55dfe6', 'fp_events_modified_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ec20961e-dd36-ed17-3c7c-63ff3bc70cb1', 'aos_quotes_aos_contracts', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'aos_quotes_os_contracts_c', 'aos_quotese81e_quotes_ida', 'aos_quotes4dc0ntracts_idb', 'many-to-many', NULL, NULL, 0, 0),
('ed45ec30-c84e-80f5-b1bb-63ff3b7bbf2b', 'fp_events_created_by', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ed4d6b02-0f00-27bb-9f96-63ff3b9e121e', 'aos_products_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ed55d7c4-b7f6-dd0b-7d24-63ff3b0fed59', 'aos_quotes_aos_invoices', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'aos_quotes_aos_invoices_c', 'aos_quotes77d9_quotes_ida', 'aos_quotes6b83nvoices_idb', 'many-to-many', NULL, NULL, 0, 0),
('ee21eff6-5ef4-774f-7e23-63ff3b023fae', 'fp_events_assigned_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ee3d115a-3fb5-5c05-cbc8-63ff3bec7adf', 'aos_quotes_project', 'AOS_Quotes', 'aos_quotes', 'id', 'Project', 'project', 'id', 'aos_quotes_project_c', 'aos_quotes1112_quotes_ida', 'aos_quotes7207project_idb', 'many-to-many', NULL, NULL, 0, 0),
('ee910277-fff3-dd21-0948-63ff3b6f200c', 'aos_products_quotes_created_by', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ef1fc50e-3697-7869-a829-63ff3bfb038e', 'aow_processed_aow_actions', 'AOW_Processed', 'aow_processed', 'id', 'AOW_Actions', 'aow_actions', 'id', 'aow_processed_aow_actions', 'aow_processed_id', 'aow_action_id', 'many-to-many', NULL, NULL, 0, 0),
('ef7ad09c-a870-42f5-904d-63ff3b7dd5e6', 'aos_products_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f0070b18-67d4-efae-f42a-63ff3b89cc43', 'emp_employees_at_attentance_1', 'EMP_Employees', 'emp_employees', 'id', 'at_Attentance', 'at_attentance', 'id', 'emp_employees_at_attentance_1_c', 'emp_employees_at_attentance_1emp_employees_ida', 'emp_employees_at_attentance_1at_attentance_idb', 'many-to-many', NULL, NULL, 0, 0),
('f065db88-1f8f-8efa-ecc4-63ff3b051e57', 'aos_product_quotes_aos_products', 'AOS_Products', 'aos_products', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f0eb0026-503b-54ec-df76-63ff3b1c13a4', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f0f3c4b2-a538-a498-0ae2-63ff3be2f34e', 'emp_employees_documents_1', 'EMP_Employees', 'emp_employees', 'id', 'Documents', 'documents', 'id', 'emp_employees_documents_1_c', 'emp_employees_documents_1emp_employees_ida', 'emp_employees_documents_1documents_idb', 'many-to-many', NULL, NULL, 0, 0),
('f1d75415-4fb9-bf14-1541-63ff3b2d6a62', 'emp_employees_pro_projects_1', 'EMP_Employees', 'emp_employees', 'id', 'pro_Projects', 'pro_projects', 'id', 'emp_employees_pro_projects_1_c', 'emp_employees_pro_projects_1emp_employees_ida', 'emp_employees_pro_projects_1pro_projects_idb', 'many-to-many', NULL, NULL, 0, 0),
('f30fe252-0dda-3ae1-3dd7-63ff3bbd25eb', 'emp_employees_sh_salary_history_1', 'EMP_Employees', 'emp_employees', 'id', 'sh_Salary_History', 'sh_salary_history', 'id', 'emp_employees_sh_salary_history_1_c', 'emp_employees_sh_salary_history_1emp_employees_ida', 'emp_employees_sh_salary_history_1sh_salary_history_idb', 'many-to-many', NULL, NULL, 0, 0),
('f31ffe83-bcfd-d329-74f1-63ff3bcd30fc', 'notes_assigned_user', 'Users', 'users', 'id', 'Notes', 'notes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f324d83e-b785-560f-d82c-63ff3be3ecdb', 'projects_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('fb5606e2-bbf2-0e8b-4860-63ff3bd12c76', 'fp_events_fp_event_locations_1', 'FP_events', 'fp_events', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'fp_events_fp_event_locations_1_c', 'fp_events_fp_event_locations_1fp_events_ida', 'fp_events_fp_event_locations_1fp_event_locations_idb', 'many-to-many', NULL, NULL, 0, 0),
('fe300f7f-7e85-83be-0e3e-63ff3be8131f', 'emp_employee_list_at_attentance_1', 'EMP_Employee_List', 'emp_employee_list', 'id', 'at_Attentance', 'at_attentance', 'id', 'emp_employee_list_at_attentance_1_c', 'emp_employee_list_at_attentance_1emp_employee_list_ida', 'emp_employee_list_at_attentance_1at_attentance_idb', 'many-to-many', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `releases`
--

CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles_modules`
--

CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `saved_search`
--

CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schedulers`
--

CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedulers`
--

INSERT INTO `schedulers` (`id`, `deleted`, `date_entered`, `date_modified`, `created_by`, `modified_user_id`, `name`, `job`, `date_time_start`, `date_time_end`, `job_interval`, `time_from`, `time_to`, `last_run`, `status`, `catch_up`) VALUES
('1371dd81-acd8-0719-573c-634e3ee5c9c3', 0, '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '1', 'Removal of documents from filesystem', 'function::removeDocumentsFromFS', '2012-01-01 12:15:01', '2030-12-31 23:59:59', '0::3::1::*::*', NULL, NULL, NULL, 'Active', 0),
('17695ca9-25a7-0b36-5a8d-634e3e1b9331', 0, '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '1', 'Prune SugarFeed Tables', 'function::trimSugarFeeds', '2005-01-01 06:15:01', '2020-12-31 23:59:59', '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('1f7b013c-d6ac-959e-7456-634e3e3c6bae', 0, '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '1', 'Run Nightly Mass Email Campaigns', 'function::runMassEmailCampaign', '2005-01-01 11:45:01', '2020-12-31 23:59:59', '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('2a920d96-5e73-f327-eab2-634e3e5682e8', 0, '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '1', 'Run AOW WorkFlow', 'function::processAOW_Workflow', '2005-01-01 11:15:01', '2020-12-31 23:59:59', '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('67500da2-7e7a-14bb-fa5c-634e3e006ecc', 0, '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '1', 'Prune Database on 1st of Month', 'function::pruneDatabase', '2005-01-01 11:45:01', '2020-12-31 23:59:59', '0::4::1::*::*', NULL, NULL, NULL, 'Inactive', 0),
('6af53711-feaa-d343-7103-634e3e321c6b', 0, '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '1', 'AOP Check Inbound Mailboxes', 'function::pollMonitoredInboxesAOP', '2005-01-01 11:15:00', '2020-12-31 00:00:00', '*/1::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('78eb7167-f6ae-6a8b-b7ab-634e3e7f9fe6', 0, '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '1', 'Perform Lucene Index', 'function::aodIndexUnindexed', '2005-01-01 11:15:00', NULL, '0::0::*::*::*', NULL, NULL, NULL, 'Active', 1),
('7cf5335a-ae0e-f7b7-0e3a-634e3e2551ca', 0, '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '1', 'Optimise AOD Index', 'function::aodOptimiseIndex', '2005-01-01 11:15:00', NULL, '0::*/3::*::*::*', NULL, NULL, NULL, 'Active', 1),
('9121b71c-3aaa-68a4-dd79-634e3e188d6f', 0, '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '1', 'Run Scheduled Reports', 'function::aorRunScheduledReports', '2005-01-01 11:15:00', NULL, '*::*::*::*::*', NULL, NULL, NULL, 'Active', 1),
('ab2d063e-e1e3-62e8-5927-634e3e68b814', 0, '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '1', 'Run Email Reminder Notifications', 'function::sendEmailReminders', '2008-01-01 14:15:01', '2020-12-31 23:59:59', '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('e45d51a7-946e-bfeb-3c4c-634e3e72771f', 0, '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '1', 'Prune Tracker Tables', 'function::trimTracker', '2005-01-01 17:45:01', '2020-12-31 23:59:59', '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('ec67fee3-67cd-c713-364e-634e3e61e6d4', 0, '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '1', 'Check Inbound Mailboxes', 'function::pollMonitoredInboxes', '2005-01-01 13:00:01', '2020-12-31 23:59:59', '*::*::*::*::*', NULL, NULL, NULL, 'Inactive', 0),
('ed36082d-9a18-2e38-d36d-634e3e47657a', 0, '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '1', 'Clean Jobs Queue', 'function::cleanJobQueue', '2012-01-01 18:30:01', '2030-12-31 23:59:59', '0::5::*::*::*', NULL, NULL, NULL, 'Active', 0),
('f1e5234b-563a-f94d-f8c0-634e3ee10859', 0, '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '1', 'Run Nightly Process Bounced Campaign Emails', 'function::pollMonitoredInboxesForBouncedCampaignEmails', '2005-01-01 07:15:01', '2020-12-31 23:59:59', '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups`
--

CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_acl_roles`
--

CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_audit`
--

CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_default`
--

CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_records`
--

CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `securitygroups_users`
--

CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_salary_history`
--

CREATE TABLE `sh_salary_history` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `record_number` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_salary_history`
--

INSERT INTO `sh_salary_history` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `record_number`) VALUES
('29002cc4-987e-7a57-cdb8-63901843fcd2', 'SLH_2', '2022-12-07 04:38:58', '2023-01-24 06:23:29', '1', '1', 'testing\r\n', 1, '1', 2),
('3004f8c2-d10d-5495-f45f-63d1170f8c4b', 'SLH_4', '2023-01-25 11:50:05', '2023-01-27 07:06:54', '1', '1', 'test', 1, NULL, 4),
('3e650d03-7e3a-c769-46ed-63d3b398d909', 'SLH_5', '2023-01-27 11:21:36', '2023-01-27 11:21:36', '1', '1', '', 0, NULL, 5),
('5db49c71-3350-55e8-0950-63d3b77a23a4', 'SLH_6', NULL, '2023-01-27 11:35:34', '1', '1', 'test', 0, NULL, 6),
('d8f5b02d-4a3a-9682-e91c-63903631bb09', 'SLH_3', '2022-12-07 06:45:01', '2023-01-24 06:23:29', '1', '1', 'testing', 1, '1', 3),
('ddb45ace-061c-f43c-79bd-63f620512dfc', 'SLH_7', '2023-02-22 14:02:23', '2023-02-22 14:02:23', '1', '1', 'test', 0, NULL, 7),
('e9cb18e3-65d5-a354-f5c7-6388a1bb39a7', 'kamalesh', '2022-12-01 12:43:20', '2023-01-24 06:23:29', '1', '1', 'test', 1, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sh_salary_history_audit`
--

CREATE TABLE `sh_salary_history_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sh_salary_history_cstm`
--

CREATE TABLE `sh_salary_history_cstm` (
  `id_c` char(36) NOT NULL,
  `employe_salary_amont_c` int(255) DEFAULT NULL,
  `employe_salary_date_c` date DEFAULT NULL,
  `salary_hours_logged_c` datetime DEFAULT NULL,
  `sly_history_months_slaray_c` int(255) DEFAULT NULL,
  `sly_history_emp_name_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sh_salary_history_cstm`
--

INSERT INTO `sh_salary_history_cstm` (`id_c`, `employe_salary_amont_c`, `employe_salary_date_c`, `salary_hours_logged_c`, `sly_history_months_slaray_c`, `sly_history_emp_name_c`) VALUES
('29002cc4-987e-7a57-cdb8-63901843fcd2', 1223, '2022-12-03', '2022-12-04 23:00:00', NULL, NULL),
('3004f8c2-d10d-5495-f45f-63d1170f8c4b', 7000, '2023-01-14', NULL, 3, 'yyyy'),
('3e650d03-7e3a-c769-46ed-63d3b398d909', 1223, '2023-01-07', NULL, 3, 'yyyy'),
('5db49c71-3350-55e8-0950-63d3b77a23a4', 122312, '2023-01-06', NULL, 3, 'kamalesh.K'),
('d8f5b02d-4a3a-9682-e91c-63903631bb09', 1223, '2022-12-01', '2022-11-30 23:00:00', NULL, NULL),
('ddb45ace-061c-f43c-79bd-63f620512dfc', 7000, '2023-02-14', NULL, 1, 'mani'),
('e9cb18e3-65d5-a354-f5c7-6388a1bb39a7', 1223, '2022-12-09', '2022-12-08 23:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sk_skill`
--

CREATE TABLE `sk_skill` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sk_skill`
--

INSERT INTO `sk_skill` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`) VALUES
('5c3cbdc0-46e3-4aac-fab5-63e9c77cb4f0', 'mani', '2023-02-13 05:17:48', '2023-02-23 04:45:47', '1', '1', NULL, 0, ''),
('60e1cd4b-b3a1-177f-5ee3-63eb195bd4fc', 'karthi', '2023-02-14 05:17:05', '2023-02-23 04:46:09', '1', '1', NULL, 0, ''),
('68689fc6-73a9-8110-d365-63eb43fef40f', 'kamalesh', '2023-02-14 08:16:09', '2023-02-23 04:43:52', '1', '1', NULL, 0, ''),
('695c9ee1-d925-311e-feec-63f6ef6033ca', 'karan', '2023-02-23 04:45:16', '2023-02-23 04:45:16', '1', '1', NULL, 0, NULL),
('90ac729c-16df-59fb-b021-63ea62bd8fa3', 'raj', '2023-02-13 16:16:22', '2023-02-14 07:49:48', '1', '1', NULL, 1, ''),
('ef01054e-d73b-c93e-3046-63f6ef629224', 'vicky', '2023-02-23 04:44:27', '2023-02-23 04:44:27', '1', '1', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sk_skill_audit`
--

CREATE TABLE `sk_skill_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sk_skill_cstm`
--

CREATE TABLE `sk_skill_cstm` (
  `id_c` char(36) NOT NULL,
  `skill_name_c` varchar(255) DEFAULT NULL,
  `skill_proficion_c` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sk_skill_cstm`
--

INSERT INTO `sk_skill_cstm` (`id_c`, `skill_name_c`, `skill_proficion_c`) VALUES
('5c3cbdc0-46e3-4aac-fab5-63e9c77cb4f0', 'Graphic Designer', 'Beginner'),
('60e1cd4b-b3a1-177f-5ee3-63eb195bd4fc', 'UI Designer', 'Intermediate'),
('68689fc6-73a9-8110-d365-63eb43fef40f', 'game developer', 'Beginner'),
('695c9ee1-d925-311e-feec-63f6ef6033ca', 'CRM  Services', 'Advanced'),
('90ac729c-16df-59fb-b021-63ea62bd8fa3', 'Engineer', 'Beginner'),
('ef01054e-d73b-c93e-3046-63f6ef629224', 'App Developer', 'Beginner');

-- --------------------------------------------------------

--
-- Table structure for table `sly_salaries`
--

CREATE TABLE `sly_salaries` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `address_c` varchar(255) DEFAULT NULL,
  `currency_c` decimal(26,6) DEFAULT NULL,
  `indian_c` tinyint(1) DEFAULT '0',
  `list_c` varchar(255) DEFAULT NULL,
  `reports_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sly_salaries`
--

INSERT INTO `sly_salaries` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `address_c`, `currency_c`, `indian_c`, `list_c`, `reports_c`) VALUES
('23d2383b-c38d-f285-ffe6-635a1dd6e0fe', 'kamalesh', '2022-10-27 05:54:48', '2022-10-27 05:54:48', '1', '1', '', 0, '1', '', '0.000000', 0, '', ''),
('86154a57-661f-ef10-acea-635a140f2404', '', '2022-10-27 05:18:28', '2022-10-27 05:31:10', '1', '1', 'testing', 0, '1', 'test', '12.000000', 1, 'Forum', 'kamalesh'),
('9e95406f-5098-f348-35c9-635a167080bb', '', '2022-10-27 05:28:28', '2022-10-27 05:35:55', '1', '1', 'testing', 0, '1', 'ramnad', '12.000000', 1, 'Forum', 'rest'),
('a93adf25-1236-4553-a10b-635a1b7aaeca', '', '2022-10-27 05:45:37', '2022-10-27 05:46:17', '1', '1', 'test', 0, '1', 'ramnad', '12.000000', 1, 'Forum', 'reselect'),
('d9d2f752-0ca0-3fe1-2733-635a35049420', 'lokesh', '2022-10-27 07:40:22', '2022-10-27 07:40:22', '1', '1', 'add', 0, '1', 'fsdg', '12.000000', 1, 'Forum', NULL),
('ebbdbef2-98ff-b915-6fc7-635a125c9731', 'lokesh', '2022-10-27 05:09:15', '2022-10-27 05:09:15', '1', '1', 'testing.', 0, '1', 'fsdg', '2.000000', 1, 'Internal', 'lokesh');

-- --------------------------------------------------------

--
-- Table structure for table `sly_salaries_audit`
--

CREATE TABLE `sly_salaries_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sly_salaries_audit`
--

INSERT INTO `sly_salaries_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('8c36887e-2dfe-84ba-5db5-635a1bdde3a5', 'a93adf25-1236-4553-a10b-635a1b7aaeca', '2022-10-27 05:46:17', '1', 'assigned_user_id', 'relate', '', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sly_salaries_cstm`
--

CREATE TABLE `sly_salaries_cstm` (
  `id_c` char(36) NOT NULL,
  `user_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sly_salaries_cstm`
--

INSERT INTO `sly_salaries_cstm` (`id_c`, `user_c`) VALUES
('23d2383b-c38d-f285-ffe6-635a1dd6e0fe', ''),
('2579f732-a3be-b867-e044-63500ca2ed48', ''),
('2affb200-1c7a-af68-9b1d-635005291bc1', ''),
('30e1cc9f-4076-c498-8c86-63593fe36db1', ''),
('48c21a37-ed6b-6c14-67ca-6350d7c55397', ''),
('5b690da2-f44b-f71c-7a73-63593e62d278', ''),
('60e80281-ddb4-43c5-ca44-63593ed8f7fb', ''),
('86154a57-661f-ef10-acea-635a140f2404', 'test'),
('91827c1a-f709-3d05-274d-634fdc24dcdb', ''),
('9e95406f-5098-f348-35c9-635a167080bb', 'karthick'),
('a93adf25-1236-4553-a10b-635a1b7aaeca', 'karan'),
('b2c043f1-0bc0-1004-9336-634fb0fd442b', ''),
('c031dc64-fe99-3c14-195f-635008404965', ''),
('c60c7cf4-a6d7-0a3e-60c6-63593fdd2391', ''),
('cac47eee-b05c-de28-db4f-634ff915d16b', ''),
('d9d2f752-0ca0-3fe1-2733-635a35049420', 'ddssa'),
('e31f10d6-7a9d-88bd-70f0-634ffb91ccdb', ''),
('e4f87a28-7532-060f-b29c-634fd5b74252', ''),
('ebbdbef2-98ff-b915-6fc7-635a125c9731', '');

-- --------------------------------------------------------

--
-- Table structure for table `sly_salary`
--

CREATE TABLE `sly_salary` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_c` varchar(255) DEFAULT NULL,
  `address_c` varchar(255) DEFAULT NULL,
  `currency_c` decimal(26,6) DEFAULT NULL,
  `email_c` varchar(255) DEFAULT NULL,
  `indian_c` tinyint(1) DEFAULT NULL,
  `logged_c` datetime DEFAULT NULL,
  `user_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sly_salary_audit`
--

CREATE TABLE `sly_salary_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sugarfeed`
--

CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sugarfeed`
--

INSERT INTO `sugarfeed` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `related_module`, `related_id`, `link_url`, `link_type`) VALUES
('2181dc67-0759-c8e8-e600-639427870cd2', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:6ed60655-7206-e3f6-2fe3-639427cffa37:kamalesh] {SugarFeed.WITH} [Accounts:1509469a-e1a7-4908-67b6-6394265cb78a:kamalesh] {SugarFeed.FOR} $12.00', '2022-12-10 06:29:48', '2022-12-10 06:29:48', '1', '1', NULL, 0, '1', 'Opportunities', '6ed60655-7206-e3f6-2fe3-639427cffa37', NULL, NULL),
('419d92d9-b850-7c23-c5b5-63942439e48b', '<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:2653a62e-19ca-b543-142f-63942407df80:kamalesh kali]', '2022-12-10 06:17:14', '2022-12-10 06:17:14', '1', '1', NULL, 0, '1', 'Leads', '2653a62e-19ca-b543-142f-63942407df80', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tracker`
--

CREATE TABLE `tracker` (
  `id` int(11) NOT NULL,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tracker`
--

INSERT INTO `tracker` (`id`, `monitor_id`, `user_id`, `module_name`, `item_id`, `item_summary`, `date_modified`, `action`, `session_id`, `visible`, `deleted`) VALUES
(9, '4c764f63-1fe6-4a16-9841-634fd588a057', '1', 'EMP_Employees', '65dd3473-c619-3205-626a-634f97148e86', NULL, '2022-10-19 10:48:01', 'editview', '1d0hus3h2nh6bb61o2er9iges2', 0, 0),
(13, '26687bfa-99b2-f90f-376b-634fdbb45af3', '1', 'EMP_Employees', '9d70a3d2-414e-e435-a7c7-634fd61d872c', NULL, '2022-10-19 11:12:05', 'editview', '1d0hus3h2nh6bb61o2er9iges2', 0, 0),
(21, '1e8b5d3d-7e49-afa2-d1b2-63500b57322c', '1', 'SLY_Salaries', 'c031dc64-fe99-3c14-195f-635008404965', 'test', '2022-10-19 14:38:47', 'detailview', 'nhb06r0eam2api9tgq66f34044', 1, 0),
(23, 'a5e2cf01-4208-22b4-837e-63500c2de408', '1', 'EMP_Employees', 'c4cf923f-b3c3-3128-565c-63500cabb86b', NULL, '2022-10-19 14:42:40', 'detailview', 'nhb06r0eam2api9tgq66f34044', 0, 0),
(25, '4aec7182-88b2-67f4-8782-63500c15506f', '1', 'SLY_Salaries', '2579f732-a3be-b867-e044-63500ca2ed48', 'testing', '2022-10-19 14:42:58', 'detailview', 'nhb06r0eam2api9tgq66f34044', 1, 0),
(34, '77a3cb34-5b71-6c90-c82b-6350d7fd9f37', '1', 'EMP_Employees', '5e4c86b7-b5f3-ffc6-63ba-634f8e8aee5c', NULL, '2022-10-20 05:08:54', 'editview', 'k2a9kia2nknt5chjltgp42jga0', 0, 0),
(40, '736d4c3a-f960-1f66-34d5-6350da82dd41', '1', 'EMP_Employees', '2d5d80b8-b22e-7042-6e8f-6350d655dd16', NULL, '2022-10-20 05:20:48', 'detailview', 'td23jg3ei410e4o1il18g3ub33', 0, 0),
(41, 'a10cdbd7-ab9c-0aef-e5d2-6350da7e1621', '1', 'SLY_Salaries', '48c21a37-ed6b-6c14-67ca-6350d7c55397', 'karthick', '2022-10-20 05:20:51', 'detailview', 'td23jg3ei410e4o1il18g3ub33', 1, 0),
(48, '76253877-4dc3-b092-d053-6350e8ea7ab7', '1', 'ACLRoles', '7260c339-879b-2705-c43b-6350e86a6956', 'Accounts', '2022-10-20 06:21:32', 'save', 'k2a9kia2nknt5chjltgp42jga0', 0, 0),
(52, 'aaf11e5c-7de7-30cb-1956-6350e9f511e6', '1', 'ACLRoles', '6107ef79-7840-b925-6480-6350e837e5cc', 'Admin', '2022-10-20 06:23:04', 'detailview', 'k2a9kia2nknt5chjltgp42jga0', 0, 0),
(55, '7e978850-9ba3-533b-14c3-635101fda905', '1', 'EMP_Employees', '38c000c8-f5df-73c6-a98d-635101ff66e0', NULL, '2022-10-20 08:06:22', 'detailview', 'k2a9kia2nknt5chjltgp42jga0', 0, 0),
(60, '6ed121c3-fa6f-29dc-00d0-635121d48a9a', '1', 'EMP_Employees', '2d5d80b8-b22e-7042-6e8f-6350d655dd16', NULL, '2022-10-20 10:22:40', 'editview', 'k2a9kia2nknt5chjltgp42jga0', 0, 0),
(61, '28c3a5c2-01a1-3e0c-dd5a-635121c3aed1', '1', 'EMP_Employees', 'd839e64e-7fe1-6fd1-0c13-635121a1bcb8', NULL, '2022-10-20 10:23:18', 'detailview', 'k2a9kia2nknt5chjltgp42jga0', 0, 0),
(66, 'bafd53b3-ca32-3202-e130-635129ab2c9b', '1', 'EMP_Employees', 'cbe979ac-afed-4211-9b7e-63512931a12c', NULL, '2022-10-20 10:57:25', 'detailview', 'k2a9kia2nknt5chjltgp42jga0', 0, 0),
(71, 'a743f47a-18a9-3351-2561-6351505e1f9b', '1', 'EMP_Employees', '204ea969-ba36-c0b8-38ee-635127d4f225', NULL, '2022-10-20 13:44:54', 'editview', 'k2a9kia2nknt5chjltgp42jga0', 0, 0),
(73, '572fe96f-84c7-a314-1975-6352429ab9ce', '1', 'EMP_Employees', '4f174a1b-568e-3580-3cd4-635242589681', 'vicky', '2022-10-21 06:57:56', 'detailview', 'k2a9kia2nknt5chjltgp42jga0', 1, 0),
(74, '7d7e0e7f-8ac3-ce05-b505-63524387b9d6', '1', 'EMP_Employees', '5d2c8682-32c1-9544-caed-635151097137', 'admin', '2022-10-21 06:58:16', 'detailview', 'k2a9kia2nknt5chjltgp42jga0', 1, 0),
(75, '8c4bdf44-41b4-40ff-7f58-635247d1345e', '1', 'EMP_Employees', '88831df5-3f1f-e1db-a68e-6352472a4104', 'test', '2022-10-21 07:16:33', 'detailview', 'k2a9kia2nknt5chjltgp42jga0', 1, 0),
(77, 'aa5d4400-bb09-58d4-5acc-63524a49d430', '1', 'EMP_Employees', 'b4528914-7ac8-df22-307a-635249e04ee9', 'kamalesh', '2022-10-21 07:31:19', 'detailview', 'k2a9kia2nknt5chjltgp42jga0', 1, 0),
(78, 'ea63b9cd-f304-3cb0-f3e5-63524c9fa38e', '1', 'EMP_Employees', '49c825ec-fb61-9f88-7f9d-63524c815ef9', 'Admin', '2022-10-21 07:40:46', 'detailview', 'k2a9kia2nknt5chjltgp42jga0', 1, 0),
(79, '13960b2d-31a1-9658-eba6-63524e628155', '1', 'EMP_Employees', '660f2374-5389-5946-5078-63524e681967', 'kamalesh', '2022-10-21 07:47:10', 'detailview', 'k2a9kia2nknt5chjltgp42jga0', 1, 0),
(81, '4f9f9f52-6ee4-f335-42fe-63527f980099', '1', 'EMP_Employees', 'a5bc2304-6e99-dda5-d649-63527f6a1abb', 'karthi', '2022-10-21 11:15:08', 'detailview', 'k2a9kia2nknt5chjltgp42jga0', 1, 0),
(94, '3ca01d75-c361-633a-ff54-6358e60c6539', '1', 'EMP_Employees', '11c51292-62e1-1c02-84ae-635250f8d628', 'harish', '2022-10-26 07:48:45', 'detailview', '12bpobgis3k5lavbl0kia7bev2', 1, 0),
(95, '841b87cb-290d-cb61-82ab-63590b2a95d2', '1', 'EMP_Employees', '7c72333a-73e4-3610-e67b-63590bebda4e', 'kamalesh', '2022-10-26 10:25:09', 'detailview', '12bpobgis3k5lavbl0kia7bev2', 1, 0),
(96, '8ce400a6-0efd-3b32-493c-63590c7c9079', '1', 'EMP_Employees', '565a94bf-aabb-9d78-ba1e-63590c3f398c', 'vicky', '2022-10-26 10:31:18', 'detailview', '12bpobgis3k5lavbl0kia7bev2', 1, 0),
(97, '5f986c1d-fcb9-12ab-ad70-63591cec7337', '1', 'EMP_Employees', 'a4a39935-898a-4eaa-9592-63591cbaee64', 'kamalesh', '2022-10-26 11:41:14', 'detailview', '12bpobgis3k5lavbl0kia7bev2', 1, 0),
(110, '4ad78073-c0a6-59d4-e973-635920860b96', '1', 'EMP_Employees', '276df170-d60e-3f2b-f20c-63591ed41461', 'karan', '2022-10-26 11:58:06', 'detailview', '12bpobgis3k5lavbl0kia7bev2', 1, 0),
(119, '1062230f-6eb3-f60c-43fa-63593ed7cd3e', '1', 'SLY_Salaries', '5b690da2-f44b-f71c-7a73-63593e62d278', 'lokesh', '2022-10-26 14:05:00', 'detailview', '12bpobgis3k5lavbl0kia7bev2', 1, 0),
(120, '42f93821-d81f-ac6f-9748-63593e715978', '1', 'SLY_Salaries', '60e80281-ddb4-43c5-ca44-63593ed8f7fb', 'lokesh', '2022-10-26 14:05:42', 'detailview', '12bpobgis3k5lavbl0kia7bev2', 1, 0),
(124, '2d6296cd-4e5e-2350-b9e0-635a110d81f4', '1', 'SLY_Salaries', '30e1cc9f-4076-c498-8c86-63593fe36db1', 'test', '2022-10-27 05:06:46', 'detailview', 'lrefr25uoqisl98v6re04blr21', 1, 0),
(125, '90d294e3-a728-10a9-7986-635a12afe4fe', '1', 'SLY_Salaries', 'c60c7cf4-a6d7-0a3e-60c6-63593fdd2391', 'test', '2022-10-27 05:07:56', 'detailview', 'lrefr25uoqisl98v6re04blr21', 1, 0),
(140, '104576fe-d80c-1e3f-c4d3-635a174b631a', '1', 'SLY_Salaries', '86154a57-661f-ef10-acea-635a140f2404', NULL, '2022-10-27 05:31:12', 'detailview', 'lrefr25uoqisl98v6re04blr21', 1, 0),
(147, 'c05d9500-595d-e05e-d009-635a188b2f64', '1', 'SLY_Salaries', '9e95406f-5098-f348-35c9-635a167080bb', NULL, '2022-10-27 05:35:58', 'detailview', 'lrefr25uoqisl98v6re04blr21', 1, 0),
(153, '929958b3-31d3-f7d8-33dc-635a1b3c2938', '1', 'SLY_Salaries', 'a93adf25-1236-4553-a10b-635a1b7aaeca', NULL, '2022-10-27 05:46:19', 'detailview', 'u5g6g9r8s8to5eeuqlfgc6ne44', 1, 0),
(157, '51665122-7181-fa6a-b64b-635a1c0f15cf', '1', 'SLY_Salaries', 'ebbdbef2-98ff-b915-6fc7-635a125c9731', 'lokesh', '2022-10-27 05:54:01', 'detailview', 'u5g6g9r8s8to5eeuqlfgc6ne44', 1, 0),
(159, '3e049cda-df96-ad9c-d1f3-635a1d6eeabc', '1', 'SLY_Salaries', '23d2383b-c38d-f285-ffe6-635a1dd6e0fe', 'kamalesh', '2022-10-27 05:54:55', 'detailview', 'u5g6g9r8s8to5eeuqlfgc6ne44', 1, 0),
(164, '47fd5aec-24bc-06f9-9893-635a3597b649', '1', 'SLY_Salaries', 'd9d2f752-0ca0-3fe1-2733-635a35049420', 'lokesh', '2022-10-27 07:40:24', 'detailview', 'u5g6g9r8s8to5eeuqlfgc6ne44', 1, 0),
(165, '91b5ffe4-4b4e-03c2-d318-635a3c8c01a0', '1', 'SLY_Salary', '2e8b85ad-61b9-5793-ad15-635a3c93dfdb', 'lokesh', '2022-10-27 08:09:57', 'detailview', 'u5g6g9r8s8to5eeuqlfgc6ne44', 1, 0),
(167, '1824112e-3582-3fe8-71b4-635a3e051448', '1', 'SLY_Salary', '21cd9ad5-eb71-2aa4-4ba5-635a3d9f9d91', 'lokesh', '2022-10-27 08:15:08', 'detailview', 'u5g6g9r8s8to5eeuqlfgc6ne44', 1, 0),
(188, '7db60170-51d6-2ab3-ab39-635b6a656118', '1', 'SLY_Salary', 'c57bb7ee-a30b-02ed-29fb-635a65543ad5', 'kamalesh', '2022-10-28 05:37:50', 'detailview', '4jokkgebjvk9tnpe2oqprnln13', 1, 0),
(192, '454816e7-1d3a-96b2-c48a-635b6c5570e0', '1', 'SLY_Salary', '74156368-6d53-ad2e-a5e8-635b6b3a8ced', 'karthi', '2022-10-28 05:45:09', 'detailview', '4jokkgebjvk9tnpe2oqprnln13', 1, 0),
(203, '6e5c7d64-58f5-9c61-14ef-635b730deca3', '1', 'SLY_Salary', '86242914-fa7b-250d-a79c-635b73a87197', 'Employees', '2022-10-28 06:15:27', 'detailview', '4jokkgebjvk9tnpe2oqprnln13', 1, 0),
(209, 'b3f300c6-bd89-7350-b3ce-635b775750ba', '1', 'SLY_Salary', '1209ec17-ad24-661f-fa51-635b73530dda', 'karthi', '2022-10-28 06:33:29', 'detailview', '4jokkgebjvk9tnpe2oqprnln13', 1, 0),
(215, 'd22770b8-71ca-2b09-61b5-635b7d75a347', '1', 'SLY_Salary', '738ed7bb-9148-bf0e-3f66-635b7cfb0481', 'kamalesh', '2022-10-28 06:58:10', 'detailview', '4jokkgebjvk9tnpe2oqprnln13', 1, 0),
(227, '9e15936f-af08-83b0-7fd2-635b893eecbd', '1', 'SLY_Salary', 'e19f30e1-045d-a841-2e10-635b733b2caf', 'kamalesh', '2022-10-28 07:48:53', 'detailview', '4jokkgebjvk9tnpe2oqprnln13', 1, 0),
(230, '18073fe2-d6fd-f3a6-6021-635b8af062ea', '1', 'SLY_Salary', '1b780d43-aedf-7a78-088e-635b73b94b08', 'kamalesh', '2022-10-28 07:52:00', 'detailview', '4jokkgebjvk9tnpe2oqprnln13', 1, 0),
(232, '74c8e01d-f638-6f16-8be0-635b8a538c1e', '1', 'SLY_Salary', '706bf2af-ae68-a308-dceb-635b82298ed1', 'kamalesh', '2022-10-28 07:52:06', 'detailview', '4jokkgebjvk9tnpe2oqprnln13', 1, 0),
(239, 'cc302ae0-0c41-ddd4-e51b-635bac4e8ec2', '1', 'EMP_Employees', '62400fe6-c81e-cce8-aa37-635bab8750dd', 'harish', '2022-10-28 10:16:59', 'detailview', '072vi42dqdqq2p9sjvq0664ah0', 1, 0),
(242, 'a0f59a76-b749-0423-6848-635bac129f04', '1', 'SLY_Salary', 'bb084835-1dee-8b7e-d159-635bab2a11e2', 'harish', '2022-10-28 10:18:09', 'detailview', '072vi42dqdqq2p9sjvq0664ah0', 1, 0),
(248, 'ed1f67a7-d159-a447-777d-635bae55c040', '1', 'SLY_Salary', 'b53f831f-542a-a084-3199-635b82857865', 'vicknesh', '2022-10-28 10:26:38', 'editview', '072vi42dqdqq2p9sjvq0664ah0', 1, 0),
(259, '556e04cc-039f-6ca4-eeb3-635cb6129cf3', '1', 'SLY_Salary', '13471fa6-3ebc-de64-0c01-635cb645bb85', 'harish.kali', '2022-10-29 05:11:58', 'detailview', '831dj77g7gpa53t12m4o7tb4v6', 1, 0),
(266, '59d122a7-706a-b6db-ebf6-635cb94b7c83', '1', 'SLY_Salary', '27f3c811-140c-9631-7e72-635cb6b211ce', 'harish.k', '2022-10-29 05:25:14', 'detailview', '831dj77g7gpa53t12m4o7tb4v6', 1, 0),
(270, 'a4cea94a-e9ab-719d-6932-635cb9b13af1', '1', 'EMP_Employees', '985ed570-bcee-2221-8aab-635a226d209f', 'harish', '2022-10-29 05:26:01', 'detailview', '831dj77g7gpa53t12m4o7tb4v6', 1, 0),
(275, '777ce561-7486-f20b-f6f8-635cbb1a70d3', '1', 'SLY_Salary', 'ed5a9a98-f236-0ad4-159b-635cbbe44206', 'Kamalesh', '2022-10-29 05:35:18', 'detailview', '831dj77g7gpa53t12m4o7tb4v6', 1, 0),
(298, '82ca5e60-cc6c-be54-51b7-6388574fb865', '1', 'at_Attentance', '34f4395e-a987-17e2-a421-638857392f07', 'kamalesh', '2022-12-01 07:27:00', 'detailview', 'ajh00cberpvkdkvacmc412pnr0', 0, 0),
(301, '33bb9d4b-1323-f22c-cd59-638897e9a760', '1', 'EMP_Employees', '84b88284-a5bb-7860-6583-635b794ab284', 'karthi', '2022-12-01 12:00:36', 'detailview', 'ajh00cberpvkdkvacmc412pnr0', 1, 0),
(307, '4596d7be-604a-43ee-d5ae-6388a4663137', '1', 'sh_Salary_History', 'e9cb18e3-65d5-a354-f5c7-6388a1bb39a7', 'kamalesh', '2022-12-01 12:54:55', 'detailview', 'ajh00cberpvkdkvacmc412pnr0', 0, 0),
(324, '409065b8-9aba-d4ab-25d2-63901fe48725', '1', 'EMP_Employees', '4347719f-33ee-e81f-e8a8-635922b72386', 'kamalesh', '2022-12-07 05:07:01', 'detailview', 'jjkkm855lr14k1g84arpft3fq7', 0, 0),
(326, '6a63e427-f5d1-bf65-8ae6-63902e642156', '1', 'EMP_Employees', '5bd00ed3-6e14-65c8-31f2-63902e565c69', 'EMP_9', '2022-12-07 06:12:39', 'detailview', 'j45qlldq10nt3o4d43fhjiue04', 1, 0),
(330, '761f13d7-e747-700f-0e07-6390343e485c', '1', 'sh_Salary_History', '29002cc4-987e-7a57-cdb8-63901843fcd2', 'SLH_2', '2022-12-07 06:38:33', 'detailview', 'j45qlldq10nt3o4d43fhjiue04', 0, 0),
(334, '45289abe-e61b-d3ac-4695-63931ea31797', '1', 'EMP_Employees', '574076fd-97d0-bf3e-00da-6381a64c69b8', 'kamalesh', '2022-12-09 11:39:45', 'detailview', '1p3k7ejdbdh64qtk75rpp42sl3', 1, 0),
(338, 'e83765fa-8beb-1beb-d6ae-63941811736c', '1', 'Documents', '460f1886-8ee6-13a0-64dc-638ee63043cf', 'kamalesh', '2022-12-10 05:25:28', 'detailview', 'n342l0sq35bmneuolo28r70vc1', 1, 0),
(426, '3867f61d-d50b-3144-3ca6-639858a6d46e', '1', 'EMP_Employees', 'cb3406cc-befa-d024-d3a9-635b72d5485d', 'akash', '2022-12-13 10:50:20', 'detailview', '44n31v1k9us60h7ukg0ktr7mc3', 1, 0),
(427, 'db048361-ff90-3e58-b481-639859792800', '1', 'EMP_Employees', '8e230360-35ff-5aed-8fca-6390336d95b0', 'EMP_10', '2022-12-13 10:52:33', 'detailview', '44n31v1k9us60h7ukg0ktr7mc3', 1, 0),
(429, '36ffe075-30ec-8486-4db4-63b2e357bd3a', '1', 'Opportunities', '6ed60655-7206-e3f6-2fe3-639427cffa37', 'kamalesh', '2023-01-02 13:58:51', 'detailview', 'fjoaiuodr9gp1cekfa2q2e1nl1', 1, 0),
(434, '3f20fbc6-cc1f-d2c8-ec7d-63c8def441cf', '1', 'sh_Salary_History', 'd8f5b02d-4a3a-9682-e91c-63903631bb09', 'SLH_3', '2023-01-19 06:08:05', 'detailview', '36ql79525jm004mtu5l51dnun3', 0, 0),
(435, '2c6cde6d-21a9-2125-3b4f-63c8deab7fbd', '1', 'EMP_Employees', '4267076e-77d2-728c-1c98-635cba7dc597', 'EMP_1', '2023-01-19 06:08:11', 'detailview', '36ql79525jm004mtu5l51dnun3', 1, 0),
(440, '727ef9e3-e500-ad21-3135-63c8f0f40f8d', '1', 'EMP_Employee', '60a9f033-8312-1453-246d-63c8f004f335', 'admin', '2023-01-19 07:27:49', 'detailview', '36ql79525jm004mtu5l51dnun3', 0, 0),
(443, 'e38bb4ec-443c-fb94-55c1-63c91966735e', '1', 'EMP_Employee', '9b2336e7-4847-8e4b-4ecf-63c8f26b365b', 'test', '2023-01-19 10:21:48', 'detailview', '36ql79525jm004mtu5l51dnun3', 0, 0),
(447, '6f81496d-1028-6c9c-d42f-63c91a34a333', '1', 'EMP_Employee', 'dc30881f-172c-dee8-8b05-63c8e625416c', 'kamalesh', '2023-01-19 10:23:35', 'editview', '36ql79525jm004mtu5l51dnun3', 0, 0),
(453, 'd0a0e1a2-1297-0a71-d8b0-63c91e65bc79', '1', 'pro_Projects', '5ef1276c-3ff7-0ae7-4ceb-638b3c999078', 'PRO_1', '2023-01-19 10:43:59', 'detailview', '36ql79525jm004mtu5l51dnun3', 0, 0),
(454, 'c1730472-0854-fb28-349f-63c91fa95b56', '1', 'pro_Projects', 'aa19b04f-fb44-6261-f084-63c91f53d74e', 'PRO_2', '2023-01-19 10:44:57', 'detailview', '36ql79525jm004mtu5l51dnun3', 0, 0),
(455, '15bb55aa-9e70-547f-e2e0-63c9227de46d', '1', 'EMP_Employees', 'e70fa988-c5f1-1cf5-4e48-63c92238dbbf', 'EMP_11', '2023-01-19 10:57:07', 'detailview', '36ql79525jm004mtu5l51dnun3', 1, 0),
(457, 'ac63b849-3c2a-e906-b0e9-63c9221d34db', '1', 'EMP_Employees', 'c850150b-02eb-e251-c572-63819cc3ef0a', 'harish', '2023-01-19 10:59:02', 'detailview', '36ql79525jm004mtu5l51dnun3', 1, 0),
(460, 'bc4036d8-5a07-9679-58b3-63c934698a08', '1', 'EMP_Employee', 'b1ef0c7e-b911-ef95-b118-63c91b7ad840', 'karthi', '2023-01-19 12:14:41', 'detailview', '36ql79525jm004mtu5l51dnun3', 0, 0),
(461, '56433396-0054-a4a2-2391-63c9358e156f', '1', 'pro_Projects', '191d9827-a895-32ef-9dd3-63c935979d22', 'PRO_3', '2023-01-19 12:18:29', 'detailview', '36ql79525jm004mtu5l51dnun3', 0, 0),
(462, 'c0c1e7ce-1b89-11b6-2155-63c93626411d', '1', 'EMP_Employees', '78f3faff-0612-a504-3830-63c93663badd', 'EMP_12', '2023-01-19 12:25:16', 'detailview', '36ql79525jm004mtu5l51dnun3', 1, 0),
(463, '12203493-3139-ab95-7a97-63ca0c86bb58', '1', 'EMP_Employee', '3f4417ec-dc7e-e252-d9e7-63c919777f24', 'lokesh', '2023-01-20 03:37:19', 'detailview', '36ql79525jm004mtu5l51dnun3', 0, 0),
(464, 'd415ba94-623a-4ea5-3fed-63cb7399eb09', '1', 'EMP_Employee', 'e4ae3856-ae28-f4c2-d122-63cb737ba244', NULL, '2023-01-21 05:08:17', 'detailview', '36ql79525jm004mtu5l51dnun3', 0, 0),
(465, 'e0872a1c-697f-5c3e-2c4b-63cb737c864a', '1', 'EMP_Employee', '805aedcf-7c30-8a30-2e0c-63cb738d6a52', NULL, '2023-01-21 05:11:16', 'detailview', '36ql79525jm004mtu5l51dnun3', 1, 0),
(471, 'a9859ef8-ec84-433d-626b-63cb79417eeb', '1', 'EMP_Employee', '2f1ce1cf-dbe8-31f1-2bac-63cb79e799c1', NULL, '2023-01-21 05:37:01', 'detailview', '36ql79525jm004mtu5l51dnun3', 1, 0),
(505, '4f6a67b2-4f1e-0e29-46f9-63cbc106ff1f', '1', 'EMP_Employee', '4bf00790-19dd-da3b-cae9-63cb76293e2b', NULL, '2023-01-21 10:42:07', 'editview', '36ql79525jm004mtu5l51dnun3', 1, 0),
(506, '21e9c8e8-1a6e-e817-17e9-63cbc1cda9a2', '1', 'EMP_Employee', '306746dc-9209-d46e-ce74-63cbc1821613', NULL, '2023-01-21 10:43:41', 'detailview', '36ql79525jm004mtu5l51dnun3', 1, 0),
(513, '6df719d9-8127-5b2e-6fe6-63cf790813ae', '1', 'EMP_Employee_List', '92fd65e2-d16c-6639-9299-63cf77ae0def', 'kamalesh', '2023-01-24 06:22:32', 'detailview', '8e63kmk4stlrmgp36ueu39o6p6', 0, 0),
(514, '655023b0-3462-b4de-5c42-63cf79332fdc', '1', 'at_Attentance', 'cdd90384-4e9a-b619-52ab-63885c5cbc10', 'test', '2023-01-24 06:23:10', 'detailview', '8e63kmk4stlrmgp36ueu39o6p6', 0, 0),
(564, '35e95dbe-85af-8a81-5143-63d36d7f554a', '1', 'at_Attentance', '455fd05a-5532-2356-ac14-63d36d24864b', 'ATT_4', '2023-01-27 06:22:47', 'detailview', '840ns8nohqbhm1jt6f5k34ef27', 0, 0),
(567, '2b250ae1-d275-a053-19b7-63d36e4c561d', '1', 'at_Attentance', '1ad5051c-9f2f-cfc2-08c3-63d1151dc6de', 'ATT_3', '2023-01-27 06:24:37', 'detailview', '840ns8nohqbhm1jt6f5k34ef27', 0, 0),
(576, 'b4a4dddf-29e6-d7dc-a600-63d377e0f066', '1', 'pro_Projects', 'f0ec95a4-3726-ae4c-0232-63cf7a684e80', 'PRO_4', '2023-01-27 07:06:15', 'detailview', '840ns8nohqbhm1jt6f5k34ef27', 0, 0),
(578, 'dfaf8579-2212-9871-4058-63d378532463', '1', 'sh_Salary_History', '3004f8c2-d10d-5495-f45f-63d1170f8c4b', 'SLH_4', '2023-01-27 07:06:46', 'detailview', '840ns8nohqbhm1jt6f5k34ef27', 0, 0),
(617, '6cc927fc-21e1-49aa-175d-63d3ae563d45', '1', 'at_Attentance', '351eeb9a-e442-e7e8-0830-63d3a3912004', 'ATT_5', '2023-01-27 10:58:31', 'detailview', '840ns8nohqbhm1jt6f5k34ef27', 0, 0),
(624, 'e5808212-cced-4c85-1e1d-63d3b3ae7071', '1', 'at_Attentance', '16ee83cc-d0e3-4f22-a44e-63d3ae6aacd3', 'ATT_8', '2023-01-27 11:19:46', 'detailview', '840ns8nohqbhm1jt6f5k34ef27', 0, 0),
(663, '8fcd9ce5-7eab-2acc-bff5-63d52a033475', '1', 'ACLRoles', 'd75eee8c-8c5e-606e-404e-6350e95ca92d', 'Employees', '2023-01-28 13:59:39', 'editview', 'oddrncrilfn21plfhp2q7bsah7', 0, 0),
(681, '2c0ddff1-d8c7-34bb-d402-63d79ad8e323', '1', 'Accounts', '1509469a-e1a7-4908-67b6-6394265cb78a', 'kamalesh', '2023-01-30 10:21:31', 'detailview', '0ia024v9jepidlm08no6rj4cc5', 1, 0),
(732, '7386999b-c03c-3fa0-fe08-63d7b930141a', '1', 'ACLRoles', '6107ef79-7840-b925-6480-6350e837e5cc', 'Admin', '2023-01-30 12:34:43', 'detailview', '0ia024v9jepidlm08no6rj4cc5', 0, 0),
(748, '49586db9-ef33-7d3b-7af9-63d7cb1a5980', '1', 'Users', 'cedc344d-e69a-331d-33cb-63943345eb53', 'test', '2023-01-30 13:52:42', 'detailview', '0ia024v9jepidlm08no6rj4cc5', 1, 0),
(802, 'b6b51145-1d82-f7db-57f6-63d9fb011ddd', '1', 'sh_Salary_History', '3e650d03-7e3a-c769-46ed-63d3b398d909', 'SLH_5', '2023-02-01 05:40:46', 'detailview', 'a33jvsbls7b82fbgo8ld9vpn23', 1, 0),
(808, '58f5315f-9a79-8ed6-e64c-63da1049ade2', '1', 'Leads', '2653a62e-19ca-b543-142f-63942407df80', 'Mr. kamalesh kali', '2023-02-01 07:12:59', 'detailview', 'a33jvsbls7b82fbgo8ld9vpn23', 1, 0),
(843, 'edba05cd-f6fe-9cd8-029b-63e4d2860f3a', '1', 'at_Attentance', 'd9675e71-2598-b64d-a6af-63d3b32db81f', 'ATT_9', '2023-02-09 11:02:30', 'detailview', '2gi6schso4dco8m50ui8d50df5', 1, 0),
(882, '41a4f172-510f-b21f-2b5d-63eb3d6036c1', '1', 'SK_Skill', '90ac729c-16df-59fb-b021-63ea62bd8fa3', 'raj', '2023-02-14 07:49:39', 'detailview', 'ecoq3hjqb30udu02shssu93gr0', 0, 0),
(888, 'c2d3994a-fdb9-d9a1-c330-63edbb2907fc', '1', 'Employees', 'a239f89f-027f-ae86-b05b-63e4a3c5e538', 'vicky test', '2023-02-16 05:13:14', 'detailview', '6cu24k84aoq0dor6tr1brs6643', 1, 0),
(893, 'b562ce61-59ec-8b31-e292-63edbdcf1402', '1', 'Users', '42e1c8dc-ae01-9efb-5fee-63d7ceb668ef', 'Ragu Kumar', '2023-02-16 05:21:27', 'detailview', '6cu24k84aoq0dor6tr1brs6643', 1, 0),
(896, 'be66f0f4-d3b3-ae85-0838-63ef1fc3a45e', '1', 'ACLRoles', 'c2012072-6d7a-c77d-e70f-63d7b9315945', 'Employee', '2023-02-17 06:34:32', 'detailview', 'a1o84pb1hq5p5hoa0jv8vhjpc5', 1, 0),
(897, '938ea662-582a-22ea-4b53-63ef204e6926', '1', 'ACLRoles', '46f0b097-365e-001e-94fe-63d7b914542e', 'Administration', '2023-02-17 06:34:41', 'detailview', 'a1o84pb1hq5p5hoa0jv8vhjpc5', 1, 0),
(899, 'f090ee8d-998a-af8d-74da-63ef2c81afe2', '1', 'Users', '1', 'Kamalesh Administrator', '2023-02-17 07:29:35', 'editview', 'a1o84pb1hq5p5hoa0jv8vhjpc5', 1, 0),
(937, '674377c4-9596-1b80-60dc-63f4a24e6a53', '1', 'EMP_Employee_List', '55de057b-8cc0-423f-18cb-63d3ba47c4d2', 'EMP_3', '2023-02-21 10:51:11', 'detailview', 'ju5fee4d96jg2i28cisslhn6b5', 1, 0),
(951, '59e56b36-49e0-9fe5-f3df-63f5a1ec9ef5', '1', 'pro_Projects', '4c7b7103-b5ef-3c17-5b99-63f2ffdb27a6', 'PRO_8', '2023-02-22 05:00:34', 'detailview', 'fqidkvahpa9ljfpvvviqjpccg3', 1, 0),
(967, '6a3272fa-4fb3-74f1-a3b6-63f5bfe49b6b', '1', 'at_Attentance', '13480227-3f80-a014-351c-63d3b4736d3e', 'ATT_10', '2023-02-22 07:09:28', 'detailview', 'fqidkvahpa9ljfpvvviqjpccg3', 0, 0),
(968, '4c28f720-18c5-81d5-cd24-63f5bfd3f692', '1', 'EMP_Employee_List', '28e7bb6e-ffd9-89a5-1af9-63d0c1069938', 'EMP_1', '2023-02-22 07:09:46', 'detailview', 'fqidkvahpa9ljfpvvviqjpccg3', 1, 0),
(973, '96ef8744-40ad-996a-b515-63f5f104d84c', '1', 'EMP_Employee_List', '344b0904-cbdb-dcdd-0b5c-63f5a4745aa5', 'EMP_6', '2023-02-22 10:41:08', 'detailview', 'fqidkvahpa9ljfpvvviqjpccg3', 1, 0),
(979, 'a3579770-a0ea-341b-7f56-63f61fb81c96', '1', 'at_Attentance', '300cadf5-b3b8-c036-0b5a-63f61fcc7abc', 'ATT_13', '2023-02-22 13:59:15', 'detailview', 'fqidkvahpa9ljfpvvviqjpccg3', 1, 0),
(981, '66448264-9914-d3c9-66ce-63f624ceee1c', '1', 'PAY_Payments', '55007ae1-476a-c74a-bd9e-63da16def25c', 'kamalesh', '2023-02-22 14:18:30', 'detailview', 'fqidkvahpa9ljfpvvviqjpccg3', 1, 0),
(982, '1eb72f4e-1848-b5ef-5d5f-63f624f7eb5a', '1', 'PAY_Payments', '21794ff6-3240-07f1-20e9-63f62425babb', 'ATT_2', '2023-02-22 14:18:57', 'detailview', 'fqidkvahpa9ljfpvvviqjpccg3', 1, 0),
(985, '8224c545-dbfb-5200-271b-63f6efcb6062', '1', 'SK_Skill', '68689fc6-73a9-8110-d365-63eb43fef40f', 'kamalesh', '2023-02-23 04:43:55', 'detailview', '58plgu0bqbf4r0p6ssp37h3db2', 1, 0),
(986, 'b4c704b6-64aa-aea5-ae01-63f6efd068af', '1', 'SK_Skill', 'ef01054e-d73b-c93e-3046-63f6ef629224', 'vicky', '2023-02-23 04:44:28', 'detailview', '58plgu0bqbf4r0p6ssp37h3db2', 1, 0),
(987, '46c479db-330a-d37d-6682-63f6ef7aec34', '1', 'SK_Skill', '695c9ee1-d925-311e-feec-63f6ef6033ca', 'karan', '2023-02-23 04:45:17', 'detailview', '58plgu0bqbf4r0p6ssp37h3db2', 1, 0),
(990, 'b17ca2b1-ecd5-bb31-1bc6-63f6efac0e1e', '1', 'SK_Skill', '5c3cbdc0-46e3-4aac-fab5-63e9c77cb4f0', 'mani', '2023-02-23 04:45:49', 'detailview', '58plgu0bqbf4r0p6ssp37h3db2', 1, 0),
(993, '5991baf8-e3a0-586a-7aa6-63f6ef24eadf', '1', 'SK_Skill', '60e1cd4b-b3a1-177f-5ee3-63eb195bd4fc', 'karthi', '2023-02-23 04:46:11', 'detailview', '58plgu0bqbf4r0p6ssp37h3db2', 1, 0),
(1002, '83b9279e-05e6-a41b-11b2-63f74590ccfa', '1', 'PAY_Payments', '915b3b90-74f9-2c97-4809-63f74474dc1d', 'ATT_3', '2023-02-23 10:50:45', 'editview', '58plgu0bqbf4r0p6ssp37h3db2', 1, 0),
(1006, '13d1e42a-3a01-fd3a-10cd-63fed56dd305', '1', 'EMP_Employee_List', '81a1ade6-8a93-f010-f494-63f5fa4fe72b', 'EMP_7', '2023-03-01 04:33:49', 'detailview', 'p3n9ca76vot7l60ll8pu16int0', 1, 0),
(1012, 'dd5218dd-6a1b-fc6e-6c81-63ff3a639caf', '1', 'EMP_Employee_List', '508492db-9f9c-45e4-c9d3-63f4c90d7ec7', 'EMP_5', '2023-03-01 11:46:02', 'detailview', 'ii9v4sofag41gardgqdmkkhhn5', 1, 0),
(1013, '268aecf0-566b-9c1c-1152-63ff3bbbc703', '1', 'pro_Projects', '5f9d8183-5ee9-394f-651e-63f5c95bb6ca', 'PRO_10', '2023-03-01 11:46:14', 'detailview', 'ii9v4sofag41gardgqdmkkhhn5', 1, 0),
(1014, '7800a3d2-f479-d9db-34ff-63ff3b454768', '1', 'pro_Projects', '5c7abcb2-e4db-5d0d-d335-63f5b87a74ee', 'PRO_9', '2023-03-01 11:46:55', 'detailview', 'ii9v4sofag41gardgqdmkkhhn5', 1, 0),
(1016, 'a161a5d5-c9b0-a713-64ef-63ff50389583', '1', 'pro_Projects', '6baefc3b-b985-a6d4-73cc-63d3b5c3f3ba', 'PRO_7', '2023-03-01 13:19:32', 'detailview', 'ii9v4sofag41gardgqdmkkhhn5', 1, 0),
(1017, 'bf948f31-c375-ea5a-d717-63ff50a17823', '1', 'EMP_Employee_List', '1b1f65dd-3f65-dfd6-e636-63d3c2f4ad2e', 'EMP_4', '2023-03-01 13:19:37', 'detailview', 'ii9v4sofag41gardgqdmkkhhn5', 1, 0),
(1019, '6dc86265-926e-c906-4520-640971f5ff43', '1', 'sh_Salary_History', 'ddb45ace-061c-f43c-79bd-63f620512dfc', 'SLH_7', '2023-03-09 05:41:00', 'detailview', 'on3ogo682245mlrto7u5u9bq61', 1, 0),
(1020, '967e0aaa-0934-f9a2-d659-640971276c94', '1', 'EMP_Employee_List', 'b60c5610-6fa0-1c8d-79fc-63f5fbc8becf', 'EMP_8', '2023-03-09 05:41:06', 'detailview', 'on3ogo682245mlrto7u5u9bq61', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `upgrade_history`
--

CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upgrade_history`
--

INSERT INTO `upgrade_history` (`id`, `filename`, `md5sum`, `type`, `status`, `version`, `name`, `description`, `id_name`, `manifest`, `date_entered`, `enabled`) VALUES
('1b7e83b5-3f13-ea5a-9d74-63d9f59868c3', 'upload/upgrades/module/Payments2023_02_01_061429.zip', '0bedae7a51e56a8e7b8d516183bb4a1f', 'module', 'installed', '1675228468', 'Payments', '', 'Payments', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MzoiUEFZIjtzOjY6ImF1dGhvciI7czo4OiJrYW1hbGVzaCI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjg6IlBheW1lbnRzIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAyMy0wMi0wMSAwNToxNDoyOCI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE2NzUyMjg0Njg7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo3OntzOjI6ImlkIjtzOjg6IlBheW1lbnRzIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjEyOiJQQVlfUGF5bWVudHMiO3M6NToiY2xhc3MiO3M6MTI6IlBBWV9QYXltZW50cyI7czo0OiJwYXRoIjtzOjM3OiJtb2R1bGVzL1BBWV9QYXltZW50cy9QQVlfUGF5bWVudHMucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvUEFZX1BheW1lbnRzIjtzOjI6InRvIjtzOjIwOiJtb2R1bGVzL1BBWV9QYXltZW50cyI7fX1zOjg6Imxhbmd1YWdlIjthOjE6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2023-02-01 05:14:28', 1),
('3badb5eb-725c-8d8a-4134-63f34c07dc23', 'upload/upgrades/module/Clients2023_02_20_113139.zip', 'aaf339dcfb7c69459bd9ecf5f07262bf', 'module', 'installed', '1676889099', 'Clients', '', 'Clients', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MzoiQ0xJIjtzOjY6ImF1dGhvciI7czo4OiJrYW1hbGVzaCI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjc6IkNsaWVudHMiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjE5OiIyMDIzLTAyLTIwIDEwOjMxOjM4IjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO2k6MTY3Njg4OTA5OTtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjc6e3M6MjoiaWQiO3M6NzoiQ2xpZW50cyI7czo1OiJiZWFucyI7YToxOntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czoxMToiQ0xJX0NsaWVudHMiO3M6NToiY2xhc3MiO3M6MTE6IkNMSV9DbGllbnRzIjtzOjQ6InBhdGgiO3M6MzU6Im1vZHVsZXMvQ0xJX0NsaWVudHMvQ0xJX0NsaWVudHMucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDM6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvQ0xJX0NsaWVudHMiO3M6MjoidG8iO3M6MTk6Im1vZHVsZXMvQ0xJX0NsaWVudHMiO319czo4OiJsYW5ndWFnZSI7YToxOntpOjA7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2023-02-20 10:31:38', 1),
('3bdbe316-4fbc-7182-2aad-638b364ebc1e', 'upload/upgrades/module/Projects2022_12_03_124149.zip', '2f47809b3f088e1248ab4153927d47c8', 'module', 'installed', '1670067709', 'Projects', '', 'Projects', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MzoicHJvIjtzOjY6ImF1dGhvciI7czo4OiJrYW1hbGVzaCI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjg6IlByb2plY3RzIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAyMi0xMi0wMyAxMTo0MTo0OSI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE2NzAwNjc3MDk7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo3OntzOjI6ImlkIjtzOjg6IlByb2plY3RzIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjEyOiJwcm9fUHJvamVjdHMiO3M6NToiY2xhc3MiO3M6MTI6InByb19Qcm9qZWN0cyI7czo0OiJwYXRoIjtzOjM3OiJtb2R1bGVzL3Byb19Qcm9qZWN0cy9wcm9fUHJvamVjdHMucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvcHJvX1Byb2plY3RzIjtzOjI6InRvIjtzOjIwOiJtb2R1bGVzL3Byb19Qcm9qZWN0cyI7fX1zOjg6Imxhbmd1YWdlIjthOjE6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2022-12-03 11:41:49', 1),
('4eb1ef7d-06c2-aaa8-5a39-63cf6ac30940', 'upload/upgrades/module/Employee_List2023_01_24_062143.zip', '21937eed59b48a336f5c55622a8b5fb4', 'module', 'installed', '1674537703', 'Employee_List', 'final employee module', 'Employee_List', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MzoiRU1QIjtzOjY6ImF1dGhvciI7czo4OiJrYW1hbGVzaCI7czoxMToiZGVzY3JpcHRpb24iO3M6MjE6ImZpbmFsIGVtcGxveWVlIG1vZHVsZSI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czoxMzoiRW1wbG95ZWVfTGlzdCI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMjMtMDEtMjQgMDU6MjE6NDIiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNjc0NTM3NzAzO3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Nzp7czoyOiJpZCI7czoxMzoiRW1wbG95ZWVfTGlzdCI7czo1OiJiZWFucyI7YToxOntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czoxNzoiRU1QX0VtcGxveWVlX0xpc3QiO3M6NToiY2xhc3MiO3M6MTc6IkVNUF9FbXBsb3llZV9MaXN0IjtzOjQ6InBhdGgiO3M6NDc6Im1vZHVsZXMvRU1QX0VtcGxveWVlX0xpc3QvRU1QX0VtcGxveWVlX0xpc3QucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvRU1QX0VtcGxveWVlX0xpc3QiO3M6MjoidG8iO3M6MjU6Im1vZHVsZXMvRU1QX0VtcGxveWVlX0xpc3QiO319czo4OiJsYW5ndWFnZSI7YToxOntpOjA7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2023-01-24 05:21:42', 1),
('78066abc-aa63-ea89-73f7-634e585dbca3', 'upload/upgrades/module/Salaries2022_10_18_093926.zip', 'a684661d20f547122e19ebc3c8f703d9', 'module', 'installed', '1666078765', 'Salaries', '', 'Salaries', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MzoiU0xZIjtzOjY6ImF1dGhvciI7czo4OiJrYW1hbGVzaCI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjg6IlNhbGFyaWVzIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAyMi0xMC0xOCAwNzozOToyNSI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE2NjYwNzg3NjU7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo3OntzOjI6ImlkIjtzOjg6IlNhbGFyaWVzIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjEyOiJTTFlfU2FsYXJpZXMiO3M6NToiY2xhc3MiO3M6MTI6IlNMWV9TYWxhcmllcyI7czo0OiJwYXRoIjtzOjM3OiJtb2R1bGVzL1NMWV9TYWxhcmllcy9TTFlfU2FsYXJpZXMucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvU0xZX1NhbGFyaWVzIjtzOjI6InRvIjtzOjIwOiJtb2R1bGVzL1NMWV9TYWxhcmllcyI7fX1zOjg6Imxhbmd1YWdlIjthOjE6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2022-10-18 07:39:25', 1),
('98aa1233-fee5-4007-ac26-63889e805179', 'upload/upgrades/module/Salary_History2022_12_01_133105.zip', '2bb7d307617117deabb0b942595d98a0', 'module', 'installed', '1669897865', 'Salary_History', '', 'Salary_History', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6Mjoic2giO3M6NjoiYXV0aG9yIjtzOjg6ImthbWFsZXNoIjtzOjExOiJkZXNjcmlwdGlvbiI7czowOiIiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6MTQ6IlNhbGFyeV9IaXN0b3J5IjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAyMi0xMi0wMSAxMjozMTowNCI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtpOjE2Njk4OTc4NjU7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO31zOjExOiJpbnN0YWxsZGVmcyI7YTo3OntzOjI6ImlkIjtzOjE0OiJTYWxhcnlfSGlzdG9yeSI7czo1OiJiZWFucyI7YToxOntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czoxNzoic2hfU2FsYXJ5X0hpc3RvcnkiO3M6NToiY2xhc3MiO3M6MTc6InNoX1NhbGFyeV9IaXN0b3J5IjtzOjQ6InBhdGgiO3M6NDc6Im1vZHVsZXMvc2hfU2FsYXJ5X0hpc3Rvcnkvc2hfU2FsYXJ5X0hpc3RvcnkucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvc2hfU2FsYXJ5X0hpc3RvcnkiO3M6MjoidG8iO3M6MjU6Im1vZHVsZXMvc2hfU2FsYXJ5X0hpc3RvcnkiO319czo4OiJsYW5ndWFnZSI7YToxOntpOjA7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2022-12-01 12:31:04', 1),
('acd2ee0c-a04a-2ab9-46e2-63c8e0461100', 'upload/upgrades/module/Employee2023_01_19_071750.zip', '1d307b4945694cd7a8d379b874376800', 'module', 'installed', '1674109069', 'Employee', 'user employee', 'Employee', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MzoiRU1QIjtzOjY6ImF1dGhvciI7czo4OiJrYW1hbGVzaCI7czoxMToiZGVzY3JpcHRpb24iO3M6MTM6InVzZXIgZW1wbG95ZWUiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6ODoiRW1wbG95ZWUiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjE5OiIyMDIzLTAxLTE5IDA2OjE3OjQ5IjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO2k6MTY3NDEwOTA2OTtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjc6e3M6MjoiaWQiO3M6ODoiRW1wbG95ZWUiO3M6NToiYmVhbnMiO2E6MTp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6MTI6IkVNUF9FbXBsb3llZSI7czo1OiJjbGFzcyI7czoxMjoiRU1QX0VtcGxveWVlIjtzOjQ6InBhdGgiO3M6Mzc6Im1vZHVsZXMvRU1QX0VtcGxveWVlL0VNUF9FbXBsb3llZS5waHAiO3M6MzoidGFiIjtiOjE7fX1zOjEwOiJsYXlvdXRkZWZzIjthOjA6e31zOjEzOiJyZWxhdGlvbnNoaXBzIjthOjA6e31zOjk6ImltYWdlX2RpciI7czoxNjoiPGJhc2VwYXRoPi9pY29ucyI7czo0OiJjb3B5IjthOjE6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo0NDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9FTVBfRW1wbG95ZWUiO3M6MjoidG8iO3M6MjA6Im1vZHVsZXMvRU1QX0VtcGxveWVlIjt9fXM6ODoibGFuZ3VhZ2UiO2E6MTp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2023-01-19 06:17:49', 1),
('b63b22e0-6456-0985-8198-63c8dfff7264', 'upload/upgrades/module/EMP_Employee2023_01_19_071108.zip', '9b72d72263c00925dae0e7fdfc6db679', 'module', 'installed', '1674108668', 'EMP_Employee', 'user employee', 'EMP_Employee', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MzoiRU1QIjtzOjY6ImF1dGhvciI7czo4OiJrYW1hbGVzaCI7czoxMToiZGVzY3JpcHRpb24iO3M6MTM6InVzZXIgZW1wbG95ZWUiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6MTI6IkVNUF9FbXBsb3llZSI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMjMtMDEtMTkgMDY6MTE6MDciO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNjc0MTA4NjY4O3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Nzp7czoyOiJpZCI7czoxMjoiRU1QX0VtcGxveWVlIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjEyOiJFTVBfRW1wbG95ZWUiO3M6NToiY2xhc3MiO3M6MTI6IkVNUF9FbXBsb3llZSI7czo0OiJwYXRoIjtzOjM3OiJtb2R1bGVzL0VNUF9FbXBsb3llZS9FTVBfRW1wbG95ZWUucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvRU1QX0VtcGxveWVlIjtzOjI6InRvIjtzOjIwOiJtb2R1bGVzL0VNUF9FbXBsb3llZSI7fX1zOjg6Imxhbmd1YWdlIjthOjE6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2023-01-19 06:11:07', 1),
('b67f16cc-46cd-a0e7-32ec-634e5839a733', 'upload/upgrades/module/Employees2022_10_18_093833.zip', '2c0d13ba02c63d3f791549b41775cf0e', 'module', 'installed', '1666078712', 'Employees', '', 'Employees', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MzoiRU1QIjtzOjY6ImF1dGhvciI7czo4OiJrYW1hbGVzaCI7czoxMToiZGVzY3JpcHRpb24iO3M6MDoiIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjk6IkVtcGxveWVlcyI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMjItMTAtMTggMDc6Mzg6MzIiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNjY2MDc4NzEyO3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Nzp7czoyOiJpZCI7czo5OiJFbXBsb3llZXMiO3M6NToiYmVhbnMiO2E6MTp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6MTM6IkVNUF9FbXBsb3llZXMiO3M6NToiY2xhc3MiO3M6MTM6IkVNUF9FbXBsb3llZXMiO3M6NDoicGF0aCI7czozOToibW9kdWxlcy9FTVBfRW1wbG95ZWVzL0VNUF9FbXBsb3llZXMucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDU6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvRU1QX0VtcGxveWVlcyI7czoyOiJ0byI7czoyMToibW9kdWxlcy9FTVBfRW1wbG95ZWVzIjt9fXM6ODoibGFuZ3VhZ2UiO2E6MTp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2022-10-18 07:38:32', 1),
('ce6b5030-836b-234e-7468-63e9c4041a89', 'upload/upgrades/module/Skill2023_02_13_060055.zip', '3da04dce88d0293ce726ab58e651fc64', 'module', 'installed', '1676264454', 'Skill', '', 'Skill', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiU0siO3M6NjoiYXV0aG9yIjtzOjg6ImthbWFsZXNoIjtzOjExOiJkZXNjcmlwdGlvbiI7czowOiIiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6NToiU2tpbGwiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjE5OiIyMDIzLTAyLTEzIDA1OjAwOjUzIjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO2k6MTY3NjI2NDQ1NDtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjc6e3M6MjoiaWQiO3M6NToiU2tpbGwiO3M6NToiYmVhbnMiO2E6MTp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6ODoiU0tfU2tpbGwiO3M6NToiY2xhc3MiO3M6ODoiU0tfU2tpbGwiO3M6NDoicGF0aCI7czoyOToibW9kdWxlcy9TS19Ta2lsbC9TS19Ta2lsbC5waHAiO3M6MzoidGFiIjtiOjE7fX1zOjEwOiJsYXlvdXRkZWZzIjthOjA6e31zOjEzOiJyZWxhdGlvbnNoaXBzIjthOjA6e31zOjk6ImltYWdlX2RpciI7czoxNjoiPGJhc2VwYXRoPi9pY29ucyI7czo0OiJjb3B5IjthOjE6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo0MDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9TS19Ta2lsbCI7czoyOiJ0byI7czoxNjoibW9kdWxlcy9TS19Ta2lsbCI7fX1zOjg6Imxhbmd1YWdlIjthOjE6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2023-02-13 05:00:53', 1),
('de3286ba-4b74-0efa-82e1-63884e1ed6d4', 'upload/upgrades/module/Attentance2022_12_01_074926.zip', 'f41737b1264c128b8a7cb4eb0683a26f', 'module', 'installed', '1669877365', 'Attentance', '', 'Attentance', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MjoiYXQiO3M6NjoiYXV0aG9yIjtzOjg6ImthbWFsZXNoIjtzOjExOiJkZXNjcmlwdGlvbiI7czowOiIiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6MTA6IkF0dGVudGFuY2UiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjE5OiIyMDIyLTEyLTAxIDA2OjQ5OjI1IjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO2k6MTY2OTg3NzM2NTtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjc6e3M6MjoiaWQiO3M6MTA6IkF0dGVudGFuY2UiO3M6NToiYmVhbnMiO2E6MTp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6MTM6ImF0X0F0dGVudGFuY2UiO3M6NToiY2xhc3MiO3M6MTM6ImF0X0F0dGVudGFuY2UiO3M6NDoicGF0aCI7czozOToibW9kdWxlcy9hdF9BdHRlbnRhbmNlL2F0X0F0dGVudGFuY2UucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDU6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvYXRfQXR0ZW50YW5jZSI7czoyOiJ0byI7czoyMToibW9kdWxlcy9hdF9BdHRlbnRhbmNlIjt9fXM6ODoibGFuZ3VhZ2UiO2E6MTp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2022-12-01 06:49:25', 1),
('e201abd1-a037-3cbc-99f2-635a3b25e326', 'upload/upgrades/module/Salary2022_10_27_100527.zip', 'be5fe35178ae0b7a332b45eeb1e287c8', 'module', 'installed', '1666857927', 'Salary', 'Employe Salary', 'Salary', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MzoiU0xZIjtzOjY6ImF1dGhvciI7czo4OiJrYW1hbGVzaCI7czoxMToiZGVzY3JpcHRpb24iO3M6MTQ6IkVtcGxveWUgU2FsYXJ5IjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjY6IlNhbGFyeSI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMjItMTAtMjcgMDg6MDU6MjYiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNjY2ODU3OTI3O3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Nzp7czoyOiJpZCI7czo2OiJTYWxhcnkiO3M6NToiYmVhbnMiO2E6MTp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6MTA6IlNMWV9TYWxhcnkiO3M6NToiY2xhc3MiO3M6MTA6IlNMWV9TYWxhcnkiO3M6NDoicGF0aCI7czozMzoibW9kdWxlcy9TTFlfU2FsYXJ5L1NMWV9TYWxhcnkucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDI6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvU0xZX1NhbGFyeSI7czoyOiJ0byI7czoxODoibW9kdWxlcy9TTFlfU2FsYXJ5Ijt9fXM6ODoibGFuZ3VhZ2UiO2E6MTp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2022-10-27 08:05:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_hash`, `system_generated_password`, `pwd_last_changed`, `authenticate_id`, `sugar_login`, `first_name`, `last_name`, `is_admin`, `external_auth_only`, `receive_notifications`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `title`, `photo`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `status`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `deleted`, `portal_only`, `show_on_employees`, `employee_status`, `messenger_id`, `messenger_type`, `reports_to_id`, `is_group`) VALUES
('1', 'admin', '$1$eD3.PP1.$PSzaFDfuLbaUxVZpLNcQr.', 0, NULL, NULL, 1, 'Kamalesh', 'Administrator', 1, 0, 1, NULL, '2022-10-18 05:48:09', '2022-10-18 05:50:02', '1', '', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0),
('42e1c8dc-ae01-9efb-5fee-63d7ceb668ef', 'Administration', NULL, 0, NULL, NULL, 1, 'Ragu', 'Kumar', 0, 0, 1, NULL, '2023-01-30 14:03:17', '2023-01-30 14:14:03', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, 'Bangalore', NULL, 'india', NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0),
('a239f89f-027f-ae86-b05b-63e4a3c5e538', '', NULL, 0, NULL, NULL, 1, 'vicky', 'test', 0, 0, 1, '', '2023-02-09 07:38:56', '2023-02-09 07:38:56', '1', '1', 'developer', NULL, '', '', '56574547', '', '', '', NULL, '', '', '', '', '', 0, 0, 1, 'Active', '', '', '', NULL),
('cedc344d-e69a-331d-33cb-63943345eb53', 'testuser', NULL, 0, NULL, NULL, 1, '', 'test', 1, 0, 1, '', '2022-12-10 07:23:08', '2022-12-10 07:23:08', '1', '1', '', NULL, '', '', '', '', '', '', 'Active', '', '', '', '', '', 0, 0, 1, 'Active', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_audit`
--

CREATE TABLE `users_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_cstm`
--

CREATE TABLE `users_cstm` (
  `id_c` char(36) NOT NULL,
  `employee_gender_c` varchar(100) DEFAULT NULL,
  `employee_date_of_birth_c` date DEFAULT NULL,
  `employee_id_c` int(255) DEFAULT NULL,
  `employe_qualification_c` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_feeds`
--

CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_last_import`
--

CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_password_link`
--

CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_signatures`
--

CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_preferences`
--

CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('15ada79d-2caa-ab5a-be2f-6350e5b5fef5', 'ACLRoles2_ACLROLE', 0, '2022-10-20 06:05:06', '2022-10-20 06:05:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('280d0f07-2bdb-7e44-1291-634e76e06279', 'EMP_Employees2_EMP_EMPLOYEES', 0, '2022-10-18 09:50:04', '2023-02-15 10:06:58', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7fX0='),
('4472e949-7565-62d8-ff83-63884ea2efd9', 'at_Attentance2_AT_ATTENTANCE', 0, '2022-12-01 06:49:58', '2022-12-01 06:49:58', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4e7714de-f023-68bf-c8fd-63c8e55d0a77', 'Project2_PROJECT', 0, '2023-01-19 06:38:37', '2023-01-19 12:18:57', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czo4OiJwcmlvcml0eSI7czo5OiJzb3J0T3JkZXIiO3M6MzoiQVNDIjt9fQ=='),
('5a688ab1-107f-bcf4-cc5b-63d7d0f94056', 'ETag', 0, '2023-01-30 14:14:03', '2023-01-30 14:14:03', '42e1c8dc-ae01-9efb-5fee-63d7ceb668ef', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTt9'),
('61196f0c-5746-4f9c-79b6-638b36a2a912', 'pro_Projects2_PRO_PROJECTS', 0, '2022-12-03 11:43:32', '2022-12-03 11:43:32', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6531f00a-683f-6aba-5475-63e9c4925b1e', 'SK_Skill2_SK_SKILL', 0, '2023-02-13 05:02:36', '2023-02-13 05:02:36', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('659e81ca-ac15-db1b-ad30-63d7cec67bb0', 'global', 0, '2023-01-30 14:03:17', '2023-01-30 14:14:03', '42e1c8dc-ae01-9efb-5fee-63d7ceb668ef', 'YTozMzp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZTciO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtpOi0xO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO2k6LTE7czo4OiJ0aW1lem9uZSI7czoxMzoiRXVyb3BlL0JlcmxpbiI7czoyOiJ1dCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjQ6Img6aWEiO3M6MTU6Im1haWxfc210cHNlcnZlciI7czoxNDoic210cC5nbWFpbC5jb20iO3M6MTM6Im1haWxfc210cHVzZXIiO3M6MTQ6IkFkbWluaXN0cmF0aW9uIjtzOjEzOiJtYWlsX3NtdHBwYXNzIjtzOjEwOiJTZWx0ZW5AMTIzIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjY1NmQzMGE0LWEzZjEtYzY5NS1mZTlkLTYzZDdjZThhMDIwMCI7fQ=='),
('6a9008f0-9af0-0468-9eb0-634e94aade41', 'SLY_Salaries2_SLY_SALARIES', 0, '2022-10-18 11:57:29', '2022-10-18 11:57:29', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('709b008e-c1ce-8789-b77a-634e454498e5', 'Accounts2_ACCOUNT', 0, '2022-10-18 06:20:13', '2022-10-18 06:20:13', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('71c3f9d5-e833-330c-1812-63f34cd47a0c', 'CLI_Clients2_CLI_CLIENTS', 0, '2023-02-20 10:34:21', '2023-02-20 10:34:21', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8087880d-1663-5b0c-756f-63931f39a575', 'Opportunities2_OPPORTUNITY', 0, '2022-12-09 11:42:39', '2022-12-09 11:42:39', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('81c20c03-e2d0-6311-92f3-635a3c6e87ce', 'SLY_Salary2_SLY_SALARY', 0, '2022-10-27 08:09:45', '2022-10-27 08:09:45', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('83cb7166-a416-b3c4-909f-634e3e1d3bad', 'Home', 0, '2022-10-18 05:50:05', '2023-01-31 09:57:05', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImE4YWU2M2IyLTBmODEtN2QzMS05YWViLTYzNGUzZWQwYjkyMiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo3MToiY3VzdG9tL21vZHVsZXMvU3VnYXJGZWVkL0Rhc2hsZXRzL1N1Z2FyRmVlZERhc2hsZXQvU3VnYXJGZWVkRGFzaGxldC5waHAiO31zOjM2OiJhOWI3MzI5YS1lYWVhLWM3MjItOWJiMi02MzRlM2VmM2RiNjQiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15Q2FsbHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJDYWxscyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvQ2FsbHMvRGFzaGxldHMvTXlDYWxsc0Rhc2hsZXQvTXlDYWxsc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJhYWI4NjIwNC1iYzBlLTgzYTktYzE1NS02MzRlM2UzZDA2MWUiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15TWVldGluZ3NEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJNZWV0aW5ncyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvTWVldGluZ3MvRGFzaGxldHMvTXlNZWV0aW5nc0Rhc2hsZXQvTXlNZWV0aW5nc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJhYjg2OWQ3NS03YzQ0LTFmMDgtNmRhMy02MzRlM2UxMGQ0NWEiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MjI6Ik15T3Bwb3J0dW5pdGllc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo4MDoibW9kdWxlcy9PcHBvcnR1bml0aWVzL0Rhc2hsZXRzL015T3Bwb3J0dW5pdGllc0Rhc2hsZXQvTXlPcHBvcnR1bml0aWVzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImFjYTM5YmUwLTU2YmYtYWRhMC02YmFlLTYzNGUzZWM4N2QzMyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlBY2NvdW50c0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6IkFjY291bnRzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9BY2NvdW50cy9EYXNobGV0cy9NeUFjY291bnRzRGFzaGxldC9NeUFjY291bnRzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImFlMWQ2OTEwLTVmMDMtZjc4Zi0wODVkLTYzNGUzZTVkNGI2MiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlMZWFkc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkxlYWRzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9MZWFkcy9EYXNobGV0cy9NeUxlYWRzRGFzaGxldC9NeUxlYWRzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fX1zOjU6InBhZ2VzIjthOjE6e2k6MDthOjM6e3M6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YTo1OntpOjE7czozNjoiYTliNzMyOWEtZWFlYS1jNzIyLTliYjItNjM0ZTNlZjNkYjY0IjtpOjI7czozNjoiYWFiODYyMDQtYmMwZS04M2E5LWMxNTUtNjM0ZTNlM2QwNjFlIjtpOjM7czozNjoiYWI4NjlkNzUtN2M0NC0xZjA4LTZkYTMtNjM0ZTNlMTBkNDVhIjtpOjQ7czozNjoiYWNhMzliZTAtNTZiZi1hZGEwLTZiYWUtNjM0ZTNlYzg3ZDMzIjtpOjU7czozNjoiYWUxZDY5MTAtNWYwMy1mNzhmLTA4NWQtNjM0ZTNlNWQ0YjYyIjt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjE6e2k6MDtzOjM2OiJhOGFlNjNiMi0wZjgxLTdkMzEtOWFlYi02MzRlM2VkMGI5MjIiO319fXM6MTA6Im51bUNvbHVtbnMiO3M6MToiMyI7czoxNDoicGFnZVRpdGxlTGFiZWwiO3M6MjA6IkxCTF9IT01FX1BBR0VfMV9OQU1FIjt9fX0='),
('9aec06e2-4bd4-3159-b6e6-634e3e7f98a2', 'Home2_CALL', 0, '2022-10-18 05:50:05', '2022-10-18 05:50:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9c767cde-fa15-2c5a-d6e6-63c8df1552d8', 'EMP_Employee2_EMP_EMPLOYEE', 0, '2023-01-19 06:13:00', '2023-01-19 07:36:58', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoidXNlcl9lbWFpbF9jIjtzOjk6InNvcnRPcmRlciI7czozOiJBU0MiO319'),
('9e55db06-30fc-e571-81ed-634e3e1b1764', 'Home2_MEETING', 0, '2022-10-18 05:50:05', '2022-10-18 05:50:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a17902ea-c44b-2307-bb21-634e3e4bf6fe', 'Home2_OPPORTUNITY', 0, '2022-10-18 05:50:05', '2022-10-18 05:50:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a430ac35-d482-15f4-be25-634e3e8f0424', 'Home2_ACCOUNT', 0, '2022-10-18 05:50:05', '2022-10-18 05:50:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a6fd9a5b-3bf7-280a-a097-634e3e7d323d', 'Home2_LEAD', 0, '2022-10-18 05:50:05', '2022-10-18 05:50:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a7926ca3-ef1b-2e28-ba14-63cf6bfd08fe', 'EMP_Employee_List2_EMP_EMPLOYEE_LIST', 0, '2023-01-24 05:25:05', '2023-01-24 05:25:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a9ec898a-dc58-3bfd-9d36-634e3e9d46aa', 'Home2_SUGARFEED', 0, '2022-10-18 05:50:05', '2022-10-18 05:50:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b3e0b69f-f83a-56a8-a5cb-63c784ef8524', 'AOW_WorkFlow2_AOW_WORKFLOW', 0, '2023-01-18 05:31:52', '2023-01-18 05:31:52', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b5ad33c2-bed3-513b-0150-638ee89effbd', 'EMP_Employees', 0, '2022-12-06 07:01:36', '2022-12-06 07:01:36', '1', 'YToxOntzOjIyOiJMaXN0Vmlld0Rpc3BsYXlDb2x1bW5zIjthOjA6e319'),
('b9f2ebf4-d7f3-b3e6-3ba5-63902aea493d', 'Employees2_EMPLOYEE', 0, '2022-12-07 05:53:31', '2022-12-07 05:53:31', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bba569fb-00b1-8291-08f5-634e9c0caa85', 'Users2_USER', 0, '2022-10-18 12:29:47', '2022-10-27 07:04:10', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMDoicGhvbmVfd29yayI7czo5OiJzb3J0T3JkZXIiO3M6MzoiQVNDIjt9fQ=='),
('c0c8ee9e-e1df-6765-becf-63931f89a611', 'Leads2_LEAD', 0, '2022-12-09 11:42:25', '2023-01-19 11:49:27', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czozOiJBU0MiO319'),
('c36414b8-12a0-7e97-cb56-634e3ebbb41f', 'ETag', 0, '2022-10-18 05:50:02', '2023-02-20 10:31:38', '1', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTU7fQ=='),
('cc89bf35-8743-c0a4-08c2-63f34a7dadf4', 'Contacts2_CONTACT', 0, '2023-02-20 10:25:59', '2023-02-20 10:25:59', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d9000981-5295-00ac-f055-638ee64a3d53', 'SecurityGroups2_SECURITYGROUP', 0, '2022-12-06 06:52:48', '2022-12-06 06:52:48', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('df14e7ff-0ad3-f980-d33c-634e3e98c75b', 'global', 0, '2022-10-18 05:48:09', '2023-02-22 13:59:38', '1', 'YTozMDp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6ImMzOWU3YzAyLTNlYjQtZDFhMy1kNTViLTYzZTRhMTRmMWQ2NyI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVIiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9CZXJsaW4iO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO3M6MDoiIjtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MjoiZ20iO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTotMTtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjE5OiJ0aGVtZV9jdXJyZW50X2dyb3VwIjtzOjM6IkFsbCI7czoxMDoiRW1wbG95ZWVzUSI7YTozOntzOjY6Im1vZHVsZSI7czo5OiJFbXBsb3llZXMiO3M6NjoiYWN0aW9uIjtzOjU6ImluZGV4IjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO31zOjE4OiJFTVBfRW1wbG95ZWVfTGlzdFEiO2E6ODp7czo2OiJtb2R1bGUiO3M6MTc6IkVNUF9FbXBsb3llZV9MaXN0IjtzOjY6ImFjdGlvbiI7czo1OiJpbmRleCI7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO3M6Nzoib3JkZXJCeSI7czoxMjoiREFURV9FTlRFUkVEIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjtzOjIwOiJlbXBfdXNlcm5hbWVfY19iYXNpYyI7czowOiIiO3M6NjoiYnV0dG9uIjtzOjY6IlNlYXJjaCI7fXM6MTQ6ImF0X0F0dGVudGFuY2VRIjthOjk6e3M6NjoibW9kdWxlIjtzOjEzOiJhdF9BdHRlbnRhbmNlIjtzOjY6ImFjdGlvbiI7czo1OiJpbmRleCI7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO3M6Nzoib3JkZXJCeSI7czoxMjoiREFURV9FTlRFUkVEIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjtzOjE5OiJyZWNvcmRfbnVtYmVyX2Jhc2ljIjtzOjA6IiI7czoyNzoiYXR0ZW50YW5jZV9lbXBfbmFtZV9jX2Jhc2ljIjtzOjA6IiI7czo2OiJidXR0b24iO3M6NjoiU2VhcmNoIjt9fQ=='),
('e5f6e70e-a7f2-a238-25c5-63d9f5ab1f1a', 'PAY_Payments2_PAY_PAYMENTS', 0, '2023-02-01 05:16:06', '2023-02-01 05:16:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e89c3a92-b2da-d128-997e-63ecae8c8ff9', 'Meetings2_MEETING', 0, '2023-02-15 10:07:29', '2023-02-15 10:07:29', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ea0b9fda-a7fe-4b9a-5f0a-63ecaead57c1', 'Tasks2_TASK', 0, '2023-02-15 10:06:33', '2023-02-15 10:06:33', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('f0200f4b-913a-c8cf-a125-63889fc17c86', 'sh_Salary_History2_SH_SALARY_HISTORY', 0, '2022-12-01 12:33:29', '2022-12-01 12:33:29', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('f0e6be0b-697e-5601-461c-639433ed2896', 'global', 0, '2022-12-10 07:23:08', '2022-12-10 07:23:08', 'cedc344d-e69a-331d-33cb-63943345eb53', 'YTozMzp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZTciO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtpOi0xO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO2k6LTE7czo4OiJ0aW1lem9uZSI7czoxMzoiRXVyb3BlL0JlcmxpbiI7czoyOiJ1dCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjU6InRpbWVmIjtzOjQ6Img6aWEiO3M6MTU6Im1haWxfc210cHNlcnZlciI7czoxNDoic210cC5nbWFpbC5jb20iO3M6MTM6Im1haWxfc210cHVzZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwYXNzIjtzOjc6InRlc3QxMjMiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTU6ImVtYWlsX2xpbmtfdHlwZSI7czo1OiJzdWdhciI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czozNjoiZjBhMThlNTYtNDNkZi03NjQ0LWVkYTktNjM5NDMzOTg3MTk4Ijt9');

-- --------------------------------------------------------

--
-- Table structure for table `vcals`
--

CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE `versions` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_version` varchar(255) DEFAULT NULL,
  `db_version` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `versions`
--

INSERT INTO `versions` (`id`, `deleted`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `file_version`, `db_version`) VALUES
('34480762-f0a7-2748-f0fb-63ff3b5e2c83', 0, '2023-03-01 11:47:45', '2023-03-01 11:47:45', '1', '1', 'Rebuild Relationships', '4.0.0', '4.0.0'),
('4f808387-feb9-e3e3-ee0f-63ff3bc491a3', 0, '2023-03-01 11:47:45', '2023-03-01 11:47:45', '1', '1', 'Rebuild Extensions', '4.0.0', '4.0.0'),
('6107fc1c-a5f4-16bd-cc48-634e3eb4b3c1', 0, '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '1', 'Chart Data Cache', '3.5.1', '3.5.1'),
('686f8516-a477-8091-dc8d-634e3e431287', 0, '2022-10-18 05:48:09', '2022-10-18 05:48:09', '1', '1', 'htaccess', '3.5.1', '3.5.1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accnt_id_del` (`id`,`deleted`),
  ADD KEY `idx_accnt_name_del` (`name`,`deleted`),
  ADD KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_accnt_parent_id` (`parent_id`);

--
-- Indexes for table `accounts_audit`
--
ALTER TABLE `accounts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accounts_parent_id` (`parent_id`);

--
-- Indexes for table `accounts_bugs`
--
ALTER TABLE `accounts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_bug_acc` (`account_id`),
  ADD KEY `idx_acc_bug_bug` (`bug_id`),
  ADD KEY `idx_account_bug` (`account_id`,`bug_id`);

--
-- Indexes for table `accounts_cases`
--
ALTER TABLE `accounts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_case_acc` (`account_id`),
  ADD KEY `idx_acc_acc_case` (`case_id`);

--
-- Indexes for table `accounts_contacts`
--
ALTER TABLE `accounts_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_contact` (`account_id`,`contact_id`),
  ADD KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`);

--
-- Indexes for table `accounts_cstm`
--
ALTER TABLE `accounts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `accounts_leads_1_c`
--
ALTER TABLE `accounts_leads_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_leads_1_ida1` (`accounts_leads_1accounts_ida`),
  ADD KEY `accounts_leads_1_alt` (`accounts_leads_1leads_idb`);

--
-- Indexes for table `accounts_opportunities`
--
ALTER TABLE `accounts_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  ADD KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`);

--
-- Indexes for table `accounts_opportunities_1_c`
--
ALTER TABLE `accounts_opportunities_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_opportunities_1_ida1` (`accounts_opportunities_1accounts_ida`),
  ADD KEY `accounts_opportunities_1_alt` (`accounts_opportunities_1opportunities_idb`);

--
-- Indexes for table `accounts_tasks_1_c`
--
ALTER TABLE `accounts_tasks_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_tasks_1_ida1` (`accounts_tasks_1accounts_ida`),
  ADD KEY `accounts_tasks_1_alt` (`accounts_tasks_1tasks_idb`);

--
-- Indexes for table `acl_actions`
--
ALTER TABLE `acl_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclaction_id_del` (`id`,`deleted`),
  ADD KEY `idx_category_name` (`category`,`name`);

--
-- Indexes for table `acl_roles`
--
ALTER TABLE `acl_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id_del` (`id`,`deleted`);

--
-- Indexes for table `acl_roles_actions`
--
ALTER TABLE `acl_roles_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acl_role_id` (`role_id`),
  ADD KEY `idx_acl_action_id` (`action_id`),
  ADD KEY `idx_aclrole_action` (`role_id`,`action_id`);

--
-- Indexes for table `acl_roles_users`
--
ALTER TABLE `acl_roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id` (`role_id`),
  ADD KEY `idx_acluser_id` (`user_id`),
  ADD KEY `idx_aclrole_user` (`role_id`,`user_id`);

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`);

--
-- Indexes for table `am_projectholidays`
--
ALTER TABLE `am_projectholidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_projectholidays_audit`
--
ALTER TABLE `am_projectholidays_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_projectholidays_parent_id` (`parent_id`);

--
-- Indexes for table `am_projectholidays_project_c`
--
ALTER TABLE `am_projectholidays_project_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projectholidays_project_ida1` (`am_projectholidays_projectproject_ida`),
  ADD KEY `am_projectholidays_project_alt` (`am_projectholidays_projectam_projectholidays_idb`);

--
-- Indexes for table `am_projecttemplates`
--
ALTER TABLE `am_projecttemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_projecttemplates_audit`
--
ALTER TABLE `am_projecttemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_projecttemplates_parent_id` (`parent_id`);

--
-- Indexes for table `am_projecttemplates_project_1_c`
--
ALTER TABLE `am_projecttemplates_project_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  ADD KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`);

--
-- Indexes for table `am_tasktemplates`
--
ALTER TABLE `am_tasktemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_tasktemplates_am_projecttemplates_c`
--
ALTER TABLE `am_tasktemplates_am_projecttemplates_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  ADD KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`);

--
-- Indexes for table `am_tasktemplates_audit`
--
ALTER TABLE `am_tasktemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_tasktemplates_parent_id` (`parent_id`);

--
-- Indexes for table `aod_index`
--
ALTER TABLE `aod_index`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aod_indexevent`
--
ALTER TABLE `aod_indexevent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_record_module` (`record_module`),
  ADD KEY `idx_record_id` (`record_id`);

--
-- Indexes for table `aod_indexevent_audit`
--
ALTER TABLE `aod_indexevent_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_indexevent_parent_id` (`parent_id`);

--
-- Indexes for table `aod_index_audit`
--
ALTER TABLE `aod_index_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_index_parent_id` (`parent_id`);

--
-- Indexes for table `aop_case_events`
--
ALTER TABLE `aop_case_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aop_case_events_audit`
--
ALTER TABLE `aop_case_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_events_parent_id` (`parent_id`);

--
-- Indexes for table `aop_case_updates`
--
ALTER TABLE `aop_case_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aop_case_updates_audit`
--
ALTER TABLE `aop_case_updates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_updates_parent_id` (`parent_id`);

--
-- Indexes for table `aor_charts`
--
ALTER TABLE `aor_charts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aor_conditions`
--
ALTER TABLE `aor_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_conditions_index_report_id` (`aor_report_id`);

--
-- Indexes for table `aor_fields`
--
ALTER TABLE `aor_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_fields_index_report_id` (`aor_report_id`);

--
-- Indexes for table `aor_reports`
--
ALTER TABLE `aor_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aor_reports_audit`
--
ALTER TABLE `aor_reports_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aor_reports_parent_id` (`parent_id`);

--
-- Indexes for table `aor_scheduled_reports`
--
ALTER TABLE `aor_scheduled_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_contracts`
--
ALTER TABLE `aos_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_contracts_audit`
--
ALTER TABLE `aos_contracts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_contracts_parent_id` (`parent_id`);

--
-- Indexes for table `aos_contracts_documents`
--
ALTER TABLE `aos_contracts_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`);

--
-- Indexes for table `aos_invoices`
--
ALTER TABLE `aos_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_invoices_audit`
--
ALTER TABLE `aos_invoices_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_invoices_parent_id` (`parent_id`);

--
-- Indexes for table `aos_line_item_groups`
--
ALTER TABLE `aos_line_item_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_line_item_groups_audit`
--
ALTER TABLE `aos_line_item_groups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_line_item_groups_parent_id` (`parent_id`);

--
-- Indexes for table `aos_pdf_templates`
--
ALTER TABLE `aos_pdf_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_pdf_templates_audit`
--
ALTER TABLE `aos_pdf_templates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_pdf_templates_parent_id` (`parent_id`);

--
-- Indexes for table `aos_products`
--
ALTER TABLE `aos_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_products_audit`
--
ALTER TABLE `aos_products_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_parent_id` (`parent_id`);

--
-- Indexes for table `aos_products_quotes`
--
ALTER TABLE `aos_products_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`);

--
-- Indexes for table `aos_products_quotes_audit`
--
ALTER TABLE `aos_products_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_quotes_parent_id` (`parent_id`);

--
-- Indexes for table `aos_product_categories`
--
ALTER TABLE `aos_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_product_categories_audit`
--
ALTER TABLE `aos_product_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_product_categories_parent_id` (`parent_id`);

--
-- Indexes for table `aos_quotes`
--
ALTER TABLE `aos_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `aos_quotes_aos_invoices_c`
--
ALTER TABLE `aos_quotes_aos_invoices_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`);

--
-- Indexes for table `aos_quotes_audit`
--
ALTER TABLE `aos_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_quotes_parent_id` (`parent_id`);

--
-- Indexes for table `aos_quotes_os_contracts_c`
--
ALTER TABLE `aos_quotes_os_contracts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`);

--
-- Indexes for table `aos_quotes_project_c`
--
ALTER TABLE `aos_quotes_project_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`);

--
-- Indexes for table `aow_actions`
--
ALTER TABLE `aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_action_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_conditions`
--
ALTER TABLE `aow_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_processed`
--
ALTER TABLE `aow_processed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  ADD KEY `aow_processed_index_status` (`status`),
  ADD KEY `aow_processed_index_workflow_id` (`aow_workflow_id`);

--
-- Indexes for table `aow_processed_aow_actions`
--
ALTER TABLE `aow_processed_aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  ADD KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`);

--
-- Indexes for table `aow_workflow`
--
ALTER TABLE `aow_workflow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_workflow_index_status` (`status`);

--
-- Indexes for table `aow_workflow_audit`
--
ALTER TABLE `aow_workflow_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_workflow_parent_id` (`parent_id`);

--
-- Indexes for table `at_attentance`
--
ALTER TABLE `at_attentance`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `record_number` (`record_number`);

--
-- Indexes for table `at_attentance_audit`
--
ALTER TABLE `at_attentance_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_at_attentance_parent_id` (`parent_id`);

--
-- Indexes for table `at_attentance_cstm`
--
ALTER TABLE `at_attentance_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bugsnumk` (`bug_number`),
  ADD KEY `bug_number` (`bug_number`),
  ADD KEY `idx_bug_name` (`name`),
  ADD KEY `idx_bugs_assigned_user` (`assigned_user_id`);

--
-- Indexes for table `bugs_audit`
--
ALTER TABLE `bugs_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bugs_parent_id` (`parent_id`);

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_call_name` (`name`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_calls_date_start` (`date_start`),
  ADD KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indexes for table `calls_contacts`
--
ALTER TABLE `calls_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_call_call` (`call_id`),
  ADD KEY `idx_con_call_con` (`contact_id`),
  ADD KEY `idx_call_contact` (`call_id`,`contact_id`);

--
-- Indexes for table `calls_leads`
--
ALTER TABLE `calls_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_call_call` (`call_id`),
  ADD KEY `idx_lead_call_lead` (`lead_id`),
  ADD KEY `idx_call_lead` (`call_id`,`lead_id`);

--
-- Indexes for table `calls_reschedule`
--
ALTER TABLE `calls_reschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calls_reschedule_audit`
--
ALTER TABLE `calls_reschedule_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_calls_reschedule_parent_id` (`parent_id`);

--
-- Indexes for table `calls_users`
--
ALTER TABLE `calls_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_call_call` (`call_id`),
  ADD KEY `idx_usr_call_usr` (`user_id`),
  ADD KEY `idx_call_users` (`call_id`,`user_id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `camp_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_campaign_name` (`name`);

--
-- Indexes for table `campaigns_audit`
--
ALTER TABLE `campaigns_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_campaigns_parent_id` (`parent_id`);

--
-- Indexes for table `campaign_log`
--
ALTER TABLE `campaign_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_camp_tracker` (`target_tracker_key`),
  ADD KEY `idx_camp_campaign_id` (`campaign_id`),
  ADD KEY `idx_camp_more_info` (`more_information`),
  ADD KEY `idx_target_id` (`target_id`),
  ADD KEY `idx_target_id_deleted` (`target_id`,`deleted`);

--
-- Indexes for table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_tracker_key_idx` (`tracker_key`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `casesnumk` (`case_number`),
  ADD KEY `case_number` (`case_number`),
  ADD KEY `idx_case_name` (`name`),
  ADD KEY `idx_account_id` (`account_id`),
  ADD KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`);

--
-- Indexes for table `cases_audit`
--
ALTER TABLE `cases_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cases_parent_id` (`parent_id`);

--
-- Indexes for table `cases_bugs`
--
ALTER TABLE `cases_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cas_bug_cas` (`case_id`),
  ADD KEY `idx_cas_bug_bug` (`bug_id`),
  ADD KEY `idx_case_bug` (`case_id`,`bug_id`);

--
-- Indexes for table `cases_cstm`
--
ALTER TABLE `cases_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `cli_clients`
--
ALTER TABLE `cli_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cli_clients_audit`
--
ALTER TABLE `cli_clients_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cli_clients_parent_id` (`parent_id`);

--
-- Indexes for table `cli_clients_cstm`
--
ALTER TABLE `cli_clients_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD KEY `idx_config_cat` (`category`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  ADD KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  ADD KEY `idx_reports_to_id` (`reports_to_id`),
  ADD KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  ADD KEY `idx_cont_assigned` (`assigned_user_id`);

--
-- Indexes for table `contacts_audit`
--
ALTER TABLE `contacts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contacts_parent_id` (`parent_id`);

--
-- Indexes for table `contacts_bugs`
--
ALTER TABLE `contacts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_bug_con` (`contact_id`),
  ADD KEY `idx_con_bug_bug` (`bug_id`),
  ADD KEY `idx_contact_bug` (`contact_id`,`bug_id`);

--
-- Indexes for table `contacts_cases`
--
ALTER TABLE `contacts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_case_con` (`contact_id`),
  ADD KEY `idx_con_case_case` (`case_id`),
  ADD KEY `idx_contacts_cases` (`contact_id`,`case_id`);

--
-- Indexes for table `contacts_cstm`
--
ALTER TABLE `contacts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `contacts_users`
--
ALTER TABLE `contacts_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_users_con` (`contact_id`),
  ADD KEY `idx_con_users_user` (`user_id`),
  ADD KEY `idx_contacts_users` (`contact_id`,`user_id`);

--
-- Indexes for table `cron_remove_documents`
--
ALTER TABLE `cron_remove_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  ADD KEY `idx_cron_remove_document_stamp` (`date_modified`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_currency_name` (`name`,`deleted`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD KEY `idx_beanid_set_num` (`bean_id`,`set_num`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_doc_cat` (`category_id`,`subcategory_id`);

--
-- Indexes for table `documents_accounts`
--
ALTER TABLE `documents_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  ADD KEY `documents_accounts_document_id` (`document_id`,`account_id`);

--
-- Indexes for table `documents_bugs`
--
ALTER TABLE `documents_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  ADD KEY `documents_bugs_document_id` (`document_id`,`bug_id`);

--
-- Indexes for table `documents_cases`
--
ALTER TABLE `documents_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_cases_case_id` (`case_id`,`document_id`),
  ADD KEY `documents_cases_document_id` (`document_id`,`case_id`);

--
-- Indexes for table `documents_contacts`
--
ALTER TABLE `documents_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  ADD KEY `documents_contacts_document_id` (`document_id`,`contact_id`);

--
-- Indexes for table `documents_opportunities`
--
ALTER TABLE `documents_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  ADD KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`);

--
-- Indexes for table `document_revisions`
--
ALTER TABLE `document_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentrevision_mimetype` (`file_mime_type`);

--
-- Indexes for table `eapm`
--
ALTER TABLE `eapm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`);

--
-- Indexes for table `emailman`
--
ALTER TABLE `emailman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  ADD KEY `idx_eman_campaign_id` (`campaign_id`),
  ADD KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_name` (`name`),
  ADD KEY `idx_message_id` (`message_id`),
  ADD KEY `idx_email_parent_id` (`parent_id`),
  ADD KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`);

--
-- Indexes for table `emails_beans`
--
ALTER TABLE `emails_beans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emails_beans_bean_id` (`bean_id`),
  ADD KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`);

--
-- Indexes for table `emails_email_addr_rel`
--
ALTER TABLE `emails_email_addr_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  ADD KEY `idx_eearl_address_id` (`email_address_id`);

--
-- Indexes for table `emails_text`
--
ALTER TABLE `emails_text`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `emails_textfromaddr` (`from_addr`);

--
-- Indexes for table `email_addresses`
--
ALTER TABLE `email_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  ADD KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`);

--
-- Indexes for table `email_addr_bean_rel`
--
ALTER TABLE `email_addr_bean_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_address_id` (`email_address_id`),
  ADD KEY `idx_bean_id` (`bean_id`,`bean_module`);

--
-- Indexes for table `email_cache`
--
ALTER TABLE `email_cache`
  ADD KEY `idx_ie_id` (`ie_id`),
  ADD KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  ADD KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  ADD KEY `idx_mail_subj` (`subject`),
  ADD KEY `idx_mail_to` (`toaddr`);

--
-- Indexes for table `email_marketing`
--
ALTER TABLE `email_marketing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emmkt_name` (`name`),
  ADD KEY `idx_emmkit_del` (`deleted`);

--
-- Indexes for table `email_marketing_prospect_lists`
--
ALTER TABLE `email_marketing_prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_template_name` (`name`);

--
-- Indexes for table `emp_employee`
--
ALTER TABLE `emp_employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `record_number` (`record_number`);

--
-- Indexes for table `emp_employees`
--
ALTER TABLE `emp_employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `record_number` (`record_number`);

--
-- Indexes for table `emp_employees_at_attentance_1_c`
--
ALTER TABLE `emp_employees_at_attentance_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_employees_at_attentance_1_ida1` (`emp_employees_at_attentance_1emp_employees_ida`),
  ADD KEY `emp_employees_at_attentance_1_alt` (`emp_employees_at_attentance_1at_attentance_idb`);

--
-- Indexes for table `emp_employees_audit`
--
ALTER TABLE `emp_employees_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emp_employees_parent_id` (`parent_id`);

--
-- Indexes for table `emp_employees_cstm`
--
ALTER TABLE `emp_employees_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `emp_employees_documents_1_c`
--
ALTER TABLE `emp_employees_documents_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_employees_documents_1_ida1` (`emp_employees_documents_1emp_employees_ida`),
  ADD KEY `emp_employees_documents_1_alt` (`emp_employees_documents_1documents_idb`);

--
-- Indexes for table `emp_employees_pro_projects_1_c`
--
ALTER TABLE `emp_employees_pro_projects_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_employees_pro_projects_1_ida1` (`emp_employees_pro_projects_1emp_employees_ida`),
  ADD KEY `emp_employees_pro_projects_1_alt` (`emp_employees_pro_projects_1pro_projects_idb`);

--
-- Indexes for table `emp_employees_sh_salary_history_1_c`
--
ALTER TABLE `emp_employees_sh_salary_history_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_employees_sh_salary_history_1_ida1` (`emp_employees_sh_salary_history_1emp_employees_ida`),
  ADD KEY `emp_employees_sh_salary_history_1_alt` (`emp_employees_sh_salary_history_1sh_salary_history_idb`);

--
-- Indexes for table `emp_employees_tasks_1_c`
--
ALTER TABLE `emp_employees_tasks_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_employees_tasks_1_ida1` (`emp_employees_tasks_1emp_employees_ida`),
  ADD KEY `emp_employees_tasks_1_alt` (`emp_employees_tasks_1tasks_idb`);

--
-- Indexes for table `emp_employee_audit`
--
ALTER TABLE `emp_employee_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emp_employee_parent_id` (`parent_id`);

--
-- Indexes for table `emp_employee_cstm`
--
ALTER TABLE `emp_employee_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `emp_employee_list`
--
ALTER TABLE `emp_employee_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `record_number` (`record_number`);

--
-- Indexes for table `emp_employee_list_at_attentance_1_c`
--
ALTER TABLE `emp_employee_list_at_attentance_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_employee_list_at_attentance_1_ida1` (`emp_employee_list_at_attentance_1emp_employee_list_ida`),
  ADD KEY `emp_employee_list_at_attentance_1_alt` (`emp_employee_list_at_attentance_1at_attentance_idb`);

--
-- Indexes for table `emp_employee_list_audit`
--
ALTER TABLE `emp_employee_list_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emp_employee_list_parent_id` (`parent_id`);

--
-- Indexes for table `emp_employee_list_cstm`
--
ALTER TABLE `emp_employee_list_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `emp_employee_list_pro_projects_1_c`
--
ALTER TABLE `emp_employee_list_pro_projects_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_employee_list_pro_projects_1_ida1` (`emp_employee_list_pro_projects_1emp_employee_list_ida`),
  ADD KEY `emp_employee_list_pro_projects_1_alt` (`emp_employee_list_pro_projects_1pro_projects_idb`);

--
-- Indexes for table `emp_employee_list_sh_salary_history_1_c`
--
ALTER TABLE `emp_employee_list_sh_salary_history_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `emp_employee_list_sh_salary_history_1_ida1` (`emp_employee_list_sh_salary_history_1emp_employee_list_ida`),
  ADD KEY `emp_employee_list_sh_salary_history_1_alt` (`emp_employee_list_sh_salary_history_1sh_salary_history_idb`);

--
-- Indexes for table `fields_meta_data`
--
ALTER TABLE `fields_meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_meta_id_del` (`id`,`deleted`),
  ADD KEY `idx_meta_cm_del` (`custom_module`,`deleted`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_folder` (`parent_folder`);

--
-- Indexes for table `folders_rel`
--
ALTER TABLE `folders_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  ADD KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`);

--
-- Indexes for table `folders_subscriptions`
--
ALTER TABLE `folders_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`);

--
-- Indexes for table `fp_events`
--
ALTER TABLE `fp_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fp_events_audit`
--
ALTER TABLE `fp_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_events_parent_id` (`parent_id`);

--
-- Indexes for table `fp_events_contacts_c`
--
ALTER TABLE `fp_events_contacts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`);

--
-- Indexes for table `fp_events_fp_event_delegates_1_c`
--
ALTER TABLE `fp_events_fp_event_delegates_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  ADD KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`);

--
-- Indexes for table `fp_events_fp_event_locations_1_c`
--
ALTER TABLE `fp_events_fp_event_locations_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`);

--
-- Indexes for table `fp_events_leads_1_c`
--
ALTER TABLE `fp_events_leads_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`);

--
-- Indexes for table `fp_events_prospects_1_c`
--
ALTER TABLE `fp_events_prospects_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`);

--
-- Indexes for table `fp_event_locations`
--
ALTER TABLE `fp_event_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fp_event_locations_audit`
--
ALTER TABLE `fp_event_locations_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_event_locations_parent_id` (`parent_id`);

--
-- Indexes for table `fp_event_locations_fp_events_1_c`
--
ALTER TABLE `fp_event_locations_fp_events_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  ADD KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`);

--
-- Indexes for table `import_maps`
--
ALTER TABLE `import_maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`);

--
-- Indexes for table `inbound_email`
--
ALTER TABLE `inbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inbound_email_autoreply`
--
ALTER TABLE `inbound_email_autoreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ie_autoreplied_to` (`autoreplied_to`);

--
-- Indexes for table `inbound_email_cache_ts`
--
ALTER TABLE `inbound_email_cache_ts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_address_cache`
--
ALTER TABLE `jjwg_address_cache`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_address_cache_audit`
--
ALTER TABLE `jjwg_address_cache_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_address_cache_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_areas`
--
ALTER TABLE `jjwg_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_areas_audit`
--
ALTER TABLE `jjwg_areas_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_areas_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_maps`
--
ALTER TABLE `jjwg_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_maps_audit`
--
ALTER TABLE `jjwg_maps_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_maps_parent_id` (`parent_id`);

--
-- Indexes for table `jjwg_maps_jjwg_areas_c`
--
ALTER TABLE `jjwg_maps_jjwg_areas_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`);

--
-- Indexes for table `jjwg_maps_jjwg_markers_c`
--
ALTER TABLE `jjwg_maps_jjwg_markers_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`);

--
-- Indexes for table `jjwg_markers`
--
ALTER TABLE `jjwg_markers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jjwg_markers_audit`
--
ALTER TABLE `jjwg_markers_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_markers_parent_id` (`parent_id`);

--
-- Indexes for table `job_queue`
--
ALTER TABLE `job_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  ADD KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  ADD KEY `idx_status_entered` (`status`,`date_entered`),
  ADD KEY `idx_status_modified` (`status`,`date_modified`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  ADD KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  ADD KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  ADD KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  ADD KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_lead_assigned` (`assigned_user_id`),
  ADD KEY `idx_lead_contact` (`contact_id`),
  ADD KEY `idx_reports_to` (`reports_to_id`),
  ADD KEY `idx_lead_phone_work` (`phone_work`),
  ADD KEY `idx_leads_id_del` (`id`,`deleted`);

--
-- Indexes for table `leads_accounts_1_c`
--
ALTER TABLE `leads_accounts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leads_accounts_1_ida1` (`leads_accounts_1leads_ida`),
  ADD KEY `leads_accounts_1_alt` (`leads_accounts_1accounts_idb`);

--
-- Indexes for table `leads_audit`
--
ALTER TABLE `leads_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_leads_parent_id` (`parent_id`);

--
-- Indexes for table `leads_cstm`
--
ALTER TABLE `leads_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `leads_opportunities_1_c`
--
ALTER TABLE `leads_opportunities_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leads_opportunities_1_ida1` (`leads_opportunities_1leads_ida`),
  ADD KEY `leads_opportunities_1_alt` (`leads_opportunities_1opportunities_idb`);

--
-- Indexes for table `leads_tasks_1_c`
--
ALTER TABLE `leads_tasks_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leads_tasks_1_ida1` (`leads_tasks_1leads_ida`),
  ADD KEY `leads_tasks_1_alt` (`leads_tasks_1tasks_idb`);

--
-- Indexes for table `linked_documents`
--
ALTER TABLE `linked_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mtg_name` (`name`),
  ADD KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  ADD KEY `idx_meet_date_start` (`date_start`);

--
-- Indexes for table `meetings_contacts`
--
ALTER TABLE `meetings_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_con_mtg_con` (`contact_id`),
  ADD KEY `idx_meeting_contact` (`meeting_id`,`contact_id`);

--
-- Indexes for table `meetings_cstm`
--
ALTER TABLE `meetings_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `meetings_leads`
--
ALTER TABLE `meetings_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_meeting_meeting` (`meeting_id`),
  ADD KEY `idx_lead_meeting_lead` (`lead_id`),
  ADD KEY `idx_meeting_lead` (`meeting_id`,`lead_id`);

--
-- Indexes for table `meetings_users`
--
ALTER TABLE `meetings_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_usr_mtg_usr` (`user_id`),
  ADD KEY `idx_meeting_users` (`meeting_id`,`user_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_note_name` (`name`),
  ADD KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  ADD KEY `idx_note_contact` (`contact_id`),
  ADD KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indexes for table `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ckey` (`c_key`);

--
-- Indexes for table `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD PRIMARY KEY (`conskey`,`nonce`),
  ADD KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`);

--
-- Indexes for table `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
  ADD PRIMARY KEY (`id`,`deleted`),
  ADD KEY `oauth_state_ts` (`tstate`,`token_ts`),
  ADD KEY `constoken_key` (`consumer`);

--
-- Indexes for table `opportunities`
--
ALTER TABLE `opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opp_name` (`name`),
  ADD KEY `idx_opp_assigned` (`assigned_user_id`),
  ADD KEY `idx_opp_id_deleted` (`id`,`deleted`);

--
-- Indexes for table `opportunities_accounts_1_c`
--
ALTER TABLE `opportunities_accounts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `opportunities_accounts_1_ida1` (`opportunities_accounts_1opportunities_ida`),
  ADD KEY `opportunities_accounts_1_alt` (`opportunities_accounts_1accounts_idb`);

--
-- Indexes for table `opportunities_audit`
--
ALTER TABLE `opportunities_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opportunities_parent_id` (`parent_id`);

--
-- Indexes for table `opportunities_contacts`
--
ALTER TABLE `opportunities_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_opp_con` (`contact_id`),
  ADD KEY `idx_con_opp_opp` (`opportunity_id`),
  ADD KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`);

--
-- Indexes for table `opportunities_cstm`
--
ALTER TABLE `opportunities_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `opportunities_leads_1_c`
--
ALTER TABLE `opportunities_leads_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `opportunities_leads_1_ida1` (`opportunities_leads_1opportunities_ida`),
  ADD KEY `opportunities_leads_1_alt` (`opportunities_leads_1leads_idb`);

--
-- Indexes for table `opportunities_tasks_1_c`
--
ALTER TABLE `opportunities_tasks_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `opportunities_tasks_1_ida1` (`opportunities_tasks_1opportunities_ida`),
  ADD KEY `opportunities_tasks_1_alt` (`opportunities_tasks_1tasks_idb`);

--
-- Indexes for table `outbound_email`
--
ALTER TABLE `outbound_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oe_user_id_idx` (`id`,`user_id`);

--
-- Indexes for table `pay_payments`
--
ALTER TABLE `pay_payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `record_number` (`record_number`);

--
-- Indexes for table `pay_payments_audit`
--
ALTER TABLE `pay_payments_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pay_payments_parent_id` (`parent_id`);

--
-- Indexes for table `pay_payments_cstm`
--
ALTER TABLE `pay_payments_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_accounts`
--
ALTER TABLE `projects_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_acct_proj` (`project_id`),
  ADD KEY `idx_proj_acct_acct` (`account_id`),
  ADD KEY `projects_accounts_alt` (`project_id`,`account_id`);

--
-- Indexes for table `projects_bugs`
--
ALTER TABLE `projects_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_bug_proj` (`project_id`),
  ADD KEY `idx_proj_bug_bug` (`bug_id`),
  ADD KEY `projects_bugs_alt` (`project_id`,`bug_id`);

--
-- Indexes for table `projects_cases`
--
ALTER TABLE `projects_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_case_proj` (`project_id`),
  ADD KEY `idx_proj_case_case` (`case_id`),
  ADD KEY `projects_cases_alt` (`project_id`,`case_id`);

--
-- Indexes for table `projects_contacts`
--
ALTER TABLE `projects_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_con_proj` (`project_id`),
  ADD KEY `idx_proj_con_con` (`contact_id`),
  ADD KEY `projects_contacts_alt` (`project_id`,`contact_id`);

--
-- Indexes for table `projects_opportunities`
--
ALTER TABLE `projects_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_opp_proj` (`project_id`),
  ADD KEY `idx_proj_opp_opp` (`opportunity_id`),
  ADD KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`);

--
-- Indexes for table `projects_products`
--
ALTER TABLE `projects_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_prod_project` (`project_id`),
  ADD KEY `idx_proj_prod_product` (`product_id`),
  ADD KEY `projects_products_alt` (`project_id`,`product_id`);

--
-- Indexes for table `project_contacts_1_c`
--
ALTER TABLE `project_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`);

--
-- Indexes for table `project_cstm`
--
ALTER TABLE `project_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `project_task`
--
ALTER TABLE `project_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_task_audit`
--
ALTER TABLE `project_task_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_project_task_parent_id` (`parent_id`);

--
-- Indexes for table `project_users_1_c`
--
ALTER TABLE `project_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`);

--
-- Indexes for table `prospects`
--
ALTER TABLE `prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prospect_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  ADD KEY `idx_prospects_id_del` (`id`,`deleted`),
  ADD KEY `idx_prospects_assigned` (`assigned_user_id`);

--
-- Indexes for table `prospects_cstm`
--
ALTER TABLE `prospects_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `prospect_lists`
--
ALTER TABLE `prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_prospect_list_name` (`name`);

--
-- Indexes for table `prospect_lists_prospects`
--
ALTER TABLE `prospect_lists_prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_plp_pro_id` (`prospect_list_id`),
  ADD KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`);

--
-- Indexes for table `prospect_list_campaigns`
--
ALTER TABLE `prospect_list_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pro_id` (`prospect_list_id`),
  ADD KEY `idx_cam_id` (`campaign_id`),
  ADD KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`);

--
-- Indexes for table `pro_projects`
--
ALTER TABLE `pro_projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `record_number` (`record_number`);

--
-- Indexes for table `pro_projects_audit`
--
ALTER TABLE `pro_projects_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pro_projects_parent_id` (`parent_id`);

--
-- Indexes for table `pro_projects_cstm`
--
ALTER TABLE `pro_projects_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `pro_projects_pay_payments_1_c`
--
ALTER TABLE `pro_projects_pay_payments_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pro_projects_pay_payments_1_ida1` (`pro_projects_pay_payments_1pro_projects_ida`),
  ADD KEY `pro_projects_pay_payments_1_alt` (`pro_projects_pay_payments_1pay_payments_idb`);

--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rel_name` (`relationship_name`);

--
-- Indexes for table `releases`
--
ALTER TABLE `releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_releases` (`name`,`deleted`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id_del` (`id`,`deleted`);

--
-- Indexes for table `roles_modules`
--
ALTER TABLE `roles_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id` (`role_id`),
  ADD KEY `idx_module_id` (`module_id`);

--
-- Indexes for table `roles_users`
--
ALTER TABLE `roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ru_role_id` (`role_id`),
  ADD KEY `idx_ru_user_id` (`user_id`);

--
-- Indexes for table `saved_search`
--
ALTER TABLE `saved_search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_desc` (`name`,`deleted`);

--
-- Indexes for table `schedulers`
--
ALTER TABLE `schedulers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_schedule` (`date_time_start`,`deleted`);

--
-- Indexes for table `securitygroups`
--
ALTER TABLE `securitygroups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_acl_roles`
--
ALTER TABLE `securitygroups_acl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_audit`
--
ALTER TABLE `securitygroups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_parent_id` (`parent_id`);

--
-- Indexes for table `securitygroups_default`
--
ALTER TABLE `securitygroups_default`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `securitygroups_records`
--
ALTER TABLE `securitygroups_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  ADD KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`);

--
-- Indexes for table `securitygroups_users`
--
ALTER TABLE `securitygroups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `securitygroups_users_idxa` (`securitygroup_id`),
  ADD KEY `securitygroups_users_idxb` (`user_id`),
  ADD KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  ADD KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`);

--
-- Indexes for table `sh_salary_history`
--
ALTER TABLE `sh_salary_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `record_number` (`record_number`);

--
-- Indexes for table `sh_salary_history_audit`
--
ALTER TABLE `sh_salary_history_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_sh_salary_history_parent_id` (`parent_id`);

--
-- Indexes for table `sh_salary_history_cstm`
--
ALTER TABLE `sh_salary_history_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `sk_skill`
--
ALTER TABLE `sk_skill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sk_skill_audit`
--
ALTER TABLE `sk_skill_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_sk_skill_parent_id` (`parent_id`);

--
-- Indexes for table `sk_skill_cstm`
--
ALTER TABLE `sk_skill_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `sly_salaries`
--
ALTER TABLE `sly_salaries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sly_salaries_audit`
--
ALTER TABLE `sly_salaries_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_sly_salaries_parent_id` (`parent_id`);

--
-- Indexes for table `sly_salaries_cstm`
--
ALTER TABLE `sly_salaries_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `sly_salary`
--
ALTER TABLE `sly_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sly_salary_audit`
--
ALTER TABLE `sly_salary_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_sly_salary_parent_id` (`parent_id`);

--
-- Indexes for table `sugarfeed`
--
ALTER TABLE `sugarfeed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sgrfeed_date` (`date_entered`,`deleted`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tsk_name` (`name`),
  ADD KEY `idx_task_con_del` (`contact_id`,`deleted`),
  ADD KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_task_assigned` (`assigned_user_id`),
  ADD KEY `idx_task_status` (`status`);

--
-- Indexes for table `tracker`
--
ALTER TABLE `tracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tracker_iid` (`item_id`),
  ADD KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  ADD KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  ADD KEY `idx_tracker_monitor_id` (`monitor_id`),
  ADD KEY `idx_tracker_date_modified` (`date_modified`);

--
-- Indexes for table `upgrade_history`
--
ALTER TABLE `upgrade_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`);

--
-- Indexes for table `users_audit`
--
ALTER TABLE `users_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_users_parent_id` (`parent_id`);

--
-- Indexes for table `users_cstm`
--
ALTER TABLE `users_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `users_feeds`
--
ALTER TABLE `users_feeds`
  ADD KEY `idx_ud_user_id` (`user_id`,`feed_id`);

--
-- Indexes for table `users_last_import`
--
ALTER TABLE `users_last_import`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`assigned_user_id`);

--
-- Indexes for table `users_password_link`
--
ALTER TABLE `users_password_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_username` (`username`);

--
-- Indexes for table `users_signatures`
--
ALTER TABLE `users_signatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usersig_uid` (`user_id`);

--
-- Indexes for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_userprefnamecat` (`assigned_user_id`,`category`);

--
-- Indexes for table `vcals`
--
ALTER TABLE `vcals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vcal` (`type`,`user_id`);

--
-- Indexes for table `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_version` (`name`,`deleted`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `at_attentance`
--
ALTER TABLE `at_attentance`
  MODIFY `record_number` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bugs`
--
ALTER TABLE `bugs`
  MODIFY `bug_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `case_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailman`
--
ALTER TABLE `emailman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_employee`
--
ALTER TABLE `emp_employee`
  MODIFY `record_number` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_employees`
--
ALTER TABLE `emp_employees`
  MODIFY `record_number` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_employee_list`
--
ALTER TABLE `emp_employee_list`
  MODIFY `record_number` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pay_payments`
--
ALTER TABLE `pay_payments`
  MODIFY `record_number` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prospects`
--
ALTER TABLE `prospects`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pro_projects`
--
ALTER TABLE `pro_projects`
  MODIFY `record_number` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sh_salary_history`
--
ALTER TABLE `sh_salary_history`
  MODIFY `record_number` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tracker`
--
ALTER TABLE `tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1021;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
