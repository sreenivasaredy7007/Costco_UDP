-- Create a dataset if it doesn't exist
CREATE SCHEMA IF NOT EXISTS my_dataset;

-- Create a table
CREATE TABLE IF NOT EXISTS my_dataset.my_table (
    id INT64,
    name STRING,
    age INT64
);

-- Insert sample records
INSERT INTO my_dataset.my_table (id, name, age) VALUES
(1, 'Alice', 30),
(2, 'Bob', 25),
(3, 'Charlie', 28),
(4, 'Diana', 22),
(5, 'Ethan', 35),
(6, 'Fiona', 27),
(7, 'George', 29),
(8, 'Hannah', 32),
(9, 'Ian', 26),
(10, 'Jane', 31);
