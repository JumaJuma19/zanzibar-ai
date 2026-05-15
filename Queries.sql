-- ===============================
-- MyZanzibar AI Database Schema
-- ===============================
CREATE DATABASE My_Zanzibar_AI;

-- USERS TABLE
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    country VARCHAR(50)
);

-- LOCATIONS TABLE
CREATE TABLE locations (
    location_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    region VARCHAR(100)
);

-- HOTELS TABLE
CREATE TABLE hotels (
    hotel_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    price_per_night DECIMAL(10,2) CHECK (price_per_night >= 0),
    rating DECIMAL(2,1) CHECK (rating BETWEEN 0 AND 5),
    location_id INT,
    FOREIGN KEY (location_id) REFERENCES locations(location_id)
);

-- RESTAURANTS TABLE
CREATE TABLE restaurants (
    restaurant_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    cuisine VARCHAR(50),
    price_range VARCHAR(20),
    rating DECIMAL(2,1) CHECK (rating BETWEEN 0 AND 5),
    location_id INT,
    FOREIGN KEY (location_id) REFERENCES locations(location_id)
);

-- ACTIVITIES TABLE
CREATE TABLE activities (
    activity_id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2) CHECK (price >= 0),
    duration_hours INT,
    location_id INT,
    FOREIGN KEY (location_id) REFERENCES locations(location_id)
);

