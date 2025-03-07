SELECT * FROM main LIMIT 10;

SELECT 
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM MAIN;

#Churn Rate by Gender


SELECT 
    gender,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM MAIN
GROUP BY gender;

#Senior Citizen Churn Rate
SELECT 
    SeniorCitizen,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM MAIN
GROUP BY SeniorCitizen;

#Churn rate by contract Type
SELECT 
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM MAIN
GROUP BY Contract
ORDER BY churn_rate DESC;

#Churn by monthly Charges
SELECT 
    CASE 
        WHEN MonthlyCharges < 30 THEN 'Low (<30)'
        WHEN MonthlyCharges BETWEEN 30 AND 60 THEN 'Medium (30-60)'
        WHEN MonthlyCharges > 60 THEN 'High (>60)'
    END AS monthly_charge_range,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM MAIN
GROUP BY monthly_charge_range
ORDER BY churn_rate DESC;

#Churn By Tenure
SELECT 
    CASE 
        WHEN tenure < 12 THEN 'Less than 1 year'
        WHEN tenure BETWEEN 12 AND 24 THEN '1-2 years'
        WHEN tenure > 24 THEN 'More than 2 years'
    END AS tenure_range,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM MAIN
GROUP BY tenure_range
ORDER BY churn_rate DESC;

#Churn by ISP

SELECT 
    InternetService,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM MAIN
GROUP BY InternetService
ORDER BY churn_rate DESC;

#Churn by payment method
SELECT 
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM MAIN
GROUP BY PaymentMethod
ORDER BY churn_rate DESC;

#Churn by Dependents
SELECT 
    Dependents,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM MAIN
GROUP BY Dependents
ORDER BY churn_rate DESC;

#Churn rate by partner (1/0)
SELECT 
    Partner,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate
FROM MAIN
GROUP BY Partner
ORDER BY churn_rate DESC;