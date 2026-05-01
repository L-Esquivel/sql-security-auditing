# SQL Security Auditing & Digital Forensics Toolkit

**SQL Scripts and Database Schemas for Security Auditing, Threat Hunting, and Digital Forensics**

Repository containing SQL queries and database models focused on detecting suspicious database activity, auditing access, and supporting forensic investigations.

### 🎯 Objective
Enable security analysts and DBAs to proactively hunt threats, audit user activity, and investigate security incidents directly at the database level.

### ✨ Key Features
- User access and privilege auditing queries
- Detection of anomalous login patterns
- Data modification and sensitive table monitoring
- Forensic timeline reconstruction scripts
- Compliance audit reports (GDPR, ISO 27001 style)
- Sample vulnerable schema for training purposes

### 🛠️ Technologies
- SQL (PostgreSQL / MySQL compatible)
- Advanced SQL techniques (Window functions, CTEs)
- Database logging and audit features
- Python integration examples (optional)

### 🚀 How to Use

```sql
-- Run security audit
SELECT * FROM audit_user_privileges();

-- Detect suspicious activity
SELECT * FROM detect_anomalous_logins();

-- Generate compliance report
CALL generate_security_audit_report();
---
*This repository is part of a specialized portfolio in IT Operations and Cybersecurity, demonstrating the ability to build custom security tooling*.
