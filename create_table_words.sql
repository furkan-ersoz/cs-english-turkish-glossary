-- Creating the table
CREATE TABLE `words` (
  `word` VARCHAR(30) DEFAULT NULL, -- The English word
  `ceviri` VARCHAR(100) DEFAULT NULL, -- The Turkish translation
  `master` VARCHAR(30) DEFAULT NULL, -- The subject/topic of the word
  `CreatedAt` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP, -- The timestamp when the record is created
  UNIQUE KEY `word` (`word`), -- Ensures each word is unique
  CONSTRAINT `words_chk_1` CHECK (
    `master` IN (
      'mix master', 
      'database', 
      'oop', 
      'data science', 
      'artificial intelligence', 
      'ibm data analyst', 
      'numerical methods', 
      'operating systems', 
      'excel', 
      'github', 
      'recommender systems'
    )
  )
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;