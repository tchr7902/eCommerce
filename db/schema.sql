-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

CREATE TABLE category (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(100) NOT NULL,
);

CREATE TABLE product (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL DEFAULT 10,
    category_id INT NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(id)
);

CREATE TABLE tag (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    tag_name VARCHAR(100)
);

CREATE TABLE productTag (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_id INT NOT NULL
    FOREIGN KEY (product_id)
    REFERENCES product(id),
    tag_id INT
    FOREIGN KEY (tag_id)
    REFERENCES tag(id)
)