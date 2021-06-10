-- In this file, you will create some tables for the aa_times database

-- Set the role to the aa_times user so the tables will be owned by that user
SET ROLE aa_times;



-- The "people" table
-- | Column name | Type         | Constraints |
-- |-------------|--------------|-------------|
-- | id          | SERIAL       | PRIMARY KEY |
-- | first_name  | VARCHAR(50)  | NOT NULL    |
-- | last_name   | VARCHAR(50)  | NOT NULL    |
-- | email       | VARCHAR(100) | NOT NULL    |

create table people(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT Null
);

-- The "sections" table
-- | Column name | Type         | Constraints |
-- |-------------|--------------|-------------|
-- | id          | SERIAL       | PRIMARY KEY |
-- | name        | VARCHAR(150) | NOT NULL    |
create table sections(
    id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT Null
);


-- The "stories" table
-- | Column name | Type    | Constraints                             |
-- |-------------|---------|-----------------------------------------|
-- | id          | SERIAL  | PRIMARY KEY                             |
-- | author_id   | INTEGER | FOREIGN KEY to people table, NOT NULL   |
-- | content     | TEXT    | NOT NULL                                |
-- | section_id  | INTEGER | FOREIGN KEY to sections table, NOT NULL |


-- when creating a column referencing a table, use the following syntax
--
-- (>>NAME OF COLUMN<<) (>>TYPE<<) references (>>REFERENCED TABLE NAME<<);
--
create table stories(
    id SERIAL PRIMARY KEY,
    author_id INTEGER references people NOT Null,
    content TEXT NOT Null,
    section_id INTEGER references sections not null
);