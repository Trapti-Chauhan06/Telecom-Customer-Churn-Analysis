create database telecom;
use telecom;
# Retrieve all data
Select * from churn;
# Total Churn Customers
Select count(*) from churn where churn ="Yes";
# Average Monthly Charge
Select AVG(MonthlyCharges)
from churn;
# Average Tenure
Select AVG(Tenure) 
from churn;
# Contract wise Churn
Select Contract, count(*) from churn where churn ="Yes"
GROUP BY Contract;
# Payment Method Analysis
Select PaymentMethod, count(*) As Total_Customers from churn GROUP BY PaymentMethod;
# Internet Service Analysis
Select InternetService, count(*) As Total_Customers from churn
GROUP BY InternetService;
# Senior Citizen Analysis
Select SeniorCitizen, count(*) As Total_Customers from churn
GROUP BY SeniorCitizen;
# Monthly Charges by Churn
Select Churn, AVG(MonthlyCharges) As Avg_Monthly_Charges
from churn
GROUP BY Churn;
# Top Customers Segments
SELECT
CASE
    when Churn='No' AND tenure>=24 THEN 'Loyal'
    when Churn='Yes' AND tenure<12 THEN 'At Risk'
    else 'Dormant'
END AS Customer_Segment,
count(*) AS Total_Customers
from churn
GROUP BY Customer_Segment;



