# Bank Loan Analysis using SQL and Tableau
![image](https://github.com/user-attachments/assets/bf38e39b-803d-4d3f-9888-496b727f0b55)


**Problem Statement** - Need to create a Bank Loan Report to track and evaluate our lending activities. This report will give us key loan metrics, show changes over time, and help us make informed decisions about loan portfolio and strategies.

**Key Performance Indicators (KPIs) Requirements**:

Total Loan Applications: Count the total loan applications received in a specified period. Track the applications for the current month (MTD) and compare them month-over-month (MoM).
Total Funded Amount: Calculate the total amount of loans disbursed. Monitor the MTD funded amount and compare it MoM.
Total Amount Received: Track total repayments from borrowers. Analyze the MTD received amount and compare it MoM.
Average Interest Rate: Determine the average interest rate on all loans, MTD, and monitor MoM changes.
Average Debt-to-Income Ratio (DTI): Evaluate the average DTI of borrowers, MTD, and track MoM fluctuations.

Good Loan vs. Bad Loan KPIs:
Good Loan KPIs:
Good Loan Application Percentage: Percentage of applications classified as 'Good Loans' (Fully Paid and Current status).
Good Loan Applications: Total number of 'Good Loans' applications (Fully Paid and Current status).
Good Loan Funded Amount: Total amount disbursed for 'Good Loans' (Fully Paid and Current status).
Good Loan Total Received Amount: Total repayments received for 'Good Loans' (Fully Paid and Current status).

Bad Loan KPIs:
Bad Loan Application Percentage: Percentage of applications classified as 'Bad Loans' (Charged Off status).
Bad Loan Applications: Total number of 'Bad Loans' applications (Charged Off status).
Bad Loan Funded Amount: Total amount disbursed for 'Bad Loans' (Charged Off status).
Bad Loan Total Received Amount: Total repayments received for 'Bad Loans' (Charged Off status).

Loan Status Grid View:
Create a grid view report by loan status to monitor performance, including metrics like Total Loan Applications, Total Funded Amount, Total Amount Received, MTD Funded Amount, MTD Amount Received, Average Interest Rate, and Average DTI. This will help us make data-driven decisions and assess the loan portfolio's health.

I utilized Microsoft SQL Server and Tableau to identify key performance indicators (KPIs) and present them in comprehensive dashboards.

# Conclusions:
Based on the analysis using the provided KPIs, several important conclusions about the bank's lending activities and overall performance:

Loan Applications and Funded Amounts:
The bank received a total of 33.6k loan applications.
Out of these applications, a total of $376 million was funded.
Amount Received:
The bank has received $407.9 million from borrowers, indicating healthy repayment behaviors.
Interest Rates:
The average interest rate across all loans is 12.10%, which impacts the overall profitability and attractiveness of the loan products to borrowers.
Debt-to-Income Ratio (DTI):
The average DTI of 13.10% suggests that borrowers generally have a manageable level of debt relative to their income, implying good creditworthiness.
Loan Quality:
A significant proportion of loans issued are classified as 'Good Loans' at 86.20%, whereas 'Bad Loans' constitute 14.40%. This indicates a relatively strong loan portfolio with a higher rate of successful loans.
Profit Analysis:

To calculate the bank's profit from the given loan data, we need to consider the total interest earned on the funded loans. Assuming the average interest rate (12.10%) is applied to the total funded amount ($376 million), the profit calculation can be simplified as follows:

Total Interest Earned = Total Funded Amount * Average Interest Rate
Total Interest Earned = $376 million * 12.10%
Total Interest Earned ≈ $45.496 million
Therefore, the bank's profit from the interest on the loans, assuming all loans earn interest and no other costs or losses are factored in, is approximately $45.496 million.

This simplified analysis does not account for operating expenses, loan defaults beyond the 'Bad Loans' classification, or other financial factors, but it provides a basic estimate of the interest-based profit from the funded loans.












