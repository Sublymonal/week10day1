-- In this file, you will create some databases for later exercises.

-- Create the following databases with the indicated owners
-- | database name   | owner name             |
-- |-----------------|------------------------|
-- | aa_times        | aa_times               |
-- | project_manager | project_management_app |


-- when creating a database with an owner, use the following syntax
--
-- create database (>>DATABASE NAME<<) with owner (>>OWNER NAME<<);
--

CREATE database aa_times with owner aa_times;
create database project_manager with owner project_management_app;