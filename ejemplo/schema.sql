CREATE DATABASE todo;

USE todo;


CREATE TABLE users(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),  
    email VARCHAR(255) UNIQUE NOT NULL,
    password VARCHAR(255)

);


CREATE TABLE todos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),  
    completed BOOLEAN DEFAULT false,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE

);

CREATE TABLE shared_todos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    todo_id INT,
    user_id INT,
    shared_with_id INT,
    FOREIGN KEY (todo_id) REFERENCES todos(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (shared_with_id) REFERENCES users(id) ON DELETE CASCADE

);

------
INSERT INTO users(name, email, password) VALUES ('EDWIN', 'EASG@GMAIL.COM', '12345');
INSERT INTO users(name, email, password) VALUES ('ALFREDO', 'SG@GMAIL.COM', '1234567');