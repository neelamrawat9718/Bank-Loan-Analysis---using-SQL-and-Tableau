select * from financial_loan

select count(id)as MTD_total_loan_applications from financial_loan
where month(issue_date)=12

select count(id)as PMTD_total_loan_applications from financial_loan
where month(issue_date)=11

Select sum(loan_amount) as total_funded_amount from financial_loan

Select sum(loan_amount) as month_total_funded_amount from financial_loan
where month(issue_date)=12

Select sum(loan_amount) as PMTD_total_funded_amount from financial_loan
where month(issue_date)=11

SELECT SUM(total_payment) as total_amount_received from financial_loan

SELECT SUM(total_payment) as MTD_total_amount_received from financial_loan
where month(issue_date)=12

SELECT SUM(total_payment) as PMTD_total_amount_received from financial_loan
where month(issue_date)=11

SELECT round(AVG(int_rate),4)*100 as average_interest_rate from financial_loan;

SELECT round(AVG(int_rate),4)*100 as MTD_average_interest_rate from financial_loan
where month(issue_date)=12

SELECT round(AVG(int_rate),4)*100 as PMTD_average_interest_rate from financial_loan
where month(issue_date)=11

SELECT round(AVG(dti),4)*100 as avg_DTI from financial_loan;

SELECT round(AVG(dti),4)*100 as MTD_avg_DTI from financial_loan
where month(issue_date)=12

SELECT round(AVG(dti),4)*100 as PMTD_avg_DTI from financial_loan
where month(issue_date)=11

Select 
(count(case when loan_status ='Fully Paid' or loan_status ='Current' then id end)*100)
/
count(id) as good_loan_percentage
from financial_loan

Select count(id) as good_loan_application from financial_loan
where loan_status = 'Current' or loan_status = 'Fully Paid'

Select sum(loan_amount) as good_loan_received from financial_loan
where loan_status = 'Current' or loan_status = 'Fully Paid'

Select 
(count(case when loan_status ='Charged Off'then id end)*100)
/
count(id) as bad_loan_percentage
from financial_loan

Select count(id) as bad_loan_application from financial_loan
where loan_status = 'Charged Off'

Select sum(loan_amount) as bad_loan_funded_amt from financial_loan
where loan_status = 'Charged Off'

SELECT SUM(total_payment) AS Bad_Loan_amount_received FROM financial_loan
WHERE loan_status = 'Charged Off'

SELECT
        loan_status,
        COUNT(id) AS LoanCount,
        SUM(total_payment) AS Total_Amount_Received,
        SUM(loan_amount) AS Total_Funded_Amount,
        AVG(int_rate * 100) AS Interest_Rate,
        AVG(dti * 100) AS DTI
    FROM
       financial_loan
    GROUP BY
        loan_status

		SELECT 
	loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM financial_loan
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status

SELECT 
	MONTH(issue_date) AS Month_number, 
	DATENAME(MONTH, issue_date) AS Month_name, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY  MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date)

SELECT 
	address_state AS State, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY address_state
ORDER BY address_state


SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY term
ORDER BY term

SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY emp_length
ORDER BY emp_length

SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY purpose
ORDER BY purpose

SELECT 
home_ownership AS Home_Ownership, 
COUNT(id) AS Total_Loan_Applications,
SUM(loan_amount) AS Total_Funded_Amount,
SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
GROUP BY home_ownership
ORDER BY home_ownership

SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM financial_loan
WHERE grade = 'A'
GROUP BY purpose
ORDER BY purpose





