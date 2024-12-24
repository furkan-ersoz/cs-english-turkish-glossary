-- Adding a new lecture/topic
-- Step 1: Remove the existing CHECK constraint
ALTER TABLE words DROP CHECK words_chk_1;

-- Step 2: Add a new CHECK constraint with the updated list of topics
ALTER TABLE words ADD CONSTRAINT `words_chk_1` CHECK (
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
    'recommender systems',
    'new_topic' -- Replace with the new topic you want to add
  )
);