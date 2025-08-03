-- Add a new column for 'email'
ALTER TABLE Students
ADD email VARCHAR(100);

-- Rename the 'marks' column to 'score'
ALTER TABLE Students
RENAME COLUMN marks TO score;

-- Drop the email column
ALTER TABLE Students
DROP COLUMN email;
