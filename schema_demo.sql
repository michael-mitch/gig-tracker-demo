-- ================================
-- Gig-Tracker (Demo Version)
-- Simplified Schema for Portfolio
-- ================================

CREATE DATABASE gig_tracker_demo;
USE gig_tracker_demo;

-- -------------------------------
-- 1. Platforms Table
-- -------------------------------
CREATE TABLE platforms (
    platform_id INT AUTO_INCREMENT PRIMARY KEY,
    platform_name VARCHAR(50) NOT NULL,
    category VARCHAR(50) NULL
);

-- -------------------------------
-- 2. Gigs Table
-- -------------------------------
CREATE TABLE gigs (
    gig_id INT AUTO_INCREMENT PRIMARY KEY,
    platform_id INT NOT NULL,
    gig_date DATE NOT NULL,
    description VARCHAR(255),
    income DECIMAL(10,2) DEFAULT 0.00,
    expenses DECIMAL(10,2) DEFAULT 0.00,
    mileage DECIMAL(10,2) DEFAULT 0.00,
    FOREIGN KEY (platform_id) REFERENCES platforms(platform_id)
);

-- -------------------------------
-- 3. Tags (Optional Feature)
-- -------------------------------
CREATE TABLE tags (
    tag_id INT AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(50) NOT NULL
);

CREATE TABLE gig_tags (
    gig_id INT NOT NULL,
    tag_id INT NOT NULL,
    PRIMARY KEY (gig_id, tag_id),
    FOREIGN KEY (gig_id) REFERENCES gigs(gig_id),
    FOREIGN KEY (tag_id) REFERENCES tags(tag_id)
);
