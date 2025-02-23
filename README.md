# Pewlett-Hackard-Analysis
This is where we observe retirement elligibility for employees working at Pewlett-Hackard. 

# Overview
Pwelett_Hackard is a software company who has a numerous amount of employees about to retire from the company. We need to determine the number of retiring employees per title and look for employees who are eligible to enter in a mentorship program. Then, we give out solutions to the manager of Pwelett_Hackard for the upcoming "silver tsunami". The tool to conduct this project is pgAdmin, a software that enables us to write, and compile code in Standard Query Language (SQL).  

# Results 
The first set of data to obeserve is data collected from employees born between January 1, 1952 and December 31, 1955. There are some employees that have multiple titles in the database, which led us to refine the query creating a table that has the most recent job title for each empoloyee. Also, we count the number of retiremenent-age employees and eliminating the employees who have left the company. The SQL code to create this table is included in the file "Employee_Data_challenge.sql". Here is the first ten rows of the table created using said code. 


<img width="670" alt="Screen Shot 2022-07-31 at 8 39 05 AM" src="https://user-images.githubusercontent.com/104328106/182031506-7610a773-c559-463b-88bb-0d1d84b5b96a.png">


The next table shows the count of employees with respect to each employees job titles. Here is the count of employees shown below. 

<img width="296" alt="Screen Shot 2022-07-31 at 9 00 06 AM" src="https://user-images.githubusercontent.com/104328106/182032397-52863e41-000e-4fc9-ad4d-dbdfc944a0a0.png">

From the tables, here is what we gathered about the empolyees working for Pewlett_Hackard. 
* There is a total of 133,776 employees working for Pewlwtt-Hackard that is retirement-age. This is a exaggerated number of employees that is eligible for retirement. This presents oppurtunities for people seeking jobs to work for Pewlett-Hackard. 
* There are 25,916 employees that are retirement-age whose last title is a Senior Engineer. This job will be in high demand at Pewlett-Hackard. 
* There are 2 employees at retirement-age who are managers, leading to a low demand of mangerial positions at Pewlett-Hackard.  
* There are a total of 27% of workers who are engineers at retirement age, while 24% of the retirement-age workers are Staff workers. 


The next group of data to observe is the empolyees who are qualified to obtain mentorship eligibility. The code to generate this table is in the file "Employee_Data_challenge.sql". Here is the table generated by said code shown below. 

<img width="957" alt="Screen Shot 2022-07-31 at 9 33 45 AM" src="https://user-images.githubusercontent.com/104328106/182033839-4af31786-4e7b-4d64-891e-480fba87fb4d.png">

In further detail, here is the count of employees who are able to obtain mentorship-eligibility from the company sorted by job titles.

<img width="299" alt="Screen Shot 2022-07-31 at 9 40 25 AM" src="https://user-images.githubusercontent.com/104328106/182034113-31437352-db50-4ca2-8073-59a905ef4cff.png">

From these data tables generated, this is the information we have gathered. 

* There are 1,549 employees who can obatin mentorship eligibility from the company. This is a low amount of employees in comparison to the total number of employees at retirement-age. 
* There are 577 employees who are eligible for a metorship program from the company. 
* There are 44% of employees who have seinor roles that are able to obtain a mentorship program eligibility. 
* What is interesting is the total number of engineers is less than the total number of staff positions meeting mentorship-program eligibility. This is because the amount of information given from senior to junior employees could be overwhelming, depending on the job title. 


# Summary 
In Pewlett-Hackard, we need to address how to solve the issue regarding with the "silver tsunami". There are 72,458 workers currenly employed by Pewlett-Hackard who are retirement-age. Here is a refined query of the current retirement-age employees. 

<img width="964" alt="Screen Shot 2022-07-31 at 2 05 03 PM" src="https://user-images.githubusercontent.com/104328106/182043254-7ee58f7b-9cad-40a9-9fc9-606db65d494c.png">

However, the total number of employees that can maintain a mentorship-program eligibility are 1,549 employees. This is not enough number of employees to mentor the next generation of new employees.

