-- MySQL 8.0: source dump CREATE TABLE definitions only.
-- No rows, DROP TABLE, credentials, or import workflow are included.

CREATE TABLE `Application` (
  `cdate` datetime DEFAULT NULL,
  `company_uuid` varchar(50) DEFAULT NULL,
  `job_uuid` varchar(50) DEFAULT NULL,
  `user_uuid` varchar(50) DEFAULT NULL,
  `application_uuid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Company` (
  `cdate` datetime DEFAULT NULL,
  `mdate` datetime DEFAULT NULL,
  `found_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `employee_count` varchar(50) DEFAULT NULL,
  `view_count` int DEFAULT NULL,
  `follow_count` int DEFAULT NULL,
  `reference_count` int DEFAULT NULL,
  `company_uuid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `CompanyAddress` (
  `name` longtext,
  `company_uuid` varchar(50) DEFAULT NULL,
  `address` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `CompanyFund` (
  `fund_date` date DEFAULT NULL,
  `round_type` varchar(50) DEFAULT NULL,
  `raised` varchar(50) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `company_uuid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Job` (
  `cdate` datetime DEFAULT NULL,
  `mdate` datetime DEFAULT NULL,
  `job_field` varchar(50) DEFAULT NULL,
  `career_type_string` varchar(50) DEFAULT NULL,
  `start_date` varchar(50) DEFAULT NULL,
  `end_date` varchar(50) DEFAULT NULL,
  `allow_remote` int DEFAULT NULL,
  `can_show_salary` int DEFAULT NULL,
  `job_uuid` varchar(50) DEFAULT NULL,
  `company_uuid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `JobAddress` (
  `name` longtext,
  `job_uuid` varchar(50) DEFAULT NULL,
  `address` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `JobBookmark` (
  `cdate` datetime DEFAULT NULL,
  `job_uuid` varchar(50) DEFAULT NULL,
  `user_uuid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `log_2022` (
  `user_uuid` varchar(50) DEFAULT NULL,
  `URL` longtext,
  `timestamp` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `response_code` varchar(50) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `log_2023` (
  `user_uuid` varchar(50) DEFAULT NULL,
  `URL` longtext,
  `timestamp` varchar(50) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `response_code` varchar(50) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
