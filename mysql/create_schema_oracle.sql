CREATE TABLE `NewTable` (
  `USERNAME` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CURATOR-ID` bigint(20) NOT NULL,
  `PASSWORD` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PASSWORD_EXPIRED` int(1) NOT NULL,
  `EMAIL_ADDRESS` varchar(256) DEFAULT NULL,
  `IS_ACTIVE` int(1) NOT NULL DEFAULT '1',
  `CREATED_DATE` date NOT NULL,
  PRIMARY KEY (`CURATOR-ID`),
  UNIQUE KEY `NewTable_UN` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
