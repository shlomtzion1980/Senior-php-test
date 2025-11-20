CREATE TABLE `transactions` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `customer_name` VARCHAR(255) NOT NULL,
    `customer_email` VARCHAR(255) NOT NULL,
    `amount` DECIMAL(10,2) NOT NULL,
    `status` ENUM('approved', 'declined') NOT NULL,
    `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP
);