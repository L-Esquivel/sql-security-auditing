-- --- Security Audit Queries ---

-- 1. DETECT BRUTE FORCE ATTACKS
-- Identifies IP addresses with more than 3 failed attempts in the logs.
SELECT ip_address, COUNT(*) AS total_failed_attempts
FROM login_logs
WHERE status = 'FAILED'
GROUP BY ip_address
HAVING COUNT(*) > 3;

-- 2. PRIVILEGED ACCOUNT MONITORING
-- Lists all superusers who have not logged in for more than 90 days.
SELECT username, user_role, last_login_at
FROM users
WHERE user_role = 'superuser' 
AND last_login_at < (CURRENT_DATE - INTERVAL '90 days');

-- 3. UNUSUAL ACTIVITY CHECK
-- Checks for logins during non-business hours (Example: between 11 PM and 5 AM).
SELECT u.username, l.ip_address, l.event_time
FROM login_logs l
JOIN users u ON l.user_id = u.user_id
WHERE EXTRACT(HOUR FROM l.event_time) BETWEEN 23 AND 5;
