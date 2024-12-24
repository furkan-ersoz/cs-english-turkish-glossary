-- Inserting words into the table
-- Example: Inserting a word with default current timestamp
INSERT INTO words VALUES ("word", "ceviri", "master", DEFAULT);

-- Example: Inserting a word with a specific timestamp
-- The date part can be replaced with the desired value
INSERT INTO words VALUES ("word", "ceviri", "master", CONCAT('202*-**-**', ' ', CURTIME()));