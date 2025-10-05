# Bellabeat-Project

## Case Statement

You are a junior data analyst working on the marketing analyst team at Bellabeat, a high-tech manufacturer of health-focused products for women. Bellabeat is a successful small company, but they have the potential to become a larger player in the global smart device market. Urška Sršen, cofounder and Chief Creative Officer of Bellabeat, believes that analyzing smart device fitness data could help unlock new growth opportunities for the company. You have been asked to focus on one of Bellabeat’s products and analyze smart device data to gain insight into how consumers are using their sma devices. The insights you discover will then help guide marketing strategy for the company. You will present your analysis to the Bellabeat executive team along with your high-level recommendations for Bellabeat’s marketing strategy.


## Tools Used

**MS Excel, SQL, Tableau**

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

<img width="1260" height="542" alt="image" src="https://github.com/user-attachments/assets/c3e2cf41-bc4e-4afe-9ad2-e490e8c38057" />

**Types of users based on sleep**

1. Insufficient Sleeper: sleep less than 7 hours
2. Sufficient Sleeper: sleep more than 7 hours

<img width="290" height="120" alt="image" src="https://github.com/user-attachments/assets/8252e4c1-cead-4160-8835-f0f79eb79be2" />

<img width="1254" height="546" alt="image" src="https://github.com/user-attachments/assets/3188dd30-4abb-43cf-8ae0-04194a0df281" />


**Comparing user types by joing activity type and sleep type**

Inner join is performed on of User ID column

<img width="768" height="292" alt="image" src="https://github.com/user-attachments/assets/f01f8ad6-b847-42fc-9c1f-7e7d133bd40d" />

The analysis indicates that 'insufficient sleep' is associated with 'active' and 'sedentary' activity users and sufficient sleep is associated with 'somewhat active' activity users

** Activity peaks in a day**

We have calculated activity level per hour in a day by using Horly Steps table. To do this we have aggregated average step counts for each hour over a period of 31 days.

<img width="331" height="153" alt="image" src="https://github.com/user-attachments/assets/5ea4e396-9d59-458e-8ae2-97e8552e9791" />

<img width="680" height="564" alt="image" src="https://github.com/user-attachments/assets/6e44b03c-2526-4039-aa1f-6545631a843b" />

The average step count varies from 0 to 600 in a day, with peak obsereved at 6:00 PM.
Also, the step count remains high in the time period from 8:00 AM to 8:00 PM. This suggests that the consumers are working professionals.

**Analyze using Usage pattern**

*Monthly Usage*

We have divided usage frequency within a month in 3 categories:
1. Infriquent Users - Uses less than 10 days within a month
2. Moderate Users - Uses 10 - 20 days within a month
3. Frequent Users - More than 20 days within a month

<img width="353" height="144" alt="image" src="https://github.com/user-attachments/assets/e61efb45-d232-4519-8f57-24444d8a4447" />

<img width="827" height="699" alt="image" src="https://github.com/user-attachments/assets/7543054c-d71e-4c61-8de7-af2669bef85d" />


*Daily Usage*

We have divided usage frequency within a day in 3 categories:
1. Less than half day - Uses less than 12 hours a day
2. More than half day - Uses 12-24 hours a day
3. Allday - Uses 24 hours a day

<img width="325" height="151" alt="image" src="https://github.com/user-attachments/assets/5ceee380-2afb-4c52-9dcd-5f206826e663" />

<img width="1014" height="410" alt="image" src="https://github.com/user-attachments/assets/9736bbb6-881f-4431-8e4d-43928527cbb5" />

<img width="1282" height="559" alt="image" src="https://github.com/user-attachments/assets/bfe54547-bb34-4b9b-8308-3c483e74d2f5" />

## Recommendations

**Target Customers:**

Based on our analysis, we have identified that Fitbit's primary customer base consists of working-class individuals who typically work 9-6 jobs. To expand our reach, Bellabeat can explore the preferences of other customer categories and introduce an application program tailored to their needs. 

1. The device features:
We should more focus on underused features of our competitors, we can conduct research on the sleep monitoring, heart rate monitoring, and weight monitoring capabilities of smart devices. By exploring innovative ideas, we can enhance these features and create devices that offer unique advantages and more userfriendly. 

2. Gamification:
Gaming and reward system could make it more entertaining to start a healthy lifestyle. Bellabeat counle introduce a system where users get reward points as their activity level increases. These reward points could then be used for benefits provided by Bellabeat.
