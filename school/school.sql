-- Drops existing tables, so we start fresh with each
-- run of this script
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS teachers;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS sections;
DROP TABLE IF EXISTS enrollments;

CREATE TABLE students (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT
);

-- Create the rest of the tables

CREATE TABLE teachers (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  bio TEXT
);

CREATE TABLE courses (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  description TEXT
);

CREATE TABLE sections (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  time TEXT,
  course_id INTEGER,
  teacher_id INTEGER
);

-- Design Design the model that allows students to sign up for classes – let's call it Enrollment. 
-- Create the enrollments

CREATE TABLE enrollments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  student_id INTEGER,
  -- I don't need to add course_id because section and course are already connected
  section_id INTEGER,
  status TEXT
);