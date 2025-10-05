# Bellabeat-Project

## Case Statement

You are a junior data analyst working on the marketing analyst team at Bellabeat, a high-tech manufacturer of health-focused products for women. Bellabeat is a successful small company, but they have the potential to become a larger player in the global smart device market. Urška Sršen, cofounder and Chief Creative Officer of Bellabeat, believes that analyzing smart device fitness data could help unlock new growth opportunities for the company. You have been asked to focus on one of Bellabeat’s products and analyze smart device data to gain insight into how consumers are using their sma devices. The insights you discover will then help guide marketing strategy for the company. You will present your analysis to the Bellabeat executive team along with your high-level recommendations for Bellabeat’s marketing strategy.

## Data Source

**Kaggle**
FitBit Fitness Tracker Data - https://www.kaggle.com/datasets/arashnic/fitbit

## Preparation of Data

**Summary of Data**

The Kaggle database contains a lot of information, comprising of eighteen different files, each detailing various aspects of activity, such as steps, intensity, calories burned, sleep patterns, heart rate and weight, among other metrics. The data pertains to approximately 33 total Fitbit users and covers a two-month period in 2016.

**Limitation of Data**

1. Data has only two months of records and it is recorded in 2016, we can say it is out-dated
2. User participation is inconsistent, few data have only below 30 IDs recorded
3. The sample size is too small, considering FitBit has approximately 30 million users.
4. Formatting issues present in each CSV file.
5. Duplicate entries present in 2 file.

Formatting is corrected in Excel. Analysis of Data is done in SQL and visualization is done in Tableau.

## Analysis and Visualization of Data

For the purpose of analyzing Customer behavior with the Data we have considered 3 Data sources only. This is because these tables containes relatively comprehensive data for our analysis.

1. *Daily Activity*
2. *Daily Sleep*
3. *Hourly Steps*

Daily SLeep has only 24 participants where as Daily Activity and Hourly Steps has 33 participants.
There are 3 duplicate entries present in Daily sleep table which has been deleted.

**Types of Users based on Activity level**

Average step count varies significantly, ranging from 916 steps per day to 16040 steps per day.

Based on this participants are divided into 4 categories - 
1. Sedentary: Less than 5000 steps daily
2. Low Active: About 5000 to 7499 daily
3. Somewhat Active: Abount 7500 to 10000 daily
4. Active: More than 10000 steps daily

<img width="232" height="170" alt="image" src="https://github.com/user-attachments/assets/1d3b7a54-15f7-443a-8e50-75beadfaa524" />

**Types of users based on sleep**

1. Insufficient Sleeper: sleep less than 7 hours
2. Sufficient Sleeper: sleep more than 7 hours

<img width="290" height="120" alt="image" src="https://github.com/user-attachments/assets/8252e4c1-cead-4160-8835-f0f79eb79be2" />

**Comparing user types by joing activity type and sleep type**

Inner join is performed on of User ID column

<img width="768" height="292" alt="image" src="https://github.com/user-attachments/assets/f01f8ad6-b847-42fc-9c1f-7e7d133bd40d" />

The analysis indicates that 'insufficient sleep' is associated with 'active' and 'sedentary' activity users and sufficient sleep is associated with 'somewhat active' activity users

** Activity peaks in a day**

We have calculated activity level per hour in a day by using Horly Steps table. To do this we have aggregated average step counts for each hour over a period of 31 days.

<img width="331" height="153" alt="image" src="https://github.com/user-attachments/assets/5ea4e396-9d59-458e-8ae2-97e8552e9791" />

<img width="680" height="564" alt="image" src="https://github.com/user-attachments/assets/6e44b03c-2526-4039-aa1f-6545631a843b" />

The average step count varies from 0 to 600 in a day, with peak obsereved at 6:00 PM.




