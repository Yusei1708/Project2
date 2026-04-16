CREATE DATABASE IF NOT EXISTS doan_web1;
USE doan_web1;

CREATE TABLE IF NOT EXISTS products (
    masp VARCHAR(50) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    company VARCHAR(50),
    img TEXT,
    price VARCHAR(50),
    star INT,
    rateCount INT,
    promo_name VARCHAR(50),
    promo_value VARCHAR(50),
    detail JSON
);

TRUNCATE TABLE products;

INSERT INTO products (masp, name, company, img, price, star, rateCount, promo_name, promo_value, detail) VALUES 
/* APPLE */
('APP01', 'iPhone 16 Pro Max 256GB', 'Apple', 'img/products/iphone.png', '34.990.000', 5, 230, 'moiramat', '', '{"screen": "6.9 inch, Super Retina XDR OLED", "os": "iOS 18", "camara": "48 MP", "camaraFront": "12 MP", "cpu": "Apple A18 Pro", "ram": "8 GB", "rom": "256 GB", "microUSB": "Không", "battery": "4685 mAh"}'),
('APP02', 'iPhone 16 Pro 128GB', 'Apple', 'img/products/iphone.png', '28.990.000', 5, 120, 'tragop', '0', '{"screen": "6.3 inch, Super Retina XDR", "os": "iOS 18", "camara": "48 MP", "camaraFront": "12 MP", "cpu": "Apple A18 Pro", "ram": "8 GB", "rom": "128 GB", "microUSB": "Không", "battery": "3582 mAh"}'),
('APP03', 'iPhone 16 128GB', 'Apple', 'img/products/iphone.png', '22.990.000', 4, 300, 'moiramat', '', '{"screen": "6.1 inch, Super Retina XDR", "os": "iOS 18", "camara": "48 MP", "camaraFront": "12 MP", "cpu": "Apple A18", "ram": "8 GB", "rom": "128 GB", "microUSB": "Không", "battery": "3561 mAh"}'),
('APP04', 'iPhone 15 Pro Max 256GB', 'Apple', 'img/products/iphone.png', '29.990.000', 5, 1200, 'giamgia', '500.000', '{"screen": "6.7 inch, Super Retina XDR", "os": "iOS 17", "camara": "48 MP", "camaraFront": "12 MP", "cpu": "Apple A17 Pro", "ram": "8 GB", "rom": "256 GB", "microUSB": "Không", "battery": "4422 mAh"}'),
('APP05', 'iPhone 15 128GB', 'Apple', 'img/products/iphone.png', '19.990.000', 5, 2300, 'giareonline', '18.990.000', '{"screen": "6.1 inch, Super Retina XDR", "os": "iOS 17", "camara": "48 MP", "camaraFront": "12 MP", "cpu": "Apple A16 Bionic", "ram": "6 GB", "rom": "128 GB", "microUSB": "Không", "battery": "3349 mAh"}'),
('APP06', 'iPhone 14 Pro Max 128GB', 'Apple', 'img/products/iphone.png', '26.490.000', 5, 4500, 'giamgia', '1.000.000', '{"screen": "6.7 inch", "os": "iOS 16", "camara": "48 MP", "camaraFront": "12 MP", "cpu": "A16 Bionic", "ram": "6 GB", "rom": "128 GB", "microUSB": "Không", "battery": "4323 mAh"}'),
('APP07', 'iPhone 14 128GB', 'Apple', 'img/products/iphone.png', '17.990.000', 4, 3200, 'tragop', '0', '{"screen": "6.1 inch", "os": "iOS 16", "camara": "12 MP", "camaraFront": "12 MP", "cpu": "A15 Bionic", "ram": "6 GB", "rom": "128 GB", "microUSB": "Không", "battery": "3279 mAh"}'),
('APP08', 'iPhone 13 128GB', 'Apple', 'img/products/iphone.png', '13.990.000', 5, 8500, 'giareonline', '13.490.000', '{"screen": "6.1 inch", "os": "iOS 15", "camara": "12 MP", "camaraFront": "12 MP", "cpu": "A15 Bionic", "ram": "4 GB", "rom": "128 GB", "microUSB": "Không", "battery": "3240 mAh"}'),
('APP09', 'iPhone 11 64GB', 'Apple', 'img/products/iphone.png', '9.490.000', 4, 15000, 'giamgia', '200.000', '{"screen": "6.1 inch", "os": "iOS 14", "camara": "12 MP", "camaraFront": "12 MP", "cpu": "A13 Bionic", "ram": "4 GB", "rom": "64 GB", "microUSB": "Không", "battery": "3110 mAh"}'),

