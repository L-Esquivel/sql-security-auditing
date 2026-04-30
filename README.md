# SQL Security Auditing & Threat Hunting 📊

This repository demonstrates how to use SQL for cybersecurity auditing, forensic data analysis, and proactive threat detection.

## 🛡️ Project Overview
In a real-world Security Operations Center (SOC), analysts query large databases (SIEMs) to find traces of malicious activity. This project simulates that environment by:
1. Setting up a relational database with users and access logs.
2. Executing targeted queries to find brute-force attacks and privilege escalation.

## 📁 Repository Structure
- **/setup**: Contains `database_setup.sql` to initialize the testing environment.
- **/scripts**: Contains `security_queries.sql` with documented auditing queries.

## 🔍 Key Security Queries
- **Brute Force Detection**: Identifying IPs with high failure rates.
- **Privileged Account Audit**: Monitoring 'superuser' activity and stale accounts.
- **Time-Based Analysis**: Detecting logins during unusual hours (non-business hours).

## 🛠️ How to Use
1. Run the script in `/setup` to create the mock database.
2. Execute the queries in `/scripts` to see the audit results.