-- TRIP PLANS TABLE
CREATE TABLE trip_plans (
    trip_id SERIAL PRIMARY KEY,
    user_id INT,
    budget DECIMAL(10,2),
    days INT,
    preferences TEXT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- REVIEWS TABLE
CREATE TABLE reviews (
    review_id SERIAL PRIMARY KEY,
    user_id INT,
    hotel_id INT,
    restaurant_id INT,
    activity_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (hotel_id) REFERENCES hotels(hotel_id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id),
    FOREIGN KEY (activity_id) REFERENCES activities(activity_id)
);

-- here i inser user data 
INSERT INTO users (user_id, name, email, country) VALUES
(1, 'User 1', 'user1@gmail.com', 'Germany'),
(2, 'User 2', 'user2@gmail.com', 'Tanzania'),
(3, 'User 3', 'user3@gmail.com', 'Tanzania'),
(4, 'User 4', 'user4@gmail.com', 'Germany'),
(5, 'User 5', 'user5@gmail.com', 'Germany'),
(6, 'User 6', 'user6@gmail.com', 'Tanzania'),
(7, 'User 7', 'user7@gmail.com', 'Germany'),
(8, 'User 8', 'user8@gmail.com', 'Tanzania'),
(9, 'User 9', 'user9@gmail.com', 'Kenya'),
(10, 'User 10', 'user10@gmail.com', 'Tanzania'),
(11, 'User 11', 'user11@gmail.com', 'Germany'),
(12, 'User 12', 'user12@gmail.com', 'Tanzania'),
(13, 'User 13', 'user13@gmail.com', 'Tanzania'),
(14, 'User 14', 'user14@gmail.com', 'Tanzania'),
(15, 'User 15', 'user15@gmail.com', 'Kenya'),
(16, 'User 16', 'user16@gmail.com', 'Germany'),
(17, 'User 17', 'user17@gmail.com', 'Germany'),
(18, 'User 18', 'user18@gmail.com', 'Tanzania'),
(19, 'User 19', 'user19@gmail.com', 'Tanzania'),
(20, 'User 20', 'user20@gmail.com', 'Germany'),
(21, 'User 21', 'user21@gmail.com', 'Germany'),
(22, 'User 22', 'user22@gmail.com', 'Tanzania'),
(23, 'User 23', 'user23@gmail.com', 'Tanzania'),
(24, 'User 24', 'user24@gmail.com', 'Germany'),
(25, 'User 25', 'user25@gmail.com', 'Tanzania'),
(26, 'User 26', 'user26@gmail.com', 'Kenya'),
(27, 'User 27', 'user27@gmail.com', 'Tanzania'),
(28, 'User 28', 'user28@gmail.com', 'Kenya'),
(29, 'User 29', 'user29@gmail.com', 'Tanzania'),
(30, 'User 30', 'user30@gmail.com', 'Tanzania'),
(31, 'User 31', 'user31@gmail.com', 'Germany'),
(32, 'User 32', 'user32@gmail.com', 'Tanzania'),
(33, 'User 33', 'user33@gmail.com', 'Germany'),
(34, 'User 34', 'user34@gmail.com', 'Germany'),
(35, 'User 35', 'user35@gmail.com', 'Germany'),
(36, 'User 36', 'user36@gmail.com', 'Tanzania'),
(37, 'User 37', 'user37@gmail.com', 'Kenya'),
(38, 'User 38', 'user38@gmail.com', 'Kenya'),
(39, 'User 39', 'user39@gmail.com', 'Germany'),
(40, 'User 40', 'user40@gmail.com', 'Tanzania'),
(41, 'User 41', 'user41@gmail.com', 'Kenya'),
(42, 'User 42', 'user42@gmail.com', 'Tanzania'),
(43, 'User 43', 'user43@gmail.com', 'Kenya'),
(44, 'User 44', 'user44@gmail.com', 'Kenya'),
(45, 'User 45', 'user45@gmail.com', 'Kenya'),
(46, 'User 46', 'user46@gmail.com', 'Tanzania'),
(47, 'User 47', 'user47@gmail.com', 'Kenya'),
(48, 'User 48', 'user48@gmail.com', 'Kenya'),
(49, 'User 49', 'user49@gmail.com', 'Kenya'),
(50, 'User 50', 'user50@gmail.com', 'Germany'),
(51, 'User 51', 'user51@gmail.com', 'Kenya'),
(52, 'User 52', 'user52@gmail.com', 'Tanzania'),
(53, 'User 53', 'user53@gmail.com', 'Germany'),
(54, 'User 54', 'user54@gmail.com', 'Tanzania'),
(55, 'User 55', 'user55@gmail.com', 'Germany'),
(56, 'User 56', 'user56@gmail.com', 'Kenya'),
(57, 'User 57', 'user57@gmail.com', 'Kenya'),
(58, 'User 58', 'user58@gmail.com', 'Tanzania'),
(59, 'User 59', 'user59@gmail.com', 'Tanzania'),
(60, 'User 60', 'user60@gmail.com', 'Kenya'),
(61, 'User 61', 'user61@gmail.com', 'Germany'),
(62, 'User 62', 'user62@gmail.com', 'Germany'),
(63, 'User 63', 'user63@gmail.com', 'Germany'),
(64, 'User 64', 'user64@gmail.com', 'Kenya'),
(65, 'User 65', 'user65@gmail.com', 'Germany'),
(66, 'User 66', 'user66@gmail.com', 'Germany'),
(67, 'User 67', 'user67@gmail.com', 'Germany'),
(68, 'User 68', 'user68@gmail.com', 'Tanzania'),
(69, 'User 69', 'user69@gmail.com', 'Kenya'),
(70, 'User 70', 'user70@gmail.com', 'Germany'),
(71, 'User 71', 'user71@gmail.com', 'Tanzania'),
(72, 'User 72', 'user72@gmail.com', 'Tanzania'),
(73, 'User 73', 'user73@gmail.com', 'Tanzania'),
(74, 'User 74', 'user74@gmail.com', 'Germany'),
(75, 'User 75', 'user75@gmail.com', 'Tanzania'),
(76, 'User 76', 'user76@gmail.com', 'Kenya'),
(77, 'User 77', 'user77@gmail.com', 'Tanzania'),
(78, 'User 78', 'user78@gmail.com', 'Kenya'),
(79, 'User 79', 'user79@gmail.com', 'Tanzania'),
(80, 'User 80', 'user80@gmail.com', 'Kenya'),
(81, 'User 81', 'user81@gmail.com', 'Tanzania'),
(82, 'User 82', 'user82@gmail.com', 'Germany'),
(83, 'User 83', 'user83@gmail.com', 'Kenya'),
(84, 'User 84', 'user84@gmail.com', 'Kenya'),
(85, 'User 85', 'user85@gmail.com', 'Kenya'),
(86, 'User 86', 'user86@gmail.com', 'Germany'),
(87, 'User 87', 'user87@gmail.com', 'Tanzania'),
(88, 'User 88', 'user88@gmail.com', 'Germany'),
(89, 'User 89', 'user89@gmail.com', 'Tanzania'),
(90, 'User 90', 'user90@gmail.com', 'Germany'),
(91, 'User 91', 'user91@gmail.com', 'Germany'),
(92, 'User 92', 'user92@gmail.com', 'Tanzania'),
(93, 'User 93', 'user93@gmail.com', 'Germany'),
(94, 'User 94', 'user94@gmail.com', 'Tanzania'),
(95, 'User 95', 'user95@gmail.com', 'Germany'),
(96, 'User 96', 'user96@gmail.com', 'Tanzania'),
(97, 'User 97', 'user97@gmail.com', 'Germany'),
(98, 'User 98', 'user98@gmail.com', 'Tanzania'),
(99, 'User 99', 'user99@gmail.com', 'Germany'),
(100, 'User 100', 'user100@gmail.com', 'Germany');
---- here just i lock my data i dont need duplicate
SELECT setval('users_user_id_seq', 100);


--- here i insert location data 
INSERT INTO locations (location_id, name, region) VALUES
(1, 'Stone Town', 'Zanzibar'),
(2, 'Nungwi', 'Zanzibar'),
(3, 'Kendwa', 'Zanzibar'),
(4, 'Paje', 'Zanzibar'),
(5, 'Jambiani', 'Zanzibar'),
(6, 'Matemwe', 'Zanzibar'),
(7, 'Kiwengwa', 'Zanzibar'),
(8, 'Bwejuu', 'Zanzibar'),
(9, 'Michamvi', 'Zanzibar'),
(10, 'Prison Island', 'Zanzibar'),
(11, 'Mnemba Island', 'Zanzibar'),
(12, 'Uroa', 'Zanzibar'),
(13, 'Fumba', 'Zanzibar'),
(14, 'Chwaka', 'Zanzibar');

---alsoo i lock my data 
SELECT setval('locations_location_id_seq', 14);


----data from hotel is already there but i i have inserted in way like junks
INSERT INTO hotels (hotel_id, name, price_per_night, rating, location_id) VALUES
(1, 'Hotel 1', 335, 4.8, 12),
(2, 'Hotel 2', 132, 3.2, 2),
(3, 'Hotel 3', 82, 4.8, 2),
(4, 'Hotel 4', 95, 4.3, 8),
(5, 'Hotel 5', 245, 3.8, 12),
(6, 'Hotel 6', 106, 3.9, 14),
(7, 'Hotel 7', 93, 4.0, 14),
(8, 'Hotel 8', 251, 3.8, 13),
(9, 'Hotel 9', 204, 4.5, 3),
(10, 'Hotel 10', 144, 4.5, 7),
(11, 'Hotel 11', 116, 4.4, 10),
(12, 'Hotel 12', 232, 4.4, 5),
(13, 'Hotel 13', 223, 3.7, 12),
(14, 'Hotel 14', 229, 4.9, 7),
(15, 'Hotel 15', 338, 4.1, 6),
(16, 'Hotel 16', 338, 3.1, 3),
(17, 'Hotel 17', 280, 3.0, 11),
(18, 'Hotel 18', 241, 4.8, 9),
(19, 'Hotel 19', 88, 4.0, 6),
(20, 'Hotel 20', 243, 4.8, 3),
(21, 'Hotel 21', 146, 4.4, 10),
(22, 'Hotel 22', 201, 3.1, 12),
(23, 'Hotel 23', 376, 3.5, 7),
(24, 'Hotel 24', 187, 5.0, 2),
(25, 'Hotel 25', 396, 3.2, 1),
(26, 'Hotel 26', 106, 4.6, 10),
(27, 'Hotel 27', 327, 3.9, 7),
(28, 'Hotel 28', 294, 3.4, 13),
(29, 'Hotel 29', 317, 4.9, 6),
(30, 'Hotel 30', 367, 3.0, 4),
(31, 'Hotel 31', 321, 4.3, 1),
(32, 'Hotel 32', 126, 3.7, 5),
(33, 'Hotel 33', 126, 3.1, 10),
(34, 'Hotel 34', 163, 4.3, 7),
(35, 'Hotel 35', 248, 3.8, 5),
(36, 'Hotel 36', 355, 4.7, 11),
(37, 'Hotel 37', 339, 4.9, 7),
(38, 'Hotel 38', 242, 5.0, 1),
(39, 'Hotel 39', 228, 3.4, 10),
(40, 'Hotel 40', 251, 4.5, 6),
(41, 'Hotel 41', 369, 3.7, 10),
(42, 'Hotel 42', 386, 3.3, 3),
(43, 'Hotel 43', 389, 3.9, 10),
(44, 'Hotel 44', 217, 3.4, 5),
(45, 'Hotel 45', 393, 5.0, 4),
(46, 'Hotel 46', 377, 4.4, 4),
(47, 'Hotel 47', 244, 4.1, 2),
(48, 'Hotel 48', 383, 3.4, 13),
(49, 'Hotel 49', 176, 3.3, 4);
---------- here jus
SELECT COUNT(*) FROM hotels;

UPDATE hotels
SET name = CASE
    WHEN hotel_id % 20 = 1 THEN 'Zuri Zanzibar Resort'
    WHEN hotel_id % 20 = 2 THEN 'Park Hyatt Zanzibar'
    WHEN hotel_id % 20 = 3 THEN 'Tembo House Hotel'
    WHEN hotel_id % 20 = 4 THEN 'Kendwa Rocks Beach Hotel'
    WHEN hotel_id % 20 = 5 THEN 'Nungwi Dreams Resort'
    WHEN hotel_id % 20 = 6 THEN 'Melia Zanzibar'
    WHEN hotel_id % 20 = 7 THEN 'The Mora Zanzibar'
    WHEN hotel_id % 20 = 8 THEN 'Tulia Zanzibar Unique Beach Resort'
    WHEN hotel_id % 20 = 9 THEN 'Diamonds Mapenzi Beach'
    WHEN hotel_id % 20 = 10 THEN 'Sunshine Marine Lodge'
    WHEN hotel_id % 20 = 11 THEN 'Bluebay Beach Resort'
    WHEN hotel_id % 20 = 12 THEN 'Gold Zanzibar Beach House'
    WHEN hotel_id % 20 = 13 THEN 'Baraza Resort and Spa'
    WHEN hotel_id % 20 = 14 THEN 'Essque Zalu Zanzibar'
    WHEN hotel_id % 20 = 15 THEN 'Breezes Beach Club Zanzibar'
    WHEN hotel_id % 20 = 16 THEN 'Madinat Al Bahr Business Hotel'
    WHEN hotel_id % 20 = 17 THEN 'Kisiwa on the Beach'
    WHEN hotel_id % 20 = 18 THEN 'Amaan Bungalows'
    WHEN hotel_id % 20 = 19 THEN 'Mnarani Beach Cottages'
    ELSE 'Royal Zanzibar Beach Resort'
END;
SELECT hotel_id, name, price_per_night
FROM hotels
LIMIT 20;









-- =========================================================
-- MILESTONE 2 : SQL QUERIES FOR MyZanzibar AI PROJECT
-- =========================================================


-- =========================================================
-- QUERY 1 : JOIN QUERY
-- Purpose:
-- Display hotels together with their locations.
-- Concept Used:
-- INNER JOIN
-- =========================================================

SELECT 
    h.hotel_id,
    h.name AS hotel_name,
    l.name AS location,
    h.price_per_night,
    h.rating
FROM hotels h
JOIN locations l
ON h.location_id = l.location_id
ORDER BY h.rating DESC;



-- =========================================================
-- QUERY 2 : GROUP BY QUERY
-- Purpose:
-- Show average hotel rating for each location.
-- Concept Used:
-- GROUP BY + Aggregate Functions
-- =========================================================

SELECT 
    l.name AS location,
    COUNT(h.hotel_id) AS total_hotels,
    ROUND(AVG(h.rating), 2) AS average_rating
FROM hotels h
JOIN locations l
ON h.location_id = l.location_id
GROUP BY l.name
ORDER BY average_rating DESC;



-- =========================================================
-- QUERY 3 : FILTER QUERY
-- Purpose:
-- Find affordable hotels with good ratings.
-- Concept Used:
-- WHERE + ORDER BY
-- =========================================================

SELECT 
    name,
    price_per_night,
    rating
FROM hotels
WHERE price_per_night < 150
ORDER BY rating DESC;



-- =========================================================
-- QUERY 4 : MULTI-TABLE JOIN
-- Purpose:
-- Display reviews together with users and hotels.
-- Concept Used:
-- Multiple INNER JOINs
-- =========================================================

SELECT 
    u.name AS user_name,
    h.name AS hotel_name,
    r.rating,
    r.comment
FROM reviews r
JOIN users u
ON r.user_id = u.user_id
JOIN hotels h
ON r.hotel_id = h.hotel_id
LIMIT 20;



-- =========================================================
-- QUERY 5 : CTE QUERY
-- Purpose:
-- Find the best rated hotels based on review averages.
-- Concept Used:
-- Common Table Expression (CTE)
-- =========================================================

WITH hotel_avg AS (
    SELECT 
        hotel_id,
        AVG(rating) AS avg_rating
    FROM reviews
    GROUP BY hotel_id
)

SELECT 
    h.name,
    ROUND(ha.avg_rating, 2) AS average_rating
FROM hotel_avg ha
JOIN hotels h
ON ha.hotel_id = h.hotel_id
ORDER BY average_rating DESC
LIMIT 10;



-- =========================================================
-- QUERY 6 : WINDOW FUNCTION QUERY
-- Purpose:




-- Rank hotels according to price per night.
-- Concept Used:
-- WINDOW FUNCTION (RANK)
-- =========================================================

SELECT 
    name,
    price_per_night,
    RANK() OVER (ORDER BY price_per_night DESC) AS hotel_rank
FROM hotels;



-- =========================================================
-- QUERY 7 : ACTIVITY ANALYSIS
-- Purpose:
-- Show number of activities in each category.
-- Concept Used:
-- GROUP BY
-- =========================================================

SELECT 
    category,
    COUNT(*) AS total_activities
FROM activities
GROUP BY category
ORDER BY total_activities DESC;



-- =========================================================
-- QUERY 8 : USER TRIP ANALYSIS
-- Purpose:
-- Display users together with their trip budgets.
-- Concept Used:
-- JOIN
-- =========================================================

SELECT 
    u.name AS user_name,
    tp.budget,
    tp.days,
    tp.preferences
FROM trip_plans tp
JOIN users u
ON tp.user_id = u.user_id
ORDER BY tp.budget DESC;



-- =========================================================
-- QUERY 9 : LOCATION POPULARITY
-- Purpose:
-- Count how many hotels exist in each location.
-- Concept Used:
-- GROUP BY
-- =========================================================

SELECT 
    l.name AS location,
    COUNT(h.hotel_id) AS total_hotels
FROM hotels h
JOIN locations l
ON h.location_id = l.location_id
GROUP BY l.name
ORDER BY total_hotels DESC;



-- =========================================================
-- QUERY 10 : TOP RATED RESTAURANTS
-- Purpose:
-- Display highest rated restaurants.
-- Concept Used:
-- ORDER BY + LIMIT
-- =========================================================

SELECT 
    name,
    cuisine,
    rating
FROM restaurants
ORDER BY rating DESC
LIMIT 10;
