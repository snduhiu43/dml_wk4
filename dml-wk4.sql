USE hospital_db;

SELECT * from hospital_db.patients;

SELECT * from hospital_db.discharges;


-- Part 1: INSERT Data

INSERT INTO patients
(first_name, last_name, date_of_birth, gender, language)
VALUES
('John', 'Doe', '1980-11-15', 'Male', 'English');


-- Part 2: UPDATE Data

SET SQL_SAFE_UPDATES = 0;

UPDATE patients
SET language = 'Spanish'
WHERE first_name = 'John' AND last_name = 'Doe';


-- Part 3: DELETE Data

DELETE FROM patients
WHERE patient_id = 10;


-- Part 4: Handling NULL Values

SELECT * FROM providers;

SELECT first_name, last_name, email_address,
IFNULL(email_address, 'N/A') AS email_address_record
FROM providers;

SELECT first_name, last_name,
coalesce(phone_number, email_address, 'Missing Details') AS contact_records
FROM providers;


-- Bonus

SELECT *
FROM providers
WHERE provider_specialty = 'pediatrics'
  AND (phone_number IS NULL OR email_address IS NULL);