/* SAMSUNG */
('SAM01', 'Samsung Galaxy S24 Ultra 5G', 'Samsung', 'img/products/samsung.png', '33.990.000', 5, 450, 'giamgia', '2.000.000', '{"screen": "6.8 inch, Dynamic AMOLED 2X", "os": "Android 14", "camara": "200 MP", "camaraFront": "12 MP", "cpu": "Snapdragon 8 Gen 3", "ram": "12 GB", "rom": "256 GB", "microUSB": "Không", "battery": "5000 mAh"}'),
('SAM02', 'Samsung Galaxy S24+', 'Samsung', 'img/products/samsung.png', '26.990.000', 4, 300, 'tragop', '0', '{"screen": "6.7 inch, Dynamic AMOLED 2X", "os": "Android 14", "camara": "50 MP", "camaraFront": "12 MP", "cpu": "Exynos 2400", "ram": "12 GB", "rom": "256 GB", "microUSB": "Không", "battery": "4900 mAh"}'),
('SAM03', 'Samsung Galaxy Z Fold5', 'Samsung', 'img/products/samsung.png', '39.990.000', 5, 60, 'giareonline', '35.000.000', '{"screen": "7.6 inch, Dynamic AMOLED 2X", "os": "Android 13", "camara": "50 MP", "camaraFront": "10 MP", "cpu": "Snapdragon 8 Gen 2", "ram": "12 GB", "rom": "256 GB", "microUSB": "Không", "battery": "4400 mAh"}'),
('SAM04', 'Samsung Galaxy Z Flip5', 'Samsung', 'img/products/samsung.png', '25.990.000', 4, 520, 'giamgia', '1.000.000', '{"screen": "6.7 inch, Dynamic AMOLED 2X", "os": "Android 13", "camara": "12 MP", "camaraFront": "10 MP", "cpu": "Snapdragon 8 Gen 2", "ram": "8 GB", "rom": "256 GB", "microUSB": "Không", "battery": "3700 mAh"}'),
('SAM05', 'Samsung Galaxy S23 FE 5G', 'Samsung', 'img/products/samsung.png', '13.990.000', 4, 350, 'tragop', '0', '{"screen": "6.4 inch", "os": "Android 13", "camara": "50 MP", "camaraFront": "10 MP", "cpu": "Exynos 2200", "ram": "8 GB", "rom": "128 GB", "microUSB": "Không", "battery": "4500 mAh"}'),
('SAM06', 'Samsung Galaxy A55 5G', 'Samsung', 'img/products/samsung.png', '9.990.000', 4, 230, 'moiramat', '', '{"screen": "6.6 inch, Super AMOLED", "os": "Android 14", "camara": "50 MP", "camaraFront": "32 MP", "cpu": "Exynos 1480", "ram": "8 GB", "rom": "128 GB", "microUSB": "1 TB", "battery": "5000 mAh"}'),
('SAM07', 'Samsung Galaxy A35 5G', 'Samsung', 'img/products/samsung.png', '8.290.000', 4, 500, 'giamgia', '300.000', '{"screen": "6.6 inch", "os": "Android 14", "camara": "50 MP", "camaraFront": "13 MP", "cpu": "Exynos 1380", "ram": "8 GB", "rom": "128 GB", "microUSB": "Cắm thẻ nhớ", "battery": "5000 mAh"}'),
('SAM08', 'Samsung Galaxy A15', 'Samsung', 'img/products/samsung.png', '4.990.000', 5, 1100, 'tragop', '0', '{"screen": "6.5 inch", "os": "Android 14", "camara": "50 MP", "camaraFront": "13 MP", "cpu": "Helio G99", "ram": "8 GB", "rom": "128 GB", "microUSB": "Có", "battery": "5000 mAh"}'),
('SAM09', 'Samsung Galaxy M34 5G', 'Samsung', 'img/products/samsung.png', '7.490.000', 4, 80, 'giamgia', '500.000', '{"screen": "6.5 inch", "os": "Android 13", "camara": "50 MP", "camaraFront": "13 MP", "cpu": "Exynos 1280", "ram": "8 GB", "rom": "128 GB", "microUSB": "Có", "battery": "6000 mAh"}'),

