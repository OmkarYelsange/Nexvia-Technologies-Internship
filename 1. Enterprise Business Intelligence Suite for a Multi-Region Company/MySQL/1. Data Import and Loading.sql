CREATE DATABASE hr_analytics;

USE hr_analytics;

SHOW TABLES;

SELECT * FROM epa
LIMIT 10;

SELECT COUNT(*) FROM epa;

USE hr_analytics;

ALTER TABLE epa
    RENAME COLUMN ï»¿Age TO age,
    RENAME COLUMN Attrition TO attrition,
    RENAME COLUMN BusinessTravel TO business_travel,
    RENAME COLUMN DailyRate TO daily_rate,
    RENAME COLUMN Department TO department,
    RENAME COLUMN DistanceFromHome TO distance_from_home,
    RENAME COLUMN Education TO education,
    RENAME COLUMN EducationField TO education_field,
    RENAME COLUMN EmployeeCount TO employee_count,
    RENAME COLUMN EmployeeNumber TO employee_number,
    RENAME COLUMN EnvironmentSatisfaction TO environment_satisfaction,
    RENAME COLUMN Gender TO gender,
    RENAME COLUMN HourlyRate TO hourly_rate,
    RENAME COLUMN JobInvolvement TO job_involvement,
    RENAME COLUMN JobLevel TO job_level,
    RENAME COLUMN JobRole TO job_role,
    RENAME COLUMN JobSatisfaction TO job_satisfaction,
    RENAME COLUMN MaritalStatus TO marital_status,
    RENAME COLUMN MonthlyIncome TO monthly_income,
    RENAME COLUMN MonthlyRate TO monthly_rate,
    RENAME COLUMN NumCompaniesWorked TO num_companies_worked,
    RENAME COLUMN Over18 TO over_18,
    RENAME COLUMN OverTime TO over_time,
    RENAME COLUMN PercentSalaryHike TO percent_salary_hike,
    RENAME COLUMN PerformanceRating TO performance_rating,
    RENAME COLUMN RelationshipSatisfaction TO relationship_satisfaction,
    RENAME COLUMN StandardHours TO standard_hours,
    RENAME COLUMN StockOptionLevel TO stock_option_level,
    RENAME COLUMN TotalWorkingYears TO total_working_years,
    RENAME COLUMN TrainingTimesLastYear TO training_times_last_year,
    RENAME COLUMN WorkLifeBalance TO work_life_balance,
    RENAME COLUMN YearsAtCompany TO years_at_company,
    RENAME COLUMN YearsInCurrentRole TO years_in_current_role,
    RENAME COLUMN YearsSinceLastPromotion TO years_since_last_promotion,
    RENAME COLUMN YearsWithCurrManager TO years_with_curr_manager;