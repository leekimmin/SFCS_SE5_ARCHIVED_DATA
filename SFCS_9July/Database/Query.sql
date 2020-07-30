-- ----------------------------------------------------------------------------
-- MySQL Workbench Migration
-- Migrated Schemata: SFCS
-- Source Schemata: SFCS
-- Created: Wed Jul 1 09:48:12 2020
-- Latest Edited: Sat Jul 5 2:00:00 2020
-- Workbench Version: 8.0.20
-- ----------------------------------------------------------------------------

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------------------------------------------------------
-- Schema SFCS
-- ----------------------------------------------------------------------------

DROP DATABASE IF EXISTS `SFCS`;
CREATE DATABASE `SFCS`;
USE `SFCS`;

-- ----------------------------------------------------------------------------
-- Table SFCS.roles
-- ----------------------------------------------------------------------------

CREATE TABLE `SFCS`.`roles` (
	`role_id` int NOT NULL AUTO_INCREMENT,
    `name` varchar(50) NOT NULL,
    PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO roles VALUES (1, 'customer'), (2, 'admin'), (3, 'cook'), (4, 'vendor'), (5, 'manager');

-- ----------------------------------------------------------------------------
-- Table SFCS.users
-- ----------------------------------------------------------------------------

CREATE TABLE `SFCS`.`users` (
	`user_id` int NOT NULL AUTO_INCREMENT,
	`first_name` varchar(255) NOT NULL,
	`last_name` varchar(255) NOT NULL,
	`birth_date` date DEFAULT NULL,
    `gender` enum('M','F') DEFAULT NULL,
	`phone` varchar(50) DEFAULT NULL,
	`email` varchar(50) DEFAULT NULL,
	`address` varchar(2000) DEFAULT NULL,
	`username` varchar(50) NOT NULL,
	`password` varchar(50) NOT NULL,
	`avatar`varchar(50) DEFAULT NULL,
	`role_id` int NOT NULL DEFAULT '1',
	`balance` int DEFAULT '0',
	PRIMARY KEY (`user_id`),
	UNIQUE INDEX `UQ_username` (`username` ASC) VISIBLE,
    KEY `fk_users__roles_idx` (`role_id`),
    CONSTRAINT `fk_users_roles`
		FOREIGN KEY (`role_id`) REFERENCES `SFCS`.`roles` (`role_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO users (first_name, last_name, birth_date, gender, email, username, password, role_id) 
VALUES 
	('Quy', 'Nguyen', '2000-09-25', 'M', 'quy@gmail.com', 'admin1', '123456', 2),
    ('Son', 'Le', '2000-06-05', 'M', 'son@gmail.com', 'admin2', '123456', 2),
    ('Tan', 'Chau', '2000-02-17', 'M', 'tan@gmail.com', 'admin3', '123456', 2),
    ('Minh', 'Ly', '2000-09-17', 'M', 'minh@gmail.com', 'admin4', '123456', 2),
    ('Hung', 'To', '2000-06-15', 'M', 'hung@gmail.com', 'admin5', '123456', 2),
    ('Ans', 'Bean', '1995-07-01', 'F', 'ans@yahoo.com', 'AB', '123', 3),
    ('Amelia', 'James', '1993-10-11', 'F', 'amelia@gmail.com', 'AJ', '123', 3),
    ('Josh', 'Kaism', '1992-12-08', 'M', 'josh@gmail.com', 'JK', 'qwerty', 4),
    ('Mana', 'Lane', '1993-01-30', 'F', 'mana@yahoo.com', 'ML', 'qwerty', 5);

-- ----------------------------------------------------------------------------
-- Table SFCS.stalls
-- ----------------------------------------------------------------------------

CREATE TABLE `SFCS`.`stalls` (
	`stall_id` int NOT NULL AUTO_INCREMENT,
	`name` varchar(255) NOT NULL,
    `item` int NOT NULL DEFAULT '0',
	`description` varchar(2000) DEFAULT NULL,
	`image` varchar(50) DEFAULT NULL,
	PRIMARY KEY (`stall_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO stalls (name, item) 
VALUES 
	('Cơm Nguyên Ký', 5), 
    ('Phở 10 Lý Quốc Sư', 10),
    ('Hoàng Yến Cuisine', 15),
    ('KFC', 20),
    ('Pizza Hut', 18),
    ("McDonald's", 11),
    ('Hotto', 22),
    ('Hanuri', 22),
    ('Tous Les Jours', 37),
    ('The Royal Tea', 32),
    ('Phúc Long Coffee & Tea', 35), 
    ('Trà sữa Toco Toco', 30);
    
-- ----------------------------------------------------------------------------
-- Table SFCS.categories
-- ----------------------------------------------------------------------------

CREATE TABLE `SFCS`.`categories` (
	`category_id` int NOT NULL AUTO_INCREMENT,
	`name` varchar(50) NOT NULL,
	PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO categories (name)
VALUES ('Ẩm thực Việt'), ('Thức ăn nhanh'), ('Lẩu & Nướng'), ('Món tráng miệng'), ('Thức uống'), ('Món Khác');

-- ----------------------------------------------------------------------------
-- Table SFCS.products
-- ----------------------------------------------------------------------------

CREATE TABLE `SFCS`.`products` (
	`product_id` int NOT NULL AUTO_INCREMENT,
	`name` varchar(255) NOT NULL,
	`price` int NOT NULL,
	`quantity` int NOT NULL,
	`discount` int DEFAULT '0',
	`category_id` int NOT NULL,
	`stall_id` int NOT NULL,
	`description` varchar(2000) DEFAULT NULL,
	`image` varchar(50) DEFAULT NULL,
	PRIMARY KEY (`product_id`),
	KEY `fk_products_categories_idx` (`category_id`),
	KEY `fk_products_stalls_idx` (`stall_id`),
	CONSTRAINT `fk_products_categories`
		FOREIGN KEY (`category_id`) REFERENCES `SFCS`.`categories` (`category_id`) ON UPDATE CASCADE,
	CONSTRAINT `fk_products_stalls`
		FOREIGN KEY (`stall_id`) REFERENCES `SFCS`.`stalls` (`stall_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO products (name, price, quantity, discount, category_id, stall_id, image) 
VALUES 
	('Phở Bò Tái Chín', 60000, 50, 20, 1, 2, '../img/phobo.jpg'),
	('Cơm Gà Xối Mỡ', 25000, 40, DEFAULT, 1, 1, '../img/comga.jpg'),
    ('Kimbap', 35000, 40, DEFAULT, 6, 8, '../img/kimbap.jpg'),
    ('Lẩu Cua Cà Ri', 73000, 20, 10, 3, 3, '../img/laucua.jpg'),
    ('Bò Ba Chỉ Với Trứng', 99000, 30, 25, 6, 7, '../img/bobachi.jpg'),
    ('Combo Gà Giòn Cay', 81000, 30, 10, 2, 4, '../img/gagion.jpg'),
    ('Pizza Hải Sản', 53000, 35, 15, 2, 5, '../img/pizza.jpg'),
    ('Burger Bò Phô Mai', 40000, 60, DEFAULT, 2, 6, '../img/burger.jpg'),
    ('Bánh Crepe Chuối', 39000, 35, DEFAULT, 4, 9, '../img/crepe.jpg'),
    ('Trà Đào Cam Sả', 45000, 40, DEFAULT, 5, 10, '../img/tradaocamsa.jpg'),
    ('Trà Sữa Phúc Long (Lạnh)', 45000, 60, DEFAULT, 5, 11, '../img/trasuaphuclong.jpg'),
    ('Sữa Tươi Trân Châu Đường Hổ', 49000, 45, 28, 5, 12, '../img/suatuoitoco.jpg');
    
-- ----------------------------------------------------------------------------
-- Table SFCS.order_statuses
-- ----------------------------------------------------------------------------

CREATE TABLE `SFCS`.`order_statuses` (
  `order_status_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`order_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `order_statuses` 
VALUES (1, 'Đang Xử Lý'), (2, 'Đã Sẵn Sàng'), (3, 'Hết Hàng'), (4, 'Đã Nhận Hàng');

-- ----------------------------------------------------------------------------
-- Table SFCS.orders
-- ----------------------------------------------------------------------------

CREATE TABLE `SFCS`.`orders` (
	`order_id` int NOT NULL AUTO_INCREMENT,
	`user_id` int NOT NULL,
	`order_date` date NOT NULL,
	`status` int NOT NULL DEFAULT '1',
	PRIMARY KEY (`order_id`),
    KEY `fk_orders_users_idx` (`user_id`),
    KEY `fk_orders_order_statuses_idx` (`status`),
	CONSTRAINT `fk_orders_users`
		FOREIGN KEY (`user_id`) REFERENCES `SFCS`.`users` (`user_id`) ON UPDATE CASCADE,
	CONSTRAINT `fk_orders_order_statuses` 
		FOREIGN KEY (`status`) REFERENCES `SFCS`.`order_statuses` (`order_status_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------------------------------------------------------
-- Table SFCS.order_items
-- ----------------------------------------------------------------------------

CREATE TABLE `SFCS`.`order_items` (
	`order_item_id` int NOT NULL AUTO_INCREMENT,
	`order_id` int NOT NULL,
	`product_id` int NOT NULL,
	`quantity` int NOT NULL,
	`unit_price` int NOT NULL,
	PRIMARY KEY (`order_item_id`),
	KEY `fk_order_items_orders_idx` (`order_id`),
    KEY `fk_order_items_products_idx` (`product_id`),
	CONSTRAINT `fk_order_items_orders` 
		FOREIGN KEY (`order_id`) REFERENCES `SFCS`.`orders` (`order_id`) ON UPDATE CASCADE,
	CONSTRAINT `fk_order_items_products` 
		FOREIGN KEY (`product_id`) REFERENCES `SFCS`.`products` (`product_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------------------------------------------------------
-- Table SFCS.invoices
-- ----------------------------------------------------------------------------

CREATE TABLE `SFCS`.`invoices` (
	`invoice_id` int NOT NULL,
	`user_id` int NOT NULL,
	`invoice_total` int NOT NULL DEFAULT '0',
	`invoice_date` date NOT NULL,
	PRIMARY KEY (`invoice_id`),
	KEY `fk_invoices_users_idx` (`user_id`),
	CONSTRAINT `fk_invoices_users` 
		FOREIGN KEY (`user_id`) REFERENCES `SFCS`.`users` (`user_id`) 
        ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------------------------------------------------------
-- Table SFCS.payment_methods
-- ----------------------------------------------------------------------------

CREATE TABLE `SFCS`.`payment_methods` (
	`payment_method_id` int NOT NULL AUTO_INCREMENT,
	`name` varchar(50) NOT NULL,
	PRIMARY KEY (`payment_method_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `payment_methods` 
VALUES (1, 'Tài Khoản SFCS'), (2, 'Ví Momo'), (3, 'ViettelPay'), (4, 'Paypal');

-- ----------------------------------------------------------------------------
-- Table SFCS.payments
-- ----------------------------------------------------------------------------

CREATE TABLE `SFCS`.`payments` (
	`payment_id` int NOT NULL AUTO_INCREMENT,
	`user_id` int NOT NULL,
	`invoice_id` int NOT NULL,
	`date` date NOT NULL,
	`amount` int NOT NULL,
	`payment_method` int NOT NULL,
	PRIMARY KEY (`payment_id`),
	KEY `fk_payments_users_idx` (`user_id`),
	KEY `fk_payments_invoices_idx` (`invoice_id`),
	KEY `fk_payments_payment_methods_idx` (`payment_method`),
	CONSTRAINT `fk_payments_users` 
		FOREIGN KEY (`user_id`) REFERENCES `SFCS`.`users` (`user_id`) ON UPDATE CASCADE,
	CONSTRAINT `fk_payments_invoices` 
		FOREIGN KEY (`invoice_id`) REFERENCES `SFCS`.`invoices` (`invoice_id`) ON UPDATE CASCADE,
	CONSTRAINT `fk_payments_payment_methods` 
		FOREIGN KEY (`payment_method`) REFERENCES `SFCS`.`payment_methods` (`payment_method_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------------------------------------------------------
-- Table SFCS.recharges
-- ----------------------------------------------------------------------------

CREATE TABLE `SFCS`.`recharges` (
	`recharge_id` int NOT NULL AUTO_INCREMENT,
	`user_id` int NOT NULL,
	`invoice_id` int NOT NULL,
	`date` date NOT NULL,
	`amount` int NOT NULL,
	PRIMARY KEY (`recharge_id`),
	KEY `fk_recharges_users_idx` (`user_id`),
	KEY `fk_recharges_invoices_idx` (`invoice_id`),
	CONSTRAINT `fk_recharges_users` 
		FOREIGN KEY (`user_id`) REFERENCES `SFCS`.`users` (`user_id`) ON UPDATE CASCADE,
	CONSTRAINT `fk_recharges_invoices` 
		FOREIGN KEY (`invoice_id`) REFERENCES `SFCS`.`invoices` (`invoice_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------------------------------------------------------
-- Table SFCS.sysdiagrams
-- ----------------------------------------------------------------------------

CREATE TABLE `SFCS`.`sysdiagrams` (
  `name` varchar(160) NOT NULL,
  `principal_id` int NOT NULL,
  `diagram_id` int NOT NULL,
  `version` int NULL,
  `definition` longblob NULL,
  PRIMARY KEY (`diagram_id`),
  UNIQUE INDEX `UQ_principal_name` (`principal_id` ASC, `name` ASC) VISIBLE
);

SET FOREIGN_KEY_CHECKS = 1;