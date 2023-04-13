-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;

DROP TABLE IF EXISTS salespeople;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activities;

-- CREATE TABLES

CREATE TABLE salespeople (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number INTEGER,
  company_id INTEGER
);

CREATE TABLE companies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  address TEXT
    --In this case I am not creating a relation with salespeople. 
    --One company can be served by many salespeople
);

CREATE TABLE contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT,
  address TEXT,
    --Depending on my product maybe a join to the salespeople is needed 
    --to clarify if the relationships one-to-many or many-to-many
  salespeople_id INTEGER,
  company_id, INTEGER

);

CREATE TABLE activities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  type TEXT,
  ocurred_at TEXT,
  notes TEXT,
  contact_id INTEGER,
  salespeople_id INTEGER
);