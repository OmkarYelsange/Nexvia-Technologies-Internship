USE hr_analytics;

SELECT COUNT(*) AS total_employees
FROM epa;

SELECT COUNT(DISTINCT employee_number) AS unique_employees
FROM epa;

SELECT attrition, COUNT(*) AS employee_count
FROM epa
GROUP BY attrition;

SELECT
    SUM(attrition IS NULL) AS missing_attrition,
    SUM(employee_number IS NULL) AS missing_employee_id,
    SUM(monthly_income IS NULL) AS missing_monthly_income
FROM epa;

SELECT employee_number, COUNT(*) AS occurrences
FROM epa
GROUP BY employee_number
HAVING COUNT(*) > 1;


# overall attrition rate
SELECT
    COUNT(*) AS total_employees,
    SUM(attrition = 'Yes') AS employees_left,
    SUM(attrition = 'No') AS employees_retained,
    ROUND(
        100.0 * SUM(attrition = 'Yes') / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM epa;


# attrition by department
SELECT
    department,
    COUNT(*) AS employee_count,
    SUM(attrition = 'Yes') AS employees_left,
    ROUND(
        100.0 * SUM(attrition = 'Yes') / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM epa
GROUP BY department
ORDER BY attrition_rate_pct DESC;


# overtime comparison
SELECT
    over_time,
    COUNT(*) AS employee_count,
    SUM(attrition = 'Yes') AS employees_left,
    ROUND(
        100.0 * SUM(attrition = 'Yes') / COUNT(*),
        2
    ) AS attrition_rate_pct
FROM epa
GROUP BY over_time
ORDER BY attrition_rate_pct DESC;


# salary gap
SELECT
    attrition,
    COUNT(*) AS employee_count,
    ROUND(AVG(monthly_income), 2) AS avg_monthly_income,
    ROUND(AVG(years_at_company), 2) AS avg_tenure,
    ROUND(AVG(job_satisfaction), 2) AS avg_job_satisfaction
FROM epa
GROUP BY attrition;