-- Security Audit Lab: Database Schema and Mock Data
-- Use this script to set up a testing environment for security analysis.

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    user_role VARCHAR(20) DEFAULT 'user', -- 'superuser', 'admin', 'user'
    account_status VARCHAR(10) DEFAULT 'active', -- 'active', 'locked'
    last_login_at TIMESTAMP
);

CREATE TABLE login_logs (
    log_id INT PRIMARY KEY,
    user_id INT,
    status VARCHAR(10), -- 'SUCCESS', 'FAILED'
    ip_address VARCHAR(45),
    event_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Seeding data for auditing practice
INSERT INTO users (user_id, username, user_role, last_login_at) VALUES 
(1, 'admin_root', 'superuser', '2025-12-01 10:00:00'),
(2, 'l-esquivel', 'security_analyst', '2026-04-29 09:00:00'),
(3, 'guest_user', 'user', '2026-04-20 15:45:00');

INSERT INTO login_logs (log_id, user_id, status, ip_address, event_time) VALUES 
(101, 1, 'FAILED', '192.168.1.100', '2026-04-29 10:05:00'),
(102, 1, 'FAILED', '192.168.1.100', '2026-04-29 10:05:30'),
(103, 1, 'FAILED', '192.168.1.100', '2026-04-29 10:06:00'),
(104, 1, 'FAILED', '192.168.1.100', '2026-04-29 10:06:45'),
(105, 1, 'FAILED', '192.168.1.100', '2026-04-29 10:07:10');
