-- Creating the Words table

CREATE TABLE `words` (
  `word` varchar(30) DEFAULT NULL, -- The English word
  `ceviri` varchar(100) DEFAULT NULL, -- The Turkish translation
  `master` varchar(30) DEFAULT NULL, -- The subject/topic of the word
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP, -- The timestamp when the record is created
  UNIQUE KEY `word` (`word`), -- Ensures each word is unique
  KEY `words_chk_1` (`master`),
  CONSTRAINT `words_chk_1` FOREIGN KEY (`master`) REFERENCES `masters` (`master`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

-- Creating the Masters table
CREATE TABLE `masters` (
  `master` varchar(30) NOT NULL, -- The subject/topic of the word
  PRIMARY KEY (`master`), -- Ensures each master is unique
  UNIQUE KEY `master` (`master`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
