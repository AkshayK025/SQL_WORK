use project2;
--Use of Max(case) for pivoting

-- Create the OCCUPATIONS table
CREATE TABLE OCCUPATIONS (
    Name VARCHAR(100),
    Occupation VARCHAR(50)
);

-- Insert sample data
INSERT INTO OCCUPATIONS (Name, Occupation) VALUES
('Samantha', 'Doctor'),
('Julia', 'Actor'),
('Maria', 'Teacher'),
('Meera', 'Teacher'),
('Ashley', 'Professor'),
('Ketty', 'Professor'),
('Christeen', 'Professor'),
('Jane', 'Actor'),
('Jenny', 'Doctor');




WITH Ranked AS (
    SELECT 
        name,
        occupation,
        ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name) AS rn
    FROM occupations)
    ,Pivoted AS (
    SELECT
        MAX(CASE WHEN occupation = 'Doctor' THEN name END) AS Doctor,
        MAX(CASE WHEN occupation = 'Actor' THEN name END) AS Actor,
        MAX(CASE WHEN occupation = 'Professor' THEN name END) AS Professor,
        MAX(CASE WHEN occupation = 'Teacher' THEN name END) AS Teacher,
        rn
    FROM Ranked
    GROUP BY rn
)
SELECT Doctor, Actor, Professor, Teacher
FROM Pivoted
ORDER BY rn;


--Use of Group Concat
-- This groups all names by occupation into a single row per occupation — not pivoted, but useful.


    SELECT occupation,
           GROUP_CONCAT(name ORDER BY name SEPARATOR ', ') AS names
    FROM occupations
    GROUP BY occupation;