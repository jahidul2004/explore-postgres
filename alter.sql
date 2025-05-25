-- Active: 1747835845207@@127.0.0.1@5432@ph

-- Adding Column
alter Table person
    add COLUMN address VARCHAR(100) not null DEFAULT 'Unknown';


-- Show table
SELECT * FROM person;

-- Inserting data with default address
INSERT INTO person(user_name, user_age, email, phone) VALUES('Ridwan Sheikh', 18,'ridwan@gmail.com', '01867835647')

--Inserting data with address
INSERT INTO person(user_name, user_age, email, phone, address) VALUES('Din He', 19, 'din-he@gmail.com','01985678340', 'Cairo, Egypt')

-- Delete a column
ALTER TABLE person
    DROP COLUMN address;

-- Rename Column
ALTER TABLE person
    RENAME COLUMN user_age to age;

-- Change character length
ALTER TABLE person
    ALTER COLUMN user_name TYPE VARCHAR(100);

-- Add constraint to existing column
ALTER TABLE person
    ALTER COLUMN age SET NOT NULL;

-- Remove constraint
ALTER TABLE person
    ALTER COLUMN age DROP NOT NULL;

-- Add constraint UNIQUE
ALTER TABLE person
    ADD constraint unique_person_user_name UNIQUE(user_name);


-- Add constraint Primary Key
ALTER TABLE person
    ADD constraint pk_person_user_name PRIMARY KEY(user_name);

-- Drop Primary key
ALTER TABLE person
    DROP constraint pk_person_user_name;

-- Truncate db (remove all data)
TRUNCATE TABLE person2;

CREATE TABLE person2(
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(50) NOT Null,
    email VARCHAR(50) NOT NULL
)

INSERT INTO person2(user_name, email) VALUES('jihsdfgad','a@bfdvf.com')

SELECT * FROM person2;