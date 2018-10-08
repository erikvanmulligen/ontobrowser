CREATE TABLE `curator table` (
  `USERNAME` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CURATOR-ID` double(12,0) NOT NULL,
  `PASSWORD` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PASSWORD_EXPIRED` bit(1) NOT NULL,
  `EMAIL_ADDRESS` varchar(256) DEFAULT NULL,
  `IS_ACTIVE` bit(1) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` double(12,0) NOT NULL,
  `MODIFIED_DATE` datetime NOT NULL,
  `MODIFIED_BY` double(12,0) DEFAULT NULL,
  PRIMARY KEY (`CURATOR-ID`),
  UNIQUE KEY `NewTable_UN` (`USERNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



CREATE TABLE `CURATOR_APPROVAL_WEIGHT` (
  `CURATOR_APPROVAL_ID` double(12,0) NOT NULL,
  `CURATOR_ID` double(12,0) NOT NULL,
  `TABLE_NAME` varchar(32) NOT NULL,
  `APPROVAL_WEIGHT` bit(1) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` double(12,0) NOT NULL,
  `MODIFIED_DATE` datetime DEFAULT NULL,
  `MODIFIED_BY` double(12,0) DEFAULT NULL,
  PRIMARY KEY (`CURATOR_APPROVAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




CREATE TABLE `lessons`.`version` (
  `VERSION_ID` REAL(12,0) NOT NULL,
  `CREATED_DATE` DATETIME NOT NULL,
  `CREATED_BY` REAL(12,0) NOT NULL,
  `PUBLISHED_DATE` DATETIME NULL,
  `PUBLISHED_BY` REAL(12,0) NULL,
  PRIMARY KEY (`VERSION_ID`));




CREATE TABLE `DATASOURCEe` (
  `DATASOURCE_ID` double(12,0) NOT NULL,
  `DATASOURCE_NAME` varchar(64) NOT NULL,
  `DATASOURCE_ACRONYM` varchar(8) NOT NULL,
  `DATASOURCE_URI` varchar(1024) DEFAULT NULL,
  `IS_INTERNAL` bit(1) NOT NULL,
  `IS_PUBLIC` bit(1) NOT NULL DEFAULT b'0',
  `RELEASE_DATE` datetime NOT NULL,
  `VERSION_NUMBER` varchar(32) DEFAULT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` double(12,0) NOT NULL,
  `MODIFIED_DATE` datetime DEFAULT NULL,
  `MODIFIED_BY` double(12,0) DEFAULT NULL,
  PRIMARY KEY (`DATASOURCE_ID`),
  UNIQUE KEY `DATASOURCE_NAME_UNIQUE` (`DATASOURCE_NAME`),
  UNIQUE KEY `DATASOURCE_ACRONYM_UNIQUE` (`DATASOURCE_ACRONYM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




CREATE TABLE `CTRLD_VOCAB_DOMAIN` (
  `CTRLD_VOCAB_DOMAIN_ID` double(12,0) NOT NULL,
  `CTRLD_VOCAB_DOMAIN` varchar(64) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` double(12,0) NOT NULL,
  `MODIFIED_DATE` datetime DEFAULT NULL,
  `MODIFIED_BY` double(12,0) DEFAULT NULL,
  PRIMARY KEY (`CTRLD_VOCAB_DOMAIN_ID`),
  UNIQUE KEY `CTRLD_VOCAB_DOMAIN_UNIQUE` (`CTRLD_VOCAB_DOMAIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



CREATE TABLE `CTRLD_VOCAB_CONTEXT` (
  `CTRLD_VOCAB_CONTEXT_ID` double(12,0) NOT NULL,
  `CTRLD_VOCAB_CONTEXT` varchar(64) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` double(12,0) NOT NULL,
  `MODIFIED_DATE` datetime DEFAULT NULL,
  `MODIFIED_BY` double(12,0) DEFAULT NULL,
  PRIMARY KEY (`CTRLD_VOCAB_CONTEXT_ID`),
  UNIQUE KEY `CTRLD_VOCAB_CONTEXT_UNIQUE` (`CTRLD_VOCAB_CONTEXT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



CREATE TABLE `CTRLD_VOCAB` (
  `CTRLD_VOCAB_ID` double(12,0) NOT NULL,
  `DATASOURCE_ID` double(12,0) NOT NULL,
  `CTRLD_VOCAB_NAME` varchar(64) NOT NULL,
  `CTRLD_VOCAB_DOMAIN_ID` double(12,0) NOT NULL,
  `CTRLD_VOCAB_CONTEXT_ID` double(12,0) NOT NULL,
  `REFERENCE_ID` varchar(32) DEFAULT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(45) NOT NULL,
  `MODIFIED_DATE` datetime DEFAULT NULL,
  `MODIFIED_BY` double(12,0) DEFAULT NULL,
  PRIMARY KEY (`CTRLD_VOCAB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




CREATE TABLE `CTRLD_VOCAB_TERM` (
  `CTRLD_VOCAB_TERM_ID` double(12,0) NOT NULL,
  `CTRLD_VOCAB_ID` double(12,0) NOT NULL,
  `CTRLD_VOCAB_TERM` varchar(256) NOT NULL,
  `REFERENCE_ID` varchar(32) DEFAULT NULL,
  `USAGE_COUNT` double(12,0) NOT NULL DEFAULT '1',
  `IS_EXCLUDED` bit(1) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` double(12,0) NOT NULL,
  `MODIFIED_DATE` datetime DEFAULT NULL,
  ` MODIFIED_BY` double(12,0) DEFAULT NULL,
  PRIMARY KEY (`CTRLD_VOCAB_TERM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



CREATE TABLE `CTRLD_VOCAB_TERM_LINK` (
  `CTRLD_VOCAB_TERM_LINK_ID` double(12,0) NOT NULL,
  `CTRLD_VOCAB_TERM_ID` double(12,0) NOT NULL,
  `LINKED_CTRLD_VOCAB_TERM_ID` double(12,0) NOT NULL,
  `USAGE_COUNT` double(12,0) NOT NULL DEFAULT '1',
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` double(12,0) NOT NULL,
  `CREATED_LOAD_NUMBER` double(12,0) NOT NULL,
  `MODIFIED_DATE` datetime DEFAULT NULL,
  `MODIFIED_BY` double(12,0) DEFAULT NULL,
  `MODIFIED_LOAD_NUMBER` double(12,0) DEFAULT NULL,
  PRIMARY KEY (`CTRLD_VOCAB_TERM_LINK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



CREATE TABLE `RELATIONSHIP_TYPE` (
  `RELATIONSHIP_TYPE_ID` double(12,0) NOT NULL,
  `RELATIONSHIP_TYPE` varchar(32) NOT NULL,
  `DEFINTION` varchar(256) NOT NULL,
  `IS_CYCLIC` bit(1) NOT NULL,
  `IS_SYMMETRIC` bit(1) NOT NULL,
  `IS_TRANSITIVE` bit(1) NOT NULL,
  `INVERSE_OF` double(12,0) DEFAULT NULL,
  `TRANSITIVE_OVER` double(12,0) DEFAULT NULL,
  `EDGE_COLOUR` char(7) DEFAULT NULL,
  `STATUS` varchar(8) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` varchar(45) NOT NULL,
  `CREATED_VERSION_ID` double(12,0) NOT NULL,
  `APPROVED_VERSION_ID` double(12,0) DEFAULT NULL,
  `OBSOLETE_VERSION_ID` double(12,0) DEFAULT NULL,
  `REPLACED_BY` double(12,0) DEFAULT NULL,
  PRIMARY KEY (`RELATIONSHIP_TYPE_ID`),
  UNIQUE KEY `RELATIONSHIP_TYPE_UNIQUE` (`RELATIONSHIP_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



CREATE TABLE `ONTOLOGY` (
  `ONTOLOGY_ID` double(12,0) NOT NULL,
  `ONTOLOGY_NAME` varchar(64) NOT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  `IS_INTERNAL` bit(1) NOT NULL,
  `SOURCE_NAMESPACE` varchar(256) DEFAULT NULL,
  `SOURCE_URI` varchar(1024) DEFAULT NULL,
  `SOURCE_RELEASE` varchar(32) DEFAULT NULL,
  `SOURCE_DATE` datetime DEFAULT NULL,
  `SOURCE_FORMAT` varchar(32) DEFAULT NULL,
  `REFERENCE_ID_PREFIX` varchar(16) NOT NULL,
  `REFERENCE_ID_VALUE` double(7,0) NOT NULL DEFAULT '0',
  `IS_CODELIST` bit(1) NOT NULL,
  `REFERENCE_ID` varchar(32) DEFAULT NULL,
  `STATUS` varchar(8) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` double(12,0) NOT NULL,
  `CREATED_VERSION_ID` double(12,0) NOT NULL,
  `APPROVED_VERSION_ID` double(12,0) DEFAULT NULL,
  `OBSOLETE_VERSION_ID` double(12,0) DEFAULT NULL,
  `REPLACED_BY` double(12,0) DEFAULT NULL,
  PRIMARY KEY (`ONTOLOGY_ID`),
  UNIQUE KEY `ONTOLOGY_NAME_UNIQUE` (`ONTOLOGY_NAME`),
  UNIQUE KEY `REFERENCE_ID_PREFIX_UNIQUE` (`REFERENCE_ID_PREFIX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



CREATE TABLE `CTRLD_VOCAB_DOMAIN_ONTOLOGY` (
  `CTRLD_VOCAB_DOMAIN_ONTOLOGY_ID` double(12,0) NOT NULL,
  `CTRLD_VOCAB_DOMAIN_ID` double(12,0) NOT NULL,
  `ONTOLOGY_ID` double(12,0) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` double(12,0) NOT NULL,
  `MODIFIED_DATE` datetime DEFAULT NULL,
  `MODIFIED_BY` double(12,0) DEFAULT NULL,
  PRIMARY KEY (`CTRLD_VOCAB_DOMAIN_ONTOLOGY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



CREATE TABLE `TERM` (
  `TERM_ID` double(12,0) NOT NULL,
  `ONTOLOGY_ID` double(12,0) NOT NULL,
  `TERM_NAME` varchar(256) NOT NULL,
  `REFERENCE_ID` varchar(32) NOT NULL,
  `DEFINITION` varchar(1024) DEFAULT NULL,
  `DEFINITION_URL` varchar(1024) DEFAULT NULL,
  `COMMENTS` varchar(1024) DEFAULT NULL,
  `IS_ROOT` bit(1) NOT NULL,
  `STATUS` varchar(8) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` double(12,0) NOT NULL,
  `CREATED_VERSION_ID` double(12,0) NOT NULL,
  `APPROVED_VERSION_ID` double(12,0) DEFAULT NULL,
  `OBSOLETE_VERSION_ID` double(12,0) DEFAULT NULL,
  `REPLACED_BY` double(12,0) DEFAULT NULL,
  PRIMARY KEY (`TERM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;






CREATE TABLE `TERM_XREF` (
  `TERM_XREF_ID` double(12,0) NOT NULL,
  `TERM_ID` double(12,0) NOT NULL,
  `DATASOURCE_ID` double(12,0) DEFAULT NULL,
  `REFERENCE_ID` varchar(256) DEFAULT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  `XREF_URL` varchar(1024) DEFAULT NULL,
  `IS_DEFINITION_XREF` bit(1) NOT NULL DEFAULT b'0',
  `STATUS` double(8,0) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` double(12,0) NOT NULL,
  `MODIFIED_DATE` datetime DEFAULT NULL,
  `MODIFIED_BY` double(12,0) DEFAULT NULL,
  PRIMARY KEY (`TERM_XREF_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




CREATE TABLE `TERM_RELATIONSHIP` (
  `TERM_RELATIONSHIP_ID` double(12,0) NOT NULL,
  `TERM_ID` double(12,0) NOT NULL,
  `RELATED_TERM_ID` double(12,0) NOT NULL,
  `RELATIONSHIP_TYPE_ID` double(12,0) NOT NULL,
  `IS_INTERSECTION` bit(1) DEFAULT b'0',
  `STATUS` varchar(8) NOT NULL DEFAULT 'PENDING',
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` double(12,0) NOT NULL,
  `CREATED_VERSION_ID` double(12,0) NOT NULL,
  `APPROVED_VERSION_ID` double(12,0) DEFAULT NULL,
  `OBSOLETE_VERSION_ID` double(12,0) DEFAULT NULL,
  `REPLACED_BY` double(12,0) DEFAULT NULL,
  PRIMARY KEY (`TERM_RELATIONSHIP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




CREATE TABLE `TERM_SYNONYM` (
  `TERM_SYNONYM_ID` double(12,0) NOT NULL,
  `TERM_ID` double(12,0) NOT NULL,
  `TERM_SYNONYM` varchar(256) NOT NULL,
  `SYNONYM_TYPE` varchar(8) NOT NULL,
  `CTRLD_VOCAB_TERM_ID` double(12,0) DEFAULT NULL,
  `DATASOURCE_ID` double(12,0) DEFAULT NULL,
  `REFERENCE_ID` varchar(256) DEFAULT NULL,
  `XREF_URL` varchar(1024) DEFAULT NULL,
  `DESCRIPTION` varchar(1024) DEFAULT NULL,
  `STATUS` varchar(8) NOT NULL DEFAULT 'PENDING',
  `CREATED_DATE` datetime NOT NULL,
  `CREATED_BY` double(12,0) NOT NULL,
  `CREATED_VERSION_ID` double(12,0) NOT NULL,
  `APPROVED_VERSION_ID` double(12,0) DEFAULT NULL,
  `OBSOLETE_VERSION_ID` double(12,0) DEFAULT NULL,
  `REPLACED_BY` double(12,0) DEFAULT NULL,
  PRIMARY KEY (`TERM_SYNONYM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




CREATE TABLE `CURATOR_ACTION` (
  `CURATOR_ACTION_ID` double(12,0) NOT NULL,
  `CURATOR_ID` double(12,0) NOT NULL,
  `ACTION` varchar(8) NOT NULL,
  `COMMENTS` varchar(1024) DEFAULT NULL,
  `ACTION_DATE` datetime NOT NULL,
  `RELATIONSHIP_TYPE_ID` double(12,0) DEFAULT NULL,
  `ONTOLOGY_ID` double(12,0) DEFAULT NULL,
  `TERM_ID` double(12,0) DEFAULT NULL,
  `TERM_XREF_ID` double(12,0) DEFAULT NULL,
  `TERM_RELATIONSHIP_ID` double(12,0) DEFAULT NULL,
  `TERM_SYNONYM_ID` double(12,0) DEFAULT NULL,
  PRIMARY KEY (`CURATOR_ACTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