/* XIAOMI */
('XIA01', 'Xiaomi 14 Ultra 5G', 'Xiaomi', 'img/products/xiaomi.png', '32.990.000', 5, 80, 'moiramat', '', '{"screen": "6.73 inch, LTPO AMOLED", "os": "Android 14", "camara": "50 MP", "camaraFront": "32 MP", "cpu": "Snapdragon 8 Gen 3", "ram": "16 GB", "rom": "512 GB", "microUSB": "Không", "battery": "5000 mAh"}'),
('XIA02', 'Xiaomi 14 5G', 'Xiaomi', 'img/products/xiaomi.png', '22.990.000', 4, 45, 'tragop', '0', '{"screen": "6.36 inch, AMOLED", "os": "Android 14", "camara": "50 MP", "camaraFront": "32 MP", "cpu": "Snapdragon 8 Gen 3", "ram": "12 GB", "rom": "256 GB", "microUSB": "Không", "battery": "4610 mAh"}'),
('XIA03', 'Xiaomi 13T Pro', 'Xiaomi', 'img/products/xiaomi.png', '15.990.000', 5, 200, 'giamgia', '1.000.000', '{"screen": "6.67 inch", "os": "Android 13", "camara": "50 MP", "camaraFront": "20 MP", "cpu": "Dimensity 9200+", "ram": "12 GB", "rom": "256 GB", "microUSB": "Không", "battery": "5000 mAh"}'),
('XIA04', 'Xiaomi Redmi Note 13 Pro', 'Xiaomi', 'img/products/xiaomi.png', '9.490.000', 5, 120, 'giamgia', '500.000', '{"screen": "6.67 inch, AMOLED", "os": "Android 13", "camara": "200 MP", "camaraFront": "16 MP", "cpu": "Snapdragon 7s Gen 2", "ram": "8 GB", "rom": "256 GB", "microUSB": "Không", "battery": "5100 mAh"}'),
('XIA05', 'Xiaomi Redmi Note 13', 'Xiaomi', 'img/products/xiaomi.png', '4.890.000', 4, 3000, 'giareonline', '4.590.000', '{"screen": "6.67 inch", "os": "Android 13", "camara": "108 MP", "camaraFront": "16 MP", "cpu": "Snapdragon 685", "ram": "6 GB", "rom": "128 GB", "microUSB": "Có", "battery": "5000 mAh"}'),
('XIA06', 'Xiaomi POCO X6 Pro 5G', 'Xiaomi', 'img/products/xiaomi.png', '8.990.000', 5, 800, 'moiramat', '', '{"screen": "6.67 inch", "os": "Android 14", "camara": "64 MP", "camaraFront": "16 MP", "cpu": "Dimensity 8300 Ultra", "ram": "8 GB", "rom": "256 GB", "microUSB": "Không", "battery": "5000 mAh"}'),

/* OPPO / VIVO */
('OPP01', 'Oppo Find X7 Ultra', 'Oppo', 'img/products/xiaomi.png', '22.990.000', 4, 34, 'giareonline', '21.000.000', '{"screen": "6.82 inch, LTPO AMOLED", "os": "Android 14", "camara": "50 MP", "camaraFront": "32 MP", "cpu": "Snapdragon 8 Gen 3", "ram": "12 GB", "rom": "256 GB", "microUSB": "Không", "battery": "5000 mAh"}'),
('OPP02', 'Oppo Find N3 Flip', 'Oppo', 'img/products/xiaomi.png', '19.990.000', 5, 150, 'tragop', '0', '{"screen": "6.8 inch", "os": "Android 13", "camara": "50 MP", "camaraFront": "32 MP", "cpu": "Dimensity 9200", "ram": "12 GB", "rom": "256 GB", "microUSB": "Không", "battery": "4300 mAh"}'),
('OPP03', 'Oppo Reno11 Pro 5G', 'Oppo', 'img/products/xiaomi.png', '16.990.000', 5, 230, 'tragop', '0', '{"screen": "6.7 inch, AMOLED", "os": "Android 14", "camara": "50 MP", "camaraFront": "32 MP", "cpu": "MediaTek Dimensity 8200", "ram": "12 GB", "rom": "512 GB", "microUSB": "Không", "battery": "4600 mAh"}'),
('OPP04', 'Oppo A78', 'Oppo', 'img/products/xiaomi.png', '6.990.000', 4, 520, 'giamgia', '300.000', '{"screen": "6.4 inch", "os": "Android 13", "camara": "50 MP", "camaraFront": "8 MP", "cpu": "Snapdragon 680", "ram": "8 GB", "rom": "256 GB", "microUSB": "Có", "battery": "5000 mAh"}'),
('VIV01', 'Vivo X100 Pro', 'Vivo', 'img/products/xiaomi.png', '21.990.000', 5, 67, 'moiramat', '', '{"screen": "6.78 inch, AMOLED", "os": "Android 14", "camara": "50 MP", "camaraFront": "32 MP", "cpu": "Dimensity 9300", "ram": "16 GB", "rom": "512 GB", "microUSB": "Không", "battery": "5400 mAh"}'),
('VIV02', 'Vivo V30 5G', 'Vivo', 'img/products/xiaomi.png', '13.990.000', 4, 15, 'giamgia', '500.000', '{"screen": "6.78 inch, AMOLED", "os": "Android 14", "camara": "50 MP", "camaraFront": "50 MP", "cpu": "Snapdragon 7 Gen 3", "ram": "12 GB", "rom": "512 GB", "microUSB": "Không", "battery": "5000 mAh"}');


