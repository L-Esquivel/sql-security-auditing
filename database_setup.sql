-- Database simulation for Security Auditing
CREATE TABLE users (
    id INT PRIMARY KEY,
    username VARCHAR(50),
    role VARCHAR(20),
    last_login TIMESTAMP
);

CREATE TABLE access_logs (
    log_id INT PRIMARY KEY,
    user_id INT,
    login_attempt_status VARCHAR(10), -- 'SUCCESS' or 'FAILED'
    ip_address VARCHAR(45),
    attempt_time TIMESTAMP
);

-- Simulating some data
INSERT INTO users VALUES (1, 'admin', 'superuser', '2026-04-29 10:00:00');
INSERT INTO users VALUES (2, 'l-esquivel', 'analyst', '2026-04-29 09:30:00');
