-- Create the table for categories
CREATE TABLE category (
    category_id VARCHAR(50) PRIMARY KEY,
    category VARCHAR(255) NOT NULL
);
SELECT * FROM category

-- Create the table for subcategories
CREATE TABLE subcategory (
    subcategory_id VARCHAR(50) PRIMARY KEY,
    subcategory VARCHAR(255) NOT NULL
);
SELECT * FROM subcategory

-- Create the table for contacts
CREATE TABLE contacts_clean (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(200) NOT NULL
);
SELECT * FROM contacts_clean

-- Create the table for campaigns
CREATE TABLE campaign_clean (
    cf_id INT PRIMARY KEY,
    contact_id INT,  
    company_name VARCHAR(255) NOT NULL,
    description TEXT,
    goal FLOAT NOT NULL,
    pledged FLOAT NOT NULL,
    outcome VARCHAR(50),
    backers_count INT,
    country VARCHAR(50),
    currency VARCHAR(10),
    launch_date TIMESTAMP NOT NULL,
    end_date TIMESTAMP NOT NULL,
    category_id VARCHAR(50), 
    subcategory_id VARCHAR(50)
);
SELECT * FROM campaign_clean

-- Drop the campaign table
DROP TABLE IF EXISTS campaign_clean;

-- Drop the contacts table
DROP TABLE IF EXISTS contacts_clean;

-- Drop the subcategory table
DROP TABLE IF EXISTS subcategory;

-- Drop the category table
DROP TABLE IF EXISTS category;

