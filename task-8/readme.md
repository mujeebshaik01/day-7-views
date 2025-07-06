

# 📁 Task 8: Stored Procedures and Functions

## 🧠 Objective
Learn to modularize and reuse SQL logic using **Stored Procedures** and **Functions** in MySQL.

---

## 🚀 Tools Used
- DB Browser for SQLite *(for general SQL queries — does not support procedures/functions)*
- MySQL Workbench *(for procedure and function execution)*

---

## 📦 Deliverables
- ✅ One stored procedure: `GetBooksByAuthor`
- ✅ One function: `CalculateLateFee`
- ✅ Additional stored procedures for inserts, updates, deletes, and analytics

---

## 🔍 Mini Guide

### 🔧 Stored Procedure Syntax
```sql
CREATE PROCEDURE procedure_name(IN param_name TYPE)
BEGIN
    -- SQL statements
END;


🧮 Function Syntax
CREATE FUNCTION function_name(param_name TYPE)
RETURNS TYPE
BEGIN
    -- logic and RETURN statement
END;



🧬 Examples
📘 Get Books by Author (Procedure)
CALL GetBooksByAuthor('R.K. Narayan');


💸 Calculate Late Fee (Function)
SELECT CalculateLateFee(8);  -- Output: 11.00



🎯 Learning Outcome
By completing this task, you’ll be able to:
- Modularize SQL logic for cleaner, reusable code
- Implement conditional logic within SQL blocks
- Use procedures and functions to simplify app backend queries

