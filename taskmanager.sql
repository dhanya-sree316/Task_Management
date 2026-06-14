CREATE DATABASE taskmanager;

USE taskmanager;

CREATE TABLE users(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100)
);

CREATE TABLE tasks(
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    description TEXT,
    status VARCHAR(20),
    due_date DATE,
    user_id INT,
    FOREIGN KEY(user_id) REFERENCES users(id)
);
