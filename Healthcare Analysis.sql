## Patient Demographics Questions:

1. What is the average of patients by gender?

SELECT gender, COUNT(*) total_patients
FROM patients
GROUP BY gender;

2. How many patients have each blood type?

SELECT blood_type, COUNT(*)
FROM patients 
GROUP BY blood_type;

## Hospital and Doctor Performance Questions:

3. Which hospital has the highest number of admitted patients?

SELECT hospital, COUNT(*) highest_num_patients
FROM patients 
GROUP BY hospital
ORDER BY highest_num_patients desc
LIMIT 1;

4. What is the average length of stay per hospital or doctor?

## Per Hospital
  SELECT hospital, ROUND(AVG((discharge_date) - (date_of_admission))) as length_of_stay
  FROM patients
  GROUP BY hospital;
## Per Doctor
  SELECT doctor, ROUND(AVG((discharge_date) - (date_of_admission))) as length_of_stay
  FROM patients
  GROUP BY doctor; 

## Billing and Insurance Questions:

5. What is the average billing amount per insurance provider?

SELECT insurance_provider, AVG(billing_amount)
FROM patients
GROUP BY insurance_provider;
