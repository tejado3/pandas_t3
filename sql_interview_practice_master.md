# SQL Interview Practice Pack

This pack was generated from the attached PDF. The PDF header says **300** questions, but the source text actually contains **335 distinct question blocks** because the ranges **21–25, 31–35, 41–45, 51–55, 61–65, 71–75, and 81–85** each appear twice with different content. To avoid dropping real material, this pack preserves all 335 extracted blocks in appearance order.

Where the PDF SQL was truncated, dialect-specific, or internally inconsistent, the **Extracted Questions and SQL** section preserves the recovered source as-is, and the **Databricks Python Version** section explicitly flags any inference used to make a runnable Databricks version.

## A. Table of Contents

1. [PDF 1] Find the second highest salary from the Employee table.
2. [PDF 2] Find duplicate records in a table.
3. [PDF 3] Retrieve employees who earn more than their manager.
4. [PDF 4] Count employees in each department having more than 5 employees.
5. [PDF 5] Find employees who joined in the last 6 months.
6. [PDF 6] Get departments with no employees.
7. [PDF 7] Write a query to find the median salary.
8. [PDF 8] Running total of salaries by department.
9. [PDF 9] Find the longest consecutive streak of daily logins for each user.
10. [PDF 10] Recursive query to find the full reporting chain for each employee.
11. [PDF 11] Write a query to find gaps in a sequence of numbers (missing IDs).
12. [PDF 12] Calculate cumulative distribution (CDF) of salaries.
13. [PDF 13] Compare two tables and find rows with differences in any column (all columns).
14. [PDF 14] Write a query to rank employees based on salary with ties handled properly.
15. [PDF 15] Find customers who have not made any purchase.
16. [PDF 16] Write a query to perform a conditional aggregation (count males and females in each department).
17. [PDF 17] Write a query to calculate the difference between current row and previous row's salary (lag function).
18. [PDF 18] Identify overlapping date ranges for bookings.
19. [PDF 19] Write a query to find employees with salary greater than average salary in the entire company, ordered by salary descending.
20. [PDF 20] Aggregate JSON data (if supported) to list all employee names in a department as a JSON array.
21. [PDF 21a] Find employees who have the same salary as their manager.
22. [PDF 22a] Write a query to get the first and last purchase date for each customer.
23. [PDF 23a] Find departments with the highest average salary.
24. [PDF 24a] Write a query to find the number of employees in each job title.
25. [PDF 25a] Find employees who don’t have a department assigned.
26. [PDF 21b] Write a query to find the difference in days between two dates in the same table.
27. [PDF 22b] Calculate the moving average of salaries over the last 3 employees ordered by hire date.
28. [PDF 23b] Find the most recent purchase per customer using window functions.
29. [PDF 24b] Detect hierarchical depth of each employee in the org chart.
30. [PDF 25b] Write a query to perform a self-join to find pairs of employees in the same department.
31. [PDF 26] Write a query to pivot rows into columns dynamically (if dynamic pivot is not supported, simulate it for fixed values).
32. [PDF 27] Find customers who made purchases in every category available.
33. [PDF 28] Identify employees who haven’t received a salary raise in more than a year.
34. [PDF 29] Write a query to rank salespeople by monthly sales, resetting the rank every month.
35. [PDF 30] Calculate the percentage change in sales compared to the previous month for each product.
36. [PDF 31a] Find employees who earn more than the average salary across the company but less than the highest salary in their department.
37. [PDF 32a] Retrieve the last 5 orders for each customer.
38. [PDF 33a] Find employees with no salary changes in the last 2 years.
39. [PDF 34a] Find the department with the lowest average salary.
40. [PDF 35a] List employees whose names start and end with the same letter.
41. [PDF 31b] Write a query to detect circular references in employee-manager hierarchy (cycles).
42. [PDF 32b] Write a query to get the running total of sales per customer, ordered by sale date.
43. [PDF 33b] Find the department-wise salary percentile (e.g., 90th percentile) using window functions.
44. [PDF 34b] Find employees whose salary is a prime number.
45. [PDF 35b] Find employees who have worked for multiple departments over time.
46. [PDF 36] Use window function to find the difference between current row’s sales and previous row’s sales partitioned by product.
47. [PDF 37] Write a query to find all employees who are at the lowest level in the hierarchy (no subordinates).
48. [PDF 38] Find average order value per month and product category.
49. [PDF 39] Write a query to create a running count of how many employees joined in each year.
50. [PDF 40] Write a query to find the second most recent order date per customer.
51. [PDF 41a] Find employees who have never made a sale.
52. [PDF 42a] Find the average tenure of employees by department.
53. [PDF 43a] Get employees with salary in the top 10% in their department.
54. [PDF 44a] Find customers who purchased more than once in the same day.
55. [PDF 45a] List all departments and their employee counts, including departments with zero employees.
56. [PDF 41b] Write a query to find duplicate rows based on multiple columns.
57. [PDF 42b] Write a recursive query to calculate factorial of a number (e.g., 5).
58. [PDF 43b] Write a query to calculate the cumulative percentage of total sales per product.
59. [PDF 44b] Write a query to get employees who reported directly or indirectly to a given manager (hierarchy traversal).
60. [PDF 45b] Find the average number of orders per customer and standard deviation.
61. [PDF 46] Find gaps in date sequences for each customer (missing days).
62. [PDF 47] Rank employees by salary within their department, and calculate percent rank.
63. [PDF 48] Find products that have never been sold.
64. [PDF 49] Write a query to find consecutive days where sales were above a threshold.
65. [PDF 50] Write a query to concatenate employee names in each department (string aggregation).
66. [PDF 51a] Find employees whose salary is above the average salary of their department but below the company-wide average.
67. [PDF 52a] List the customers who purchased all products in a specific category.
68. [PDF 53a] Retrieve the Nth highest salary from the employees table.
69. [PDF 54a] Find employees with no corresponding entries in the salary_history table.
70. [PDF 55a] Show the department with the highest number of employees and the count.
71. [PDF 51b] Write a recursive query to list all ancestors (managers) of a given employee.
72. [PDF 52b] Calculate the median salary by department using window functions.
73. [PDF 53b] Write a query to find the first purchase date and last purchase date for each customer, including customers who never purchased anything.
74. [PDF 54b] Find the percentage difference between each month’s total sales and the previous month’s total sales.
75. [PDF 55b] Write a query to find employees who have the longest tenure within their department.
76. [PDF 56] Generate a report that shows sales and sales growth percentage compared to the same month last year.
77. [PDF 57] Write a query to identify overlapping shifts for employees.
78. [PDF 58] Calculate the total revenue for each customer, and rank them from highest to lowest spender.
79. [PDF 59] Write a query to find the employee(s) who have never received a promotion.
80. [PDF 60] Write a query to find the top 3 products with the highest total sales amount each month.
81. [PDF 61a] Find the customers who placed orders only in the last 30 days.
82. [PDF 62a] Find products that have never been ordered.
83. [PDF 63a] Find employees whose salary is above their department’s average but below the overall average salary.
84. [PDF 64a] Calculate the total sales amount and number of orders per customer in the last year.
85. [PDF 65a] List the top 5 highest-paid employees per department.
86. [PDF 61b] Write a query to identify “gaps and islands” in attendance records (consecutive dates present).
87. [PDF 62b] Write a recursive query to list all descendants of a manager in an organizational hierarchy.
88. [PDF 63b] Calculate a 3-month moving average of monthly sales per product.
89. [PDF 64b] Write a query to find employees who have the same hire date as their managers.
90. [PDF 65b] Write a query to find products with increasing sales over the last 3 months.
91. [PDF 66] Write a query to get the nth highest salary per department.
92. [PDF 67] Find employees who have managed more than 3 projects.
93. [PDF 68] Write a query to calculate the difference in days between each employee's hire date and their manager’s hire date.
94. [PDF 69] Write a query to find the department with the highest average years of experience.
95. [PDF 70] Identify employees who had overlapping project assignments.
96. [PDF 71a] Find customers who made purchases in every month of the current year.
97. [PDF 72a] List employees who earn more than all their subordinates.
98. [PDF 73a] Get the product with the highest sales for each category.
99. [PDF 74a] Find customers who haven’t ordered in the last 6 months.
100. [PDF 75a] Find the maximum salary gap between any two employees within the same department.
101. [PDF 71b] Write a recursive query to compute the total budget under each manager (including subordinates).
102. [PDF 72b] Write a query to detect gaps in a sequence of invoice numbers.
103. [PDF 73b] Calculate the rank of employees by salary within their department but restart rank numbering every 10 employees.
104. [PDF 74b] Find the moving median of daily sales over the last 7 days for each product.
105. [PDF 75b] Find customers who purchased both product A and product B.
106. [PDF 76] Write a query to generate a calendar table with all dates for the current year.
107. [PDF 77] Find employees who have worked in more than 3 different departments.
108. [PDF 78] Calculate the percentage contribution of each product’s sales to the total sales per month.
109. [PDF 79] Write a query to pivot monthly sales data for each product into columns.
110. [PDF 80] Find the 3 most recent orders per customer including order details.
111. [PDF 81a] Find employees who have never taken any leave.
112. [PDF 82a] List customers who placed orders in January but not in February.
113. [PDF 83a] Find products that have seen a price increase in the last 6 months.
114. [PDF 84a] Find the department(s) with the second highest average salary.
115. [PDF 85a] Find employees who joined in the same month and year.
116. [PDF 81b] Write a recursive query to find all employees and their level of reporting (distance from CEO).
117. [PDF 82b] Find the second highest salary per department without using window functions.
118. [PDF 83b] Calculate the percentage change in sales for each product comparing current month to previous month.
119. [PDF 84b] Write a query to identify duplicate rows (all columns) in a table.
120. [PDF 85b] Write a query to unpivot quarterly sales data into rows.
121. [PDF 86] Find employees whose salary is above the average salary of their department but below the company-wide average.
122. [PDF 87] Write a query to find customers with the highest purchase amount per year.
123. [PDF 88] Write a query to list all employees who have a salary equal to the average salary of their department.
124. [PDF 89] Find the first order date for each customer.
125. [PDF 90] Find employees who have been promoted more than twice.
126. [PDF 91] Find employees who have not been assigned to any project.
127. [PDF 92] Find the total sales per customer including those with zero sales.
128. [PDF 93] Find the highest salary by department and the employee(s) who earn it.
129. [PDF 94] Find customers with no orders in the last year.
130. [PDF 95] Find employees whose salary is within 10% of the highest salary in their department.
131. [PDF 96] Find the running total of sales by date.
132. [PDF 97] Find employees who earn more than the average salary of the entire company.
133. [PDF 98] Get the last 3 orders placed by each customer.
134. [PDF 99] Find the difference in days between the earliest and latest orders per customer.
135. [PDF 100a] Find employees who have worked on all projects.
136. [PDF 101] Find customers who placed orders only in the last 6 months.
137. [PDF 102] Get the total number of orders per day, including days with zero orders.
138. [PDF 103] Find the department with the most employees.
139. [PDF 104] Write a query to find gaps in employee IDs.
140. [PDF 105] Find employees who were hired before their managers.
141. [PDF 106] List departments with average salary greater than the overall average.
142. [PDF 107] Find employees with the highest number of dependents.
143. [PDF 108] Find customers with the longest gap between two consecutive orders.
144. [PDF 109] Find customers who ordered all products in a category.
145. [PDF 110] Get the most recent order date per customer.
146. [PDF 111] List all employees and their manager names.
147. [PDF 112] Find employees with the same salary as their manager.
148. [PDF 113] List products with sales above the average sales amount.
149. [PDF 114] Get the number of employees hired each year.
150. [PDF 115] Find the number of employees with the same job title per department.
151. [PDF 116] Find employees with no manager assigned.
152. [PDF 117] Calculate average salary by department and job title.
153. [PDF 118] Find the median salary of employees.
154. [PDF 119] Find employees who have been promoted more than once.
155. [PDF 120] Calculate total sales by product category.
156. [PDF 121] Find the top 3 products by sales amount.
157. [PDF 122] Get employees who joined after their department was created.
158. [PDF 123] Find customers with no sales records.
159. [PDF 124] Find the second highest salary in the company.
160. [PDF 125] Find products with sales only in the current month.
161. [PDF 126] Find employees with consecutive workdays.
162. [PDF 127] Find the average number of orders per customer.
163. [PDF 128] Find employees who have worked on more than 5 projects.
164. [PDF 129] Find the total number of products sold each day.
165. [PDF 130] Find customers with orders totaling more than $10,000.
166. [PDF 131] Find employees who have never received a bonus.
167. [PDF 132] Find the department with the lowest average salary.
168. [PDF 133] Get cumulative count of orders per customer over time.
169. [PDF 134] Find customers who ordered products only from one category.
170. [PDF 135] Write a query to display employee names alongside their manager names, including those without managers.
171. [PDF 136] Find products with sales increasing every month for the last 3 months.
172. [PDF 137] Write a recursive query to get all descendants of a manager.
173. [PDF 138] Find the department with the highest variance in salaries.
174. [PDF 139] Calculate the difference between each order amount and the previous order amount per customer.
175. [PDF 140] Find customers who purchased both Product A and Product B.
176. [PDF 141] Find the top N customers by total sales amount.
177. [PDF 142] Find the month with the highest sales in the current year.
178. [PDF 143] Write a query to display all employees who have worked on a project longer than 6 months.
179. [PDF 144] Find the nth highest salary in a company (e.g., 5th highest).
180. [PDF 145] Get the average salary of employees hired each year.
181. [PDF 146] Find employees whose salaries are between the 25th and 75th percentile.
182. [PDF 147] Find employees with salaries higher than their department average.
183. [PDF 148] Find the difference between each row's value and the previous row’s value in sales.
184. [PDF 149] List employees who have been in the company for more than 10 years.
185. [PDF 150] Find the department with the most promotions.
186. [PDF 151] Find customers who ordered products from at least 3 different categories.
187. [PDF 152] Find the average gap (in days) between orders per customer.
188. [PDF 153] List all customers who have never ordered product X.
189. [PDF 154] Calculate total revenue and number of orders per country.
190. [PDF 155] Find the employees who were hired on the same day as their managers.
191. [PDF 156] Find the top 3 products by quantity sold in each category.
192. [PDF 157] Find the difference in days between the first and last order for each customer.
193. [PDF 158] Find customers who have increased their order volume every month for the last 3 months.
194. [PDF 159] Find employees who have the same salary as the average salary in their job title.
195. [PDF 160] Write a query to calculate the difference in salary between employees and their managers.
196. [PDF 161] List the departments with no employees.
197. [PDF 162] Find the employee with the maximum salary in each department.
198. [PDF 163] Find customers with orders on every day in the last week.
199. [PDF 164] Find the product that has been sold in the highest quantity in a single order.
200. [PDF 165] Find employees who joined before their department was created.
201. [PDF 166] Find customers with sales in at least 3 different years.
202. [PDF 167] Find employees whose salary is above the company’s average but below their department’s average.
203. [PDF 168] Find the average order amount per customer per year.
204. [PDF 169] Find employees who have worked on at least one project with a budget over $1,000,000.
205. [PDF 170] Find the most recent promotion date per employee.
206. [PDF 171] Find customers who made orders totaling more than the average order amount.
207. [PDF 172] Find products never ordered.
208. [PDF 173] Find the month with the lowest sales in the past year.
209. [PDF 174] Calculate the number of employees hired each month in the last year.
210. [PDF 175] Find the department with the highest number of projects.
211. [PDF 176] Find employees who do not have dependents.
212. [PDF 177] Get the total sales amount for each product category including categories with zero sales.
213. [PDF 178] Find employees who have been promoted but their salary didn’t increase.
214. [PDF 179] Find customers with average order amount above $500.
215. [PDF 180] Find orders where the total quantity exceeds 100 units.
216. [PDF 181] Find products whose sales have doubled compared to the previous month.
217. [PDF 182] Write a query to find employees who worked on more than 3 projects in 2023.
218. [PDF 183] Find customers whose last order was placed more than 1 year ago.
219. [PDF 184] Find the average salary increase percentage per department.
220. [PDF 185] Find employees who have never been promoted.
221. [PDF 186] Find products ordered by all customers.
222. [PDF 187] Find customers with orders totaling more than $5000 in the last 6 months.
223. [PDF 188] Find the rank of employees based on salary within their department.
224. [PDF 189] Find customers who purchased a product but never reordered it.
225. [PDF 190] Find the day with the highest number of new hires.
226. [PDF 191] Find the number of employees who have worked in more than one department.
227. [PDF 192] Find customers who ordered the most products in 2023.
228. [PDF 193] Find the average days taken to ship orders per shipping method.
229. [PDF 194] Find employees with overlapping project assignments.
230. [PDF 195] Find the total number of unique customers per product category.
231. [PDF 196] Find customers whose orders increased by at least 20% compared to the previous month.
232. [PDF 197] Find employees with no projects assigned in the last 6 months.
233. [PDF 198] Find the number of employees who have changed departments more than twice.
234. [PDF 199] Find the product with the highest average rating.
235. [PDF 200] Find customers who have placed orders but never used a discount.
236. [PDF 201] Find employees who have worked on every project in their department.
237. [PDF 202] Find the average order amount excluding the top 5% largest orders.
238. [PDF 203] Find the top 3 employees with the highest salary increase over last year.
239. [PDF 204] Find employees with the longest consecutive workdays.
240. [PDF 205] Find all managers who do not manage any employee.
241. [PDF 206] Find the average salary of employees hired each month.
242. [PDF 207] Find the first 5 orders after a customer's registration date.
243. [PDF 208] Find customers who placed orders every month for the last 6 months.
244. [PDF 209] Calculate the moving average of sales over the last 3 days.
245. [PDF 210] Find the number of employees who share the same birthday.
246. [PDF 211] Find customers who ordered the same product multiple times in one day.
247. [PDF 212] Find the total sales for each product including products with zero sales.
248. [PDF 213] List the top 5 employees by number of projects in each department.
249. [PDF 214] Find the day with the largest difference between maximum and minimum temperature.
250. [PDF 215] Find the 3 most recent orders per customer.
251. [PDF 216] Find products with sales only in a specific country.
252. [PDF 217] Find employees with a salary greater than all employees in department 10.
253. [PDF 218] Find the percentage of employees in each department.
254. [PDF 219] Find the median salary per department.
255. [PDF 220] Find the employee who worked the most hours in a project.
256. [PDF 221] Find the first order date for each customer.
257. [PDF 222] Find the second most expensive product per category.
258. [PDF 223] Find employees with the highest salary in each job title.
259. [PDF 224] Calculate the ratio of males to females in each department.
260. [PDF 225] Find customers who spent more than average in their country.
261. [PDF 226] Find employees who have not been assigned to any project in the last year.
262. [PDF 227] Find the top 3 customers by total order amount in each region.
263. [PDF 228] Find employees hired after their managers.
264. [PDF 229] Find customers who ordered all products from a specific category.
265. [PDF 230] Find employees with the highest number of direct reports.
266. [PDF 231] Calculate the retention rate of customers month- over-month.
267. [PDF 232] Find the average time difference between order and delivery.
268. [PDF 233] Find the department with the youngest average employee age.
269. [PDF 234] Find products that were sold in every quarter of the current year.
270. [PDF 235] Find customers whose orders decreased consecutively for 3 months.
271. [PDF 236] Find the employee(s) with the highest number of late arrivals.
272. [PDF 237] Find the most common product combinations in orders (pairs).
273. [PDF 238] Find employees who have worked more than 40 hours in a week.
274. [PDF 239] Find the total revenue generated per sales representative.
275. [PDF 240] Find customers with no orders in the last year.
276. [PDF 241] Find products with an increasing sales trend over the last 3 months.
277. [PDF 242] Find departments where average salary is higher than the company average.
278. [PDF 243] Find customers with orders where no product quantity is less than 5.
279. [PDF 244] Find products ordered only by customers from one country.
280. [PDF 245] Find employees who have not submitted their timesheets in the last month.
281. [PDF 246] Find the total discount given in each month.
282. [PDF 247] Find customers who have placed orders but never paid by credit card.
283. [PDF 248] Find employees whose salaries are within 10% of their department’s average salary.
284. [PDF 249] Find customers who ordered the most products in each category.
285. [PDF 250] Find the top 5 longest projects.
286. [PDF 251] Find employees who have not taken any leave in the last 6 months.
287. [PDF 252] Find the department with the most projects completed last year.
288. [PDF 253] Find customers who have increased their order frequency month-over-month for 3 consecutive months.
289. [PDF 254] Find employees who have been assigned projects outside their department.
290. [PDF 255] Calculate the average time to close tickets per support agent.
291. [PDF 256] Find the first and last login date for each user.
292. [PDF 257] Find customers who made purchases only in one month of the year.
293. [PDF 258] Find products with sales revenue above the average revenue per product.
294. [PDF 259] Find departments where more than 50% of employees have a salary above $60,000.
295. [PDF 260] Find employees who worked on all projects in the company.
296. [PDF 261] Find customers who ordered products from all categories.
297. [PDF 262] Find the average tenure of employees by department.
298. [PDF 263] Find the number of orders placed on weekends vs weekdays.
299. [PDF 264] Find the percentage of orders with discounts per month.
300. [PDF 265] Find the employees who have never been late to work.
301. [PDF 266] Find products with sales only during holiday seasons.
302. [PDF 267] Find the department with the largest increase in employee count compared to last year.
303. [PDF 268] Find the average order value per customer segment.
304. [PDF 269] Find employees who manage more than 3 projects.
305. [PDF 270] Find products that have never been returned.
306. [PDF 271] Find customers with orders but no shipments.
307. [PDF 272] Find employees whose salaries increased every year.
308. [PDF 273] Find the total number of unique products sold in the last quarter.
309. [PDF 274] Find the day with the highest sales in each month.
310. [PDF 275] Find the products with the highest sales increase compared to the previous month.
311. [PDF 276] Find the top 5 customers by total order value in the last year.
312. [PDF 277] Find the number of employees who changed departments in the last year.
313. [PDF 278] Find the average salary for each job title within each department.
314. [PDF 279] Find customers who placed orders with multiple payment methods.
315. [PDF 280] Find products with the lowest average rating per category.
316. [PDF 281] Find employees who have never received a promotion.
317. [PDF 282] Find the total number of orders placed each day in the last week.
318. [PDF 283] Find customers with orders in both online and in- store channels.
319. [PDF 284] Find the top 3 sales reps by number of deals closed this quarter.
320. [PDF 285] Find products that have been discontinued but still have sales.
321. [PDF 286] Find employees who report to a manager hired after them.
322. [PDF 287] Find the average delivery time by shipping method.
323. [PDF 288] Find orders where the total quantity exceeds 100.
324. [PDF 289] Find customers who made orders but never returned a product.
325. [PDF 290] Find products that have been ordered but never reviewed.
326. [PDF 291] Find employees who have worked on projects for more than 2 years.
327. [PDF 292] Find the product with the highest sales for each month.
328. [PDF 293] Find customers with the highest order count in each region.
329. [PDF 294] Flag customers with an increase in orders every month this year.
330. [PDF 295] Find employees whose hire date is the same weekday as their manager’s.
331. [PDF 296] Get total working hours per employee per week.
332. [PDF 297] Identify suppliers who delivered to all regions.
333. [PDF 298] Find products ordered on their launch date.
334. [PDF 299] Retrieve employees with salary in top 5% company-wide.
335. [PDF 300] List departments with no open positions.

## B. Extracted Questions and SQL

### Case 001 [PDF 1]
**Title:** Find the second highest salary from the Employee table.

**Original SQL:**
```sql
SELECT MAX(salary) AS SecondHighestSalary
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);
```

### Case 002 [PDF 2]
**Title:** Find duplicate records in a table.

**Original SQL:**
```sql
SELECT name, COUNT(*)
FROM employees
GROUP BY name
HAVING COUNT(*) > 1;
```

### Case 003 [PDF 3]
**Title:** Retrieve employees who earn more than their manager.

**Original SQL:**
```sql
SELECT e.name AS Employee, e.salary, m.name AS
Manager, m.salary AS ManagerSalary
FROM employees e
JOIN employees m ON e.manager_id = m.id
WHERE e.salary > m.salary;
```

### Case 004 [PDF 4]
**Title:** Count employees in each department having more than 5 employees.

**Original SQL:**
```sql
SELECT department_id, COUNT(*) AS
num_employees
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5;
```

### Case 005 [PDF 5]
**Title:** Find employees who joined in the last 6 months.

**Original SQL:**
```sql
SELECT *
FROM employees
WHERE join_date >= CURRENT_DATE -
INTERVAL '6 months';
```

### Case 006 [PDF 6]
**Title:** Get departments with no employees.

**Original SQL:**
```sql
SELECT d.department_name
FROM departments d
LEFT JOIN employees e ON d.department_id =
e.department_id
WHERE e.id IS NULL;
```

### Case 007 [PDF 7]
**Title:** Write a query to find the median salary.

**Original SQL:**
```sql
SELECT AVG(salary) AS median_salary
FROM (
  SELECT salary
  FROM employees
  ORDER BY salary
  LIMIT 2 - (SELECT COUNT(*) FROM employees)
% 2
  OFFSET (SELECT (COUNT(*) - 1) / 2 FROM
employees)
) AS median_subquery;
```

### Case 008 [PDF 8]
**Title:** Running total of salaries by department.

**Original SQL:**
```sql
SELECT name, department_id, salary,
       SUM(salary) OVER (PARTITION BY
department_id ORDER BY id) AS running_total
FROM employees;
```

### Case 009 [PDF 9]
**Title:** Find the longest consecutive streak of daily logins for each user.

**Original SQL:**
```sql
WITH login_dates AS (
  SELECT user_id, login_date,
         login_date - INTERVAL ROW_NUMBER()
OVER (PARTITION BY user_id ORDER BY
login_date) DAY AS grp
  FROM user_logins
)
SELECT user_id, COUNT(*) AS streak_length,
MIN(login_date) AS start_date, MAX(login_date) AS
end_date
FROM login_dates
GROUP BY user_id, grp
ORDER BY streak_length DESC;
```

### Case 010 [PDF 10]
**Title:** Recursive query to find the full reporting chain for each employee.

**Original SQL:**
```sql
WITH RECURSIVE reporting_chain AS (
  SELECT id, name, manager_id, 1 AS level
  FROM employees
  WHERE manager_id IS NULL
  UNION ALL
  SELECT e.id, e.name, e.manager_id, rc.level + 1
  FROM employees e
  JOIN reporting_chain rc ON e.manager_id = rc.id
)
SELECT * FROM reporting_chain ORDER BY level,
id;
```

### Case 011 [PDF 11]
**Title:** Write a query to find gaps in a sequence of numbers (missing IDs).

**Original SQL:**
```sql
SELECT (id + 1) AS missing_id
FROM employees e1
WHERE NOT EXISTS (
  SELECT 1 FROM employees e2 WHERE e2.id =
e1.id + 1
)
ORDER BY missing_id;
```

### Case 012 [PDF 12]
**Title:** Calculate cumulative distribution (CDF) of salaries.

**Original SQL:**
```sql
SELECT name, salary,
       CUME_DIST() OVER (ORDER BY salary) AS
salary_cdf
FROM employees;
```

### Case 013 [PDF 13]
**Title:** Compare two tables and find rows with differences in any column (all columns).

**Original SQL:**
```sql
SELECT *
FROM table1 t1
FULL OUTER JOIN table2 t2 ON t1.id = t2.id
WHERE t1.col1 IS DISTINCT FROM t2.col1
   OR t1.col2 IS DISTINCT FROM t2.col2
   OR t1.col3 IS DISTINCT FROM t2.col3;
```

### Case 014 [PDF 14]
**Title:** Write a query to rank employees based on salary with ties handled properly.

**Original SQL:**
```sql
SELECT name, salary,
       RANK() OVER (ORDER BY salary DESC) AS
salary_rank
FROM employees;
```

### Case 015 [PDF 15]
**Title:** Find customers who have not made any purchase.

**Original SQL:**
```sql
SELECT c.customer_id, c.name
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL;
```

### Case 016 [PDF 16]
**Title:** Write a query to perform a conditional aggregation (count males and females in each department).

**Original SQL:**
```sql
SELECT department_id,
       COUNT(CASE WHEN gender = 'M' THEN 1
END) AS male_count,
       COUNT(CASE WHEN gender = 'F' THEN 1
END) AS female_count
FROM employees
GROUP BY department_id;
```

### Case 017 [PDF 17]
**Title:** Write a query to calculate the difference between current row and previous row's salary (lag function).

**Original SQL:**
```sql
SELECT name, salary,
       salary - LAG(salary) OVER (ORDER BY id) AS
salary_diff
FROM employees;
```

### Case 018 [PDF 18]
**Title:** Identify overlapping date ranges for bookings.

**Original SQL:**
```sql
SELECT b1.booking_id, b2.booking_id
FROM bookings b1
JOIN bookings b2 ON b1.booking_id <> b2.booking_id
WHERE b1.start_date <= b2.end_date
  AND b1.end_date >= b2.start_date;
```

### Case 019 [PDF 19]
**Title:** Write a query to find employees with salary greater than average salary in the entire company, ordered by salary descending.

**Original SQL:**
```sql
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM
employees)
ORDER BY salary DESC;
```

### Case 020 [PDF 20]
**Title:** Aggregate JSON data (if supported) to list all employee names in a department as a JSON array.

**Original SQL:**
```sql
SELECT department_id, JSON_AGG(name) AS
employee_names
FROM employees
GROUP BY department_id;
```

### Case 021 [PDF 21a]
**Title:** Find employees who have the same salary as their manager.

**Original SQL:**
```sql
SELECT e.name AS Employee, e.salary, m.name AS
Manager
FROM employees e
JOIN employees m ON e.manager_id = m.id
WHERE e.salary = m.salary;
```

### Case 022 [PDF 22a]
**Title:** Write a query to get the first and last purchase date for each customer.

**Original SQL:**
```sql
SELECT customer_id,
       MIN(purchase_date) AS first_purchase,
       MAX(purchase_date) AS last_purchase
FROM sales
GROUP BY customer_id;
```

### Case 023 [PDF 23a]
**Title:** Find departments with the highest average salary.

**Original SQL:**
```sql
WITH avg_salaries AS (
  SELECT department_id, AVG(salary) AS avg_salary
  FROM employees
  GROUP BY department_id
)
SELECT *
FROM avg_salaries
WHERE avg_salary = (SELECT MAX(avg_salary)
FROM avg_salaries);
```

### Case 024 [PDF 24a]
**Title:** Write a query to find the number of employees in each job title.

**Original SQL:**
```sql
SELECT job_title, COUNT(*) AS num_employees
FROM employees
GROUP BY job_title;
```

### Case 025 [PDF 25a]
**Title:** Find employees who don’t have a department assigned.

**Original SQL:**
```sql
SELECT *
FROM employees
WHERE department_id IS NULL;
```

### Case 026 [PDF 21b]
**Title:** Write a query to find the difference in days between two dates in the same table.

**Original SQL:**
```sql
SELECT id, DATEDIFF(day, start_date, end_date) AS
days_difference
FROM projects;
systems).
```

**Source note:** Note: DATEDIFF syntax varies — replace accordingly (e.g., DATEDIFF('day', start_date, end_date) in some

### Case 027 [PDF 22b]
**Title:** Calculate the moving average of salaries over the last 3 employees ordered by hire date.

**Original SQL:**
```sql
SELECT name, hire_date, salary,
       AVG(salary) OVER (ORDER BY hire_date
ROWS BETWEEN 2 PRECEDING AND CURRENT
ROW) AS moving_avg_salary
FROM employees;
```

### Case 028 [PDF 23b]
**Title:** Find the most recent purchase per customer using window functions.

**Original SQL:**
```sql
SELECT *
FROM (
  SELECT *,
         ROW_NUMBER() OVER (PARTITION BY
customer_id ORDER BY purchase_date DESC) AS rn
  FROM sales
) sub
WHERE rn = 1;
```

### Case 029 [PDF 24b]
**Title:** Detect hierarchical depth of each employee in the org chart.

**Original SQL:**
```sql
WITH RECURSIVE employee_depth AS (
  SELECT id, name, manager_id, 1 AS depth
  FROM employees
  WHERE manager_id IS NULL
  UNION ALL
  SELECT e.id, e.name, e.manager_id, ed.depth + 1
  FROM employees e
  JOIN employee_depth ed ON e.manager_id = ed.id
)
SELECT * FROM employee_depth;
```

### Case 030 [PDF 25b]
**Title:** Write a query to perform a self-join to find pairs of employees in the same department.

**Original SQL:**
```sql
SELECT e1.name AS Employee1, e2.name AS
Employee2, e1.department_id
FROM employees e1
JOIN employees e2 ON e1.department_id =
e2.department_id AND e1.id < e2.id;
```

### Case 031 [PDF 26]
**Title:** Write a query to pivot rows into columns dynamically (if dynamic pivot is not supported, simulate it for fixed values).

**Original SQL:**
```sql
SELECT
    department_id,
    SUM(CASE WHEN job_title = 'Manager' THEN 1
ELSE 0 END) AS Managers,
    SUM(CASE WHEN job_title = 'Developer' THEN 1
ELSE 0 END) AS Developers,
    SUM(CASE WHEN job_title = 'Tester' THEN 1
ELSE 0 END) AS Testers
FROM employees
GROUP BY department_id;
```

### Case 032 [PDF 27]
**Title:** Find customers who made purchases in every category available.

**Original SQL:**
```sql
SELECT customer_id
FROM sales s
GROUP BY customer_id
HAVING COUNT(DISTINCT category_id) =
(SELECT COUNT(DISTINCT category_id) FROM
sales);
```

### Case 033 [PDF 28]
**Title:** Identify employees who haven’t received a salary raise in more than a year.

**Original SQL:**
```sql
SELECT e.name
FROM employees e
JOIN salary_history sh ON e.id = sh.employee_id
GROUP BY e.id, e.name
HAVING MAX(sh.raise_date) < CURRENT_DATE -
INTERVAL '1 year';
```

### Case 034 [PDF 29]
**Title:** Write a query to rank salespeople by monthly sales, resetting the rank every month.

**Original SQL:**
```sql
SELECT salesperson_id, sale_month, total_sales,
       RANK() OVER (PARTITION BY sale_month
ORDER BY total_sales DESC) AS monthly_rank
FROM (
  SELECT salesperson_id, DATE_TRUNC('month',
sale_date) AS sale_month, SUM(amount) AS
total_sales
  FROM sales
  GROUP BY salesperson_id, sale_month
) AS monthly_sales;
```

### Case 035 [PDF 30]
**Title:** Calculate the percentage change in sales compared to the previous month for each product.

**Original SQL:**
```sql
SELECT product_id, sale_month, total_sales,
       (total_sales - LAG(total_sales) OVER
(PARTITION BY product_id ORDER BY
sale_month)) * 100.0 /
       LAG(total_sales) OVER (PARTITION BY
product_id ORDER BY sale_month) AS pct_change
FROM (
  SELECT product_id, DATE_TRUNC('month',
sale_date) AS sale_month, SUM(amount) AS
total_sales
  FROM sales
  GROUP BY product_id, sale_month
) monthly_sales;
```

### Case 036 [PDF 31a]
**Title:** Find employees who earn more than the average salary across the company but less than the highest salary in their department.

**Original SQL:**
```sql
SELECT *
FROM employees e
WHERE salary > (SELECT AVG(salary) FROM
employees)
  AND salary < (
    SELECT MAX(salary)
    FROM employees
    WHERE department_id = e.department_id
  );
```

### Case 037 [PDF 32a]
**Title:** Retrieve the last 5 orders for each customer.

**Original SQL:**
```sql
SELECT *
FROM (
  SELECT o.*, ROW_NUMBER() OVER
(PARTITION BY customer_id ORDER BY order_date
DESC) AS rn
  FROM orders o
) sub
WHERE rn <= 5;
```

### Case 038 [PDF 33a]
**Title:** Find employees with no salary changes in the last 2 years.

**Original SQL:**
```sql
SELECT e.*
FROM employees e
LEFT JOIN salary_history sh ON e.id =
sh.employee_id AND sh.change_date >=
CURRENT_DATE - INTERVAL '2 years'
WHERE sh.employee_id IS NULL;
```

### Case 039 [PDF 34a]
**Title:** Find the department with the lowest average salary.

**Original SQL:**
```sql
SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id
ORDER BY avg_salary
LIMIT 1;
```

### Case 040 [PDF 35a]
**Title:** List employees whose names start and end with the same letter.

**Original SQL:**
```sql
SELECT *
FROM employees
WHERE LEFT(name, 1) = RIGHT(name, 1);
```

### Case 041 [PDF 31b]
**Title:** Write a query to detect circular references in employee-manager hierarchy (cycles).

**Original SQL:**
```sql
WITH RECURSIVE mgr_path (id, manager_id, path)
AS (
  SELECT id, manager_id, ARRAY[id]
  FROM employees
  WHERE manager_id IS NOT NULL
  UNION ALL
  SELECT e.id, e.manager_id, path || e.id
  FROM employees e
  JOIN mgr_path mp ON e.manager_id = mp.id
  WHERE NOT e.id = ANY(path)
)
SELECT DISTINCT id
FROM mgr_path
WHERE id = ANY(path);
```

### Case 042 [PDF 32b]
**Title:** Write a query to get the running total of sales per customer, ordered by sale date.

**Original SQL:**
```sql
SELECT customer_id, sale_date, amount,
       SUM(amount) OVER (PARTITION BY
customer_id ORDER BY sale_date) AS running_total
FROM sales;
```

### Case 043 [PDF 33b]
**Title:** Find the department-wise salary percentile (e.g., 90th percentile) using window functions.

**Original SQL:**
```sql
SELECT department_id, salary,
       PERCENTILE_CONT(0.9) WITHIN GROUP
(ORDER BY salary) OVER (PARTITION BY
department_id) AS pct_90_salary
FROM employees;
```

### Case 044 [PDF 34b]
**Title:** Find employees whose salary is a prime number.

**Original SQL:**
```sql
WITH primes AS (
  SELECT generate_series(2, (SELECT MAX(salary)
FROM employees)) AS num
  EXCEPT
  SELECT num FROM (
    SELECT num, UNNEST(ARRAY(
      SELECT generate_series(2, FLOOR(SQRT(num)))
AS divisor
    )) AS divisor
    WHERE num % divisor = 0
  ) AS composite
)
SELECT *
FROM employees
WHERE salary IN (SELECT num FROM primes);
may not support this syntax fully.
```

**Source note:** Note: This is a conceptual approach—some databases

### Case 045 [PDF 35b]
**Title:** Find employees who have worked for multiple departments over time.

**Original SQL:**
```sql
SELECT employee_id
FROM employee_department_history
GROUP BY employee_id
HAVING COUNT(DISTINCT department_id) > 1;
```

### Case 046 [PDF 36]
**Title:** Use window function to find the difference between current row’s sales and previous row’s sales partitioned by product.

**Original SQL:**
```sql
SELECT product_id, sale_date, amount,
       amount - LAG(amount) OVER (PARTITION BY
product_id ORDER BY sale_date) AS sales_diff
FROM sales;
```

### Case 047 [PDF 37]
**Title:** Write a query to find all employees who are at the lowest level in the hierarchy (no subordinates).

**Original SQL:**
```sql
SELECT *
FROM employees e
WHERE NOT EXISTS (
  SELECT 1 FROM employees sub WHERE
sub.manager_id = e.id
);
```

### Case 048 [PDF 38]
**Title:** Find average order value per month and product category.

**Original SQL:**
```sql
SELECT DATE_TRUNC('month', order_date) AS
order_month, category_id, AVG(order_value) AS
avg_order_value
FROM orders
GROUP BY order_month, category_id;
```

### Case 049 [PDF 39]
**Title:** Write a query to create a running count of how many employees joined in each year.

**Original SQL:**
```sql
SELECT join_year, COUNT(*) AS yearly_hires,
       SUM(COUNT(*)) OVER (ORDER BY join_year)
AS running_total_hires
FROM (
  SELECT EXTRACT(YEAR FROM hire_date) AS
join_year
  FROM employees
) sub
GROUP BY join_year
ORDER BY join_year;
```

### Case 050 [PDF 40]
**Title:** Write a query to find the second most recent order date per customer.

**Original SQL:**
```sql
SELECT customer_id, order_date
FROM (
  SELECT customer_id, order_date,
         ROW_NUMBER() OVER (PARTITION BY
customer_id ORDER BY order_date DESC) AS rn
  FROM orders
) sub
WHERE rn = 2;
```

### Case 051 [PDF 41a]
**Title:** Find employees who have never made a sale.

**Original SQL:**
```sql
SELECT e.id, e.name
FROM employees e
LEFT JOIN sales s ON e.id = s.employee_id
WHERE s.sale_id IS NULL;
```

### Case 052 [PDF 42a]
**Title:** Find the average tenure of employees by department.

**Original SQL:**
```sql
SELECT department_id, AVG(DATE_PART('year',
CURRENT_DATE - hire_date)) AS avg_tenure_years
FROM employees
GROUP BY department_id;
```

### Case 053 [PDF 43a]
**Title:** Get employees with salary in the top 10% in their department.

**Original SQL:**
```sql
SELECT *
FROM (
  SELECT e.*, NTILE(10) OVER (PARTITION BY
department_id ORDER BY salary DESC) AS decile
  FROM employees e
) sub
WHERE decile = 1;
```

### Case 054 [PDF 44a]
**Title:** Find customers who purchased more than once in the same day.

**Original SQL:**
```sql
SELECT customer_id, purchase_date, COUNT(*) AS
purchase_count
FROM sales
GROUP BY customer_id, purchase_date
HAVING COUNT(*) > 1;
```

### Case 055 [PDF 45a]
**Title:** List all departments and their employee counts, including departments with zero employees.

**Original SQL:**
```sql
SELECT d.department_id, d.department_name,
COUNT(e.id) AS employee_count
FROM departments d
LEFT JOIN employees e ON d.department_id =
e.department_id
GROUP BY d.department_id, d.department_name;
```

### Case 056 [PDF 41b]
**Title:** Write a query to find duplicate rows based on multiple columns.

**Original SQL:**
```sql
SELECT column1, column2, COUNT(*)
FROM table_name
GROUP BY column1, column2
HAVING COUNT(*) > 1;
```

### Case 057 [PDF 42b]
**Title:** Write a recursive query to calculate factorial of a number (e.g., 5).

**Original SQL:**
```sql
WITH RECURSIVE factorial(n, fact) AS (
  SELECT 1, 1
  UNION ALL
  SELECT n + 1, fact * (n + 1)
  FROM factorial
  WHERE n < 5
)
SELECT fact FROM factorial WHERE n = 5;
```

### Case 058 [PDF 43b]
**Title:** Write a query to calculate the cumulative percentage of total sales per product.

**Original SQL:**
```sql
SELECT product_id, sale_amount,
       SUM(sale_amount) OVER (ORDER BY
sale_amount DESC) * 100.0 / SUM(sale_amount)
OVER () AS cumulative_pct
FROM sales;
```

### Case 059 [PDF 44b]
**Title:** Write a query to get employees who reported directly or indirectly to a given manager (hierarchy traversal).

**Original SQL:**
```sql
WITH RECURSIVE reporting AS (
  SELECT id, name, manager_id
  FROM employees
  WHERE manager_id = 101  -- replace 101 with
manager's id
  UNION ALL
  SELECT e.id, e.name, e.manager_id
  FROM employees e
  INNER JOIN reporting r ON e.manager_id = r.id
)
SELECT * FROM reporting;
```

### Case 060 [PDF 45b]
**Title:** Find the average number of orders per customer and standard deviation.

**Original SQL:**
```sql
SELECT AVG(order_count) AS avg_orders,
STDDEV(order_count) AS stddev_orders
FROM (
  SELECT customer_id, COUNT(*) AS order_count
  FROM orders
  GROUP BY customer_id
) sub;
```

### Case 061 [PDF 46]
**Title:** Find gaps in date sequences for each customer (missing days).

**Original SQL:**
```sql
WITH dates AS (
  SELECT customer_id, purchase_date,
         LAG(purchase_date) OVER (PARTITION BY
customer_id ORDER BY purchase_date) AS prev_date
  FROM sales
)
SELECT customer_id, prev_date + INTERVAL '1 day'
AS missing_date
FROM dates
WHERE purchase_date > prev_date + INTERVAL '1
day';
```

### Case 062 [PDF 47]
**Title:** Rank employees by salary within their department, and calculate percent rank.

**Original SQL:**
```sql
SELECT name, department_id, salary,
       RANK() OVER (PARTITION BY department_id
ORDER BY salary DESC) AS salary_rank,
       PERCENT_RANK() OVER (PARTITION BY
department_id ORDER BY salary DESC) AS
salary_percent_rank
FROM employees;
```

### Case 063 [PDF 48]
**Title:** Find products that have never been sold.

**Original SQL:**
```sql
SELECT p.product_id, p.product_name
FROM products p
LEFT JOIN sales s ON p.product_id = s.product_id
WHERE s.sale_id IS NULL;
```

### Case 064 [PDF 49]
**Title:** Write a query to find consecutive days where sales were above a threshold.

**Original SQL:**
```sql
WITH flagged_sales AS (
  SELECT sale_date, amount,
         CASE WHEN amount > 1000 THEN 1 ELSE 0
END AS flag
  FROM sales
),
groups AS (
  SELECT sale_date, amount, flag,
         sale_date - INTERVAL ROW_NUMBER()
OVER (ORDER BY sale_date) DAY AS grp
  FROM flagged_sales
  WHERE flag = 1
)
SELECT MIN(sale_date) AS start_date,
MAX(sale_date) AS end_date, COUNT(*) AS
consecutive_days
FROM groups
GROUP BY grp
ORDER BY consecutive_days DESC;
```

### Case 065 [PDF 50]
**Title:** Write a query to concatenate employee names in each department (string aggregation).

**Original SQL:**
```sql
SELECT department_id, STRING_AGG(name, ', ') AS
employee_names
FROM employees
GROUP BY department_id;
```

### Case 066 [PDF 51a]
**Title:** Find employees whose salary is above the average salary of their department but below the company-wide average.

**Original SQL:**
```sql
SELECT *
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id
)
AND salary < (SELECT AVG(salary) FROM
employees);
```

### Case 067 [PDF 52a]
**Title:** List the customers who purchased all products in a specific category.

**Original SQL:**
```sql
SELECT customer_id
FROM sales
WHERE category_id = 10 -- example category
GROUP BY customer_id
HAVING COUNT(DISTINCT product_id) = (
    SELECT COUNT(DISTINCT product_id)
    FROM products
    WHERE category_id = 10
);
```

### Case 068 [PDF 53a]
**Title:** Retrieve the Nth highest salary from the employees table.

**Original SQL:**
```sql
SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
LIMIT 1 OFFSET N-1;
highest)
```

**Source note:** (Replace N with the desired rank, e.g., N=3 for third

### Case 069 [PDF 54a]
**Title:** Find employees with no corresponding entries in the salary_history table.

**Original SQL:**
```sql
SELECT e.*
FROM employees e
LEFT JOIN salary_history sh ON e.id =
sh.employee_id
WHERE sh.employee_id IS NULL;
```

### Case 070 [PDF 55a]
**Title:** Show the department with the highest number of employees and the count.

**Original SQL:**
```sql
SELECT department_id, COUNT(*) AS
employee_count
FROM employees
GROUP BY department_id
ORDER BY employee_count DESC
LIMIT 1;
```

### Case 071 [PDF 51b]
**Title:** Write a recursive query to list all ancestors (managers) of a given employee.

**Original SQL:**
```sql
WITH RECURSIVE ancestors AS (
    SELECT id, name, manager_id
    FROM employees
    WHERE id = 123 -- given employee id
    UNION ALL
    SELECT e.id, e.name, e.manager_id
    FROM employees e
    JOIN ancestors a ON e.id = a.manager_id
)
SELECT * FROM ancestors WHERE id != 123;
```

### Case 072 [PDF 52b]
**Title:** Calculate the median salary by department using window functions.

**Original SQL:**
```sql
SELECT DISTINCT department_id,
       PERCENTILE_CONT(0.5) WITHIN GROUP
(ORDER BY salary) OVER (PARTITION BY
department_id) AS median_salary
FROM employees;
```

### Case 073 [PDF 53b]
**Title:** Write a query to find the first purchase date and last purchase date for each customer, including customers who never purchased anything.

**Original SQL:**
```sql
SELECT c.customer_id,
       MIN(s.purchase_date) AS first_purchase,
       MAX(s.purchase_date) AS last_purchase
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id;
```

### Case 074 [PDF 54b]
**Title:** Find the percentage difference between each month’s total sales and the previous month’s total sales.

**Original SQL:**
```sql
WITH monthly_sales AS (
  SELECT DATE_TRUNC('month', sale_date) AS
month, SUM(amount) AS total_sales
  FROM sales
  GROUP BY month
)
SELECT month, total_sales,
       (total_sales - LAG(total_sales) OVER (ORDER
BY month)) * 100.0 / LAG(total_sales) OVER
(ORDER BY month) AS pct_change
FROM monthly_sales;
```

### Case 075 [PDF 55b]
**Title:** Write a query to find employees who have the longest tenure within their department.

**Original SQL:**
```sql
WITH tenure AS (
  SELECT *,
         RANK() OVER (PARTITION BY department_id
ORDER BY hire_date ASC) AS tenure_rank
  FROM employees
)
SELECT *
FROM tenure
WHERE tenure_rank = 1;
```

### Case 076 [PDF 56]
**Title:** Generate a report that shows sales and sales growth percentage compared to the same month last year.

**Original SQL:**
```sql
WITH monthly_sales AS (
  SELECT DATE_TRUNC('month', sale_date) AS
month, SUM(amount) AS total_sales
  FROM sales
  GROUP BY month
)
SELECT ms1.month, ms1.total_sales,
       ((ms1.total_sales - ms2.total_sales) * 100.0 /
ms2.total_sales) AS growth_pct
FROM monthly_sales ms1
LEFT JOIN monthly_sales ms2 ON ms1.month =
ms2.month + INTERVAL '1 year';
```

### Case 077 [PDF 57]
**Title:** Write a query to identify overlapping shifts for employees.

**Original SQL:**
```sql
SELECT s1.employee_id, s1.shift_id AS shift1,
s2.shift_id AS shift2
FROM shifts s1
JOIN shifts s2 ON s1.employee_id = s2.employee_id
AND s1.shift_id <> s2.shift_id
WHERE s1.start_time < s2.end_time AND s1.end_time
> s2.start_time;
```

### Case 078 [PDF 58]
**Title:** Calculate the total revenue for each customer, and rank them from highest to lowest spender.

**Original SQL:**
```sql
SELECT customer_id, SUM(amount) AS
total_revenue,
       RANK() OVER (ORDER BY SUM(amount)
DESC) AS revenue_rank
FROM sales
GROUP BY customer_id;
```

### Case 079 [PDF 59]
**Title:** Write a query to find the employee(s) who have never received a promotion.

**Original SQL:**
```sql
SELECT e.*
FROM employees e
LEFT JOIN promotions p ON e.id = p.employee_id
WHERE p.employee_id IS NULL;
```

### Case 080 [PDF 60]
**Title:** Write a query to find the top 3 products with the highest total sales amount each month.

**Original SQL:**
```sql
WITH monthly_product_sales AS (
  SELECT product_id, DATE_TRUNC('month',
sale_date) AS month, SUM(amount) AS total_sales
  FROM sales
  GROUP BY product_id, month
),
ranked_sales AS (
  SELECT *, RANK() OVER (PARTITION BY month
ORDER BY total_sales DESC) AS sales_rank
  FROM monthly_product_sales
)
SELECT product_id, month, total_sales
FROM ranked_sales
WHERE sales_rank <= 3
ORDER BY month, sales_rank;
```

### Case 081 [PDF 61a]
**Title:** Find the customers who placed orders only in the last 30 days.

**Original SQL:**
```sql
SELECT DISTINCT customer_id
FROM orders
WHERE order_date >= CURRENT_DATE -
INTERVAL '30 days'
AND customer_id NOT IN (
  SELECT DISTINCT customer_id
  FROM orders
  WHERE order_date < CURRENT_DATE -
INTERVAL '30 days'
);
```

### Case 082 [PDF 62a]
**Title:** Find products that have never been ordered.

**Original SQL:**
```sql
SELECT p.product_id, p.product_name
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id
WHERE o.order_id IS NULL;
```

### Case 083 [PDF 63a]
**Title:** Find employees whose salary is above their department’s average but below the overall average salary.

**Original SQL:**
```sql
SELECT *
FROM employees e
WHERE salary > (SELECT AVG(salary) FROM
employees WHERE department_id = e.department_id)
AND salary < (SELECT AVG(salary) FROM
employees);
```

### Case 084 [PDF 64a]
**Title:** Calculate the total sales amount and number of orders per customer in the last year.

**Original SQL:**
```sql
SELECT customer_id, COUNT(*) AS total_orders,
SUM(amount) AS total_sales
FROM sales
WHERE sale_date >= CURRENT_DATE -
INTERVAL '1 year'
GROUP BY customer_id;
```

### Case 085 [PDF 65a]
**Title:** List the top 5 highest-paid employees per department.

**Original SQL:**
```sql
SELECT *
FROM (
  SELECT e.*, ROW_NUMBER() OVER
(PARTITION BY department_id ORDER BY salary
DESC) AS rn
  FROM employees e
) sub
WHERE rn <= 5;
```

### Case 086 [PDF 61b]
**Title:** Write a query to identify “gaps and islands” in attendance records (consecutive dates present).

**Original SQL:**
```sql
WITH attendance_groups AS (
  SELECT employee_id, attendance_date,
         attendance_date - INTERVAL ROW_NUMBER()
OVER (PARTITION BY employee_id ORDER BY
attendance_date) DAY AS grp
  FROM attendance
)
SELECT employee_id, MIN(attendance_date) AS
start_date, MAX(attendance_date) AS end_date,
COUNT(*) AS consecutive_days
FROM attendance_groups
GROUP BY employee_id, grp
ORDER BY employee_id, start_date;
```

### Case 087 [PDF 62b]
**Title:** Write a recursive query to list all descendants of a manager in an organizational hierarchy.

**Original SQL:**
```sql
WITH RECURSIVE descendants AS (
  SELECT id, name, manager_id
  FROM employees
  WHERE manager_id = 100 -- starting manager id
  UNION ALL
  SELECT e.id, e.name, e.manager_id
  FROM employees e
  INNER JOIN descendants d ON e.manager_id = d.id
)
SELECT * FROM descendants;
```

### Case 088 [PDF 63b]
**Title:** Calculate a 3-month moving average of monthly sales per product.

**Original SQL:**
```sql
WITH monthly_sales AS (
  SELECT product_id, DATE_TRUNC('month',
sale_date) AS month, SUM(amount) AS total_sales
  FROM sales
  GROUP BY product_id, month
)
SELECT product_id, month, total_sales,
       AVG(total_sales) OVER (PARTITION BY
product_id ORDER BY month ROWS BETWEEN 2
PRECEDING AND CURRENT ROW) AS
moving_avg
FROM monthly_sales;
```

### Case 089 [PDF 64b]
**Title:** Write a query to find employees who have the same hire date as their managers.

**Original SQL:**
```sql
SELECT e.name AS employee_name, m.name AS
manager_name, e.hire_date
FROM employees e
JOIN employees m ON e.manager_id = m.id
WHERE e.hire_date = m.hire_date;
```

### Case 090 [PDF 65b]
**Title:** Write a query to find products with increasing sales over the last 3 months.

**Original SQL:**
```sql
WITH monthly_sales AS (
  SELECT product_id, DATE_TRUNC('month',
sale_date) AS month, SUM(amount) AS total_sales
  FROM sales
  GROUP BY product_id, month
),
ranked_sales AS (
  SELECT product_id, month, total_sales,
         ROW_NUMBER() OVER (PARTITION BY
product_id ORDER BY month DESC) AS rn
  FROM monthly_sales
)
SELECT ms1.product_id
FROM ranked_sales ms1
JOIN ranked_sales ms2 ON ms1.product_id =
ms2.product_id AND ms1.rn = 1 AND ms2.rn = 2
JOIN ranked_sales ms3 ON ms1.product_id =
ms3.product_id AND ms3.rn = 3
WHERE ms3.total_sales < ms2.total_sales AND
ms2.total_sales < ms1.total_sales;
```

### Case 091 [PDF 66]
**Title:** Write a query to get the nth highest salary per department.

**Original SQL:**
```sql
SELECT department_id, salary
FROM (
  SELECT department_id, salary, ROW_NUMBER()
OVER (PARTITION BY department_id ORDER BY
salary DESC) AS rn
  FROM employees
) sub
WHERE rn = N;
```

**Source note:** (Replace N with the desired rank.)

### Case 092 [PDF 67]
**Title:** Find employees who have managed more than 3 projects.

**Original SQL:**
```sql
SELECT manager_id, COUNT(DISTINCT project_id)
AS project_count
FROM projects
GROUP BY manager_id
HAVING COUNT(DISTINCT project_id) > 3;
```

### Case 093 [PDF 68]
**Title:** Write a query to calculate the difference in days between each employee's hire date and their manager’s hire date.

**Original SQL:**
```sql
SELECT e.name AS employee, m.name AS manager,
       DATEDIFF(day, m.hire_date, e.hire_date) AS
days_difference
FROM employees e
JOIN employees m ON e.manager_id = m.id;
```

**Source note:** (Syntax of DATEDIFF varies by SQL dialect)

### Case 094 [PDF 69]
**Title:** Write a query to find the department with the highest average years of experience.

**Original SQL:**
```sql
SELECT department_id, AVG(EXTRACT(year FROM
CURRENT_DATE - hire_date)) AS
avg_experience_years
FROM employees
GROUP BY department_id
ORDER BY avg_experience_years DESC
LIMIT 1;
```

### Case 095 [PDF 70]
**Title:** Identify employees who had overlapping project assignments.

**Original SQL:**
```sql
SELECT p1.employee_id, p1.project_id AS project1,
p2.project_id AS project2
FROM project_assignments p1
JOIN project_assignments p2 ON p1.employee_id =
p2.employee_id AND p1.project_id <> p2.project_id
WHERE p1.start_date < p2.end_date AND p1.end_date
> p2.start_date;
```

### Case 096 [PDF 71a]
**Title:** Find customers who made purchases in every month of the current year.

**Original SQL:**
```sql
WITH months AS (
  SELECT generate_series(1, 12) AS month
),
customer_months AS (
  SELECT customer_id, EXTRACT(MONTH FROM
purchase_date) AS month
  FROM sales
  WHERE EXTRACT(YEAR FROM purchase_date) =
EXTRACT(YEAR FROM CURRENT_DATE)
  GROUP BY customer_id, EXTRACT(MONTH
FROM purchase_date)
)
SELECT customer_id
FROM customer_months
GROUP BY customer_id
HAVING COUNT(DISTINCT month) = 12;
```

### Case 097 [PDF 72a]
**Title:** List employees who earn more than all their subordinates.

**Original SQL:**
```sql
SELECT e.id, e.name, e.salary
FROM employees e
WHERE e.salary > ALL (
  SELECT salary
  FROM employees sub
  WHERE sub.manager_id = e.id
);
```

### Case 098 [PDF 73a]
**Title:** Get the product with the highest sales for each category.

**Original SQL:**
```sql
WITH category_sales AS (
  SELECT category_id, product_id, SUM(amount) AS
total_sales,
         RANK() OVER (PARTITION BY category_id
ORDER BY SUM(amount) DESC) AS sales_rank
  FROM sales
  GROUP BY category_id, product_id
)
SELECT category_id, product_id, total_sales
FROM category_sales
WHERE sales_rank = 1;
```

### Case 099 [PDF 74a]
**Title:** Find customers who haven’t ordered in the last 6 months.

**Original SQL:**
```sql
SELECT customer_id
FROM customers c
LEFT JOIN orders o ON c.customer_id =
o.customer_id
GROUP BY c.customer_id
HAVING MAX(o.order_date) < CURRENT_DATE -
INTERVAL '6 months' OR MAX(o.order_date) IS
NULL;
```

### Case 100 [PDF 75a]
**Title:** Find the maximum salary gap between any two employees within the same department.

**Original SQL:**
```sql
SELECT department_id, MAX(salary) - MIN(salary)
AS salary_gap
FROM employees
GROUP BY department_id;
```

### Case 101 [PDF 71b]
**Title:** Write a recursive query to compute the total budget under each manager (including subordinates).

**Original SQL:**
```sql
WITH RECURSIVE manager_budget AS (
  SELECT id, manager_id, budget
  FROM departments
  UNION ALL
  SELECT d.id, d.manager_id, mb.budget
  FROM departments d
  JOIN manager_budget mb ON d.manager_id = mb.id
)
SELECT manager_id, SUM(budget) AS total_budget
FROM manager_budget
GROUP BY manager_id;
```

### Case 102 [PDF 72b]
**Title:** Write a query to detect gaps in a sequence of invoice numbers.

**Original SQL:**
```sql
WITH numbered_invoices AS (
  SELECT invoice_number, ROW_NUMBER() OVER
(ORDER BY invoice_number) AS rn
  FROM invoices
)
SELECT invoice_number + 1 AS missing_invoice
FROM numbered_invoices ni
WHERE (invoice_number + 1) <> (
  SELECT invoice_number FROM numbered_invoices
WHERE rn = ni.rn + 1
);
```

### Case 103 [PDF 73b]
**Title:** Calculate the rank of employees by salary within their department but restart rank numbering every 10 employees.

**Original SQL:**
```sql
WITH ranked_employees AS (
  SELECT e.*,
         ROW_NUMBER() OVER (PARTITION BY
department_id ORDER BY salary DESC) AS rn
  FROM employees e
)
SELECT *, ((rn - 1) / 10) + 1 AS rank_group
FROM ranked_employees;
```

### Case 104 [PDF 74b]
**Title:** Find the moving median of daily sales over the last 7 days for each product.

**Original SQL:**
```sql
WITH daily_sales AS (
  SELECT product_id, sale_date, SUM(amount) AS
total_sales
  FROM sales
  GROUP BY product_id, sale_date
)
SELECT product_id, sale_date,
       PERCENTILE_CONT(0.5) WITHIN GROUP
(ORDER BY total_sales)
       OVER (PARTITION BY product_id ORDER BY
sale_date ROWS BETWEEN 6 PRECEDING AND
CURRENT ROW) AS moving_median
FROM daily_sales;
```

### Case 105 [PDF 75b]
**Title:** Find customers who purchased both product A and product B.

**Original SQL:**
```sql
SELECT customer_id
FROM sales
WHERE product_id IN ('A', 'B')
GROUP BY customer_id
HAVING COUNT(DISTINCT product_id) = 2;
```

### Case 106 [PDF 76]
**Title:** Write a query to generate a calendar table with all dates for the current year.

**Original SQL:**
```sql
SELECT generate_series(
  DATE_TRUNC('year', CURRENT_DATE),
  DATE_TRUNC('year', CURRENT_DATE) +
INTERVAL '1 year' - INTERVAL '1 day',
  INTERVAL '1 day'
) AS calendar_date;
```

### Case 107 [PDF 77]
**Title:** Find employees who have worked in more than 3 different departments.

**Original SQL:**
```sql
SELECT employee_id
FROM employee_department_history
GROUP BY employee_id
HAVING COUNT(DISTINCT department_id) > 3;
```

### Case 108 [PDF 78]
**Title:** Calculate the percentage contribution of each product’s sales to the total sales per month.

**Original SQL:**
```sql
WITH monthly_sales AS (
  SELECT product_id, DATE_TRUNC('month',
sale_date) AS month, SUM(amount) AS product_sales
  FROM sales
  GROUP BY product_id, month
),
total_monthly_sales AS (
  SELECT month, SUM(product_sales) AS total_sales
  FROM monthly_sales
  GROUP BY month
)
SELECT ms.product_id, ms.month, ms.product_sales,
       (ms.product_sales * 100.0) / tms.total_sales AS
pct_contribution
FROM monthly_sales ms
JOIN total_monthly_sales tms ON ms.month =
tms.month;
```

### Case 109 [PDF 79]
**Title:** Write a query to pivot monthly sales data for each product into columns.

**Original SQL:**
```sql
SELECT product_id,
       SUM(CASE WHEN EXTRACT(MONTH FROM
sale_date) = 1 THEN amount ELSE 0 END) AS Jan,
       SUM(CASE WHEN EXTRACT(MONTH FROM
sale_date) = 2 THEN amount ELSE 0 END) AS Feb,
       -- Repeat for other months
       SUM(CASE WHEN EXTRACT(MONTH FROM
sale_date) = 12 THEN amount ELSE 0 END) AS Dec
FROM sales
GROUP BY product_id;
```

### Case 110 [PDF 80]
**Title:** Find the 3 most recent orders per customer including order details.

**Original SQL:**
```sql
SELECT *
FROM (
  SELECT o.*, ROW_NUMBER() OVER
(PARTITION BY customer_id ORDER BY order_date
DESC) AS rn
  FROM orders o
) sub
WHERE rn <= 3;
```

### Case 111 [PDF 81a]
**Title:** Find employees who have never taken any leave.

**Original SQL:**
```sql
SELECT e.*
FROM employees e
LEFT JOIN leaves l ON e.id = l.employee_id
WHERE l.leave_id IS NULL;
```

### Case 112 [PDF 82a]
**Title:** List customers who placed orders in January but not in February.

**Original SQL:**
```sql
WITH jan_orders AS (
  SELECT DISTINCT customer_id
  FROM orders
  WHERE EXTRACT(MONTH FROM order_date) = 1
),
feb_orders AS (
  SELECT DISTINCT customer_id
  FROM orders
  WHERE EXTRACT(MONTH FROM order_date) = 2
)
SELECT customer_id
FROM jan_orders
WHERE customer_id NOT IN (SELECT customer_id
FROM feb_orders);
```

### Case 113 [PDF 83a]
**Title:** Find products that have seen a price increase in the last 6 months.

**Original SQL:**
```sql
WITH price_changes AS (
  SELECT product_id, price, effective_date,
         LAG(price) OVER (PARTITION BY product_id
ORDER BY effective_date) AS prev_price
  FROM product_prices
  WHERE effective_date >= CURRENT_DATE -
INTERVAL '6 months'
)
SELECT DISTINCT product_id
FROM price_changes
WHERE price > prev_price;
```

### Case 114 [PDF 84a]
**Title:** Find the department(s) with the second highest average salary.

**Original SQL:**
```sql
WITH avg_salaries AS (
  SELECT department_id, AVG(salary) AS avg_salary
  FROM employees
  GROUP BY department_id
),
ranked_salaries AS (
  SELECT department_id, avg_salary,
DENSE_RANK() OVER (ORDER BY avg_salary
DESC) AS rnk
  FROM avg_salaries
)
SELECT department_id, avg_salary
FROM ranked_salaries
WHERE rnk = 2;
```

### Case 115 [PDF 85a]
**Title:** Find employees who joined in the same month and year.

**Original SQL:**
```sql
SELECT e1.id AS emp1_id, e2.id AS emp2_id,
e1.hire_date
FROM employees e1
JOIN employees e2 ON e1.id <> e2.id
AND EXTRACT(MONTH FROM e1.hire_date) =
EXTRACT(MONTH FROM e2.hire_date)
AND EXTRACT(YEAR FROM e1.hire_date) =
EXTRACT(YEAR FROM e2.hire_date);
```

### Case 116 [PDF 81b]
**Title:** Write a recursive query to find all employees and their level of reporting (distance from CEO).

**Original SQL:**
```sql
WITH RECURSIVE hierarchy AS (
  SELECT id, name, manager_id, 1 AS level
  FROM employees
  WHERE manager_id IS NULL -- CEO level
  UNION ALL
  SELECT e.id, e.name, e.manager_id, h.level + 1
  FROM employees e
  JOIN hierarchy h ON e.manager_id = h.id
)
SELECT * FROM hierarchy ORDER BY level,
manager_id;
```

### Case 117 [PDF 82b]
**Title:** Find the second highest salary per department without using window functions.

**Original SQL:**
```sql
SELECT department_id, MAX(salary) AS
second_highest_salary
FROM employees e1
WHERE salary < (
  SELECT MAX(salary)
  FROM employees e2
  WHERE e2.department_id = e1.department_id
)
GROUP BY department_id;
```

### Case 118 [PDF 83b]
**Title:** Calculate the percentage change in sales for each product comparing current month to previous month.

**Original SQL:**
```sql
WITH monthly_sales AS (
  SELECT product_id, DATE_TRUNC('month',
sale_date) AS month, SUM(amount) AS total_sales
  FROM sales
  GROUP BY product_id, month
)
SELECT product_id, month, total_sales,
       (total_sales - LAG(total_sales) OVER
(PARTITION BY product_id ORDER BY month)) *
100.0
       / LAG(total_sales) OVER (PARTITION BY
product_id ORDER BY month) AS pct_change
FROM monthly_sales;
```

### Case 119 [PDF 84b]
**Title:** Write a query to identify duplicate rows (all columns) in a table.

**Original SQL:**
```sql
SELECT *, COUNT(*) OVER (PARTITION BY col1,
col2, col3, ...) AS cnt
FROM table_name
WHERE cnt > 1;
```

**Source note:** (Replace col1, col2, col3, ... with actual column names)

### Case 120 [PDF 85b]
**Title:** Write a query to unpivot quarterly sales data into rows.

**Original SQL:**
```sql
SELECT product_id, 'Q1' AS quarter, Q1_sales AS
sales FROM sales_data
UNION ALL
SELECT product_id, 'Q2', Q2_sales FROM sales_data
UNION ALL
SELECT product_id, 'Q3', Q3_sales FROM sales_data
UNION ALL
SELECT product_id, 'Q4', Q4_sales FROM sales_data;
```

### Case 121 [PDF 86]
**Title:** Find employees whose salary is above the average salary of their department but below the company-wide average.

**Original SQL:**
```sql
SELECT *
FROM employees e
WHERE salary > (SELECT AVG(salary) FROM
employees WHERE department_id = e.department_id)
AND salary < (SELECT AVG(salary) FROM
employees);
```

### Case 122 [PDF 87]
**Title:** Write a query to find customers with the highest purchase amount per year.

**Original SQL:**
```sql
WITH yearly_sales AS (
  SELECT customer_id, EXTRACT(YEAR FROM
sale_date) AS year, SUM(amount) AS total_amount
  FROM sales
  GROUP BY customer_id, year
),
ranked_sales AS (
  SELECT *, RANK() OVER (PARTITION BY year
ORDER BY total_amount DESC) AS rnk
  FROM yearly_sales
)
SELECT customer_id, year, total_amount
FROM ranked_sales
WHERE rnk = 1;
```

### Case 123 [PDF 88]
**Title:** Write a query to list all employees who have a salary equal to the average salary of their department.

**Original SQL:**
```sql
SELECT e.*
FROM employees e
JOIN (
  SELECT department_id, AVG(salary) AS avg_salary
  FROM employees
  GROUP BY department_id
) d ON e.department_id = d.department_id AND
e.salary = d.avg_salary;
```

### Case 124 [PDF 89]
**Title:** Find the first order date for each customer.

**Original SQL:**
```sql
SELECT customer_id, MIN(order_date) AS
first_order_date
FROM orders
GROUP BY customer_id;
```

### Case 125 [PDF 90]
**Title:** Find employees who have been promoted more than twice.

**Original SQL:**
```sql
SELECT employee_id, COUNT(*) AS
promotion_count
FROM promotions
GROUP BY employee_id
HAVING COUNT(*) > 2;
```

### Case 126 [PDF 91]
**Title:** Find employees who have not been assigned to any project.

**Original SQL:**
```sql
SELECT e.*
FROM employees e
LEFT JOIN project_assignments pa ON e.id =
pa.employee_id
WHERE pa.project_id IS NULL;
```

### Case 127 [PDF 92]
**Title:** Find the total sales per customer including those with zero sales.

**Original SQL:**
```sql
SELECT c.customer_id, COALESCE(SUM(s.amount),
0) AS total_sales
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id;
```

### Case 128 [PDF 93]
**Title:** Find the highest salary by department and the employee(s) who earn it.

**Original SQL:**
```sql
WITH dept_max AS (
  SELECT department_id, MAX(salary) AS max_salary
  FROM employees
  GROUP BY department_id
)
SELECT e.*
FROM employees e
JOIN dept_max d ON e.department_id =
d.department_id AND e.salary = d.max_salary;
```

### Case 129 [PDF 94]
**Title:** Find customers with no orders in the last year.

**Original SQL:**
```sql
SELECT customer_id
FROM customers c
LEFT JOIN orders o ON c.customer_id =
o.customer_id AND o.order_date >=
CURRENT_DATE - INTERVAL '1 year'
WHERE o.order_id IS NULL;
```

### Case 130 [PDF 95]
**Title:** Find employees whose salary is within 10% of the highest salary in their department.

**Original SQL:**
```sql
WITH dept_max AS (
  SELECT department_id, MAX(salary) AS max_salary
  FROM employees
  GROUP BY department_id
)
SELECT e.*
FROM employees e
JOIN dept_max d ON e.department_id =
d.department_id
WHERE e.salary >= 0.9 * d.max_salary;
```

### Case 131 [PDF 96]
**Title:** Find the running total of sales by date.

**Original SQL:**
```sql
SELECT sale_date, SUM(amount) OVER (ORDER BY
sale_date ROWS BETWEEN UNBOUNDED
PRECEDING AND CURRENT ROW) AS
running_total
FROM sales
ORDER BY sale_date;
```

### Case 132 [PDF 97]
**Title:** Find employees who earn more than the average salary of the entire company.

**Original SQL:**
```sql
SELECT *
FROM employees
WHERE salary > (SELECT AVG(salary) FROM
employees);
```

### Case 133 [PDF 98]
**Title:** Get the last 3 orders placed by each customer.

**Original SQL:**
```sql
SELECT *
FROM (
  SELECT o.*, ROW_NUMBER() OVER
(PARTITION BY customer_id ORDER BY order_date
DESC) AS rn
  FROM orders o
) sub
WHERE rn <= 3;
```

### Case 134 [PDF 99]
**Title:** Find the difference in days between the earliest and latest orders per customer.

**Original SQL:**
```sql
SELECT customer_id, MAX(order_date) -
MIN(order_date) AS days_between
FROM orders
GROUP BY customer_id;
```

### Case 135 [PDF 100a]
**Title:** Find employees who have worked on all projects.

**Original SQL:**
```sql
SELECT employee_id
FROM project_assignments
GROUP BY employee_id
HAVING COUNT(DISTINCT project_id) = (SELECT
COUNT(*) FROM projects);
```

### Case 136 [PDF 101]
**Title:** Find customers who placed orders only in the last 6 months.

**Original SQL:**
```sql
SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING MIN(order_date) >= CURRENT_DATE -
INTERVAL '6 months';
```

### Case 137 [PDF 102]
**Title:** Get the total number of orders per day, including days with zero orders.

**Original SQL:**
```sql
WITH dates AS (
  SELECT generate_series(MIN(order_date),
MAX(order_date), INTERVAL '1 day') AS day
  FROM orders
)
SELECT d.day, COUNT(o.order_id) AS order_count
FROM dates d
LEFT JOIN orders o ON d.day = o.order_date
GROUP BY d.day
ORDER BY d.day;
```

### Case 138 [PDF 103]
**Title:** Find the department with the most employees.

**Original SQL:**
```sql
SELECT department_id, COUNT(*) AS
employee_count
FROM employees
GROUP BY department_id
ORDER BY employee_count DESC
LIMIT 1;
```

### Case 139 [PDF 104]
**Title:** Write a query to find gaps in employee IDs.

**Original SQL:**
```sql
WITH numbered AS (
  SELECT id, ROW_NUMBER() OVER (ORDER BY
id) AS rn
  FROM employees
)
SELECT rn + 1 AS missing_id
FROM numbered
WHERE id <> rn;
```

### Case 140 [PDF 105]
**Title:** Find employees who were hired before their managers.

**Original SQL:**
```sql
SELECT e.name AS employee, m.name AS manager,
e.hire_date, m.hire_date AS manager_hire_date
FROM employees e
JOIN employees m ON e.manager_id = m.id
WHERE e.hire_date < m.hire_date;
```

### Case 141 [PDF 106]
**Title:** List departments with average salary greater than the overall average.

**Original SQL:**
```sql
SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > (SELECT AVG(salary)
FROM employees);
```

### Case 142 [PDF 107]
**Title:** Find employees with the highest number of dependents.

**Original SQL:**
```sql
SELECT employee_id, COUNT(*) AS
dependent_count
FROM dependents
GROUP BY employee_id
ORDER BY dependent_count DESC
LIMIT 1;
```

### Case 143 [PDF 108]
**Title:** Find customers with the longest gap between two consecutive orders.

**Original SQL:**
```sql
WITH ordered_orders AS (
  SELECT customer_id, order_date,
         LAG(order_date) OVER (PARTITION BY
customer_id ORDER BY order_date) AS
prev_order_date
  FROM orders
),
gaps AS (
  SELECT customer_id, order_date - prev_order_date
AS gap_days
  FROM ordered_orders
  WHERE prev_order_date IS NOT NULL
)
SELECT customer_id, MAX(gap_days) AS
longest_gap
FROM gaps
GROUP BY customer_id
ORDER BY longest_gap DESC
LIMIT 1;
```

### Case 144 [PDF 109]
**Title:** Find customers who ordered all products in a category.

**Original SQL:**
```sql
SELECT customer_id
FROM sales
WHERE product_id IN (SELECT product_id FROM
products WHERE category_id = 1)
GROUP BY customer_id
HAVING COUNT(DISTINCT product_id) = (SELECT
COUNT(*) FROM products WHERE category_id = 1);
```

### Case 145 [PDF 110]
**Title:** Get the most recent order date per customer.

**Original SQL:**
```sql
SELECT customer_id, MAX(order_date) AS
last_order_date
FROM orders
GROUP BY customer_id;
```

### Case 146 [PDF 111]
**Title:** List all employees and their manager names.

**Original SQL:**
```sql
SELECT e.name AS employee, m.name AS manager
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.id;
```

### Case 147 [PDF 112]
**Title:** Find employees with the same salary as their manager.

**Original SQL:**
```sql
SELECT e.name AS employee, m.name AS manager,
e.salary
FROM employees e
JOIN employees m ON e.manager_id = m.id
WHERE e.salary = m.salary;
```

### Case 148 [PDF 113]
**Title:** List products with sales above the average sales amount.

**Original SQL:**
```sql
WITH avg_sales AS (
  SELECT AVG(amount) AS avg_amount
  FROM sales
)
SELECT product_id, SUM(amount) AS total_sales
FROM sales
GROUP BY product_id
HAVING SUM(amount) > (SELECT avg_amount
FROM avg_sales);
```

### Case 149 [PDF 114]
**Title:** Get the number of employees hired each year.

**Original SQL:**
```sql
SELECT EXTRACT(YEAR FROM hire_date) AS
hire_year, COUNT(*) AS count
FROM employees
GROUP BY hire_year
ORDER BY hire_year;
```

### Case 150 [PDF 115]
**Title:** Find the number of employees with the same job title per department.

**Original SQL:**
```sql
SELECT department_id, job_title, COUNT(*) AS
employee_count
FROM employees
GROUP BY department_id, job_title;
```

### Case 151 [PDF 116]
**Title:** Find employees with no manager assigned.

**Original SQL:**
```sql
SELECT *
FROM employees
WHERE manager_id IS NULL;
```

### Case 152 [PDF 117]
**Title:** Calculate average salary by department and job title.

**Original SQL:**
```sql
SELECT department_id, job_title, AVG(salary) AS
avg_salary
FROM employees
GROUP BY department_id, job_title;
```

### Case 153 [PDF 118]
**Title:** Find the median salary of employees.

**Original SQL:**
```sql
SELECT PERCENTILE_CONT(0.5) WITHIN
GROUP (ORDER BY salary) AS median_salary
FROM employees;
```

### Case 154 [PDF 119]
**Title:** Find employees who have been promoted more than once.

**Original SQL:**
```sql
SELECT employee_id, COUNT(*) AS
promotion_count
FROM promotions
GROUP BY employee_id
HAVING COUNT(*) > 1;
```

### Case 155 [PDF 120]
**Title:** Calculate total sales by product category.

**Original SQL:**
```sql
SELECT p.category_id, SUM(s.amount) AS total_sales
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category_id;
```

### Case 156 [PDF 121]
**Title:** Find the top 3 products by sales amount.

**Original SQL:**
```sql
SELECT product_id, SUM(amount) AS total_sales
FROM sales
GROUP BY product_id
ORDER BY total_sales DESC
LIMIT 3;
```

### Case 157 [PDF 122]
**Title:** Get employees who joined after their department was created.

**Original SQL:**
```sql
SELECT e.*
FROM employees e
JOIN departments d ON e.department_id =
d.department_id
WHERE e.hire_date > d.creation_date;
```

### Case 158 [PDF 123]
**Title:** Find customers with no sales records.

**Original SQL:**
```sql
SELECT c.*
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL;
```

### Case 159 [PDF 124]
**Title:** Find the second highest salary in the company.

**Original SQL:**
```sql
SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (SELECT MAX(salary) FROM
employees);
```

### Case 160 [PDF 125]
**Title:** Find products with sales only in the current month.

**Original SQL:**
```sql
SELECT product_id
FROM sales
GROUP BY product_id
HAVING MAX(sale_date) >=
DATE_TRUNC('month', CURRENT_DATE)
AND MIN(sale_date) >= DATE_TRUNC('month',
CURRENT_DATE);
```

### Case 161 [PDF 126]
**Title:** Find employees with consecutive workdays.

**Original SQL:**
```sql
WITH attendance AS (
  SELECT employee_id, work_date,
         work_date - INTERVAL '1 day' *
ROW_NUMBER() OVER (PARTITION BY
employee_id ORDER BY work_date) AS grp
  FROM work_log
)
SELECT employee_id, COUNT(*) AS
consecutive_days
FROM attendance
GROUP BY employee_id, grp
HAVING COUNT(*) > 1;
```

### Case 162 [PDF 127]
**Title:** Find the average number of orders per customer.

**Original SQL:**
```sql
SELECT AVG(order_count) AS
avg_orders_per_customer
FROM (
  SELECT customer_id, COUNT(*) AS order_count
  FROM orders
  GROUP BY customer_id
) sub;
```

### Case 163 [PDF 128]
**Title:** Find employees who have worked on more than 5 projects.

**Original SQL:**
```sql
SELECT employee_id, COUNT(DISTINCT project_id)
AS project_count
FROM project_assignments
GROUP BY employee_id
HAVING COUNT(DISTINCT project_id) > 5;
```

### Case 164 [PDF 129]
**Title:** Find the total number of products sold each day.

**Original SQL:**
```sql
SELECT sale_date, SUM(quantity) AS
total_quantity_sold
FROM sales
GROUP BY sale_date
ORDER BY sale_date;
```

### Case 165 [PDF 130]
**Title:** Find customers with orders totaling more than $10,000.

**Original SQL:**
```sql
SELECT customer_id, SUM(amount) AS total_amount
FROM sales
GROUP BY customer_id
HAVING SUM(amount) > 10000;
```

### Case 166 [PDF 131]
**Title:** Find employees who have never received a bonus.

**Original SQL:**
```sql
SELECT e.*
FROM employees e
LEFT JOIN bonuses b ON e.id = b.employee_id
WHERE b.bonus_id IS NULL;
```

### Case 167 [PDF 132]
**Title:** Find the department with the lowest average salary.

**Original SQL:**
```sql
SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id
ORDER BY avg_salary
LIMIT 1;
```

### Case 168 [PDF 133]
**Title:** Get cumulative count of orders per customer over time.

**Original SQL:**
```sql
SELECT customer_id, order_date,
       COUNT(*) OVER (PARTITION BY customer_id
ORDER BY order_date) AS cumulative_orders
FROM orders;
```

### Case 169 [PDF 134]
**Title:** Find customers who ordered products only from one category.

**Original SQL:**
```sql
SELECT customer_id
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY customer_id
HAVING COUNT(DISTINCT p.category_id) = 1;
```

### Case 170 [PDF 135]
**Title:** Write a query to display employee names alongside their manager names, including those without managers.

**Original SQL:**
```sql
SELECT e.name AS employee_name, m.name AS
manager_name
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.id;
```

### Case 171 [PDF 136]
**Title:** Find products with sales increasing every month for the last 3 months.

**Original SQL:**
```sql
WITH monthly_sales AS (
  SELECT product_id, DATE_TRUNC('month',
sale_date) AS month, SUM(amount) AS total_sales
  FROM sales
  WHERE sale_date >= CURRENT_DATE -
INTERVAL '3 months'
  GROUP BY product_id, month
)
SELECT product_id
FROM monthly_sales
GROUP BY product_id
HAVING COUNT(*) = 3
   AND MIN(total_sales) < MAX(total_sales)
   AND total_sales[1] < total_sales[2] AND
support
window functions.
```

**Source note:** total_sales[2] < total_sales[3]; -- depends on DB Note: Exact syntax varies per RDBMS; may need

### Case 172 [PDF 137]
**Title:** Write a recursive query to get all descendants of a manager.

**Original SQL:**
```sql
WITH RECURSIVE subordinates AS (
  SELECT id, name, manager_id
  FROM employees
  WHERE id = :manager_id
  UNION ALL
  SELECT e.id, e.name, e.manager_id
  FROM employees e
  JOIN subordinates s ON e.manager_id = s.id
)
SELECT * FROM subordinates WHERE id !=
:manager_id;
```

### Case 173 [PDF 138]
**Title:** Find the department with the highest variance in salaries.

**Original SQL:**
```sql
SELECT department_id, VAR_SAMP(salary) AS
salary_variance
FROM employees
GROUP BY department_id
ORDER BY salary_variance DESC
LIMIT 1;
```

### Case 174 [PDF 139]
**Title:** Calculate the difference between each order amount and the previous order amount per customer.

**Original SQL:**
```sql
SELECT customer_id, order_date, amount,
       amount - LAG(amount) OVER (PARTITION BY
customer_id ORDER BY order_date) AS diff
FROM orders;
```

### Case 175 [PDF 140]
**Title:** Find customers who purchased both Product A and Product B.

**Original SQL:**
```sql
SELECT customer_id
FROM sales
WHERE product_id IN ('A', 'B')
GROUP BY customer_id
HAVING COUNT(DISTINCT product_id) = 2;
```

### Case 176 [PDF 141]
**Title:** Find the top N customers by total sales amount.

**Original SQL:**
```sql
SELECT customer_id, SUM(amount) AS total_sales
FROM sales
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT N;
```

### Case 177 [PDF 142]
**Title:** Find the month with the highest sales in the current year.

**Original SQL:**
```sql
SELECT DATE_TRUNC('month', sale_date) AS
month, SUM(amount) AS total_sales
FROM sales
WHERE EXTRACT(YEAR FROM sale_date) =
EXTRACT(YEAR FROM CURRENT_DATE)
GROUP BY month
ORDER BY total_sales DESC
LIMIT 1;
```

### Case 178 [PDF 143]
**Title:** Write a query to display all employees who have worked on a project longer than 6 months.

**Original SQL:**
```sql
SELECT employee_id
FROM project_assignments
WHERE end_date - start_date > INTERVAL '6
months';
```

### Case 179 [PDF 144]
**Title:** Find the nth highest salary in a company (e.g., 5th highest).

**Original SQL:**
```sql
SELECT DISTINCT salary
FROM employees
ORDER BY salary DESC
OFFSET n - 1 ROWS FETCH NEXT 1 ROW ONLY;
```

### Case 180 [PDF 145]
**Title:** Get the average salary of employees hired each year.

**Original SQL:**
```sql
SELECT EXTRACT(YEAR FROM hire_date) AS
year, AVG(salary) AS avg_salary
FROM employees
GROUP BY year
ORDER BY year;
```

### Case 181 [PDF 146]
**Title:** Find employees whose salaries are between the 25th and 75th percentile.

**Original SQL:**
```sql
WITH percentiles AS (
  SELECT
    PERCENTILE_CONT(0.25) WITHIN GROUP
(ORDER BY salary) AS p25,
    PERCENTILE_CONT(0.75) WITHIN GROUP
(ORDER BY salary) AS p75
  FROM employees
)
SELECT e.*
FROM employees e, percentiles p
WHERE e.salary BETWEEN p.p25 AND p.p75;
```

### Case 182 [PDF 147]
**Title:** Find employees with salaries higher than their department average.

**Original SQL:**
```sql
SELECT e.*
FROM employees e
JOIN (
  SELECT department_id, AVG(salary) AS avg_salary
  FROM employees
  GROUP BY department_id
) d ON e.department_id = d.department_id
WHERE e.salary > d.avg_salary;
```

### Case 183 [PDF 148]
**Title:** Find the difference between each row's value and the previous row’s value in sales.

**Original SQL:**
```sql
SELECT sale_date, amount,
       amount - LAG(amount) OVER (ORDER BY
sale_date) AS diff
FROM sales;
```

### Case 184 [PDF 149]
**Title:** List employees who have been in the company for more than 10 years.

**Original SQL:**
```sql
SELECT *
FROM employees
WHERE CURRENT_DATE - hire_date > INTERVAL
'10 years';
```

### Case 185 [PDF 150]
**Title:** Find the department with the most promotions.

**Original SQL:**
```sql
SELECT e.department_id, COUNT(*) AS
promotion_count
FROM promotions p
JOIN employees e ON p.employee_id = e.id
GROUP BY e.department_id
ORDER BY promotion_count DESC
LIMIT 1;
```

### Case 186 [PDF 151]
**Title:** Find customers who ordered products from at least 3 different categories.

**Original SQL:**
```sql
SELECT customer_id
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY customer_id
HAVING COUNT(DISTINCT p.category_id) >= 3;
```

### Case 187 [PDF 152]
**Title:** Find the average gap (in days) between orders per customer.

**Original SQL:**
```sql
WITH ordered_orders AS (
  SELECT customer_id, order_date,
         LAG(order_date) OVER (PARTITION BY
customer_id ORDER BY order_date) AS
prev_order_date
  FROM orders
),
gaps AS (
  SELECT customer_id, order_date - prev_order_date
AS gap
  FROM ordered_orders
  WHERE prev_order_date IS NOT NULL
)
SELECT customer_id, AVG(gap) AS avg_gap_days
FROM gaps
GROUP BY customer_id;
```

### Case 188 [PDF 153]
**Title:** List all customers who have never ordered product X.

**Original SQL:**
```sql
SELECT customer_id
FROM customers
WHERE customer_id NOT IN (
  SELECT DISTINCT customer_id
  FROM sales
  WHERE product_id = 'X'
);
```

### Case 189 [PDF 154]
**Title:** Calculate total revenue and number of orders per country.

**Original SQL:**
```sql
SELECT c.country, COUNT(o.order_id) AS
order_count, SUM(o.amount) AS total_revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.country;
```

### Case 190 [PDF 155]
**Title:** Find the employees who were hired on the same day as their managers.

**Original SQL:**
```sql
SELECT e.name AS employee, m.name AS manager,
e.hire_date
FROM employees e
JOIN employees m ON e.manager_id = m.id
WHERE e.hire_date = m.hire_date;
```

### Case 191 [PDF 156]
**Title:** Find the top 3 products by quantity sold in each category.

**Original SQL:**
```sql
SELECT category_id, product_id, total_quantity
FROM (
  SELECT p.category_id, s.product_id,
SUM(s.quantity) AS total_quantity,
         ROW_NUMBER() OVER (PARTITION BY
p.category_id ORDER BY SUM(s.quantity) DESC) AS
rn
  FROM sales s
  JOIN products p ON s.product_id = p.product_id
  GROUP BY p.category_id, s.product_id
) sub
WHERE rn <= 3;
```

### Case 192 [PDF 157]
**Title:** Find the difference in days between the first and last order for each customer.

**Original SQL:**
```sql
SELECT customer_id, MAX(order_date) -
MIN(order_date) AS days_between
FROM orders
GROUP BY customer_id;
```

### Case 193 [PDF 158]
**Title:** Find customers who have increased their order volume every month for the last 3 months.

**Original SQL:**
```sql
WITH monthly_orders AS (
  SELECT customer_id, DATE_TRUNC('month',
order_date) AS month, COUNT(*) AS orders_count
  FROM orders
  WHERE order_date >= CURRENT_DATE -
INTERVAL '3 months'
  GROUP BY customer_id, month
)
SELECT customer_id
FROM monthly_orders
GROUP BY customer_id
HAVING COUNT(*) = 3
   AND MIN(orders_count) < MAX(orders_count); --
```

**Source note:** Needs detailed window check for strict increase

### Case 194 [PDF 159]
**Title:** Find employees who have the same salary as the average salary in their job title.

**Original SQL:**
```sql
SELECT e.*
FROM employees e
JOIN (
  SELECT job_title, AVG(salary) AS avg_salary
  FROM employees
  GROUP BY job_title
) j ON e.job_title = j.job_title
WHERE e.salary = j.avg_salary;
```

### Case 195 [PDF 160]
**Title:** Write a query to calculate the difference in salary between employees and their managers.

**Original SQL:**
```sql
SELECT e.name, m.name AS manager_name, e.salary,
m.salary AS manager_salary, e.salary - m.salary AS
salary_diff
FROM employees e
JOIN employees m ON e.manager_id = m.id;
```

### Case 196 [PDF 161]
**Title:** List the departments with no employees.

**Original SQL:**
```sql
SELECT d.*
FROM departments d
LEFT JOIN employees e ON d.department_id =
e.department_id
WHERE e.id IS NULL;
```

### Case 197 [PDF 162]
**Title:** Find the employee with the maximum salary in each department.

**Original SQL:**
```sql
WITH dept_max AS (
  SELECT department_id, MAX(salary) AS max_salary
  FROM employees
  GROUP BY department_id
)
SELECT e.*
FROM employees e
JOIN dept_max d ON e.department_id =
d.department_id AND e.salary = d.max_salary;
```

### Case 198 [PDF 163]
**Title:** Find customers with orders on every day in the last week.

**Original SQL:**
```sql
WITH days AS (
  SELECT generate_series(CURRENT_DATE -
INTERVAL '6 days', CURRENT_DATE, INTERVAL
'1 day') AS day
)
SELECT customer_id
FROM orders o
JOIN days d ON o.order_date = d.day
GROUP BY customer_id
HAVING COUNT(DISTINCT o.order_date) = 7;
```

### Case 199 [PDF 164]
**Title:** Find the product that has been sold in the highest quantity in a single order.

**Original SQL:**
```sql
SELECT product_id, MAX(quantity) AS
max_quantity_in_order
FROM sales
GROUP BY product_id
ORDER BY max_quantity_in_order DESC
LIMIT 1;
```

### Case 200 [PDF 165]
**Title:** Find employees who joined before their department was created.

**Original SQL:**
```sql
SELECT e.*
FROM employees e
JOIN departments d ON e.department_id =
d.department_id
WHERE e.hire_date < d.creation_date;
```

### Case 201 [PDF 166]
**Title:** Find customers with sales in at least 3 different years.

**Original SQL:**
```sql
SELECT customer_id
FROM sales
GROUP BY customer_id
HAVING COUNT(DISTINCT EXTRACT(YEAR
FROM sale_date)) >= 3;
```

### Case 202 [PDF 167]
**Title:** Find employees whose salary is above the company’s average but below their department’s average.

**Original SQL:**
```sql
WITH company_avg AS (SELECT AVG(salary) AS
avg_salary FROM employees),
     dept_avg AS (
       SELECT department_id, AVG(salary) AS
avg_salary
       FROM employees
       GROUP BY department_id
     )
SELECT e.*
FROM employees e, company_avg ca
JOIN dept_avg da ON e.department_id =
da.department_id
WHERE e.salary > ca.avg_salary AND e.salary <
da.avg_salary;
```

### Case 203 [PDF 168]
**Title:** Find the average order amount per customer per year.

**Original SQL:**
```sql
SELECT customer_id, EXTRACT(YEAR FROM
order_date) AS year, AVG(amount) AS
avg_order_amount
FROM orders
GROUP BY customer_id, year;
```

### Case 204 [PDF 169]
**Title:** Find employees who have worked on at least one project with a budget over $1,000,000.

**Original SQL:**
```sql
SELECT DISTINCT pa.employee_id
FROM project_assignments pa
JOIN projects p ON pa.project_id = p.project_id
WHERE p.budget > 1000000;
```

### Case 205 [PDF 170]
**Title:** Find the most recent promotion date per employee.

**Original SQL:**
```sql
SELECT employee_id, MAX(promotion_date) AS
last_promotion_date
FROM promotions
GROUP BY employee_id;
```

### Case 206 [PDF 171]
**Title:** Find customers who made orders totaling more than the average order amount.

**Original SQL:**
```sql
WITH avg_order AS (
  SELECT AVG(amount) AS avg_amount FROM
orders
)
SELECT customer_id, SUM(amount) AS total_amount
FROM orders
GROUP BY customer_id
HAVING SUM(amount) > (SELECT avg_amount
FROM avg_order);
```

### Case 207 [PDF 172]
**Title:** Find products never ordered.

**Original SQL:**
```sql
SELECT product_id
FROM products
WHERE product_id NOT IN (SELECT DISTINCT
product_id FROM sales);
```

### Case 208 [PDF 173]
**Title:** Find the month with the lowest sales in the past year.

**Original SQL:**
```sql
SELECT DATE_TRUNC('month', sale_date) AS
month, SUM(amount) AS total_sales
FROM sales
WHERE sale_date >= CURRENT_DATE -
INTERVAL '1 year'
GROUP BY month
ORDER BY total_sales
LIMIT 1;
```

### Case 209 [PDF 174]
**Title:** Calculate the number of employees hired each month in the last year.

**Original SQL:**
```sql
SELECT DATE_TRUNC('month', hire_date) AS
month, COUNT(*) AS hires
FROM employees
WHERE hire_date >= CURRENT_DATE -
INTERVAL '1 year'
GROUP BY month
ORDER BY month;
```

### Case 210 [PDF 175]
**Title:** Find the department with the highest number of projects.

**Original SQL:**
```sql
SELECT department_id, COUNT(*) AS project_count
FROM projects
GROUP BY department_id
ORDER BY project_count DESC
LIMIT 1;
```

### Case 211 [PDF 176]
**Title:** Find employees who do not have dependents.

**Original SQL:**
```sql
SELECT e.*
FROM employees e
LEFT JOIN dependents d ON e.id = d.employee_id
WHERE d.dependent_id IS NULL;
```

### Case 212 [PDF 177]
**Title:** Get the total sales amount for each product category including categories with zero sales.

**Original SQL:**
```sql
SELECT c.category_id, COALESCE(SUM(s.amount),
0) AS total_sales
FROM categories c
LEFT JOIN products p ON c.category_id =
p.category_id
LEFT JOIN sales s ON p.product_id = s.product_id
GROUP BY c.category_id;
```

### Case 213 [PDF 178]
**Title:** Find employees who have been promoted but their salary didn’t increase.

**Original SQL:**
```sql
SELECT e.id, e.name
FROM employees e
JOIN promotions p ON e.id = p.employee_id
WHERE e.salary <= (SELECT salary_before FROM
promotion_history WHERE employee_id = e.id
ORDER BY promotion_date DESC LIMIT 1);
```

### Case 214 [PDF 179]
**Title:** Find customers with average order amount above $500.

**Original SQL:**
```sql
SELECT customer_id, AVG(amount) AS
avg_order_amount
FROM orders
GROUP BY customer_id
HAVING AVG(amount) > 500;
```

### Case 215 [PDF 180]
**Title:** Find orders where the total quantity exceeds 100 units.

**Original SQL:**
```sql
SELECT order_id, SUM(quantity) AS total_quantity
FROM order_items
GROUP BY order_id
HAVING SUM(quantity) > 100;
```

### Case 216 [PDF 181]
**Title:** Find products whose sales have doubled compared to the previous month.

**Original SQL:**
```sql
WITH monthly_sales AS (
  SELECT product_id, DATE_TRUNC('month',
sale_date) AS month, SUM(amount) AS total_sales
  FROM sales
  GROUP BY product_id, month
),
sales_comparison AS (
  SELECT product_id, month, total_sales,
         LAG(total_sales) OVER (PARTITION BY
product_id ORDER BY month) AS prev_month_sales
  FROM monthly_sales
)
SELECT product_id, month
FROM sales_comparison
WHERE prev_month_sales IS NOT NULL AND
total_sales >= 2 * prev_month_sales;
```

### Case 217 [PDF 182]
**Title:** Write a query to find employees who worked on more than 3 projects in 2023.

**Original SQL:**
```sql
SELECT employee_id, COUNT(DISTINCT project_id)
AS project_count
FROM project_assignments
WHERE assignment_date BETWEEN '2023-01-01'
AND '2023-12-31'
GROUP BY employee_id
HAVING COUNT(DISTINCT project_id) > 3;
```

### Case 218 [PDF 183]
**Title:** Find customers whose last order was placed more than 1 year ago.

**Original SQL:**
```sql
SELECT customer_id, MAX(order_date) AS
last_order_date
FROM orders
GROUP BY customer_id
HAVING MAX(order_date) < CURRENT_DATE -
INTERVAL '1 year';
```

### Case 219 [PDF 184]
**Title:** Find the average salary increase percentage per department.

**Original SQL:**
```sql
SELECT e.department_id, AVG((e.salary -
p.old_salary) / p.old_salary * 100) AS avg_increase_pct
FROM employees e
JOIN promotions p ON e.id = p.employee_id
GROUP BY e.department_id;
```

### Case 220 [PDF 185]
**Title:** Find employees who have never been promoted.

**Original SQL:**
```sql
SELECT *
FROM employees
WHERE id NOT IN (SELECT DISTINCT
employee_id FROM promotions);
```

### Case 221 [PDF 186]
**Title:** Find products ordered by all customers.

**Original SQL:**
```sql
SELECT product_id
FROM sales
GROUP BY product_id
HAVING COUNT(DISTINCT customer_id) =
(SELECT COUNT(*) FROM customers);
```

### Case 222 [PDF 187]
**Title:** Find customers with orders totaling more than $5000 in the last 6 months.

**Original SQL:**
```sql
SELECT customer_id, SUM(amount) AS total_amount
FROM orders
WHERE order_date >= CURRENT_DATE -
INTERVAL '6 months'
GROUP BY customer_id
HAVING SUM(amount) > 5000;
```

### Case 223 [PDF 188]
**Title:** Find the rank of employees based on salary within their department.

**Original SQL:**
```sql
SELECT *, RANK() OVER (PARTITION BY
department_id ORDER BY salary DESC) AS
salary_rank
FROM employees;
```

### Case 224 [PDF 189]
**Title:** Find customers who purchased a product but never reordered it.

**Original SQL:**
```sql
WITH order_counts AS (
  SELECT customer_id, product_id, COUNT(*) AS
order_count
  FROM sales
  GROUP BY customer_id, product_id
)
SELECT customer_id, product_id
FROM order_counts
WHERE order_count = 1;
```

### Case 225 [PDF 190]
**Title:** Find the day with the highest number of new hires.

**Original SQL:**
```sql
SELECT hire_date, COUNT(*) AS hires
FROM employees
GROUP BY hire_date
ORDER BY hires DESC
LIMIT 1;
```

### Case 226 [PDF 191]
**Title:** Find the number of employees who have worked in more than one department.

**Original SQL:**
```sql
SELECT employee_id
FROM employee_department_history
GROUP BY employee_id
HAVING COUNT(DISTINCT department_id) > 1;
```

### Case 227 [PDF 192]
**Title:** Find customers who ordered the most products in 2023.

**Original SQL:**
```sql
SELECT customer_id, SUM(quantity) AS
total_quantity
FROM sales
WHERE EXTRACT(YEAR FROM sale_date) = 2023
GROUP BY customer_id
ORDER BY total_quantity DESC
LIMIT 1;
```

### Case 228 [PDF 193]
**Title:** Find the average days taken to ship orders per shipping method.

**Original SQL:**
```sql
SELECT shipping_method, AVG(shipping_date -
order_date) AS avg_shipping_days
FROM orders
GROUP BY shipping_method;
```

### Case 229 [PDF 194]
**Title:** Find employees with overlapping project assignments.

**Original SQL:**
```sql
SELECT pa1.employee_id, pa1.project_id,
pa2.project_id AS overlapping_project
FROM project_assignments pa1
JOIN project_assignments pa2 ON pa1.employee_id =
pa2.employee_id AND pa1.project_id <>
pa2.project_id
WHERE pa1.start_date <= pa2.end_date AND
pa1.end_date >= pa2.start_date;
```

### Case 230 [PDF 195]
**Title:** Find the total number of unique customers per product category.

**Original SQL:**
```sql
SELECT p.category_id, COUNT(DISTINCT
s.customer_id) AS unique_customers
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category_id;
```

### Case 231 [PDF 196]
**Title:** Find customers whose orders increased by at least 20% compared to the previous month.

**Original SQL:**
```sql
WITH monthly_orders AS (
  SELECT customer_id, DATE_TRUNC('month',
order_date) AS month, COUNT(*) AS order_count
  FROM orders
  GROUP BY customer_id, month
),
orders_comparison AS (
  SELECT customer_id, month, order_count,
         LAG(order_count) OVER (PARTITION BY
customer_id ORDER BY month) AS prev_order_count
  FROM monthly_orders
)
SELECT customer_id, month
FROM orders_comparison
WHERE prev_order_count IS NOT NULL AND
order_count >= 1.2 * prev_order_count;
```

### Case 232 [PDF 197]
**Title:** Find employees with no projects assigned in the last 6 months.

**Original SQL:**
```sql
SELECT e.*
FROM employees e
LEFT JOIN project_assignments pa ON e.id =
pa.employee_id AND pa.start_date >=
CURRENT_DATE - INTERVAL '6 months'
WHERE pa.project_id IS NULL;
```

### Case 233 [PDF 198]
**Title:** Find the number of employees who have changed departments more than twice.

**Original SQL:**
```sql
SELECT employee_id
FROM employee_department_history
GROUP BY employee_id
HAVING COUNT(DISTINCT department_id) > 2;
```

### Case 234 [PDF 199]
**Title:** Find the product with the highest average rating.

**Original SQL:**
```sql
SELECT product_id, AVG(rating) AS avg_rating
FROM product_reviews
GROUP BY product_id
ORDER BY avg_rating DESC
LIMIT 1;
```

### Case 235 [PDF 200]
**Title:** Find customers who have placed orders but never used a discount.

**Original SQL:**
```sql
SELECT DISTINCT customer_id
FROM orders
WHERE discount_used = FALSE;
```

### Case 236 [PDF 201]
**Title:** Find employees who have worked on every project in their department.

**Original SQL:**
```sql
SELECT e.id, e.name
FROM employees e
JOIN projects p ON e.department_id = p.department_id
LEFT JOIN project_assignments pa ON e.id =
pa.employee_id AND p.project_id = pa.project_id
GROUP BY e.id, e.name, p.department_id
HAVING COUNT(p.project_id) =
COUNT(pa.project_id);
```

### Case 237 [PDF 202]
**Title:** Find the average order amount excluding the top 5% largest orders.

**Original SQL:**
```sql
WITH ordered_orders AS (
  SELECT amount,
         NTILE(100) OVER (ORDER BY amount DESC)
AS percentile
  FROM orders
)
SELECT AVG(amount)
FROM ordered_orders
WHERE percentile > 5;
```

### Case 238 [PDF 203]
**Title:** Find the top 3 employees with the highest salary increase over last year.

**Original SQL:**
```sql
WITH salary_last_year AS (
  SELECT employee_id, salary AS last_year_salary
  FROM salaries
  WHERE year = EXTRACT(YEAR FROM
CURRENT_DATE) - 1
),
salary_this_year AS (
  SELECT employee_id, salary AS this_year_salary
  FROM salaries
  WHERE year = EXTRACT(YEAR FROM
CURRENT_DATE)
)
SELECT t.employee_id, t.this_year_salary -
l.last_year_salary AS salary_increase
FROM salary_this_year t
JOIN salary_last_year l ON t.employee_id =
l.employee_id
ORDER BY salary_increase DESC
LIMIT 3;
```

### Case 239 [PDF 204]
**Title:** Find employees with the longest consecutive workdays.

**Original SQL:**
```sql
WITH workdays AS (
  SELECT employee_id, work_date,
         ROW_NUMBER() OVER (PARTITION BY
employee_id ORDER BY work_date) -
         ROW_NUMBER() OVER (PARTITION BY
employee_id ORDER BY work_date) AS grp
  FROM attendance
),
consecutive_days AS (
  SELECT employee_id, COUNT(*) AS
consecutive_days
  FROM workdays
  GROUP BY employee_id, grp
)
SELECT employee_id, MAX(consecutive_days) AS
max_consecutive_days
FROM consecutive_days
GROUP BY employee_id;
```

### Case 240 [PDF 205]
**Title:** Find all managers who do not manage any employee.

**Original SQL:**
```sql
SELECT DISTINCT manager_id
FROM employees
WHERE manager_id NOT IN (SELECT DISTINCT id
FROM employees);
```

### Case 241 [PDF 206]
**Title:** Find the average salary of employees hired each month.

**Original SQL:**
```sql
SELECT EXTRACT(YEAR FROM hire_date) AS
year, EXTRACT(MONTH FROM hire_date) AS
month, AVG(salary) AS avg_salary
FROM employees
GROUP BY year, month
ORDER BY year, month;
```

### Case 242 [PDF 207]
**Title:** Find the first 5 orders after a customer's registration date.

**Original SQL:**
```sql
SELECT order_id, customer_id, order_date
FROM (
  SELECT order_id, customer_id, order_date,
         ROW_NUMBER() OVER (PARTITION BY
customer_id ORDER BY order_date) AS rn
  FROM orders
  JOIN customers c ON orders.customer_id =
c.customer_id
  WHERE order_date >= c.registration_date
) sub
WHERE rn <= 5;
```

### Case 243 [PDF 208]
**Title:** Find customers who placed orders every month for the last 6 months.

**Original SQL:**
```sql
WITH months AS (
  SELECT generate_series(
    DATE_TRUNC('month', CURRENT_DATE) -
INTERVAL '5 months',
    DATE_TRUNC('month', CURRENT_DATE),
    INTERVAL '1 month'
  ) AS month
),
customer_months AS (
  SELECT customer_id, DATE_TRUNC('month',
order_date) AS month
  FROM orders
  WHERE order_date >= CURRENT_DATE -
INTERVAL '6 months'
  GROUP BY customer_id, month
)
SELECT customer_id
FROM customer_months cm
JOIN months m ON cm.month = m.month
GROUP BY customer_id
HAVING COUNT(DISTINCT cm.month) = 6;
```

### Case 244 [PDF 209]
**Title:** Calculate the moving average of sales over the last 3 days.

**Original SQL:**
```sql
SELECT sale_date, product_id, amount,
       AVG(amount) OVER (PARTITION BY
product_id ORDER BY sale_date ROWS BETWEEN 2
PRECEDING AND CURRENT ROW) AS
moving_avg_3_days
FROM sales;
```

### Case 245 [PDF 210]
**Title:** Find the number of employees who share the same birthday.

**Original SQL:**
```sql
SELECT birth_date, COUNT(*) AS count_employees
FROM employees
GROUP BY birth_date
HAVING COUNT(*) > 1;
```

### Case 246 [PDF 211]
**Title:** Find customers who ordered the same product multiple times in one day.

**Original SQL:**
```sql
SELECT customer_id, product_id, order_date,
COUNT(*) AS order_count
FROM sales
GROUP BY customer_id, product_id, order_date
HAVING COUNT(*) > 1;
```

### Case 247 [PDF 212]
**Title:** Find the total sales for each product including products with zero sales.

**Original SQL:**
```sql
SELECT p.product_id, COALESCE(SUM(s.amount),
0) AS total_sales
FROM products p
LEFT JOIN sales s ON p.product_id = s.product_id
GROUP BY p.product_id;
```

### Case 248 [PDF 213]
**Title:** List the top 5 employees by number of projects in each department.

**Original SQL:**
```sql
SELECT department_id, employee_id, project_count
FROM (
  SELECT e.department_id, pa.employee_id,
COUNT(DISTINCT pa.project_id) AS project_count,
         ROW_NUMBER() OVER (PARTITION BY
e.department_id ORDER BY COUNT(DISTINCT
pa.project_id) DESC) AS rn
  FROM project_assignments pa
  JOIN employees e ON pa.employee_id = e.id
  GROUP BY e.department_id, pa.employee_id
) sub
WHERE rn <= 5;
```

### Case 249 [PDF 214]
**Title:** Find the day with the largest difference between maximum and minimum temperature.

**Original SQL:**
```sql
SELECT weather_date, MAX(temperature) -
MIN(temperature) AS temp_diff
FROM weather_data
GROUP BY weather_date
ORDER BY temp_diff DESC
LIMIT 1;
```

### Case 250 [PDF 215]
**Title:** Find the 3 most recent orders per customer.

**Original SQL:**
```sql
SELECT order_id, customer_id, order_date
FROM (
  SELECT order_id, customer_id, order_date,
         ROW_NUMBER() OVER (PARTITION BY
customer_id ORDER BY order_date DESC) AS rn
  FROM orders
) sub
WHERE rn <= 3;
```

### Case 251 [PDF 216]
**Title:** Find products with sales only in a specific country.

**Original SQL:**
```sql
SELECT product_id
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY product_id
HAVING COUNT(DISTINCT c.country) = 1;
```

### Case 252 [PDF 217]
**Title:** Find employees with a salary greater than all employees in department 10.

**Original SQL:**
```sql
SELECT *
FROM employees
WHERE salary > ALL (
  SELECT salary FROM employees WHERE
department_id = 10
);
```

### Case 253 [PDF 218]
**Title:** Find the percentage of employees in each department.

**Original SQL:**
```sql
WITH total_employees AS (SELECT COUNT(*) AS
total FROM employees)
SELECT department_id, COUNT(*) * 100.0 /
(SELECT total FROM total_employees) AS percentage
FROM employees
GROUP BY department_id;
```

### Case 254 [PDF 219]
**Title:** Find the median salary per department.

**Original SQL:**
```sql
SELECT department_id,
       PERCENTILE_CONT(0.5) WITHIN GROUP
(ORDER BY salary) AS median_salary
FROM employees
GROUP BY department_id;
```

### Case 255 [PDF 220]
**Title:** Find the employee who worked the most hours in a project.

**Original SQL:**
```sql
SELECT employee_id, project_id,
MAX(hours_worked) AS max_hours
FROM project_assignments
GROUP BY employee_id, project_id
ORDER BY max_hours DESC
LIMIT 1;
```

### Case 256 [PDF 221]
**Title:** Find the first order date for each customer.

**Original SQL:**
```sql
SELECT customer_id, MIN(order_date) AS
first_order_date
FROM orders
GROUP BY customer_id;
```

### Case 257 [PDF 222]
**Title:** Find the second most expensive product per category.

**Original SQL:**
```sql
SELECT category_id, product_id, price
FROM (
  SELECT category_id, product_id, price,
         ROW_NUMBER() OVER (PARTITION BY
category_id ORDER BY price DESC) AS rn
  FROM products
) sub
WHERE rn = 2;
```

### Case 258 [PDF 223]
**Title:** Find employees with the highest salary in each job title.

**Original SQL:**
```sql
WITH max_salary_per_job AS (
  SELECT job_title, MAX(salary) AS max_salary
  FROM employees
  GROUP BY job_title
)
SELECT e.*
FROM employees e
JOIN max_salary_per_job m ON e.job_title =
m.job_title AND e.salary = m.max_salary;
```

### Case 259 [PDF 224]
**Title:** Calculate the ratio of males to females in each department.

**Original SQL:**
```sql
SELECT department_id,
       SUM(CASE WHEN gender = 'M' THEN 1 ELSE 0
END) * 1.0 / NULLIF(SUM(CASE WHEN gender = 'F'
THEN 1 ELSE 0 END), 0) AS male_to_female_ratio
FROM employees
GROUP BY department_id;
```

### Case 260 [PDF 225]
**Title:** Find customers who spent more than average in their country.

**Original SQL:**
```sql
WITH avg_spent_per_country AS (
  SELECT c.country, AVG(o.amount) AS avg_amount
  FROM customers c
  JOIN orders o ON c.customer_id = o.customer_id
  GROUP BY c.country
)
SELECT c.customer_id, SUM(o.amount) AS
total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN avg_spent_per_country a ON c.country =
a.country
GROUP BY c.customer_id, c.country, a.avg_amount
HAVING SUM(o.amount) > a.avg_amount;
```

### Case 261 [PDF 226]
**Title:** Find employees who have not been assigned to any project in the last year.

**Original SQL:**
```sql
SELECT e.*
FROM employees e
LEFT JOIN project_assignments pa ON e.id =
pa.employee_id AND pa.assignment_date >=
CURRENT_DATE - INTERVAL '1 year'
WHERE pa.project_id IS NULL;
```

### Case 262 [PDF 227]
**Title:** Find the top 3 customers by total order amount in each region.

**Original SQL:**
```sql
SELECT region, customer_id, total_amount
FROM (
  SELECT c.region, o.customer_id, SUM(o.amount) AS
total_amount,
         ROW_NUMBER() OVER (PARTITION BY
c.region ORDER BY SUM(o.amount) DESC) AS rn
  FROM customers c
  JOIN orders o ON c.customer_id = o.customer_id
  GROUP BY c.region, o.customer_id
) sub
WHERE rn <= 3;
```

### Case 263 [PDF 228]
**Title:** Find employees hired after their managers.

**Original SQL:**
```sql
SELECT e.name AS employee_name, m.name AS
manager_name, e.hire_date, m.hire_date AS
manager_hire_date
FROM employees e
JOIN employees m ON e.manager_id = m.id
WHERE e.hire_date > m.hire_date;
```

### Case 264 [PDF 229]
**Title:** Find customers who ordered all products from a specific category.

**Original SQL:**
```sql
WITH category_products AS (
  SELECT product_id
  FROM products
  WHERE category_id = :category_id
),
customer_products AS (
  SELECT customer_id, product_id
  FROM sales
  WHERE product_id IN (SELECT product_id FROM
category_products)
  GROUP BY customer_id, product_id
)
SELECT customer_id
FROM customer_products
GROUP BY customer_id
HAVING COUNT(DISTINCT product_id) = (SELECT
COUNT(*) FROM category_products);
```

### Case 265 [PDF 230]
**Title:** Find employees with the highest number of direct reports.

**Original SQL:**
```sql
SELECT manager_id, COUNT(*) AS report_count
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id
ORDER BY report_count DESC
LIMIT 1;
```

### Case 266 [PDF 231]
**Title:** Calculate the retention rate of customers month- over-month.

**Original SQL:**
```sql
WITH monthly_customers AS (
  SELECT customer_id, DATE_TRUNC('month',
order_date) AS month
  FROM orders
  GROUP BY customer_id, month
),
retention AS (
  SELECT current.month AS current_month,
current.customer_id
  FROM monthly_customers current
  JOIN monthly_customers previous ON
current.customer_id = previous.customer_id
    AND current.month = previous.month + INTERVAL
'1 month'
)
SELECT current_month, COUNT(DISTINCT
customer_id) * 100.0 /
       (SELECT COUNT(DISTINCT customer_id)
FROM monthly_customers WHERE month =
current_month - INTERVAL '1 month') AS
retention_rate
FROM retention
GROUP BY current_month
ORDER BY current_month;
```

### Case 267 [PDF 232]
**Title:** Find the average time difference between order and delivery.

**Original SQL:**
```sql
SELECT AVG(delivery_date - order_date) AS
avg_delivery_time
FROM orders
WHERE delivery_date IS NOT NULL;
```

### Case 268 [PDF 233]
**Title:** Find the department with the youngest average employee age.

**Original SQL:**
```sql
SELECT department_id, AVG(EXTRACT(YEAR
FROM AGE(CURRENT_DATE, birth_date))) AS
avg_age
FROM employees
GROUP BY department_id
ORDER BY avg_age
LIMIT 1;
```

### Case 269 [PDF 234]
**Title:** Find products that were sold in every quarter of the current year.

**Original SQL:**
```sql
WITH quarterly_sales AS (
  SELECT product_id, DATE_TRUNC('quarter',
sale_date) AS quarter
  FROM sales
  WHERE EXTRACT(YEAR FROM sale_date) =
EXTRACT(YEAR FROM CURRENT_DATE)
  GROUP BY product_id, quarter
)
SELECT product_id
FROM quarterly_sales
GROUP BY product_id
HAVING COUNT(DISTINCT quarter) = 4;
```

### Case 270 [PDF 235]
**Title:** Find customers whose orders decreased consecutively for 3 months.

**Original SQL:**
```sql
WITH monthly_orders AS (
  SELECT customer_id, DATE_TRUNC('month',
order_date) AS month, COUNT(*) AS order_count
  FROM orders
  GROUP BY customer_id, month
),
orders_with_lag AS (
  SELECT customer_id, month, order_count,
         LAG(order_count, 1) OVER (PARTITION BY
customer_id ORDER BY month) AS prev_1,
         LAG(order_count, 2) OVER (PARTITION BY
customer_id ORDER BY month) AS prev_2
  FROM monthly_orders
)
SELECT DISTINCT customer_id
FROM orders_with_lag
WHERE order_count < prev_1 AND prev_1 < prev_2;
```

### Case 271 [PDF 236]
**Title:** Find the employee(s) with the highest number of late arrivals.

**Original SQL:**
```sql
SELECT employee_id, COUNT(*) AS late_count
FROM attendance
WHERE arrival_time > scheduled_start_time
GROUP BY employee_id
ORDER BY late_count DESC
LIMIT 1;
```

### Case 272 [PDF 237]
**Title:** Find the most common product combinations in orders (pairs).

**Original SQL:**
```sql
WITH order_pairs AS (
  SELECT o1.order_id, o1.product_id AS product1,
o2.product_id AS product2
  FROM order_items o1
  JOIN order_items o2 ON o1.order_id = o2.order_id
AND o1.product_id < o2.product_id
)
SELECT product1, product2, COUNT(*) AS
pair_count
FROM order_pairs
GROUP BY product1, product2
ORDER BY pair_count DESC
LIMIT 10;
```

### Case 273 [PDF 238]
**Title:** Find employees who have worked more than 40 hours in a week.

**Original SQL:**
```sql
WITH weekly_hours AS (
  SELECT employee_id, DATE_TRUNC('week',
work_date) AS week_start, SUM(hours_worked) AS
total_hours
  FROM work_logs
  GROUP BY employee_id, week_start
)
SELECT employee_id, week_start, total_hours
FROM weekly_hours
WHERE total_hours > 40;
```

### Case 274 [PDF 239]
**Title:** Find the total revenue generated per sales representative.

**Original SQL:**
```sql
SELECT sales_rep_id, SUM(amount) AS total_revenue
FROM sales
GROUP BY sales_rep_id;
```

### Case 275 [PDF 240]
**Title:** Find customers with no orders in the last year.

**Original SQL:**
```sql
SELECT customer_id
FROM customers
WHERE customer_id NOT IN (
  SELECT DISTINCT customer_id FROM orders
WHERE order_date >= CURRENT_DATE -
INTERVAL '1 year'
);
```

### Case 276 [PDF 241]
**Title:** Find products with an increasing sales trend over the last 3 months.

**Original SQL:**
```sql
WITH monthly_sales AS (
  SELECT product_id, DATE_TRUNC('month',
sale_date) AS month, SUM(amount) AS total_sales
  FROM sales
  WHERE sale_date >= CURRENT_DATE -
INTERVAL '3 months'
  GROUP BY product_id, month
),
sales_ranked AS (
  SELECT product_id, month, total_sales,
         LAG(total_sales) OVER (PARTITION BY
product_id ORDER BY month) AS prev_month_sales,
         LAG(total_sales, 2) OVER (PARTITION BY
product_id ORDER BY month) AS
prev_2_month_sales
  FROM monthly_sales
)
SELECT DISTINCT product_id
FROM sales_ranked
WHERE total_sales > prev_month_sales AND
prev_month_sales > prev_2_month_sales;
```

### Case 277 [PDF 242]
**Title:** Find departments where average salary is higher than the company average.

**Original SQL:**
```sql
WITH company_avg AS (
  SELECT AVG(salary) AS avg_salary FROM
employees
)
SELECT department_id, AVG(salary) AS dept_avg
FROM employees
GROUP BY department_id
HAVING AVG(salary) > (SELECT avg_salary FROM
company_avg);
```

### Case 278 [PDF 243]
**Title:** Find customers with orders where no product quantity is less than 5.

**Original SQL:**
```sql
SELECT DISTINCT order_id
FROM order_items
GROUP BY order_id
HAVING MIN(quantity) >= 5;
```

### Case 279 [PDF 244]
**Title:** Find products ordered only by customers from one country.

**Original SQL:**
```sql
SELECT product_id
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY product_id
HAVING COUNT(DISTINCT c.country) = 1;
```

### Case 280 [PDF 245]
**Title:** Find employees who have not submitted their timesheets in the last month.

**Original SQL:**
```sql
SELECT e.id, e.name
FROM employees e
LEFT JOIN timesheets t ON e.id = t.employee_id AND
t.timesheet_date >= CURRENT_DATE - INTERVAL
'1 month'
WHERE t.timesheet_id IS NULL;
```

### Case 281 [PDF 246]
**Title:** Find the total discount given in each month.

**Original SQL:**
```sql
SELECT DATE_TRUNC('month', order_date) AS
month, SUM(discount_amount) AS total_discount
FROM orders
GROUP BY month
ORDER BY month;
```

### Case 282 [PDF 247]
**Title:** Find customers who have placed orders but never paid by credit card.

**Original SQL:**
```sql
SELECT DISTINCT customer_id
FROM orders
WHERE payment_method != 'Credit Card';
```

### Case 283 [PDF 248]
**Title:** Find employees whose salaries are within 10% of their department’s average salary.

**Original SQL:**
```sql
WITH dept_avg AS (
  SELECT department_id, AVG(salary) AS avg_salary
  FROM employees
  GROUP BY department_id
)
SELECT e.*
FROM employees e
JOIN dept_avg d ON e.department_id =
d.department_id
WHERE e.salary BETWEEN d.avg_salary * 0.9 AND
d.avg_salary * 1.1;
```

### Case 284 [PDF 249]
**Title:** Find customers who ordered the most products in each category.

**Original SQL:**
```sql
WITH product_totals AS (
  SELECT c.customer_id, p.category_id,
SUM(s.quantity) AS total_quantity,
         RANK() OVER (PARTITION BY p.category_id
ORDER BY SUM(s.quantity) DESC) AS rank
  FROM sales s
  JOIN products p ON s.product_id = p.product_id
  JOIN customers c ON s.customer_id = c.customer_id
  GROUP BY c.customer_id, p.category_id
)
SELECT customer_id, category_id, total_quantity
FROM product_totals
WHERE rank = 1;
```

### Case 285 [PDF 250]
**Title:** Find the top 5 longest projects.

**Original SQL:**
```sql
SELECT project_id, start_date, end_date,
       end_date - start_date AS duration
FROM projects
ORDER BY duration DESC
LIMIT 5;
```

### Case 286 [PDF 251]
**Title:** Find employees who have not taken any leave in the last 6 months.

**Original SQL:**
```sql
SELECT e.id, e.name
FROM employees e
LEFT JOIN leaves l ON e.id = l.employee_id AND
l.leave_date >= CURRENT_DATE - INTERVAL '6
months'
WHERE l.leave_id IS NULL;
```

### Case 287 [PDF 252]
**Title:** Find the department with the most projects completed last year.

**Original SQL:**
```sql
SELECT department_id, COUNT(*) AS
completed_projects
FROM projects
WHERE status = 'Completed' AND completion_date
BETWEEN DATE_TRUNC('year',
CURRENT_DATE) - INTERVAL '1 year' AND
DATE_TRUNC('year', CURRENT_DATE) -
INTERVAL '1 day'
GROUP BY department_id
ORDER BY completed_projects DESC
LIMIT 1;
```

### Case 288 [PDF 253]
**Title:** Find customers who have increased their order frequency month-over-month for 3 consecutive months.

**Original SQL:**
```sql
WITH monthly_orders AS (
  SELECT customer_id, DATE_TRUNC('month',
order_date) AS month, COUNT(*) AS order_count
  FROM orders
  GROUP BY customer_id, month
),
orders_with_lag AS (
  SELECT customer_id, month, order_count,
         LAG(order_count, 1) OVER (PARTITION BY
customer_id ORDER BY month) AS prev_1,
         LAG(order_count, 2) OVER (PARTITION BY
customer_id ORDER BY month) AS prev_2
  FROM monthly_orders
)
SELECT DISTINCT customer_id
FROM orders_with_lag
WHERE order_count > prev_1 AND prev_1 > prev_2;
```

### Case 289 [PDF 254]
**Title:** Find employees who have been assigned projects outside their department.

**Original SQL:**
```sql
SELECT DISTINCT e.id, e.name
FROM employees e
JOIN project_assignments pa ON e.id =
pa.employee_id
JOIN projects p ON pa.project_id = p.project_id
WHERE e.department_id != p.department_id;
```

### Case 290 [PDF 255]
**Title:** Calculate the average time to close tickets per support agent.

**Original SQL:**
```sql
SELECT support_agent_id, AVG(closed_date -
opened_date) AS avg_close_time
FROM support_tickets
WHERE closed_date IS NOT NULL
GROUP BY support_agent_id;
```

### Case 291 [PDF 256]
**Title:** Find the first and last login date for each user.

**Original SQL:**
```sql
SELECT user_id, MIN(login_date) AS first_login,
MAX(login_date) AS last_login
FROM user_logins
GROUP BY user_id;
```

### Case 292 [PDF 257]
**Title:** Find customers who made purchases only in one month of the year.

**Original SQL:**
```sql
WITH customer_months AS (
  SELECT customer_id, DATE_TRUNC('month',
order_date) AS month
  FROM orders
  GROUP BY customer_id, month
)
SELECT customer_id
FROM customer_months
GROUP BY customer_id
HAVING COUNT(*) = 1;
```

### Case 293 [PDF 258]
**Title:** Find products with sales revenue above the average revenue per product.

**Original SQL:**
```sql
WITH avg_revenue AS (
  SELECT AVG(total_revenue) AS avg_rev
  FROM (
    SELECT product_id, SUM(amount) AS
total_revenue
    FROM sales
    GROUP BY product_id
  ) sub
)
SELECT product_id, SUM(amount) AS total_revenue
FROM sales
GROUP BY product_id
HAVING SUM(amount) > (SELECT avg_rev FROM
avg_revenue);
```

### Case 294 [PDF 259]
**Title:** Find departments where more than 50% of employees have a salary above $60,000.

**Original SQL:**
```sql
SELECT department_id
FROM employees
GROUP BY department_id
HAVING AVG(CASE WHEN salary > 60000 THEN 1
ELSE 0 END) > 0.5;
```

### Case 295 [PDF 260]
**Title:** Find employees who worked on all projects in the company.

**Original SQL:**
```sql
WITH total_projects AS (
  SELECT COUNT(DISTINCT project_id) AS
project_count FROM projects
),
employee_projects AS (
  SELECT employee_id, COUNT(DISTINCT
project_id) AS projects_worked
  FROM project_assignments
  GROUP BY employee_id
)
SELECT ep.employee_id
FROM employee_projects ep
JOIN total_projects tp ON 1=1
WHERE ep.projects_worked = tp.project_count;
```

### Case 296 [PDF 261]
**Title:** Find customers who ordered products from all categories.

**Original SQL:**
```sql
WITH category_count AS (
  SELECT COUNT(DISTINCT category_id) AS
total_categories FROM products
),
customer_categories AS (
  SELECT customer_id, COUNT(DISTINCT
p.category_id) AS categories_ordered
  FROM sales s
  JOIN products p ON s.product_id = p.product_id
  GROUP BY customer_id
)
SELECT customer_id
FROM customer_categories
JOIN category_count ON 1=1
WHERE categories_ordered = total_categories;
```

### Case 297 [PDF 262]
**Title:** Find the average tenure of employees by department.

**Original SQL:**
```sql
SELECT department_id, AVG(DATE_PART('year',
CURRENT_DATE - hire_date)) AS avg_tenure_years
FROM employees
GROUP BY department_id;
```

### Case 298 [PDF 263]
**Title:** Find the number of orders placed on weekends vs weekdays.

**Original SQL:**
```sql
SELECT CASE
         WHEN EXTRACT(DOW FROM order_date) IN
(0,6) THEN 'Weekend'
         ELSE 'Weekday'
       END AS day_type,
       COUNT(*) AS order_count
FROM orders
GROUP BY day_type;
```

### Case 299 [PDF 264]
**Title:** Find the percentage of orders with discounts per month.

**Original SQL:**
```sql
SELECT DATE_TRUNC('month', order_date) AS
month,
       100.0 * SUM(CASE WHEN discount > 0 THEN 1
ELSE 0 END) / COUNT(*) AS discount_percentage
FROM orders
GROUP BY month
ORDER BY month;
```

### Case 300 [PDF 265]
**Title:** Find the employees who have never been late to work.

**Original SQL:**
```sql
SELECT e.id, e.name
FROM employees e
LEFT JOIN attendance a ON e.id = a.employee_id
AND a.arrival_time > a.scheduled_start_time
WHERE a.employee_id IS NULL;
```

### Case 301 [PDF 266]
**Title:** Find products with sales only during holiday seasons.

**Original SQL:**
```sql
SELECT product_id
FROM sales s
JOIN holidays h ON s.sale_date = h.holiday_date
GROUP BY product_id
HAVING COUNT(*) = (SELECT COUNT(*) FROM
sales WHERE product_id = s.product_id);
```

### Case 302 [PDF 267]
**Title:** Find the department with the largest increase in employee count compared to last year.

**Original SQL:**
```sql
WITH current_year AS (
  SELECT department_id, COUNT(*) AS emp_count
  FROM employees
  WHERE hire_date <= CURRENT_DATE AND
(termination_date IS NULL OR termination_date >=
CURRENT_DATE)
  GROUP BY department_id
),
last_year AS (
  SELECT department_id, COUNT(*) AS emp_count
  FROM employees
  WHERE hire_date <= CURRENT_DATE -
INTERVAL '1 year' AND (termination_date IS NULL
OR termination_date >= CURRENT_DATE -
INTERVAL '1 year')
  GROUP BY department_id
)
SELECT c.department_id, c.emp_count -
COALESCE(l.emp_count,0) AS increase
FROM current_year c
LEFT JOIN last_year l ON c.department_id =
l.department_id
ORDER BY increase DESC
LIMIT 1;
```

### Case 303 [PDF 268]
**Title:** Find the average order value per customer segment.

**Original SQL:**
```sql
SELECT segment, AVG(o.amount) AS
avg_order_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY segment;
```

### Case 304 [PDF 269]
**Title:** Find employees who manage more than 3 projects.

**Original SQL:**
```sql
SELECT manager_id, COUNT(DISTINCT project_id)
AS project_count
FROM projects
GROUP BY manager_id
HAVING COUNT(DISTINCT project_id) > 3;
```

### Case 305 [PDF 270]
**Title:** Find products that have never been returned.

**Original SQL:**
```sql
SELECT p.product_id
FROM products p
LEFT JOIN returns r ON p.product_id = r.product_id
WHERE r.return_id IS NULL;
```

### Case 306 [PDF 271]
**Title:** Find customers with orders but no shipments.

**Original SQL:**
```sql
SELECT DISTINCT o.customer_id
FROM orders o
LEFT JOIN shipments s ON o.order_id = s.order_id
WHERE s.shipment_id IS NULL;
```

### Case 307 [PDF 272]
**Title:** Find employees whose salaries increased every year.

**Original SQL:**
```sql
WITH salary_diff AS (
  SELECT employee_id, year, salary,
         LAG(salary) OVER (PARTITION BY
employee_id ORDER BY year) AS prev_salary
  FROM salaries
)
SELECT DISTINCT employee_id
FROM salary_diff
WHERE salary > prev_salary OR prev_salary IS NULL
GROUP BY employee_id
HAVING COUNT(*) = (SELECT COUNT(*) FROM
salaries s2 WHERE s2.employee_id =
salary_diff.employee_id);
```

### Case 308 [PDF 273]
**Title:** Find the total number of unique products sold in the last quarter.

**Original SQL:**
```sql
SELECT COUNT(DISTINCT product_id) AS
unique_products_sold
FROM sales
WHERE sale_date >= DATE_TRUNC('quarter',
CURRENT_DATE) - INTERVAL '3 months'
  AND sale_date < DATE_TRUNC('quarter',
CURRENT_DATE);
```

### Case 309 [PDF 274]
**Title:** Find the day with the highest sales in each month.

**Original SQL:**
```sql
WITH daily_sales AS (
  SELECT DATE(order_date) AS day, SUM(amount)
AS total_sales
  FROM orders
  GROUP BY day
),
ranked_sales AS (
  SELECT day, total_sales,
         RANK() OVER (PARTITION BY
DATE_TRUNC('month', day) ORDER BY total_sales
DESC) AS sales_rank
  FROM daily_sales
)
SELECT day, total_sales
FROM ranked_sales
WHERE sales_rank = 1;
```

### Case 310 [PDF 275]
**Title:** Find the products with the highest sales increase compared to the previous month.

**Original SQL:**
```sql
WITH monthly_sales AS (
  SELECT product_id, DATE_TRUNC('month',
sale_date) AS month, SUM(amount) AS total_sales
  FROM sales
  GROUP BY product_id, month
),
sales_diff AS (
  SELECT product_id, month, total_sales,
         LAG(total_sales) OVER (PARTITION BY
product_id ORDER BY month) AS prev_month_sales
  FROM monthly_sales
)
SELECT product_id, month, total_sales -
prev_month_sales AS increase
FROM sales_diff
WHERE prev_month_sales IS NOT NULL
ORDER BY increase DESC
LIMIT 10;
```

### Case 311 [PDF 276]
**Title:** Find the top 5 customers by total order value in the last year.

**Original SQL:**
```sql
SELECT customer_id, SUM(amount) AS
total_order_value
FROM orders
WHERE order_date >= CURRENT_DATE -
INTERVAL '1 year'
GROUP BY customer_id
ORDER BY total_order_value DESC
LIMIT 5;
```

### Case 312 [PDF 277]
**Title:** Find the number of employees who changed departments in the last year.

**Original SQL:**
```sql
SELECT COUNT(DISTINCT employee_id)
FROM employee_department_history
WHERE change_date >= CURRENT_DATE -
INTERVAL '1 year';
```

### Case 313 [PDF 278]
**Title:** Find the average salary for each job title within each department.

**Original SQL:**
```sql
SELECT department_id, job_title, AVG(salary) AS
avg_salary
FROM employees
GROUP BY department_id, job_title;
```

### Case 314 [PDF 279]
**Title:** Find customers who placed orders with multiple payment methods.

**Original SQL:**
```sql
SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING COUNT(DISTINCT payment_method) > 1;
```

### Case 315 [PDF 280]
**Title:** Find products with the lowest average rating per category.

**Original SQL:**
```sql
SELECT category_id, product_id, AVG(rating) AS
avg_rating
FROM product_reviews
GROUP BY category_id, product_id
QUALIFY ROW_NUMBER() OVER (PARTITION
BY category_id ORDER BY AVG(rating)) = 1;
```

### Case 316 [PDF 281]
**Title:** Find employees who have never received a promotion.

**Original SQL:**
```sql
SELECT e.id, e.name
FROM employees e
LEFT JOIN promotions p ON e.id = p.employee_id
WHERE p.promotion_id IS NULL;
```

### Case 317 [PDF 282]
**Title:** Find the total number of orders placed each day in the last week.

**Original SQL:**
```sql
SELECT DATE(order_date) AS order_day, COUNT(*)
AS orders_count
FROM orders
WHERE order_date >= CURRENT_DATE -
INTERVAL '7 days'
GROUP BY order_day
ORDER BY order_day;
```

### Case 318 [PDF 283]
**Title:** Find customers with orders in both online and in- store channels.

**Original SQL:**
```sql
SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING COUNT(DISTINCT order_channel) > 1;
```

### Case 319 [PDF 284]
**Title:** Find the top 3 sales reps by number of deals closed this quarter.

**Original SQL:**
```sql
SELECT sales_rep_id, COUNT(*) AS deals_closed
FROM sales_deals
WHERE deal_close_date >= DATE_TRUNC('quarter',
CURRENT_DATE)
GROUP BY sales_rep_id
ORDER BY deals_closed DESC
LIMIT 3;
```

### Case 320 [PDF 285]
**Title:** Find products that have been discontinued but still have sales.

**Original SQL:**
```sql
SELECT p.product_id
FROM products p
JOIN sales s ON p.product_id = s.product_id
WHERE p.discontinued = TRUE;
```

### Case 321 [PDF 286]
**Title:** Find employees who report to a manager hired after them.

**Original SQL:**
```sql
SELECT e.id, e.name, m.id AS manager_id, m.name
AS manager_name
FROM employees e
JOIN employees m ON e.manager_id = m.id
WHERE e.hire_date < m.hire_date;
```

### Case 322 [PDF 287]
**Title:** Find the average delivery time by shipping method.

**Original SQL:**
```sql
SELECT shipping_method, AVG(delivery_date -
order_date) AS avg_delivery_time
FROM shipments
GROUP BY shipping_method;
```

### Case 323 [PDF 288]
**Title:** Find orders where the total quantity exceeds 100.

**Original SQL:**
```sql
SELECT order_id, SUM(quantity) AS total_quantity
FROM order_items
GROUP BY order_id
HAVING SUM(quantity) > 100;
```

### Case 324 [PDF 289]
**Title:** Find customers who made orders but never returned a product.

**Original SQL:**
```sql
SELECT DISTINCT o.customer_id
FROM orders o
LEFT JOIN returns r ON o.order_id = r.order_id
WHERE r.return_id IS NULL;
```

### Case 325 [PDF 290]
**Title:** Find products that have been ordered but never reviewed.

**Original SQL:**
```sql
SELECT p.product_id
FROM products p
LEFT JOIN product_reviews pr ON p.product_id =
pr.product_id
JOIN sales s ON p.product_id = s.product_id
WHERE pr.review_id IS NULL
GROUP BY p.product_id;
```

### Case 326 [PDF 291]
**Title:** Find employees who have worked on projects for more than 2 years.

**Original SQL:**
```sql
SELECT employee_id
FROM project_assignments
GROUP BY employee_id
HAVING MAX(assignment_end_date) -
MIN(assignment_start_date) > INTERVAL '2 years';
```

### Case 327 [PDF 292]
**Title:** Find the product with the highest sales for each month.

**Original SQL:**
```sql
WITH monthly_sales AS (
  SELECT product_id, DATE_TRUNC('month',
sale_date) AS month, SUM(amount) AS total_sales
  FROM sales
  GROUP BY product_id, month
),
ranked_sales AS (
  SELECT product_id, month, total_sales,
         ROW_NUMBER() OVER (PARTITION BY
month ORDER BY total_sales DESC) AS rn
  FROM monthly_sales
)
SELECT product_id, month, total_sales
FROM ranked_sales
WHERE rn = 1;
```

### Case 328 [PDF 293]
**Title:** Find customers with the highest order count in each region.

**Original SQL:**
```sql
WITH customer_order_counts AS (
  SELECT c.region, o.customer_id, COUNT(*) AS
order_count,
         ROW_NUMBER() OVER (PARTITION BY
c.region ORDER BY COUNT(*) DESC) AS rn
  FROM customers c
  JOIN orders o
```

**Source note:** The SQL for this case is truncated in the PDF after `JOIN orders o`; no additional text was recoverable.

### Case 329 [PDF 294]
**Title:** Flag customers with an increase in orders every month this year.

**Original SQL:**
```sql
WITH monthly_counts AS (
  SELECT customer_id, DATE_TRUNC('month',
order_date) AS month, COUNT(*) AS cnt
  FROM orders
  WHERE EXTRACT(YEAR FROM order_date) =
EXTRACT(YEAR FROM CURRENT_DATE)
  GROUP BY customer_id, month
),
increase_check AS (
  SELECT customer_id,
         LAG(cnt) OVER (PARTITION BY customer_id
ORDER BY month) AS prev_cnt,
         cnt
  FROM monthly_counts
)
SELECT DISTINCT customer_id
FROM increase_check
WHERE cnt > prev_cnt AND prev_cnt IS NOT NULL;
```

### Case 330 [PDF 295]
**Title:** Find employees whose hire date is the same weekday as their manager’s.

**Original SQL:**
```sql
SELECT e.id, e.name
FROM employees e
JOIN employees m ON e.manager_id = m.id
WHERE EXTRACT(DOW FROM e.hire_date) =
EXTRACT(DOW FROM m.hire_date);
```

### Case 331 [PDF 296]
**Title:** Get total working hours per employee per week.

**Original SQL:**
```sql
SELECT employee_id, DATE_TRUNC('week',
work_date) AS week_start, SUM(hours_worked) AS
total_hours
FROM work_logs
GROUP BY employee_id, week_start;
```

### Case 332 [PDF 297]
**Title:** Identify suppliers who delivered to all regions.

**Original SQL:**
```sql
WITH total_regions AS (
  SELECT COUNT(DISTINCT region) AS total FROM
suppliers
),
supplier_regions AS (
  SELECT supplier_id, COUNT(DISTINCT
delivery_region) AS regions_served
  FROM deliveries
  GROUP BY supplier_id
)
SELECT supplier_id
FROM supplier_regions
JOIN total_regions ON regions_served = total;
```

### Case 333 [PDF 298]
**Title:** Find products ordered on their launch date.

**Original SQL:**
```sql
SELECT o.product_id
FROM orders o
JOIN products p ON o.product_id = p.product_id
WHERE CAST(o.order_date AS DATE) =
p.launch_date;
```

### Case 334 [PDF 299]
**Title:** Retrieve employees with salary in top 5% company-wide.

**Original SQL:**
```sql
WITH salary_ranks AS (
  SELECT salary, PERCENT_RANK() OVER
(ORDER BY salary DESC) AS pr
  FROM employees
)
SELECT e.*
FROM employees e
JOIN salary_ranks sr ON e.salary = sr.salary
WHERE sr.pr <= 0.05;
```

### Case 335 [PDF 300]
**Title:** List departments with no open positions.

**Original SQL:**
```sql
SELECT d.department_id
FROM departments d
LEFT JOIN job_openings j ON d.department_id =
j.department_id AND j.status = 'Open'
WHERE j.job_id IS NULL;
```

## C. Databricks Python Version

### Case 001 [PDF 1]
**Brief explanation:** This query returns the rows needed to answer: Find the second highest salary from the Employee table.

**PySpark / Databricks code:**
```python
# Case 001 [PDF 1]
# Find the second highest salary from the Employee table.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT MAX(salary) AS SecondHighestSalary
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);
"""

df_case_001_result = spark.sql(query)
display(df_case_001_result)
```

**Expected result description:** A one-row result with the second-highest salary value, or one row per department when the case is department-scoped.

### Case 002 [PDF 2]
**Brief explanation:** This query returns the rows needed to answer: Find duplicate records in a table.

**PySpark / Databricks code:**
```python
# Case 002 [PDF 2]
# Find duplicate records in a table.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT name, COUNT(*)
FROM employees
GROUP BY name
HAVING COUNT(*) > 1;
"""

df_case_002_result = spark.sql(query)
display(df_case_002_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 003 [PDF 3]
**Brief explanation:** This query returns the rows needed to answer: Retrieve employees who earn more than their manager.

**PySpark / Databricks code:**
```python
# Case 003 [PDF 3]
# Retrieve employees who earn more than their manager.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT e.name AS Employee, e.salary, m.name AS
Manager, m.salary AS ManagerSalary
FROM employees e
JOIN employees m ON e.manager_id = m.id
WHERE e.salary > m.salary;
"""

df_case_003_result = spark.sql(query)
display(df_case_003_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 004 [PDF 4]
**Brief explanation:** This case solves: Count employees in each department having more than 5 employees.

**PySpark / Databricks code:**
```python
# Case 004 [PDF 4]
# Count employees in each department having more than 5 employees.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT department_id, COUNT(*) AS
num_employees
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 5;
"""

df_case_004_result = spark.sql(query)
display(df_case_004_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 005 [PDF 5]
**Brief explanation:** This query returns the rows needed to answer: Find employees who joined in the last 6 months.

**PySpark / Databricks code:**
```python
# Case 005 [PDF 5]
# Find employees who joined in the last 6 months.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT *
FROM employees
WHERE join_date >= add_months(current_date(), -6);
"""

df_case_005_result = spark.sql(query)
display(df_case_005_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 006 [PDF 6]
**Brief explanation:** This query returns the rows needed to answer: Get departments with no employees.

**PySpark / Databricks code:**
```python
# Case 006 [PDF 6]
# Get departments with no employees.
df_departments_source = spark.sql("SELECT * FROM departments ORDER BY department_id")
display(df_departments_source)

df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT d.department_name
FROM departments d
LEFT JOIN employees e ON d.department_id =
e.department_id
WHERE e.id IS NULL;
"""

df_case_006_result = spark.sql(query)
display(df_case_006_result)
```

**Expected result description:** Rows representing the missing relationship or absence condition requested in the case.

### Case 007 [PDF 7]
**Brief explanation:** This Databricks query implements the requested logic: find the median salary.

**PySpark / Databricks code:**
```python
# Case 007 [PDF 7]
# Write a query to find the median salary.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT AVG(salary) AS median_salary
FROM (
  SELECT salary
  FROM employees
  ORDER BY salary
  LIMIT 2 - (SELECT COUNT(*) FROM employees)
% 2
  OFFSET (SELECT (COUNT(*) - 1) / 2 FROM
employees)
) AS median_subquery;
"""

df_case_007_result = spark.sql(query)
display(df_case_007_result)
```

**Expected result description:** A median or percentile value, either company-wide or partitioned by the grouping column used in the query.

### Case 008 [PDF 8]
**Brief explanation:** This case solves: Running total of salaries by department.

**PySpark / Databricks code:**
```python
# Case 008 [PDF 8]
# Running total of salaries by department.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT name, department_id, salary,
       SUM(salary) OVER (PARTITION BY
department_id ORDER BY id) AS running_total
FROM employees;
"""

df_case_008_result = spark.sql(query)
display(df_case_008_result)
```

**Expected result description:** A row-level result set that adds a derived analytic column to each input row.

### Case 009 [PDF 9]
**Brief explanation:** This query returns the rows needed to answer: Find the longest consecutive streak of daily logins for each user.

**PySpark / Databricks code:**
```python
# Case 009 [PDF 9]
# Find the longest consecutive streak of daily logins for each user.
df_user_logins_source = spark.sql("SELECT * FROM user_logins ORDER BY user_id, login_date")
display(df_user_logins_source)

query = """
WITH login_dates AS (
  SELECT user_id, login_date,
         date_sub(login_date, CAST(ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY
login_date) AS INT)) AS grp
  FROM user_logins
)
SELECT user_id, COUNT(*) AS streak_length,
MIN(login_date) AS start_date, MAX(login_date) AS
end_date
FROM login_dates
GROUP BY user_id, grp
ORDER BY streak_length DESC;
"""

df_case_009_result = spark.sql(query)
display(df_case_009_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 010 [PDF 10]
**Brief explanation:** This case solves: Recursive query to find the full reporting chain for each employee.

**PySpark / Databricks code:**
```python
# Case 010 [PDF 10]
# Recursive query to find the full reporting chain for each employee.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
WITH RECURSIVE reporting_chain AS (
  SELECT id, name, manager_id, 1 AS level
  FROM employees
  WHERE manager_id IS NULL
  UNION ALL
  SELECT e.id, e.name, e.manager_id, rc.level + 1
  FROM employees e
  JOIN reporting_chain rc ON e.manager_id = rc.id
)
SELECT * FROM reporting_chain ORDER BY level,
id;
"""

df_case_010_result = spark.sql(query)
display(df_case_010_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 011 [PDF 11]
**Brief explanation:** This Databricks query implements the requested logic: find gaps in a sequence of numbers (missing IDs).

**PySpark / Databricks code:**
```python
# Case 011 [PDF 11]
# Write a query to find gaps in a sequence of numbers (missing IDs).
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT (id + 1) AS missing_id
FROM employees e1
WHERE NOT EXISTS (
  SELECT 1 FROM employees e2 WHERE e2.id =
e1.id + 1
)
ORDER BY missing_id;
"""

df_case_011_result = spark.sql(query)
display(df_case_011_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 012 [PDF 12]
**Brief explanation:** This query calculates the metric requested in the case: Calculate cumulative distribution (CDF) of salaries.

**PySpark / Databricks code:**
```python
# Case 012 [PDF 12]
# Calculate cumulative distribution (CDF) of salaries.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT name, salary,
       CUME_DIST() OVER (ORDER BY salary) AS
salary_cdf
FROM employees;
"""

df_case_012_result = spark.sql(query)
display(df_case_012_result)
```

**Expected result description:** A row-level result set that adds a derived analytic column to each input row.

### Case 013 [PDF 13]
**Brief explanation:** This case solves: Compare two tables and find rows with differences in any column (all columns).

**PySpark / Databricks code:**
```python
# Case 013 [PDF 13]
# Compare two tables and find rows with differences in any column (all columns).
df_table1_source = spark.sql("SELECT * FROM table1 ORDER BY id")
display(df_table1_source)

df_table2_source = spark.sql("SELECT * FROM table2 ORDER BY id")
display(df_table2_source)

query = """
SELECT *
FROM table1 t1
FULL OUTER JOIN table2 t2
  ON t1.id = t2.id
WHERE NOT (t1.col1 <=> t2.col1)
   OR NOT (t1.col2 <=> t2.col2)
   OR NOT (t1.col3 <=> t2.col3);
"""

df_case_013_result = spark.sql(query)
display(df_case_013_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 014 [PDF 14]
**Brief explanation:** This Databricks query implements the requested logic: rank employees based on salary with ties handled properly.

**PySpark / Databricks code:**
```python
# Case 014 [PDF 14]
# Write a query to rank employees based on salary with ties handled properly.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT name, salary,
       RANK() OVER (ORDER BY salary DESC) AS
salary_rank
FROM employees;
"""

df_case_014_result = spark.sql(query)
display(df_case_014_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 015 [PDF 15]
**Brief explanation:** This query returns the rows needed to answer: Find customers who have not made any purchase.

**PySpark / Databricks code:**
```python
# Case 015 [PDF 15]
# Find customers who have not made any purchase.
df_customers_source = spark.sql("SELECT * FROM customers ORDER BY customer_id")
display(df_customers_source)

df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT c.customer_id, c.name
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL;
"""

df_case_015_result = spark.sql(query)
display(df_case_015_result)
```

**Expected result description:** Rows representing the missing relationship or absence condition requested in the case.

### Case 016 [PDF 16]
**Brief explanation:** This Databricks query implements the requested logic: perform a conditional aggregation (count males and females in each department).

**PySpark / Databricks code:**
```python
# Case 016 [PDF 16]
# Write a query to perform a conditional aggregation (count males and females in each department).
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT department_id,
       COUNT(CASE WHEN gender = 'M' THEN 1
END) AS male_count,
       COUNT(CASE WHEN gender = 'F' THEN 1
END) AS female_count
FROM employees
GROUP BY department_id;
"""

df_case_016_result = spark.sql(query)
display(df_case_016_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 017 [PDF 17]
**Brief explanation:** This Databricks query implements the requested logic: calculate the difference between current row and previous row's salary (lag function).

**PySpark / Databricks code:**
```python
# Case 017 [PDF 17]
# Write a query to calculate the difference between current row and previous row's salary (lag function).
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT name, salary,
       salary - LAG(salary) OVER (ORDER BY id) AS
salary_diff
FROM employees;
"""

df_case_017_result = spark.sql(query)
display(df_case_017_result)
```

**Expected result description:** A row-level result set that adds a derived analytic column to each input row.

### Case 018 [PDF 18]
**Brief explanation:** This query returns the rows needed to answer: Identify overlapping date ranges for bookings.

**PySpark / Databricks code:**
```python
# Case 018 [PDF 18]
# Identify overlapping date ranges for bookings.
df_bookings_source = spark.sql("SELECT * FROM bookings ORDER BY booking_id")
display(df_bookings_source)

query = """
SELECT b1.booking_id, b2.booking_id
FROM bookings b1
JOIN bookings b2 ON b1.booking_id <> b2.booking_id
WHERE b1.start_date <= b2.end_date
  AND b1.end_date >= b2.start_date;
"""

df_case_018_result = spark.sql(query)
display(df_case_018_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 019 [PDF 19]
**Brief explanation:** This Databricks query implements the requested logic: find employees with salary greater than average salary in the entire company, ordered by salary descending.

**PySpark / Databricks code:**
```python
# Case 019 [PDF 19]
# Write a query to find employees with salary greater than average salary in the entire company, ordered by salary descending.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM
employees)
ORDER BY salary DESC;
"""

df_case_019_result = spark.sql(query)
display(df_case_019_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 020 [PDF 20]
**Brief explanation:** This case solves: Aggregate JSON data (if supported) to list all employee names in a department as a JSON array.

**PySpark / Databricks code:**
```python
# Case 020 [PDF 20]
# Aggregate JSON data (if supported) to list all employee names in a department as a JSON array.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT department_id,
       to_json(collect_list(name)) AS employee_names
FROM employees
GROUP BY department_id;
"""

df_case_020_result = spark.sql(query)
display(df_case_020_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 021 [PDF 21a]
**Brief explanation:** This query returns the rows needed to answer: Find employees who have the same salary as their manager.

**PySpark / Databricks code:**
```python
# Case 021 [PDF 21a]
# Find employees who have the same salary as their manager.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT e.name AS Employee, e.salary, m.name AS
Manager
FROM employees e
JOIN employees m ON e.manager_id = m.id
WHERE e.salary = m.salary;
"""

df_case_021_result = spark.sql(query)
display(df_case_021_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 022 [PDF 22a]
**Brief explanation:** This Databricks query implements the requested logic: get the first and last purchase date for each customer.

**PySpark / Databricks code:**
```python
# Case 022 [PDF 22a]
# Write a query to get the first and last purchase date for each customer.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT customer_id,
       MIN(purchase_date) AS first_purchase,
       MAX(purchase_date) AS last_purchase
FROM sales
GROUP BY customer_id;
"""

df_case_022_result = spark.sql(query)
display(df_case_022_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 023 [PDF 23a]
**Brief explanation:** This query returns the rows needed to answer: Find departments with the highest average salary.

**PySpark / Databricks code:**
```python
# Case 023 [PDF 23a]
# Find departments with the highest average salary.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
WITH avg_salaries AS (
  SELECT department_id, AVG(salary) AS avg_salary
  FROM employees
  GROUP BY department_id
)
SELECT *
FROM avg_salaries
WHERE avg_salary = (SELECT MAX(avg_salary)
FROM avg_salaries);
"""

df_case_023_result = spark.sql(query)
display(df_case_023_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 024 [PDF 24a]
**Brief explanation:** This Databricks query implements the requested logic: find the number of employees in each job title.

**PySpark / Databricks code:**
```python
# Case 024 [PDF 24a]
# Write a query to find the number of employees in each job title.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT job_title, COUNT(*) AS num_employees
FROM employees
GROUP BY job_title;
"""

df_case_024_result = spark.sql(query)
display(df_case_024_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 025 [PDF 25a]
**Brief explanation:** This query returns the rows needed to answer: Find employees who don’t have a department assigned.

**PySpark / Databricks code:**
```python
# Case 025 [PDF 25a]
# Find employees who don’t have a department assigned.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT *
FROM employees
WHERE department_id IS NULL;
"""

df_case_025_result = spark.sql(query)
display(df_case_025_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 026 [PDF 21b]
**Brief explanation:** This Databricks query implements the requested logic: find the difference in days between two dates in the same table.

**PySpark / Databricks code:**
```python
# Case 026 [PDF 21b]
# Write a query to find the difference in days between two dates in the same table.
df_projects_source = spark.sql("SELECT * FROM projects ORDER BY project_id")
display(df_projects_source)

query = """
SELECT id,
       datediff(end_date, start_date) AS days_difference
FROM projects;
"""

df_case_026_result = spark.sql(query)
display(df_case_026_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 027 [PDF 22b]
**Brief explanation:** This query calculates the metric requested in the case: Calculate the moving average of salaries over the last 3 employees ordered by hire date.

**PySpark / Databricks code:**
```python
# Case 027 [PDF 22b]
# Calculate the moving average of salaries over the last 3 employees ordered by hire date.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT name, hire_date, salary,
       AVG(salary) OVER (ORDER BY hire_date
ROWS BETWEEN 2 PRECEDING AND CURRENT
ROW) AS moving_avg_salary
FROM employees;
"""

df_case_027_result = spark.sql(query)
display(df_case_027_result)
```

**Expected result description:** A row-level result set that adds a derived analytic column to each input row.

### Case 028 [PDF 23b]
**Brief explanation:** This query returns the rows needed to answer: Find the most recent purchase per customer using window functions.

**PySpark / Databricks code:**
```python
# Case 028 [PDF 23b]
# Find the most recent purchase per customer using window functions.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT *
FROM (
  SELECT *,
         ROW_NUMBER() OVER (PARTITION BY
customer_id ORDER BY purchase_date DESC) AS rn
  FROM sales
) sub
WHERE rn = 1;
"""

df_case_028_result = spark.sql(query)
display(df_case_028_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 029 [PDF 24b]
**Brief explanation:** This case solves: Detect hierarchical depth of each employee in the org chart.

**PySpark / Databricks code:**
```python
# Case 029 [PDF 24b]
# Detect hierarchical depth of each employee in the org chart.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
WITH RECURSIVE employee_depth AS (
  SELECT id, name, manager_id, 1 AS depth
  FROM employees
  WHERE manager_id IS NULL
  UNION ALL
  SELECT e.id, e.name, e.manager_id, ed.depth + 1
  FROM employees e
  JOIN employee_depth ed ON e.manager_id = ed.id
)
SELECT * FROM employee_depth;
"""

df_case_029_result = spark.sql(query)
display(df_case_029_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 030 [PDF 25b]
**Brief explanation:** This Databricks query implements the requested logic: perform a self-join to find pairs of employees in the same department.

**PySpark / Databricks code:**
```python
# Case 030 [PDF 25b]
# Write a query to perform a self-join to find pairs of employees in the same department.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT e1.name AS Employee1, e2.name AS
Employee2, e1.department_id
FROM employees e1
JOIN employees e2 ON e1.department_id =
e2.department_id AND e1.id < e2.id;
"""

df_case_030_result = spark.sql(query)
display(df_case_030_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 031 [PDF 26]
**Brief explanation:** This Databricks query implements the requested logic: pivot rows into columns dynamically (if dynamic pivot is not supported, simulate it for fixed values).

**PySpark / Databricks code:**
```python
# Case 031 [PDF 26]
# Write a query to pivot rows into columns dynamically (if dynamic pivot is not supported, simulate it for fixed values).
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT
    department_id,
    SUM(CASE WHEN job_title = 'Manager' THEN 1
ELSE 0 END) AS Managers,
    SUM(CASE WHEN job_title = 'Developer' THEN 1
ELSE 0 END) AS Developers,
    SUM(CASE WHEN job_title = 'Tester' THEN 1
ELSE 0 END) AS Testers
FROM employees
GROUP BY department_id;
"""

df_case_031_result = spark.sql(query)
display(df_case_031_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 032 [PDF 27]
**Brief explanation:** This query returns the rows needed to answer: Find customers who made purchases in every category available.

**PySpark / Databricks code:**
```python
# Case 032 [PDF 27]
# Find customers who made purchases in every category available.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT customer_id
FROM sales s
GROUP BY customer_id
HAVING COUNT(DISTINCT category_id) =
(SELECT COUNT(DISTINCT category_id) FROM
sales);
"""

df_case_032_result = spark.sql(query)
display(df_case_032_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 033 [PDF 28]
**Brief explanation:** This query returns the rows needed to answer: Identify employees who haven’t received a salary raise in more than a year.

**PySpark / Databricks code:**
```python
# Case 033 [PDF 28]
# Identify employees who haven’t received a salary raise in more than a year.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

df_salary_history_source = spark.sql("SELECT * FROM salary_history ORDER BY employee_id, change_date")
display(df_salary_history_source)

query = """
SELECT e.name
FROM employees e
JOIN salary_history sh ON e.id = sh.employee_id
GROUP BY e.id, e.name
HAVING MAX(sh.raise_date) < add_months(current_date(), -12);
"""

df_case_033_result = spark.sql(query)
display(df_case_033_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 034 [PDF 29]
**Brief explanation:** This Databricks query implements the requested logic: rank salespeople by monthly sales, resetting the rank every month.

**PySpark / Databricks code:**
```python
# Case 034 [PDF 29]
# Write a query to rank salespeople by monthly sales, resetting the rank every month.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT salesperson_id, sale_month, total_sales,
       RANK() OVER (PARTITION BY sale_month
ORDER BY total_sales DESC) AS monthly_rank
FROM (
  SELECT salesperson_id, DATE_TRUNC('month',
sale_date) AS sale_month, SUM(amount) AS
total_sales
  FROM sales
  GROUP BY salesperson_id, sale_month
) AS monthly_sales;
"""

df_case_034_result = spark.sql(query)
display(df_case_034_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 035 [PDF 30]
**Brief explanation:** This query calculates the metric requested in the case: Calculate the percentage change in sales compared to the previous month for each product.

**PySpark / Databricks code:**
```python
# Case 035 [PDF 30]
# Calculate the percentage change in sales compared to the previous month for each product.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT product_id, sale_month, total_sales,
       (total_sales - LAG(total_sales) OVER
(PARTITION BY product_id ORDER BY
sale_month)) * 100.0 /
       LAG(total_sales) OVER (PARTITION BY
product_id ORDER BY sale_month) AS pct_change
FROM (
  SELECT product_id, DATE_TRUNC('month',
sale_date) AS sale_month, SUM(amount) AS
total_sales
  FROM sales
  GROUP BY product_id, sale_month
) monthly_sales;
"""

df_case_035_result = spark.sql(query)
display(df_case_035_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 036 [PDF 31a]
**Brief explanation:** This query returns the rows needed to answer: Find employees who earn more than the average salary across the company but less than the highest salary in their department.

**PySpark / Databricks code:**
```python
# Case 036 [PDF 31a]
# Find employees who earn more than the average salary across the company but less than the highest salary in their department.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT *
FROM employees e
WHERE salary > (SELECT AVG(salary) FROM
employees)
  AND salary < (
    SELECT MAX(salary)
    FROM employees
    WHERE department_id = e.department_id
  );
"""

df_case_036_result = spark.sql(query)
display(df_case_036_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 037 [PDF 32a]
**Brief explanation:** This query returns the rows needed to answer: Retrieve the last 5 orders for each customer.

**PySpark / Databricks code:**
```python
# Case 037 [PDF 32a]
# Retrieve the last 5 orders for each customer.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT *
FROM (
  SELECT o.*, ROW_NUMBER() OVER
(PARTITION BY customer_id ORDER BY order_date
DESC) AS rn
  FROM orders o
) sub
WHERE rn <= 5;
"""

df_case_037_result = spark.sql(query)
display(df_case_037_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 038 [PDF 33a]
**Brief explanation:** This query returns the rows needed to answer: Find employees with no salary changes in the last 2 years.

**PySpark / Databricks code:**
```python
# Case 038 [PDF 33a]
# Find employees with no salary changes in the last 2 years.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

df_salary_history_source = spark.sql("SELECT * FROM salary_history ORDER BY employee_id, change_date")
display(df_salary_history_source)

query = """
SELECT e.*
FROM employees e
LEFT JOIN salary_history sh ON e.id =
sh.employee_id AND sh.change_date >=
add_months(current_date(), -24)
WHERE sh.employee_id IS NULL;
"""

df_case_038_result = spark.sql(query)
display(df_case_038_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 039 [PDF 34a]
**Brief explanation:** This query returns the rows needed to answer: Find the department with the lowest average salary.

**PySpark / Databricks code:**
```python
# Case 039 [PDF 34a]
# Find the department with the lowest average salary.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id
ORDER BY avg_salary
LIMIT 1;
"""

df_case_039_result = spark.sql(query)
display(df_case_039_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 040 [PDF 35a]
**Brief explanation:** This query returns the rows needed to answer: List employees whose names start and end with the same letter.

**PySpark / Databricks code:**
```python
# Case 040 [PDF 35a]
# List employees whose names start and end with the same letter.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT *
FROM employees
WHERE LEFT(name, 1) = RIGHT(name, 1);
"""

df_case_040_result = spark.sql(query)
display(df_case_040_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 041 [PDF 31b]
**Brief explanation:** This Databricks version preserves the intent of the source question and includes a small inference where the PDF SQL was dialect-specific, incomplete, or logically broken.

**Databricks note:** This runnable version includes a small, explicit inference because the source SQL was dialect-specific, incomplete, or internally inconsistent.

**PySpark / Databricks code:**
```python
# Case 041 [PDF 31b]
# Write a query to detect circular references in employee-manager hierarchy (cycles).
# Note: The Databricks version below includes a small inference to make the PDF logic runnable.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
WITH RECURSIVE mgr_path AS (
  SELECT id, manager_id, array(id) AS path, false AS has_cycle
  FROM employees
  WHERE manager_id IS NOT NULL
  UNION ALL
  SELECT e.id,
         e.manager_id,
         concat(mp.path, array(e.id)) AS path,
         array_contains(mp.path, e.id) AS has_cycle
  FROM employees e
  JOIN mgr_path mp
    ON e.manager_id = mp.id
  WHERE NOT mp.has_cycle
)
SELECT DISTINCT id
FROM mgr_path
WHERE has_cycle;
"""

df_case_041_result = spark.sql(query)
display(df_case_041_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 042 [PDF 32b]
**Brief explanation:** This Databricks query implements the requested logic: get the running total of sales per customer, ordered by sale date.

**PySpark / Databricks code:**
```python
# Case 042 [PDF 32b]
# Write a query to get the running total of sales per customer, ordered by sale date.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT customer_id, sale_date, amount,
       SUM(amount) OVER (PARTITION BY
customer_id ORDER BY sale_date) AS running_total
FROM sales;
"""

df_case_042_result = spark.sql(query)
display(df_case_042_result)
```

**Expected result description:** A row-level result set that adds a derived analytic column to each input row.

### Case 043 [PDF 33b]
**Brief explanation:** This query returns the rows needed to answer: Find the department-wise salary percentile (e.g., 90th percentile) using window functions.

**PySpark / Databricks code:**
```python
# Case 043 [PDF 33b]
# Find the department-wise salary percentile (e.g., 90th percentile) using window functions.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT department_id, salary,
       PERCENTILE_CONT(0.9) WITHIN GROUP
(ORDER BY salary) OVER (PARTITION BY
department_id) AS pct_90_salary
FROM employees;
"""

df_case_043_result = spark.sql(query)
display(df_case_043_result)
```

**Expected result description:** A median or percentile value, either company-wide or partitioned by the grouping column used in the query.

### Case 044 [PDF 34b]
**Brief explanation:** This Databricks version preserves the intent of the source question and includes a small inference where the PDF SQL was dialect-specific, incomplete, or logically broken.

**Databricks note:** This runnable version includes a small, explicit inference because the source SQL was dialect-specific, incomplete, or internally inconsistent.

**PySpark / Databricks code:**
```python
# Case 044 [PDF 34b]
# Find employees whose salary is a prime number.
# Note: The Databricks version below includes a small inference to make the PDF logic runnable.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
WITH nums AS (
  SELECT explode(sequence(2, (SELECT max(salary) FROM employees))) AS num
),
non_primes AS (
  SELECT DISTINCT n.num
  FROM nums n
  JOIN nums d
    ON d.num BETWEEN 2 AND CAST(floor(sqrt(n.num)) AS INT)
   AND n.num % d.num = 0
   AND n.num > d.num
)
SELECT *
FROM employees
WHERE salary IN (
  SELECT num FROM nums
  EXCEPT
  SELECT num FROM non_primes
);
"""

df_case_044_result = spark.sql(query)
display(df_case_044_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 045 [PDF 35b]
**Brief explanation:** This query returns the rows needed to answer: Find employees who have worked for multiple departments over time.

**PySpark / Databricks code:**
```python
# Case 045 [PDF 35b]
# Find employees who have worked for multiple departments over time.
df_employee_department_history_source = spark.sql("SELECT * FROM employee_department_history ORDER BY employee_id, change_date")
display(df_employee_department_history_source)

query = """
SELECT employee_id
FROM employee_department_history
GROUP BY employee_id
HAVING COUNT(DISTINCT department_id) > 1;
"""

df_case_045_result = spark.sql(query)
display(df_case_045_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 046 [PDF 36]
**Brief explanation:** This case solves: Use window function to find the difference between current row’s sales and previous row’s sales partitioned by product.

**PySpark / Databricks code:**
```python
# Case 046 [PDF 36]
# Use window function to find the difference between current row’s sales and previous row’s sales partitioned by product.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT product_id, sale_date, amount,
       amount - LAG(amount) OVER (PARTITION BY
product_id ORDER BY sale_date) AS sales_diff
FROM sales;
"""

df_case_046_result = spark.sql(query)
display(df_case_046_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 047 [PDF 37]
**Brief explanation:** This Databricks query implements the requested logic: find all employees who are at the lowest level in the hierarchy (no subordinates).

**PySpark / Databricks code:**
```python
# Case 047 [PDF 37]
# Write a query to find all employees who are at the lowest level in the hierarchy (no subordinates).
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT *
FROM employees e
WHERE NOT EXISTS (
  SELECT 1 FROM employees sub WHERE
sub.manager_id = e.id
);
"""

df_case_047_result = spark.sql(query)
display(df_case_047_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 048 [PDF 38]
**Brief explanation:** This query returns the rows needed to answer: Find average order value per month and product category.

**PySpark / Databricks code:**
```python
# Case 048 [PDF 38]
# Find average order value per month and product category.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT DATE_TRUNC('month', order_date) AS
order_month, category_id, AVG(order_value) AS
avg_order_value
FROM orders
GROUP BY order_month, category_id;
"""

df_case_048_result = spark.sql(query)
display(df_case_048_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 049 [PDF 39]
**Brief explanation:** This Databricks query implements the requested logic: create a running count of how many employees joined in each year.

**PySpark / Databricks code:**
```python
# Case 049 [PDF 39]
# Write a query to create a running count of how many employees joined in each year.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT join_year, COUNT(*) AS yearly_hires,
       SUM(COUNT(*)) OVER (ORDER BY join_year)
AS running_total_hires
FROM (
  SELECT EXTRACT(YEAR FROM hire_date) AS
join_year
  FROM employees
) sub
GROUP BY join_year
ORDER BY join_year;
"""

df_case_049_result = spark.sql(query)
display(df_case_049_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 050 [PDF 40]
**Brief explanation:** This Databricks query implements the requested logic: find the second most recent order date per customer.

**PySpark / Databricks code:**
```python
# Case 050 [PDF 40]
# Write a query to find the second most recent order date per customer.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT customer_id, order_date
FROM (
  SELECT customer_id, order_date,
         ROW_NUMBER() OVER (PARTITION BY
customer_id ORDER BY order_date DESC) AS rn
  FROM orders
) sub
WHERE rn = 2;
"""

df_case_050_result = spark.sql(query)
display(df_case_050_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 051 [PDF 41a]
**Brief explanation:** This query returns the rows needed to answer: Find employees who have never made a sale.

**PySpark / Databricks code:**
```python
# Case 051 [PDF 41a]
# Find employees who have never made a sale.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT e.id, e.name
FROM employees e
LEFT JOIN sales s ON e.id = s.employee_id
WHERE s.sale_id IS NULL;
"""

df_case_051_result = spark.sql(query)
display(df_case_051_result)
```

**Expected result description:** Rows representing the missing relationship or absence condition requested in the case.

### Case 052 [PDF 42a]
**Brief explanation:** This query returns the rows needed to answer: Find the average tenure of employees by department.

**PySpark / Databricks code:**
```python
# Case 052 [PDF 42a]
# Find the average tenure of employees by department.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT department_id, AVG(months_between(current_date(), hire_date) / 12) AS avg_tenure_years
FROM employees
GROUP BY department_id;
"""

df_case_052_result = spark.sql(query)
display(df_case_052_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 053 [PDF 43a]
**Brief explanation:** This query returns the rows needed to answer: Get employees with salary in the top 10% in their department.

**PySpark / Databricks code:**
```python
# Case 053 [PDF 43a]
# Get employees with salary in the top 10% in their department.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT *
FROM (
  SELECT e.*, NTILE(10) OVER (PARTITION BY
department_id ORDER BY salary DESC) AS decile
  FROM employees e
) sub
WHERE decile = 1;
"""

df_case_053_result = spark.sql(query)
display(df_case_053_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 054 [PDF 44a]
**Brief explanation:** This query returns the rows needed to answer: Find customers who purchased more than once in the same day.

**PySpark / Databricks code:**
```python
# Case 054 [PDF 44a]
# Find customers who purchased more than once in the same day.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT customer_id, purchase_date, COUNT(*) AS
purchase_count
FROM sales
GROUP BY customer_id, purchase_date
HAVING COUNT(*) > 1;
"""

df_case_054_result = spark.sql(query)
display(df_case_054_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 055 [PDF 45a]
**Brief explanation:** This query returns the rows needed to answer: List all departments and their employee counts, including departments with zero employees.

**PySpark / Databricks code:**
```python
# Case 055 [PDF 45a]
# List all departments and their employee counts, including departments with zero employees.
df_departments_source = spark.sql("SELECT * FROM departments ORDER BY department_id")
display(df_departments_source)

df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT d.department_id, d.department_name,
COUNT(e.id) AS employee_count
FROM departments d
LEFT JOIN employees e ON d.department_id =
e.department_id
GROUP BY d.department_id, d.department_name;
"""

df_case_055_result = spark.sql(query)
display(df_case_055_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 056 [PDF 41b]
**Brief explanation:** This Databricks query implements the requested logic: find duplicate rows based on multiple columns.

**PySpark / Databricks code:**
```python
# Case 056 [PDF 41b]
# Write a query to find duplicate rows based on multiple columns.
df_table_name_source = spark.sql("SELECT * FROM table_name ORDER BY column1, column2, col1, col2, col3")
display(df_table_name_source)

query = """
SELECT column1, column2, COUNT(*)
FROM table_name
GROUP BY column1, column2
HAVING COUNT(*) > 1;
"""

df_case_056_result = spark.sql(query)
display(df_case_056_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 057 [PDF 42b]
**Brief explanation:** This case solves: Write a recursive query to calculate factorial of a number (e.g., 5).

**PySpark / Databricks code:**
```python
# Case 057 [PDF 42b]
# Write a recursive query to calculate factorial of a number (e.g., 5).
df_inputs_source = spark.sql("SELECT 5 AS target_n")
display(df_inputs_source)

query = """
WITH RECURSIVE factorial(n, fact) AS (
  SELECT 1, 1
  UNION ALL
  SELECT n + 1, fact * (n + 1)
  FROM factorial
  WHERE n < 5
)
SELECT fact
FROM factorial
WHERE n = 5;
"""

df_case_057_result = spark.sql(query)
display(df_case_057_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 058 [PDF 43b]
**Brief explanation:** This Databricks query implements the requested logic: calculate the cumulative percentage of total sales per product.

**PySpark / Databricks code:**
```python
# Case 058 [PDF 43b]
# Write a query to calculate the cumulative percentage of total sales per product.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT product_id, sale_amount,
       SUM(sale_amount) OVER (ORDER BY
sale_amount DESC) * 100.0 / SUM(sale_amount)
OVER () AS cumulative_pct
FROM sales;
"""

df_case_058_result = spark.sql(query)
display(df_case_058_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 059 [PDF 44b]
**Brief explanation:** This Databricks query implements the requested logic: get employees who reported directly or indirectly to a given manager (hierarchy traversal).

**PySpark / Databricks code:**
```python
# Case 059 [PDF 44b]
# Write a query to get employees who reported directly or indirectly to a given manager (hierarchy traversal).
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

manager_id = 1

query = f"""
WITH RECURSIVE reporting AS (
  SELECT id, name, manager_id
  FROM employees
  WHERE manager_id = {manager_id}
  UNION ALL
  SELECT e.id, e.name, e.manager_id
  FROM employees e
  INNER JOIN reporting r
    ON e.manager_id = r.id
)
SELECT *
FROM reporting;
"""

df_case_059_result = spark.sql(query)
display(df_case_059_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 060 [PDF 45b]
**Brief explanation:** This query returns the rows needed to answer: Find the average number of orders per customer and standard deviation.

**PySpark / Databricks code:**
```python
# Case 060 [PDF 45b]
# Find the average number of orders per customer and standard deviation.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT AVG(order_count) AS avg_orders,
STDDEV(order_count) AS stddev_orders
FROM (
  SELECT customer_id, COUNT(*) AS order_count
  FROM orders
  GROUP BY customer_id
) sub;
"""

df_case_060_result = spark.sql(query)
display(df_case_060_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 061 [PDF 46]
**Brief explanation:** This query returns the rows needed to answer: Find gaps in date sequences for each customer (missing days).

**PySpark / Databricks code:**
```python
# Case 061 [PDF 46]
# Find gaps in date sequences for each customer (missing days).
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
WITH dates AS (
  SELECT customer_id, purchase_date,
         LAG(purchase_date) OVER (PARTITION BY
customer_id ORDER BY purchase_date) AS prev_date
  FROM sales
)
SELECT customer_id, date_add(prev_date, 1)
AS missing_date
FROM dates
WHERE purchase_date > prev_date + INTERVAL '1
day';
"""

df_case_061_result = spark.sql(query)
display(df_case_061_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 062 [PDF 47]
**Brief explanation:** This case solves: Rank employees by salary within their department, and calculate percent rank.

**PySpark / Databricks code:**
```python
# Case 062 [PDF 47]
# Rank employees by salary within their department, and calculate percent rank.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT name, department_id, salary,
       RANK() OVER (PARTITION BY department_id
ORDER BY salary DESC) AS salary_rank,
       PERCENT_RANK() OVER (PARTITION BY
department_id ORDER BY salary DESC) AS
salary_percent_rank
FROM employees;
"""

df_case_062_result = spark.sql(query)
display(df_case_062_result)
```

**Expected result description:** A row-level result set that adds a derived analytic column to each input row.

### Case 063 [PDF 48]
**Brief explanation:** This query returns the rows needed to answer: Find products that have never been sold.

**PySpark / Databricks code:**
```python
# Case 063 [PDF 48]
# Find products that have never been sold.
df_products_source = spark.sql("SELECT * FROM products ORDER BY product_id")
display(df_products_source)

df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT p.product_id, p.product_name
FROM products p
LEFT JOIN sales s ON p.product_id = s.product_id
WHERE s.sale_id IS NULL;
"""

df_case_063_result = spark.sql(query)
display(df_case_063_result)
```

**Expected result description:** Rows representing the missing relationship or absence condition requested in the case.

### Case 064 [PDF 49]
**Brief explanation:** This Databricks query implements the requested logic: find consecutive days where sales were above a threshold.

**PySpark / Databricks code:**
```python
# Case 064 [PDF 49]
# Write a query to find consecutive days where sales were above a threshold.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
WITH flagged_sales AS (
  SELECT sale_date, amount,
         CASE WHEN amount > 1000 THEN 1 ELSE 0
END AS flag
  FROM sales
),
groups AS (
  SELECT sale_date, amount, flag,
         date_sub(sale_date, CAST(ROW_NUMBER() OVER (ORDER BY sale_date) AS INT)) AS grp
  FROM flagged_sales
  WHERE flag = 1
)
SELECT MIN(sale_date) AS start_date,
MAX(sale_date) AS end_date, COUNT(*) AS
consecutive_days
FROM groups
GROUP BY grp
ORDER BY consecutive_days DESC;
"""

df_case_064_result = spark.sql(query)
display(df_case_064_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 065 [PDF 50]
**Brief explanation:** This Databricks query implements the requested logic: concatenate employee names in each department (string aggregation).

**PySpark / Databricks code:**
```python
# Case 065 [PDF 50]
# Write a query to concatenate employee names in each department (string aggregation).
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT department_id, concat_ws(', ', collect_list(name)) AS
employee_names
FROM employees
GROUP BY department_id;
"""

df_case_065_result = spark.sql(query)
display(df_case_065_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 066 [PDF 51a]
**Brief explanation:** This query returns the rows needed to answer: Find employees whose salary is above the average salary of their department but below the company-wide average.

**PySpark / Databricks code:**
```python
# Case 066 [PDF 51a]
# Find employees whose salary is above the average salary of their department but below the company-wide average.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT *
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id
)
AND salary < (SELECT AVG(salary) FROM
employees);
"""

df_case_066_result = spark.sql(query)
display(df_case_066_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 067 [PDF 52a]
**Brief explanation:** This query returns the rows needed to answer: List the customers who purchased all products in a specific category.

**PySpark / Databricks code:**
```python
# Case 067 [PDF 52a]
# List the customers who purchased all products in a specific category.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

df_products_source = spark.sql("SELECT * FROM products ORDER BY product_id")
display(df_products_source)

category_id = 1

query = f"""
SELECT customer_id
FROM sales
WHERE category_id = {category_id}
GROUP BY customer_id
HAVING COUNT(DISTINCT product_id) = (
  SELECT COUNT(DISTINCT product_id)
  FROM products
  WHERE category_id = {category_id}
);
"""

df_case_067_result = spark.sql(query)
display(df_case_067_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 068 [PDF 53a]
**Brief explanation:** This query returns the rows needed to answer: Retrieve the Nth highest salary from the employees table.

**PySpark / Databricks code:**
```python
# Case 068 [PDF 53a]
# Retrieve the Nth highest salary from the employees table.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

nth_rank = 3

query = f"""
SELECT DISTINCT salary
FROM (
  SELECT salary,
         dense_rank() OVER (ORDER BY salary DESC) AS rnk
  FROM employees
) ranked_salaries
WHERE rnk = {nth_rank};
"""

df_case_068_result = spark.sql(query)
display(df_case_068_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 069 [PDF 54a]
**Brief explanation:** This query returns the rows needed to answer: Find employees with no corresponding entries in the salary_history table.

**PySpark / Databricks code:**
```python
# Case 069 [PDF 54a]
# Find employees with no corresponding entries in the salary_history table.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

df_salary_history_source = spark.sql("SELECT * FROM salary_history ORDER BY employee_id, change_date")
display(df_salary_history_source)

query = """
SELECT e.*
FROM employees e
LEFT JOIN salary_history sh ON e.id =
sh.employee_id
WHERE sh.employee_id IS NULL;
"""

df_case_069_result = spark.sql(query)
display(df_case_069_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 070 [PDF 55a]
**Brief explanation:** This case solves: Show the department with the highest number of employees and the count.

**PySpark / Databricks code:**
```python
# Case 070 [PDF 55a]
# Show the department with the highest number of employees and the count.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT department_id, COUNT(*) AS
employee_count
FROM employees
GROUP BY department_id
ORDER BY employee_count DESC
LIMIT 1;
"""

df_case_070_result = spark.sql(query)
display(df_case_070_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 071 [PDF 51b]
**Brief explanation:** This case solves: Write a recursive query to list all ancestors (managers) of a given employee.

**PySpark / Databricks code:**
```python
# Case 071 [PDF 51b]
# Write a recursive query to list all ancestors (managers) of a given employee.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
WITH RECURSIVE ancestors AS (
    SELECT id, name, manager_id
    FROM employees
    WHERE id = 123 -- given employee id
    UNION ALL
    SELECT e.id, e.name, e.manager_id
    FROM employees e
    JOIN ancestors a ON e.id = a.manager_id
)
SELECT * FROM ancestors WHERE id != 123;
"""

df_case_071_result = spark.sql(query)
display(df_case_071_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 072 [PDF 52b]
**Brief explanation:** This query calculates the metric requested in the case: Calculate the median salary by department using window functions.

**PySpark / Databricks code:**
```python
# Case 072 [PDF 52b]
# Calculate the median salary by department using window functions.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT DISTINCT department_id,
       PERCENTILE_CONT(0.5) WITHIN GROUP
(ORDER BY salary) OVER (PARTITION BY
department_id) AS median_salary
FROM employees;
"""

df_case_072_result = spark.sql(query)
display(df_case_072_result)
```

**Expected result description:** A median or percentile value, either company-wide or partitioned by the grouping column used in the query.

### Case 073 [PDF 53b]
**Brief explanation:** This Databricks query implements the requested logic: find the first purchase date and last purchase date for each customer, including customers who never purchased anything.

**PySpark / Databricks code:**
```python
# Case 073 [PDF 53b]
# Write a query to find the first purchase date and last purchase date for each customer, including customers who never purchased anything.
df_customers_source = spark.sql("SELECT * FROM customers ORDER BY customer_id")
display(df_customers_source)

df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT c.customer_id,
       MIN(s.purchase_date) AS first_purchase,
       MAX(s.purchase_date) AS last_purchase
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id;
"""

df_case_073_result = spark.sql(query)
display(df_case_073_result)
```

**Expected result description:** Rows representing the missing relationship or absence condition requested in the case.

### Case 074 [PDF 54b]
**Brief explanation:** This query returns the rows needed to answer: Find the percentage difference between each month’s total sales and the previous month’s total sales.

**PySpark / Databricks code:**
```python
# Case 074 [PDF 54b]
# Find the percentage difference between each month’s total sales and the previous month’s total sales.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
WITH monthly_sales AS (
  SELECT DATE_TRUNC('month', sale_date) AS
month, SUM(amount) AS total_sales
  FROM sales
  GROUP BY month
)
SELECT month, total_sales,
       (total_sales - LAG(total_sales) OVER (ORDER
BY month)) * 100.0 / LAG(total_sales) OVER
(ORDER BY month) AS pct_change
FROM monthly_sales;
"""

df_case_074_result = spark.sql(query)
display(df_case_074_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 075 [PDF 55b]
**Brief explanation:** This Databricks query implements the requested logic: find employees who have the longest tenure within their department.

**PySpark / Databricks code:**
```python
# Case 075 [PDF 55b]
# Write a query to find employees who have the longest tenure within their department.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
WITH tenure AS (
  SELECT *,
         RANK() OVER (PARTITION BY department_id
ORDER BY hire_date ASC) AS tenure_rank
  FROM employees
)
SELECT *
FROM tenure
WHERE tenure_rank = 1;
"""

df_case_075_result = spark.sql(query)
display(df_case_075_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 076 [PDF 56]
**Brief explanation:** This query generates the requested derived result set: Generate a report that shows sales and sales growth percentage compared to the same month last year.

**PySpark / Databricks code:**
```python
# Case 076 [PDF 56]
# Generate a report that shows sales and sales growth percentage compared to the same month last year.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
WITH monthly_sales AS (
  SELECT DATE_TRUNC('month', sale_date) AS
month, SUM(amount) AS total_sales
  FROM sales
  GROUP BY month
)
SELECT ms1.month, ms1.total_sales,
       ((ms1.total_sales - ms2.total_sales) * 100.0 /
ms2.total_sales) AS growth_pct
FROM monthly_sales ms1
LEFT JOIN monthly_sales ms2 ON ms1.month =
ms2.month + INTERVAL '1 year';
"""

df_case_076_result = spark.sql(query)
display(df_case_076_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 077 [PDF 57]
**Brief explanation:** This Databricks query implements the requested logic: identify overlapping shifts for employees.

**PySpark / Databricks code:**
```python
# Case 077 [PDF 57]
# Write a query to identify overlapping shifts for employees.
df_shifts_source = spark.sql("SELECT * FROM shifts ORDER BY employee_id, shift_id")
display(df_shifts_source)

query = """
SELECT s1.employee_id, s1.shift_id AS shift1,
s2.shift_id AS shift2
FROM shifts s1
JOIN shifts s2 ON s1.employee_id = s2.employee_id
AND s1.shift_id <> s2.shift_id
WHERE s1.start_time < s2.end_time AND s1.end_time
> s2.start_time;
"""

df_case_077_result = spark.sql(query)
display(df_case_077_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 078 [PDF 58]
**Brief explanation:** This query calculates the metric requested in the case: Calculate the total revenue for each customer, and rank them from highest to lowest spender.

**PySpark / Databricks code:**
```python
# Case 078 [PDF 58]
# Calculate the total revenue for each customer, and rank them from highest to lowest spender.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT customer_id, SUM(amount) AS
total_revenue,
       RANK() OVER (ORDER BY SUM(amount)
DESC) AS revenue_rank
FROM sales
GROUP BY customer_id;
"""

df_case_078_result = spark.sql(query)
display(df_case_078_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 079 [PDF 59]
**Brief explanation:** This Databricks query implements the requested logic: find the employee(s) who have never received a promotion.

**PySpark / Databricks code:**
```python
# Case 079 [PDF 59]
# Write a query to find the employee(s) who have never received a promotion.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

df_promotions_source = spark.sql("SELECT * FROM promotions ORDER BY promotion_id")
display(df_promotions_source)

query = """
SELECT e.*
FROM employees e
LEFT JOIN promotions p ON e.id = p.employee_id
WHERE p.employee_id IS NULL;
"""

df_case_079_result = spark.sql(query)
display(df_case_079_result)
```

**Expected result description:** Rows representing the missing relationship or absence condition requested in the case.

### Case 080 [PDF 60]
**Brief explanation:** This Databricks query implements the requested logic: find the top 3 products with the highest total sales amount each month.

**PySpark / Databricks code:**
```python
# Case 080 [PDF 60]
# Write a query to find the top 3 products with the highest total sales amount each month.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
WITH monthly_product_sales AS (
  SELECT product_id, DATE_TRUNC('month',
sale_date) AS month, SUM(amount) AS total_sales
  FROM sales
  GROUP BY product_id, month
),
ranked_sales AS (
  SELECT *, RANK() OVER (PARTITION BY month
ORDER BY total_sales DESC) AS sales_rank
  FROM monthly_product_sales
)
SELECT product_id, month, total_sales
FROM ranked_sales
WHERE sales_rank <= 3
ORDER BY month, sales_rank;
"""

df_case_080_result = spark.sql(query)
display(df_case_080_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 081 [PDF 61a]
**Brief explanation:** This query returns the rows needed to answer: Find the customers who placed orders only in the last 30 days.

**PySpark / Databricks code:**
```python
# Case 081 [PDF 61a]
# Find the customers who placed orders only in the last 30 days.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT DISTINCT customer_id
FROM orders
WHERE order_date >= date_sub(current_date(), 30)
AND customer_id NOT IN (
  SELECT DISTINCT customer_id
  FROM orders
  WHERE order_date < date_sub(current_date(), 30)
);
"""

df_case_081_result = spark.sql(query)
display(df_case_081_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 082 [PDF 62a]
**Brief explanation:** This query returns the rows needed to answer: Find products that have never been ordered.

**PySpark / Databricks code:**
```python
# Case 082 [PDF 62a]
# Find products that have never been ordered.
df_products_source = spark.sql("SELECT * FROM products ORDER BY product_id")
display(df_products_source)

df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT p.product_id, p.product_name
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id
WHERE o.order_id IS NULL;
"""

df_case_082_result = spark.sql(query)
display(df_case_082_result)
```

**Expected result description:** Rows representing the missing relationship or absence condition requested in the case.

### Case 083 [PDF 63a]
**Brief explanation:** This query returns the rows needed to answer: Find employees whose salary is above their department’s average but below the overall average salary.

**PySpark / Databricks code:**
```python
# Case 083 [PDF 63a]
# Find employees whose salary is above their department’s average but below the overall average salary.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT *
FROM employees e
WHERE salary > (SELECT AVG(salary) FROM
employees WHERE department_id = e.department_id)
AND salary < (SELECT AVG(salary) FROM
employees);
"""

df_case_083_result = spark.sql(query)
display(df_case_083_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 084 [PDF 64a]
**Brief explanation:** This query calculates the metric requested in the case: Calculate the total sales amount and number of orders per customer in the last year.

**PySpark / Databricks code:**
```python
# Case 084 [PDF 64a]
# Calculate the total sales amount and number of orders per customer in the last year.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT customer_id, COUNT(*) AS total_orders,
SUM(amount) AS total_sales
FROM sales
WHERE sale_date >= add_months(current_date(), -12)
GROUP BY customer_id;
"""

df_case_084_result = spark.sql(query)
display(df_case_084_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 085 [PDF 65a]
**Brief explanation:** This query returns the rows needed to answer: List the top 5 highest-paid employees per department.

**PySpark / Databricks code:**
```python
# Case 085 [PDF 65a]
# List the top 5 highest-paid employees per department.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT *
FROM (
  SELECT e.*, ROW_NUMBER() OVER
(PARTITION BY department_id ORDER BY salary
DESC) AS rn
  FROM employees e
) sub
WHERE rn <= 5;
"""

df_case_085_result = spark.sql(query)
display(df_case_085_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 086 [PDF 61b]
**Brief explanation:** This Databricks query implements the requested logic: identify “gaps and islands” in attendance records (consecutive dates present).

**PySpark / Databricks code:**
```python
# Case 086 [PDF 61b]
# Write a query to identify “gaps and islands” in attendance records (consecutive dates present).
df_attendance_source = spark.sql("SELECT * FROM attendance ORDER BY employee_id, attendance_date")
display(df_attendance_source)

query = """
WITH attendance_groups AS (
  SELECT employee_id, attendance_date,
         date_sub(attendance_date, CAST(ROW_NUMBER() OVER (PARTITION BY employee_id ORDER BY
attendance_date) AS INT)) AS grp
  FROM attendance
)
SELECT employee_id, MIN(attendance_date) AS
start_date, MAX(attendance_date) AS end_date,
COUNT(*) AS consecutive_days
FROM attendance_groups
GROUP BY employee_id, grp
ORDER BY employee_id, start_date;
"""

df_case_086_result = spark.sql(query)
display(df_case_086_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 087 [PDF 62b]
**Brief explanation:** This case solves: Write a recursive query to list all descendants of a manager in an organizational hierarchy.

**PySpark / Databricks code:**
```python
# Case 087 [PDF 62b]
# Write a recursive query to list all descendants of a manager in an organizational hierarchy.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

manager_id = 1

query = f"""
WITH RECURSIVE descendants AS (
  SELECT id, name, manager_id
  FROM employees
  WHERE manager_id = {manager_id}
  UNION ALL
  SELECT e.id, e.name, e.manager_id
  FROM employees e
  INNER JOIN descendants d
    ON e.manager_id = d.id
)
SELECT *
FROM descendants;
"""

df_case_087_result = spark.sql(query)
display(df_case_087_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 088 [PDF 63b]
**Brief explanation:** This query calculates the metric requested in the case: Calculate a 3-month moving average of monthly sales per product.

**PySpark / Databricks code:**
```python
# Case 088 [PDF 63b]
# Calculate a 3-month moving average of monthly sales per product.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
WITH monthly_sales AS (
  SELECT product_id, DATE_TRUNC('month',
sale_date) AS month, SUM(amount) AS total_sales
  FROM sales
  GROUP BY product_id, month
)
SELECT product_id, month, total_sales,
       AVG(total_sales) OVER (PARTITION BY
product_id ORDER BY month ROWS BETWEEN 2
PRECEDING AND CURRENT ROW) AS
moving_avg
FROM monthly_sales;
"""

df_case_088_result = spark.sql(query)
display(df_case_088_result)
```

**Expected result description:** A row-level result set that adds a derived analytic column to each input row.

### Case 089 [PDF 64b]
**Brief explanation:** This Databricks query implements the requested logic: find employees who have the same hire date as their managers.

**PySpark / Databricks code:**
```python
# Case 089 [PDF 64b]
# Write a query to find employees who have the same hire date as their managers.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT e.name AS employee_name, m.name AS
manager_name, e.hire_date
FROM employees e
JOIN employees m ON e.manager_id = m.id
WHERE e.hire_date = m.hire_date;
"""

df_case_089_result = spark.sql(query)
display(df_case_089_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 090 [PDF 65b]
**Brief explanation:** This Databricks query implements the requested logic: find products with increasing sales over the last 3 months.

**PySpark / Databricks code:**
```python
# Case 090 [PDF 65b]
# Write a query to find products with increasing sales over the last 3 months.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
WITH monthly_sales AS (
  SELECT product_id, DATE_TRUNC('month',
sale_date) AS month, SUM(amount) AS total_sales
  FROM sales
  GROUP BY product_id, month
),
ranked_sales AS (
  SELECT product_id, month, total_sales,
         ROW_NUMBER() OVER (PARTITION BY
product_id ORDER BY month DESC) AS rn
  FROM monthly_sales
)
SELECT ms1.product_id
FROM ranked_sales ms1
JOIN ranked_sales ms2 ON ms1.product_id =
ms2.product_id AND ms1.rn = 1 AND ms2.rn = 2
JOIN ranked_sales ms3 ON ms1.product_id =
ms3.product_id AND ms3.rn = 3
WHERE ms3.total_sales < ms2.total_sales AND
ms2.total_sales < ms1.total_sales;
"""

df_case_090_result = spark.sql(query)
display(df_case_090_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 091 [PDF 66]
**Brief explanation:** This Databricks query implements the requested logic: get the nth highest salary per department.

**PySpark / Databricks code:**
```python
# Case 091 [PDF 66]
# Write a query to get the nth highest salary per department.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

nth_rank = 2

query = f"""
SELECT department_id, salary
FROM (
  SELECT department_id,
         salary,
         row_number() OVER (
           PARTITION BY department_id
           ORDER BY salary DESC
         ) AS rn
  FROM employees
) sub
WHERE rn = {nth_rank};
"""

df_case_091_result = spark.sql(query)
display(df_case_091_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 092 [PDF 67]
**Brief explanation:** This query returns the rows needed to answer: Find employees who have managed more than 3 projects.

**PySpark / Databricks code:**
```python
# Case 092 [PDF 67]
# Find employees who have managed more than 3 projects.
df_projects_source = spark.sql("SELECT * FROM projects ORDER BY project_id")
display(df_projects_source)

query = """
SELECT manager_id, COUNT(DISTINCT project_id)
AS project_count
FROM projects
GROUP BY manager_id
HAVING COUNT(DISTINCT project_id) > 3;
"""

df_case_092_result = spark.sql(query)
display(df_case_092_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 093 [PDF 68]
**Brief explanation:** This Databricks query implements the requested logic: calculate the difference in days between each employee's hire date and their manager’s hire date.

**PySpark / Databricks code:**
```python
# Case 093 [PDF 68]
# Write a query to calculate the difference in days between each employee's hire date and their manager’s hire date.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT e.name AS employee,
       m.name AS manager,
       datediff(e.hire_date, m.hire_date) AS days_difference
FROM employees e
JOIN employees m
  ON e.manager_id = m.id;
"""

df_case_093_result = spark.sql(query)
display(df_case_093_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 094 [PDF 69]
**Brief explanation:** This Databricks query implements the requested logic: find the department with the highest average years of experience.

**PySpark / Databricks code:**
```python
# Case 094 [PDF 69]
# Write a query to find the department with the highest average years of experience.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT department_id, AVG(EXTRACT(year FROM
current_date() - hire_date)) AS
avg_experience_years
FROM employees
GROUP BY department_id
ORDER BY avg_experience_years DESC
LIMIT 1;
"""

df_case_094_result = spark.sql(query)
display(df_case_094_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 095 [PDF 70]
**Brief explanation:** This query returns the rows needed to answer: Identify employees who had overlapping project assignments.

**PySpark / Databricks code:**
```python
# Case 095 [PDF 70]
# Identify employees who had overlapping project assignments.
df_project_assignments_source = spark.sql("SELECT * FROM project_assignments ORDER BY employee_id, project_id")
display(df_project_assignments_source)

query = """
SELECT p1.employee_id, p1.project_id AS project1,
p2.project_id AS project2
FROM project_assignments p1
JOIN project_assignments p2 ON p1.employee_id =
p2.employee_id AND p1.project_id <> p2.project_id
WHERE p1.start_date < p2.end_date AND p1.end_date
> p2.start_date;
"""

df_case_095_result = spark.sql(query)
display(df_case_095_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 096 [PDF 71a]
**Brief explanation:** This query returns the rows needed to answer: Find customers who made purchases in every month of the current year.

**PySpark / Databricks code:**
```python
# Case 096 [PDF 71a]
# Find customers who made purchases in every month of the current year.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
WITH months AS (
  SELECT explode(sequence(1, 12)) AS month
),
customer_months AS (
  SELECT customer_id,
         month(purchase_date) AS month
  FROM sales
  WHERE year(purchase_date) = year(current_date())
  GROUP BY customer_id, month(purchase_date)
)
SELECT customer_id
FROM customer_months
GROUP BY customer_id
HAVING COUNT(DISTINCT month) = 12;
"""

df_case_096_result = spark.sql(query)
display(df_case_096_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 097 [PDF 72a]
**Brief explanation:** This query returns the rows needed to answer: List employees who earn more than all their subordinates.

**PySpark / Databricks code:**
```python
# Case 097 [PDF 72a]
# List employees who earn more than all their subordinates.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT e.id, e.name, e.salary
FROM employees e
WHERE e.salary > ALL (
  SELECT salary
  FROM employees sub
  WHERE sub.manager_id = e.id
);
"""

df_case_097_result = spark.sql(query)
display(df_case_097_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 098 [PDF 73a]
**Brief explanation:** This query returns the rows needed to answer: Get the product with the highest sales for each category.

**PySpark / Databricks code:**
```python
# Case 098 [PDF 73a]
# Get the product with the highest sales for each category.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
WITH category_sales AS (
  SELECT category_id, product_id, SUM(amount) AS
total_sales,
         RANK() OVER (PARTITION BY category_id
ORDER BY SUM(amount) DESC) AS sales_rank
  FROM sales
  GROUP BY category_id, product_id
)
SELECT category_id, product_id, total_sales
FROM category_sales
WHERE sales_rank = 1;
"""

df_case_098_result = spark.sql(query)
display(df_case_098_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 099 [PDF 74a]
**Brief explanation:** This query returns the rows needed to answer: Find customers who haven’t ordered in the last 6 months.

**PySpark / Databricks code:**
```python
# Case 099 [PDF 74a]
# Find customers who haven’t ordered in the last 6 months.
df_customers_source = spark.sql("SELECT * FROM customers ORDER BY customer_id")
display(df_customers_source)

df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT customer_id
FROM customers c
LEFT JOIN orders o ON c.customer_id =
o.customer_id
GROUP BY c.customer_id
HAVING MAX(o.order_date) < add_months(current_date(), -6) OR MAX(o.order_date) IS
NULL;
"""

df_case_099_result = spark.sql(query)
display(df_case_099_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 100 [PDF 75a]
**Brief explanation:** This query returns the rows needed to answer: Find the maximum salary gap between any two employees within the same department.

**PySpark / Databricks code:**
```python
# Case 100 [PDF 75a]
# Find the maximum salary gap between any two employees within the same department.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT department_id, MAX(salary) - MIN(salary)
AS salary_gap
FROM employees
GROUP BY department_id;
"""

df_case_100_result = spark.sql(query)
display(df_case_100_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 101 [PDF 71b]
**Brief explanation:** This case solves: Write a recursive query to compute the total budget under each manager (including subordinates).

**PySpark / Databricks code:**
```python
# Case 101 [PDF 71b]
# Write a recursive query to compute the total budget under each manager (including subordinates).
df_departments_source = spark.sql("SELECT * FROM departments ORDER BY department_id")
display(df_departments_source)

query = """
WITH RECURSIVE manager_budget AS (
  SELECT id, manager_id, budget
  FROM departments
  UNION ALL
  SELECT d.id, d.manager_id, mb.budget
  FROM departments d
  JOIN manager_budget mb ON d.manager_id = mb.id
)
SELECT manager_id, SUM(budget) AS total_budget
FROM manager_budget
GROUP BY manager_id;
"""

df_case_101_result = spark.sql(query)
display(df_case_101_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 102 [PDF 72b]
**Brief explanation:** This Databricks query implements the requested logic: detect gaps in a sequence of invoice numbers.

**PySpark / Databricks code:**
```python
# Case 102 [PDF 72b]
# Write a query to detect gaps in a sequence of invoice numbers.
df_invoices_source = spark.sql("SELECT * FROM invoices ORDER BY invoice_number")
display(df_invoices_source)

query = """
WITH numbered_invoices AS (
  SELECT invoice_number, ROW_NUMBER() OVER
(ORDER BY invoice_number) AS rn
  FROM invoices
)
SELECT invoice_number + 1 AS missing_invoice
FROM numbered_invoices ni
WHERE (invoice_number + 1) <> (
  SELECT invoice_number FROM numbered_invoices
WHERE rn = ni.rn + 1
);
"""

df_case_102_result = spark.sql(query)
display(df_case_102_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 103 [PDF 73b]
**Brief explanation:** This query calculates the metric requested in the case: Calculate the rank of employees by salary within their department but restart rank numbering every 10 employees.

**PySpark / Databricks code:**
```python
# Case 103 [PDF 73b]
# Calculate the rank of employees by salary within their department but restart rank numbering every 10 employees.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
WITH ranked_employees AS (
  SELECT e.*,
         ROW_NUMBER() OVER (PARTITION BY
department_id ORDER BY salary DESC) AS rn
  FROM employees e
)
SELECT *, ((rn - 1) / 10) + 1 AS rank_group
FROM ranked_employees;
"""

df_case_103_result = spark.sql(query)
display(df_case_103_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 104 [PDF 74b]
**Brief explanation:** This query returns the rows needed to answer: Find the moving median of daily sales over the last 7 days for each product.

**PySpark / Databricks code:**
```python
# Case 104 [PDF 74b]
# Find the moving median of daily sales over the last 7 days for each product.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
WITH daily_sales AS (
  SELECT product_id, sale_date, SUM(amount) AS
total_sales
  FROM sales
  GROUP BY product_id, sale_date
)
SELECT product_id, sale_date,
       PERCENTILE_CONT(0.5) WITHIN GROUP
(ORDER BY total_sales)
       OVER (PARTITION BY product_id ORDER BY
sale_date ROWS BETWEEN 6 PRECEDING AND
CURRENT ROW) AS moving_median
FROM daily_sales;
"""

df_case_104_result = spark.sql(query)
display(df_case_104_result)
```

**Expected result description:** A median or percentile value, either company-wide or partitioned by the grouping column used in the query.

### Case 105 [PDF 75b]
**Brief explanation:** This query returns the rows needed to answer: Find customers who purchased both product A and product B.

**PySpark / Databricks code:**
```python
# Case 105 [PDF 75b]
# Find customers who purchased both product A and product B.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT customer_id
FROM sales
WHERE product_id IN ('A', 'B')
GROUP BY customer_id
HAVING COUNT(DISTINCT product_id) = 2;
"""

df_case_105_result = spark.sql(query)
display(df_case_105_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 106 [PDF 76]
**Brief explanation:** This Databricks query implements the requested logic: generate a calendar table with all dates for the current year.

**PySpark / Databricks code:**
```python
# Case 106 [PDF 76]
# Write a query to generate a calendar table with all dates for the current year.
df_inputs_source = spark.sql("""
SELECT date_trunc('year', current_date()) AS year_start,
       date_sub(add_months(date_trunc('year', current_date()), 12), 1) AS year_end
""")
display(df_inputs_source)

query = """
SELECT explode(
         sequence(
           date_trunc('year', current_date()),
           date_sub(add_months(date_trunc('year', current_date()), 12), 1),
           interval 1 day
         )
       ) AS calendar_date;
"""

df_case_106_result = spark.sql(query)
display(df_case_106_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 107 [PDF 77]
**Brief explanation:** This query returns the rows needed to answer: Find employees who have worked in more than 3 different departments.

**PySpark / Databricks code:**
```python
# Case 107 [PDF 77]
# Find employees who have worked in more than 3 different departments.
df_employee_department_history_source = spark.sql("SELECT * FROM employee_department_history ORDER BY employee_id, change_date")
display(df_employee_department_history_source)

query = """
SELECT employee_id
FROM employee_department_history
GROUP BY employee_id
HAVING COUNT(DISTINCT department_id) > 3;
"""

df_case_107_result = spark.sql(query)
display(df_case_107_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 108 [PDF 78]
**Brief explanation:** This query calculates the metric requested in the case: Calculate the percentage contribution of each product’s sales to the total sales per month.

**PySpark / Databricks code:**
```python
# Case 108 [PDF 78]
# Calculate the percentage contribution of each product’s sales to the total sales per month.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
WITH monthly_sales AS (
  SELECT product_id, DATE_TRUNC('month',
sale_date) AS month, SUM(amount) AS product_sales
  FROM sales
  GROUP BY product_id, month
),
total_monthly_sales AS (
  SELECT month, SUM(product_sales) AS total_sales
  FROM monthly_sales
  GROUP BY month
)
SELECT ms.product_id, ms.month, ms.product_sales,
       (ms.product_sales * 100.0) / tms.total_sales AS
pct_contribution
FROM monthly_sales ms
JOIN total_monthly_sales tms ON ms.month =
tms.month;
"""

df_case_108_result = spark.sql(query)
display(df_case_108_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 109 [PDF 79]
**Brief explanation:** This Databricks version preserves the intent of the source question and includes a small inference where the PDF SQL was dialect-specific, incomplete, or logically broken.

**Databricks note:** This runnable version includes a small, explicit inference because the source SQL was dialect-specific, incomplete, or internally inconsistent.

**PySpark / Databricks code:**
```python
# Case 109 [PDF 79]
# Write a query to pivot monthly sales data for each product into columns.
# Note: The Databricks version below includes a small inference to make the PDF logic runnable.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT product_id,
       SUM(CASE WHEN month(sale_date) = 1 THEN amount ELSE 0 END) AS Jan,
       SUM(CASE WHEN month(sale_date) = 2 THEN amount ELSE 0 END) AS Feb,
       SUM(CASE WHEN month(sale_date) = 3 THEN amount ELSE 0 END) AS Mar,
       SUM(CASE WHEN month(sale_date) = 4 THEN amount ELSE 0 END) AS Apr,
       SUM(CASE WHEN month(sale_date) = 5 THEN amount ELSE 0 END) AS May,
       SUM(CASE WHEN month(sale_date) = 6 THEN amount ELSE 0 END) AS Jun,
       SUM(CASE WHEN month(sale_date) = 7 THEN amount ELSE 0 END) AS Jul,
       SUM(CASE WHEN month(sale_date) = 8 THEN amount ELSE 0 END) AS Aug,
       SUM(CASE WHEN month(sale_date) = 9 THEN amount ELSE 0 END) AS Sep,
       SUM(CASE WHEN month(sale_date) = 10 THEN amount ELSE 0 END) AS Oct,
       SUM(CASE WHEN month(sale_date) = 11 THEN amount ELSE 0 END) AS Nov,
       SUM(CASE WHEN month(sale_date) = 12 THEN amount ELSE 0 END) AS Dec
FROM sales
GROUP BY product_id;
"""

df_case_109_result = spark.sql(query)
display(df_case_109_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 110 [PDF 80]
**Brief explanation:** This query returns the rows needed to answer: Find the 3 most recent orders per customer including order details.

**PySpark / Databricks code:**
```python
# Case 110 [PDF 80]
# Find the 3 most recent orders per customer including order details.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT *
FROM (
  SELECT o.*, ROW_NUMBER() OVER
(PARTITION BY customer_id ORDER BY order_date
DESC) AS rn
  FROM orders o
) sub
WHERE rn <= 3;
"""

df_case_110_result = spark.sql(query)
display(df_case_110_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 111 [PDF 81a]
**Brief explanation:** This query returns the rows needed to answer: Find employees who have never taken any leave.

**PySpark / Databricks code:**
```python
# Case 111 [PDF 81a]
# Find employees who have never taken any leave.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

df_leaves_source = spark.sql("SELECT * FROM leaves ORDER BY leave_id")
display(df_leaves_source)

query = """
SELECT e.*
FROM employees e
LEFT JOIN leaves l ON e.id = l.employee_id
WHERE l.leave_id IS NULL;
"""

df_case_111_result = spark.sql(query)
display(df_case_111_result)
```

**Expected result description:** Rows representing the missing relationship or absence condition requested in the case.

### Case 112 [PDF 82a]
**Brief explanation:** This query returns the rows needed to answer: List customers who placed orders in January but not in February.

**PySpark / Databricks code:**
```python
# Case 112 [PDF 82a]
# List customers who placed orders in January but not in February.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
WITH jan_orders AS (
  SELECT DISTINCT customer_id
  FROM orders
  WHERE EXTRACT(MONTH FROM order_date) = 1
),
feb_orders AS (
  SELECT DISTINCT customer_id
  FROM orders
  WHERE EXTRACT(MONTH FROM order_date) = 2
)
SELECT customer_id
FROM jan_orders
WHERE customer_id NOT IN (SELECT customer_id
FROM feb_orders);
"""

df_case_112_result = spark.sql(query)
display(df_case_112_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 113 [PDF 83a]
**Brief explanation:** This query returns the rows needed to answer: Find products that have seen a price increase in the last 6 months.

**PySpark / Databricks code:**
```python
# Case 113 [PDF 83a]
# Find products that have seen a price increase in the last 6 months.
df_product_prices_source = spark.sql("SELECT * FROM product_prices ORDER BY product_id, effective_date")
display(df_product_prices_source)

query = """
WITH price_changes AS (
  SELECT product_id, price, effective_date,
         LAG(price) OVER (PARTITION BY product_id
ORDER BY effective_date) AS prev_price
  FROM product_prices
  WHERE effective_date >= add_months(current_date(), -6)
)
SELECT DISTINCT product_id
FROM price_changes
WHERE price > prev_price;
"""

df_case_113_result = spark.sql(query)
display(df_case_113_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 114 [PDF 84a]
**Brief explanation:** This query returns the rows needed to answer: Find the department(s) with the second highest average salary.

**PySpark / Databricks code:**
```python
# Case 114 [PDF 84a]
# Find the department(s) with the second highest average salary.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
WITH avg_salaries AS (
  SELECT department_id, AVG(salary) AS avg_salary
  FROM employees
  GROUP BY department_id
),
ranked_salaries AS (
  SELECT department_id, avg_salary,
DENSE_RANK() OVER (ORDER BY avg_salary
DESC) AS rnk
  FROM avg_salaries
)
SELECT department_id, avg_salary
FROM ranked_salaries
WHERE rnk = 2;
"""

df_case_114_result = spark.sql(query)
display(df_case_114_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 115 [PDF 85a]
**Brief explanation:** This query returns the rows needed to answer: Find employees who joined in the same month and year.

**PySpark / Databricks code:**
```python
# Case 115 [PDF 85a]
# Find employees who joined in the same month and year.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT e1.id AS emp1_id, e2.id AS emp2_id,
e1.hire_date
FROM employees e1
JOIN employees e2 ON e1.id <> e2.id
AND EXTRACT(MONTH FROM e1.hire_date) =
EXTRACT(MONTH FROM e2.hire_date)
AND EXTRACT(YEAR FROM e1.hire_date) =
EXTRACT(YEAR FROM e2.hire_date);
"""

df_case_115_result = spark.sql(query)
display(df_case_115_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 116 [PDF 81b]
**Brief explanation:** This case solves: Write a recursive query to find all employees and their level of reporting (distance from CEO).

**PySpark / Databricks code:**
```python
# Case 116 [PDF 81b]
# Write a recursive query to find all employees and their level of reporting (distance from CEO).
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
WITH RECURSIVE hierarchy AS (
  SELECT id, name, manager_id, 1 AS level
  FROM employees
  WHERE manager_id IS NULL -- CEO level
  UNION ALL
  SELECT e.id, e.name, e.manager_id, h.level + 1
  FROM employees e
  JOIN hierarchy h ON e.manager_id = h.id
)
SELECT * FROM hierarchy ORDER BY level,
manager_id;
"""

df_case_116_result = spark.sql(query)
display(df_case_116_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 117 [PDF 82b]
**Brief explanation:** This query returns the rows needed to answer: Find the second highest salary per department without using window functions.

**PySpark / Databricks code:**
```python
# Case 117 [PDF 82b]
# Find the second highest salary per department without using window functions.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT department_id, MAX(salary) AS
second_highest_salary
FROM employees e1
WHERE salary < (
  SELECT MAX(salary)
  FROM employees e2
  WHERE e2.department_id = e1.department_id
)
GROUP BY department_id;
"""

df_case_117_result = spark.sql(query)
display(df_case_117_result)
```

**Expected result description:** A one-row result with the second-highest salary value, or one row per department when the case is department-scoped.

### Case 118 [PDF 83b]
**Brief explanation:** This query calculates the metric requested in the case: Calculate the percentage change in sales for each product comparing current month to previous month.

**PySpark / Databricks code:**
```python
# Case 118 [PDF 83b]
# Calculate the percentage change in sales for each product comparing current month to previous month.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
WITH monthly_sales AS (
  SELECT product_id, DATE_TRUNC('month',
sale_date) AS month, SUM(amount) AS total_sales
  FROM sales
  GROUP BY product_id, month
)
SELECT product_id, month, total_sales,
       (total_sales - LAG(total_sales) OVER
(PARTITION BY product_id ORDER BY month)) *
100.0
       / LAG(total_sales) OVER (PARTITION BY
product_id ORDER BY month) AS pct_change
FROM monthly_sales;
"""

df_case_118_result = spark.sql(query)
display(df_case_118_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 119 [PDF 84b]
**Brief explanation:** This Databricks version preserves the intent of the source question and includes a small inference where the PDF SQL was dialect-specific, incomplete, or logically broken.

**Databricks note:** This runnable version includes a small, explicit inference because the source SQL was dialect-specific, incomplete, or internally inconsistent.

**PySpark / Databricks code:**
```python
# Case 119 [PDF 84b]
# Write a query to identify duplicate rows (all columns) in a table.
# Note: The Databricks version below includes a small inference to make the PDF logic runnable.
df_table_name_source = spark.sql("SELECT * FROM table_name ORDER BY column1, column2, col1, col2, col3")
display(df_table_name_source)

query = """
SELECT *
FROM (
  SELECT *,
         COUNT(*) OVER (PARTITION BY col1, col2, col3) AS cnt
  FROM table_name
) dup_rows
WHERE cnt > 1;
"""

df_case_119_result = spark.sql(query)
display(df_case_119_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 120 [PDF 85b]
**Brief explanation:** This Databricks query implements the requested logic: unpivot quarterly sales data into rows.

**PySpark / Databricks code:**
```python
# Case 120 [PDF 85b]
# Write a query to unpivot quarterly sales data into rows.
df_sales_data_source = spark.sql("SELECT * FROM sales_data ORDER BY product_id")
display(df_sales_data_source)

query = """
SELECT product_id, 'Q1' AS quarter, Q1_sales AS
sales FROM sales_data
UNION ALL
SELECT product_id, 'Q2', Q2_sales FROM sales_data
UNION ALL
SELECT product_id, 'Q3', Q3_sales FROM sales_data
UNION ALL
SELECT product_id, 'Q4', Q4_sales FROM sales_data;
"""

df_case_120_result = spark.sql(query)
display(df_case_120_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 121 [PDF 86]
**Brief explanation:** This query returns the rows needed to answer: Find employees whose salary is above the average salary of their department but below the company-wide average.

**PySpark / Databricks code:**
```python
# Case 121 [PDF 86]
# Find employees whose salary is above the average salary of their department but below the company-wide average.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT *
FROM employees e
WHERE salary > (SELECT AVG(salary) FROM
employees WHERE department_id = e.department_id)
AND salary < (SELECT AVG(salary) FROM
employees);
"""

df_case_121_result = spark.sql(query)
display(df_case_121_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 122 [PDF 87]
**Brief explanation:** This Databricks query implements the requested logic: find customers with the highest purchase amount per year.

**PySpark / Databricks code:**
```python
# Case 122 [PDF 87]
# Write a query to find customers with the highest purchase amount per year.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
WITH yearly_sales AS (
  SELECT customer_id, EXTRACT(YEAR FROM
sale_date) AS year, SUM(amount) AS total_amount
  FROM sales
  GROUP BY customer_id, year
),
ranked_sales AS (
  SELECT *, RANK() OVER (PARTITION BY year
ORDER BY total_amount DESC) AS rnk
  FROM yearly_sales
)
SELECT customer_id, year, total_amount
FROM ranked_sales
WHERE rnk = 1;
"""

df_case_122_result = spark.sql(query)
display(df_case_122_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 123 [PDF 88]
**Brief explanation:** This Databricks query implements the requested logic: list all employees who have a salary equal to the average salary of their department.

**PySpark / Databricks code:**
```python
# Case 123 [PDF 88]
# Write a query to list all employees who have a salary equal to the average salary of their department.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT e.*
FROM employees e
JOIN (
  SELECT department_id, AVG(salary) AS avg_salary
  FROM employees
  GROUP BY department_id
) d ON e.department_id = d.department_id AND
e.salary = d.avg_salary;
"""

df_case_123_result = spark.sql(query)
display(df_case_123_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 124 [PDF 89]
**Brief explanation:** This query returns the rows needed to answer: Find the first order date for each customer.

**PySpark / Databricks code:**
```python
# Case 124 [PDF 89]
# Find the first order date for each customer.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT customer_id, MIN(order_date) AS
first_order_date
FROM orders
GROUP BY customer_id;
"""

df_case_124_result = spark.sql(query)
display(df_case_124_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 125 [PDF 90]
**Brief explanation:** This query returns the rows needed to answer: Find employees who have been promoted more than twice.

**PySpark / Databricks code:**
```python
# Case 125 [PDF 90]
# Find employees who have been promoted more than twice.
df_promotions_source = spark.sql("SELECT * FROM promotions ORDER BY promotion_id")
display(df_promotions_source)

query = """
SELECT employee_id, COUNT(*) AS
promotion_count
FROM promotions
GROUP BY employee_id
HAVING COUNT(*) > 2;
"""

df_case_125_result = spark.sql(query)
display(df_case_125_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 126 [PDF 91]
**Brief explanation:** This query returns the rows needed to answer: Find employees who have not been assigned to any project.

**PySpark / Databricks code:**
```python
# Case 126 [PDF 91]
# Find employees who have not been assigned to any project.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

df_project_assignments_source = spark.sql("SELECT * FROM project_assignments ORDER BY employee_id, project_id")
display(df_project_assignments_source)

query = """
SELECT e.*
FROM employees e
LEFT JOIN project_assignments pa ON e.id =
pa.employee_id
WHERE pa.project_id IS NULL;
"""

df_case_126_result = spark.sql(query)
display(df_case_126_result)
```

**Expected result description:** Rows representing the missing relationship or absence condition requested in the case.

### Case 127 [PDF 92]
**Brief explanation:** This query returns the rows needed to answer: Find the total sales per customer including those with zero sales.

**PySpark / Databricks code:**
```python
# Case 127 [PDF 92]
# Find the total sales per customer including those with zero sales.
df_customers_source = spark.sql("SELECT * FROM customers ORDER BY customer_id")
display(df_customers_source)

df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT c.customer_id, COALESCE(SUM(s.amount),
0) AS total_sales
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
GROUP BY c.customer_id;
"""

df_case_127_result = spark.sql(query)
display(df_case_127_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 128 [PDF 93]
**Brief explanation:** This query returns the rows needed to answer: Find the highest salary by department and the employee(s) who earn it.

**PySpark / Databricks code:**
```python
# Case 128 [PDF 93]
# Find the highest salary by department and the employee(s) who earn it.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
WITH dept_max AS (
  SELECT department_id, MAX(salary) AS max_salary
  FROM employees
  GROUP BY department_id
)
SELECT e.*
FROM employees e
JOIN dept_max d ON e.department_id =
d.department_id AND e.salary = d.max_salary;
"""

df_case_128_result = spark.sql(query)
display(df_case_128_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 129 [PDF 94]
**Brief explanation:** This query returns the rows needed to answer: Find customers with no orders in the last year.

**PySpark / Databricks code:**
```python
# Case 129 [PDF 94]
# Find customers with no orders in the last year.
df_customers_source = spark.sql("SELECT * FROM customers ORDER BY customer_id")
display(df_customers_source)

df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT customer_id
FROM customers c
LEFT JOIN orders o ON c.customer_id =
o.customer_id AND o.order_date >=
add_months(current_date(), -12)
WHERE o.order_id IS NULL;
"""

df_case_129_result = spark.sql(query)
display(df_case_129_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 130 [PDF 95]
**Brief explanation:** This query returns the rows needed to answer: Find employees whose salary is within 10% of the highest salary in their department.

**PySpark / Databricks code:**
```python
# Case 130 [PDF 95]
# Find employees whose salary is within 10% of the highest salary in their department.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
WITH dept_max AS (
  SELECT department_id, MAX(salary) AS max_salary
  FROM employees
  GROUP BY department_id
)
SELECT e.*
FROM employees e
JOIN dept_max d ON e.department_id =
d.department_id
WHERE e.salary >= 0.9 * d.max_salary;
"""

df_case_130_result = spark.sql(query)
display(df_case_130_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 131 [PDF 96]
**Brief explanation:** This query returns the rows needed to answer: Find the running total of sales by date.

**PySpark / Databricks code:**
```python
# Case 131 [PDF 96]
# Find the running total of sales by date.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT sale_date, SUM(amount) OVER (ORDER BY
sale_date ROWS BETWEEN UNBOUNDED
PRECEDING AND CURRENT ROW) AS
running_total
FROM sales
ORDER BY sale_date;
"""

df_case_131_result = spark.sql(query)
display(df_case_131_result)
```

**Expected result description:** A row-level result set that adds a derived analytic column to each input row.

### Case 132 [PDF 97]
**Brief explanation:** This query returns the rows needed to answer: Find employees who earn more than the average salary of the entire company.

**PySpark / Databricks code:**
```python
# Case 132 [PDF 97]
# Find employees who earn more than the average salary of the entire company.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT *
FROM employees
WHERE salary > (SELECT AVG(salary) FROM
employees);
"""

df_case_132_result = spark.sql(query)
display(df_case_132_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 133 [PDF 98]
**Brief explanation:** This query returns the rows needed to answer: Get the last 3 orders placed by each customer.

**PySpark / Databricks code:**
```python
# Case 133 [PDF 98]
# Get the last 3 orders placed by each customer.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT *
FROM (
  SELECT o.*, ROW_NUMBER() OVER
(PARTITION BY customer_id ORDER BY order_date
DESC) AS rn
  FROM orders o
) sub
WHERE rn <= 3;
"""

df_case_133_result = spark.sql(query)
display(df_case_133_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 134 [PDF 99]
**Brief explanation:** This query returns the rows needed to answer: Find the difference in days between the earliest and latest orders per customer.

**PySpark / Databricks code:**
```python
# Case 134 [PDF 99]
# Find the difference in days between the earliest and latest orders per customer.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT customer_id, MAX(order_date) -
MIN(order_date) AS days_between
FROM orders
GROUP BY customer_id;
"""

df_case_134_result = spark.sql(query)
display(df_case_134_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 135 [PDF 100a]
**Brief explanation:** This query returns the rows needed to answer: Find employees who have worked on all projects.

**PySpark / Databricks code:**
```python
# Case 135 [PDF 100a]
# Find employees who have worked on all projects.
df_project_assignments_source = spark.sql("SELECT * FROM project_assignments ORDER BY employee_id, project_id")
display(df_project_assignments_source)

df_projects_source = spark.sql("SELECT * FROM projects ORDER BY project_id")
display(df_projects_source)

query = """
SELECT employee_id
FROM project_assignments
GROUP BY employee_id
HAVING COUNT(DISTINCT project_id) = (SELECT
COUNT(*) FROM projects);
"""

df_case_135_result = spark.sql(query)
display(df_case_135_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 136 [PDF 101]
**Brief explanation:** This query returns the rows needed to answer: Find customers who placed orders only in the last 6 months.

**PySpark / Databricks code:**
```python
# Case 136 [PDF 101]
# Find customers who placed orders only in the last 6 months.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING MIN(order_date) >= add_months(current_date(), -6);
"""

df_case_136_result = spark.sql(query)
display(df_case_136_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 137 [PDF 102]
**Brief explanation:** This query returns the rows needed to answer: Get the total number of orders per day, including days with zero orders.

**PySpark / Databricks code:**
```python
# Case 137 [PDF 102]
# Get the total number of orders per day, including days with zero orders.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
WITH dates AS (
  SELECT explode(
           sequence(
             (SELECT min(order_date) FROM orders),
             (SELECT max(order_date) FROM orders),
             interval 1 day
           )
         ) AS day
)
SELECT d.day,
       COUNT(o.order_id) AS order_count
FROM dates d
LEFT JOIN orders o
  ON d.day = o.order_date
GROUP BY d.day
ORDER BY d.day;
"""

df_case_137_result = spark.sql(query)
display(df_case_137_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 138 [PDF 103]
**Brief explanation:** This query returns the rows needed to answer: Find the department with the most employees.

**PySpark / Databricks code:**
```python
# Case 138 [PDF 103]
# Find the department with the most employees.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT department_id, COUNT(*) AS
employee_count
FROM employees
GROUP BY department_id
ORDER BY employee_count DESC
LIMIT 1;
"""

df_case_138_result = spark.sql(query)
display(df_case_138_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 139 [PDF 104]
**Brief explanation:** This Databricks query implements the requested logic: find gaps in employee IDs.

**PySpark / Databricks code:**
```python
# Case 139 [PDF 104]
# Write a query to find gaps in employee IDs.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
WITH numbered AS (
  SELECT id, ROW_NUMBER() OVER (ORDER BY
id) AS rn
  FROM employees
)
SELECT rn + 1 AS missing_id
FROM numbered
WHERE id <> rn;
"""

df_case_139_result = spark.sql(query)
display(df_case_139_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 140 [PDF 105]
**Brief explanation:** This query returns the rows needed to answer: Find employees who were hired before their managers.

**PySpark / Databricks code:**
```python
# Case 140 [PDF 105]
# Find employees who were hired before their managers.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT e.name AS employee, m.name AS manager,
e.hire_date, m.hire_date AS manager_hire_date
FROM employees e
JOIN employees m ON e.manager_id = m.id
WHERE e.hire_date < m.hire_date;
"""

df_case_140_result = spark.sql(query)
display(df_case_140_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 141 [PDF 106]
**Brief explanation:** This query returns the rows needed to answer: List departments with average salary greater than the overall average.

**PySpark / Databricks code:**
```python
# Case 141 [PDF 106]
# List departments with average salary greater than the overall average.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > (SELECT AVG(salary)
FROM employees);
"""

df_case_141_result = spark.sql(query)
display(df_case_141_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 142 [PDF 107]
**Brief explanation:** This query returns the rows needed to answer: Find employees with the highest number of dependents.

**PySpark / Databricks code:**
```python
# Case 142 [PDF 107]
# Find employees with the highest number of dependents.
df_dependents_source = spark.sql("SELECT * FROM dependents ORDER BY dependent_id")
display(df_dependents_source)

query = """
SELECT employee_id, COUNT(*) AS
dependent_count
FROM dependents
GROUP BY employee_id
ORDER BY dependent_count DESC
LIMIT 1;
"""

df_case_142_result = spark.sql(query)
display(df_case_142_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 143 [PDF 108]
**Brief explanation:** This query returns the rows needed to answer: Find customers with the longest gap between two consecutive orders.

**PySpark / Databricks code:**
```python
# Case 143 [PDF 108]
# Find customers with the longest gap between two consecutive orders.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
WITH ordered_orders AS (
  SELECT customer_id, order_date,
         LAG(order_date) OVER (PARTITION BY
customer_id ORDER BY order_date) AS
prev_order_date
  FROM orders
),
gaps AS (
  SELECT customer_id, order_date - prev_order_date
AS gap_days
  FROM ordered_orders
  WHERE prev_order_date IS NOT NULL
)
SELECT customer_id, MAX(gap_days) AS
longest_gap
FROM gaps
GROUP BY customer_id
ORDER BY longest_gap DESC
LIMIT 1;
"""

df_case_143_result = spark.sql(query)
display(df_case_143_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 144 [PDF 109]
**Brief explanation:** This query returns the rows needed to answer: Find customers who ordered all products in a category.

**PySpark / Databricks code:**
```python
# Case 144 [PDF 109]
# Find customers who ordered all products in a category.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

df_products_source = spark.sql("SELECT * FROM products ORDER BY product_id")
display(df_products_source)

query = """
SELECT customer_id
FROM sales
WHERE product_id IN (SELECT product_id FROM
products WHERE category_id = 1)
GROUP BY customer_id
HAVING COUNT(DISTINCT product_id) = (SELECT
COUNT(*) FROM products WHERE category_id = 1);
"""

df_case_144_result = spark.sql(query)
display(df_case_144_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 145 [PDF 110]
**Brief explanation:** This query returns the rows needed to answer: Get the most recent order date per customer.

**PySpark / Databricks code:**
```python
# Case 145 [PDF 110]
# Get the most recent order date per customer.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT customer_id, MAX(order_date) AS
last_order_date
FROM orders
GROUP BY customer_id;
"""

df_case_145_result = spark.sql(query)
display(df_case_145_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 146 [PDF 111]
**Brief explanation:** This query returns the rows needed to answer: List all employees and their manager names.

**PySpark / Databricks code:**
```python
# Case 146 [PDF 111]
# List all employees and their manager names.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT e.name AS employee, m.name AS manager
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.id;
"""

df_case_146_result = spark.sql(query)
display(df_case_146_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 147 [PDF 112]
**Brief explanation:** This query returns the rows needed to answer: Find employees with the same salary as their manager.

**PySpark / Databricks code:**
```python
# Case 147 [PDF 112]
# Find employees with the same salary as their manager.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT e.name AS employee, m.name AS manager,
e.salary
FROM employees e
JOIN employees m ON e.manager_id = m.id
WHERE e.salary = m.salary;
"""

df_case_147_result = spark.sql(query)
display(df_case_147_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 148 [PDF 113]
**Brief explanation:** This query returns the rows needed to answer: List products with sales above the average sales amount.

**PySpark / Databricks code:**
```python
# Case 148 [PDF 113]
# List products with sales above the average sales amount.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
WITH avg_sales AS (
  SELECT AVG(amount) AS avg_amount
  FROM sales
)
SELECT product_id, SUM(amount) AS total_sales
FROM sales
GROUP BY product_id
HAVING SUM(amount) > (SELECT avg_amount
FROM avg_sales);
"""

df_case_148_result = spark.sql(query)
display(df_case_148_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 149 [PDF 114]
**Brief explanation:** This query returns the rows needed to answer: Get the number of employees hired each year.

**PySpark / Databricks code:**
```python
# Case 149 [PDF 114]
# Get the number of employees hired each year.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT EXTRACT(YEAR FROM hire_date) AS
hire_year, COUNT(*) AS count
FROM employees
GROUP BY hire_year
ORDER BY hire_year;
"""

df_case_149_result = spark.sql(query)
display(df_case_149_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 150 [PDF 115]
**Brief explanation:** This query returns the rows needed to answer: Find the number of employees with the same job title per department.

**PySpark / Databricks code:**
```python
# Case 150 [PDF 115]
# Find the number of employees with the same job title per department.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT department_id, job_title, COUNT(*) AS
employee_count
FROM employees
GROUP BY department_id, job_title;
"""

df_case_150_result = spark.sql(query)
display(df_case_150_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 151 [PDF 116]
**Brief explanation:** This query returns the rows needed to answer: Find employees with no manager assigned.

**PySpark / Databricks code:**
```python
# Case 151 [PDF 116]
# Find employees with no manager assigned.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT *
FROM employees
WHERE manager_id IS NULL;
"""

df_case_151_result = spark.sql(query)
display(df_case_151_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 152 [PDF 117]
**Brief explanation:** This query calculates the metric requested in the case: Calculate average salary by department and job title.

**PySpark / Databricks code:**
```python
# Case 152 [PDF 117]
# Calculate average salary by department and job title.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT department_id, job_title, AVG(salary) AS
avg_salary
FROM employees
GROUP BY department_id, job_title;
"""

df_case_152_result = spark.sql(query)
display(df_case_152_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 153 [PDF 118]
**Brief explanation:** This query returns the rows needed to answer: Find the median salary of employees.

**PySpark / Databricks code:**
```python
# Case 153 [PDF 118]
# Find the median salary of employees.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT PERCENTILE_CONT(0.5) WITHIN
GROUP (ORDER BY salary) AS median_salary
FROM employees;
"""

df_case_153_result = spark.sql(query)
display(df_case_153_result)
```

**Expected result description:** A median or percentile value, either company-wide or partitioned by the grouping column used in the query.

### Case 154 [PDF 119]
**Brief explanation:** This query returns the rows needed to answer: Find employees who have been promoted more than once.

**PySpark / Databricks code:**
```python
# Case 154 [PDF 119]
# Find employees who have been promoted more than once.
df_promotions_source = spark.sql("SELECT * FROM promotions ORDER BY promotion_id")
display(df_promotions_source)

query = """
SELECT employee_id, COUNT(*) AS
promotion_count
FROM promotions
GROUP BY employee_id
HAVING COUNT(*) > 1;
"""

df_case_154_result = spark.sql(query)
display(df_case_154_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 155 [PDF 120]
**Brief explanation:** This query calculates the metric requested in the case: Calculate total sales by product category.

**PySpark / Databricks code:**
```python
# Case 155 [PDF 120]
# Calculate total sales by product category.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

df_products_source = spark.sql("SELECT * FROM products ORDER BY product_id")
display(df_products_source)

query = """
SELECT p.category_id, SUM(s.amount) AS total_sales
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category_id;
"""

df_case_155_result = spark.sql(query)
display(df_case_155_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 156 [PDF 121]
**Brief explanation:** This query returns the rows needed to answer: Find the top 3 products by sales amount.

**PySpark / Databricks code:**
```python
# Case 156 [PDF 121]
# Find the top 3 products by sales amount.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT product_id, SUM(amount) AS total_sales
FROM sales
GROUP BY product_id
ORDER BY total_sales DESC
LIMIT 3;
"""

df_case_156_result = spark.sql(query)
display(df_case_156_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 157 [PDF 122]
**Brief explanation:** This query returns the rows needed to answer: Get employees who joined after their department was created.

**PySpark / Databricks code:**
```python
# Case 157 [PDF 122]
# Get employees who joined after their department was created.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

df_departments_source = spark.sql("SELECT * FROM departments ORDER BY department_id")
display(df_departments_source)

query = """
SELECT e.*
FROM employees e
JOIN departments d ON e.department_id =
d.department_id
WHERE e.hire_date > d.creation_date;
"""

df_case_157_result = spark.sql(query)
display(df_case_157_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 158 [PDF 123]
**Brief explanation:** This query returns the rows needed to answer: Find customers with no sales records.

**PySpark / Databricks code:**
```python
# Case 158 [PDF 123]
# Find customers with no sales records.
df_customers_source = spark.sql("SELECT * FROM customers ORDER BY customer_id")
display(df_customers_source)

df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT c.*
FROM customers c
LEFT JOIN sales s ON c.customer_id = s.customer_id
WHERE s.sale_id IS NULL;
"""

df_case_158_result = spark.sql(query)
display(df_case_158_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 159 [PDF 124]
**Brief explanation:** This query returns the rows needed to answer: Find the second highest salary in the company.

**PySpark / Databricks code:**
```python
# Case 159 [PDF 124]
# Find the second highest salary in the company.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (SELECT MAX(salary) FROM
employees);
"""

df_case_159_result = spark.sql(query)
display(df_case_159_result)
```

**Expected result description:** A one-row result with the second-highest salary value, or one row per department when the case is department-scoped.

### Case 160 [PDF 125]
**Brief explanation:** This query returns the rows needed to answer: Find products with sales only in the current month.

**PySpark / Databricks code:**
```python
# Case 160 [PDF 125]
# Find products with sales only in the current month.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT product_id
FROM sales
GROUP BY product_id
HAVING MAX(sale_date) >=
DATE_TRUNC('month', current_date())
AND MIN(sale_date) >= DATE_TRUNC('month',
current_date());
"""

df_case_160_result = spark.sql(query)
display(df_case_160_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 161 [PDF 126]
**Brief explanation:** This query returns the rows needed to answer: Find employees with consecutive workdays.

**PySpark / Databricks code:**
```python
# Case 161 [PDF 126]
# Find employees with consecutive workdays.
df_work_log_source = spark.sql("SELECT * FROM work_log ORDER BY employee_id, work_date")
display(df_work_log_source)

df_attendance_source = spark.sql("SELECT * FROM attendance ORDER BY employee_id, attendance_date")
display(df_attendance_source)

query = """
WITH attendance AS (
  SELECT employee_id, work_date,
         date_sub(work_date, CAST(ROW_NUMBER() OVER (PARTITION BY
employee_id ORDER BY work_date) AS INT)) AS grp
  FROM work_log
)
SELECT employee_id, COUNT(*) AS
consecutive_days
FROM attendance
GROUP BY employee_id, grp
HAVING COUNT(*) > 1;
"""

df_case_161_result = spark.sql(query)
display(df_case_161_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 162 [PDF 127]
**Brief explanation:** This query returns the rows needed to answer: Find the average number of orders per customer.

**PySpark / Databricks code:**
```python
# Case 162 [PDF 127]
# Find the average number of orders per customer.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT AVG(order_count) AS
avg_orders_per_customer
FROM (
  SELECT customer_id, COUNT(*) AS order_count
  FROM orders
  GROUP BY customer_id
) sub;
"""

df_case_162_result = spark.sql(query)
display(df_case_162_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 163 [PDF 128]
**Brief explanation:** This query returns the rows needed to answer: Find employees who have worked on more than 5 projects.

**PySpark / Databricks code:**
```python
# Case 163 [PDF 128]
# Find employees who have worked on more than 5 projects.
df_project_assignments_source = spark.sql("SELECT * FROM project_assignments ORDER BY employee_id, project_id")
display(df_project_assignments_source)

query = """
SELECT employee_id, COUNT(DISTINCT project_id)
AS project_count
FROM project_assignments
GROUP BY employee_id
HAVING COUNT(DISTINCT project_id) > 5;
"""

df_case_163_result = spark.sql(query)
display(df_case_163_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 164 [PDF 129]
**Brief explanation:** This query returns the rows needed to answer: Find the total number of products sold each day.

**PySpark / Databricks code:**
```python
# Case 164 [PDF 129]
# Find the total number of products sold each day.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT sale_date, SUM(quantity) AS
total_quantity_sold
FROM sales
GROUP BY sale_date
ORDER BY sale_date;
"""

df_case_164_result = spark.sql(query)
display(df_case_164_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 165 [PDF 130]
**Brief explanation:** This query returns the rows needed to answer: Find customers with orders totaling more than $10,000.

**PySpark / Databricks code:**
```python
# Case 165 [PDF 130]
# Find customers with orders totaling more than $10,000.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT customer_id, SUM(amount) AS total_amount
FROM sales
GROUP BY customer_id
HAVING SUM(amount) > 10000;
"""

df_case_165_result = spark.sql(query)
display(df_case_165_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 166 [PDF 131]
**Brief explanation:** This query returns the rows needed to answer: Find employees who have never received a bonus.

**PySpark / Databricks code:**
```python
# Case 166 [PDF 131]
# Find employees who have never received a bonus.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

df_bonuses_source = spark.sql("SELECT * FROM bonuses ORDER BY bonus_id")
display(df_bonuses_source)

query = """
SELECT e.*
FROM employees e
LEFT JOIN bonuses b ON e.id = b.employee_id
WHERE b.bonus_id IS NULL;
"""

df_case_166_result = spark.sql(query)
display(df_case_166_result)
```

**Expected result description:** Rows representing the missing relationship or absence condition requested in the case.

### Case 167 [PDF 132]
**Brief explanation:** This query returns the rows needed to answer: Find the department with the lowest average salary.

**PySpark / Databricks code:**
```python
# Case 167 [PDF 132]
# Find the department with the lowest average salary.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id
ORDER BY avg_salary
LIMIT 1;
"""

df_case_167_result = spark.sql(query)
display(df_case_167_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 168 [PDF 133]
**Brief explanation:** This query returns the rows needed to answer: Get cumulative count of orders per customer over time.

**PySpark / Databricks code:**
```python
# Case 168 [PDF 133]
# Get cumulative count of orders per customer over time.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT customer_id, order_date,
       COUNT(*) OVER (PARTITION BY customer_id
ORDER BY order_date) AS cumulative_orders
FROM orders;
"""

df_case_168_result = spark.sql(query)
display(df_case_168_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 169 [PDF 134]
**Brief explanation:** This query returns the rows needed to answer: Find customers who ordered products only from one category.

**PySpark / Databricks code:**
```python
# Case 169 [PDF 134]
# Find customers who ordered products only from one category.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

df_products_source = spark.sql("SELECT * FROM products ORDER BY product_id")
display(df_products_source)

query = """
SELECT customer_id
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY customer_id
HAVING COUNT(DISTINCT p.category_id) = 1;
"""

df_case_169_result = spark.sql(query)
display(df_case_169_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 170 [PDF 135]
**Brief explanation:** This Databricks query implements the requested logic: display employee names alongside their manager names, including those without managers.

**PySpark / Databricks code:**
```python
# Case 170 [PDF 135]
# Write a query to display employee names alongside their manager names, including those without managers.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT e.name AS employee_name, m.name AS
manager_name
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.id;
"""

df_case_170_result = spark.sql(query)
display(df_case_170_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 171 [PDF 136]
**Brief explanation:** This Databricks version preserves the intent of the source question and includes a small inference where the PDF SQL was dialect-specific, incomplete, or logically broken.

**Databricks note:** This runnable version includes a small, explicit inference because the source SQL was dialect-specific, incomplete, or internally inconsistent.

**PySpark / Databricks code:**
```python
# Case 171 [PDF 136]
# Find products with sales increasing every month for the last 3 months.
# Note: The Databricks version below includes a small inference to make the PDF logic runnable.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
WITH monthly_sales AS (
  SELECT product_id,
         date_trunc('month', sale_date) AS month,
         SUM(amount) AS total_sales
  FROM sales
  WHERE sale_date >= add_months(date_trunc('month', current_date()), -2)
  GROUP BY product_id, date_trunc('month', sale_date)
),
ordered AS (
  SELECT product_id,
         month,
         total_sales,
         lag(total_sales, 1) OVER (PARTITION BY product_id ORDER BY month) AS prev_1,
         lag(total_sales, 2) OVER (PARTITION BY product_id ORDER BY month) AS prev_2,
         count(*) OVER (PARTITION BY product_id) AS month_count
  FROM monthly_sales
)
SELECT DISTINCT product_id
FROM ordered
WHERE month_count = 3
  AND total_sales > prev_1
  AND prev_1 > prev_2;
"""

df_case_171_result = spark.sql(query)
display(df_case_171_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 172 [PDF 137]
**Brief explanation:** This case solves: Write a recursive query to get all descendants of a manager.

**PySpark / Databricks code:**
```python
# Case 172 [PDF 137]
# Write a recursive query to get all descendants of a manager.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

manager_id = 1

query = f"""
WITH RECURSIVE subordinates AS (
  SELECT id, name, manager_id
  FROM employees
  WHERE id = {manager_id}
  UNION ALL
  SELECT e.id, e.name, e.manager_id
  FROM employees e
  JOIN subordinates s
    ON e.manager_id = s.id
)
SELECT *
FROM subordinates
WHERE id != {manager_id};
"""

df_case_172_result = spark.sql(query)
display(df_case_172_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 173 [PDF 138]
**Brief explanation:** This query returns the rows needed to answer: Find the department with the highest variance in salaries.

**PySpark / Databricks code:**
```python
# Case 173 [PDF 138]
# Find the department with the highest variance in salaries.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT department_id, VAR_SAMP(salary) AS
salary_variance
FROM employees
GROUP BY department_id
ORDER BY salary_variance DESC
LIMIT 1;
"""

df_case_173_result = spark.sql(query)
display(df_case_173_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 174 [PDF 139]
**Brief explanation:** This query calculates the metric requested in the case: Calculate the difference between each order amount and the previous order amount per customer.

**PySpark / Databricks code:**
```python
# Case 174 [PDF 139]
# Calculate the difference between each order amount and the previous order amount per customer.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT customer_id, order_date, amount,
       amount - LAG(amount) OVER (PARTITION BY
customer_id ORDER BY order_date) AS diff
FROM orders;
"""

df_case_174_result = spark.sql(query)
display(df_case_174_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 175 [PDF 140]
**Brief explanation:** This query returns the rows needed to answer: Find customers who purchased both Product A and Product B.

**PySpark / Databricks code:**
```python
# Case 175 [PDF 140]
# Find customers who purchased both Product A and Product B.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT customer_id
FROM sales
WHERE product_id IN ('A', 'B')
GROUP BY customer_id
HAVING COUNT(DISTINCT product_id) = 2;
"""

df_case_175_result = spark.sql(query)
display(df_case_175_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 176 [PDF 141]
**Brief explanation:** This query returns the rows needed to answer: Find the top N customers by total sales amount.

**PySpark / Databricks code:**
```python
# Case 176 [PDF 141]
# Find the top N customers by total sales amount.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

top_n = 5

query = f"""
SELECT customer_id,
       SUM(amount) AS total_sales
FROM sales
GROUP BY customer_id
ORDER BY total_sales DESC
LIMIT {top_n};
"""

df_case_176_result = spark.sql(query)
display(df_case_176_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 177 [PDF 142]
**Brief explanation:** This query returns the rows needed to answer: Find the month with the highest sales in the current year.

**PySpark / Databricks code:**
```python
# Case 177 [PDF 142]
# Find the month with the highest sales in the current year.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT DATE_TRUNC('month', sale_date) AS
month, SUM(amount) AS total_sales
FROM sales
WHERE EXTRACT(YEAR FROM sale_date) =
EXTRACT(YEAR FROM current_date())
GROUP BY month
ORDER BY total_sales DESC
LIMIT 1;
"""

df_case_177_result = spark.sql(query)
display(df_case_177_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 178 [PDF 143]
**Brief explanation:** This Databricks query implements the requested logic: display all employees who have worked on a project longer than 6 months.

**PySpark / Databricks code:**
```python
# Case 178 [PDF 143]
# Write a query to display all employees who have worked on a project longer than 6 months.
df_project_assignments_source = spark.sql("SELECT * FROM project_assignments ORDER BY employee_id, project_id")
display(df_project_assignments_source)

query = """
SELECT employee_id
FROM project_assignments
WHERE end_date > add_months(start_date, 6);
"""

df_case_178_result = spark.sql(query)
display(df_case_178_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 179 [PDF 144]
**Brief explanation:** This query returns the rows needed to answer: Find the nth highest salary in a company (e.g., 5th highest).

**PySpark / Databricks code:**
```python
# Case 179 [PDF 144]
# Find the nth highest salary in a company (e.g., 5th highest).
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

nth_rank = 5

query = f"""
SELECT DISTINCT salary
FROM (
  SELECT salary,
         dense_rank() OVER (ORDER BY salary DESC) AS rnk
  FROM employees
) ranked_salaries
WHERE rnk = {nth_rank};
"""

df_case_179_result = spark.sql(query)
display(df_case_179_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 180 [PDF 145]
**Brief explanation:** This query returns the rows needed to answer: Get the average salary of employees hired each year.

**PySpark / Databricks code:**
```python
# Case 180 [PDF 145]
# Get the average salary of employees hired each year.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT EXTRACT(YEAR FROM hire_date) AS
year, AVG(salary) AS avg_salary
FROM employees
GROUP BY year
ORDER BY year;
"""

df_case_180_result = spark.sql(query)
display(df_case_180_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 181 [PDF 146]
**Brief explanation:** This query returns the rows needed to answer: Find employees whose salaries are between the 25th and 75th percentile.

**PySpark / Databricks code:**
```python
# Case 181 [PDF 146]
# Find employees whose salaries are between the 25th and 75th percentile.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
WITH percentiles AS (
  SELECT
    PERCENTILE_CONT(0.25) WITHIN GROUP
(ORDER BY salary) AS p25,
    PERCENTILE_CONT(0.75) WITHIN GROUP
(ORDER BY salary) AS p75
  FROM employees
)
SELECT e.*
FROM employees e, percentiles p
WHERE e.salary BETWEEN p.p25 AND p.p75;
"""

df_case_181_result = spark.sql(query)
display(df_case_181_result)
```

**Expected result description:** A median or percentile value, either company-wide or partitioned by the grouping column used in the query.

### Case 182 [PDF 147]
**Brief explanation:** This query returns the rows needed to answer: Find employees with salaries higher than their department average.

**PySpark / Databricks code:**
```python
# Case 182 [PDF 147]
# Find employees with salaries higher than their department average.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT e.*
FROM employees e
JOIN (
  SELECT department_id, AVG(salary) AS avg_salary
  FROM employees
  GROUP BY department_id
) d ON e.department_id = d.department_id
WHERE e.salary > d.avg_salary;
"""

df_case_182_result = spark.sql(query)
display(df_case_182_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 183 [PDF 148]
**Brief explanation:** This query returns the rows needed to answer: Find the difference between each row's value and the previous row’s value in sales.

**PySpark / Databricks code:**
```python
# Case 183 [PDF 148]
# Find the difference between each row's value and the previous row’s value in sales.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT sale_date, amount,
       amount - LAG(amount) OVER (ORDER BY
sale_date) AS diff
FROM sales;
"""

df_case_183_result = spark.sql(query)
display(df_case_183_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 184 [PDF 149]
**Brief explanation:** This query returns the rows needed to answer: List employees who have been in the company for more than 10 years.

**PySpark / Databricks code:**
```python
# Case 184 [PDF 149]
# List employees who have been in the company for more than 10 years.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT *
FROM employees
WHERE hire_date <= add_months(current_date(), -120);
"""

df_case_184_result = spark.sql(query)
display(df_case_184_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 185 [PDF 150]
**Brief explanation:** This query returns the rows needed to answer: Find the department with the most promotions.

**PySpark / Databricks code:**
```python
# Case 185 [PDF 150]
# Find the department with the most promotions.
df_promotions_source = spark.sql("SELECT * FROM promotions ORDER BY promotion_id")
display(df_promotions_source)

df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT e.department_id, COUNT(*) AS
promotion_count
FROM promotions p
JOIN employees e ON p.employee_id = e.id
GROUP BY e.department_id
ORDER BY promotion_count DESC
LIMIT 1;
"""

df_case_185_result = spark.sql(query)
display(df_case_185_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 186 [PDF 151]
**Brief explanation:** This query returns the rows needed to answer: Find customers who ordered products from at least 3 different categories.

**PySpark / Databricks code:**
```python
# Case 186 [PDF 151]
# Find customers who ordered products from at least 3 different categories.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

df_products_source = spark.sql("SELECT * FROM products ORDER BY product_id")
display(df_products_source)

query = """
SELECT customer_id
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY customer_id
HAVING COUNT(DISTINCT p.category_id) >= 3;
"""

df_case_186_result = spark.sql(query)
display(df_case_186_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 187 [PDF 152]
**Brief explanation:** This query returns the rows needed to answer: Find the average gap (in days) between orders per customer.

**PySpark / Databricks code:**
```python
# Case 187 [PDF 152]
# Find the average gap (in days) between orders per customer.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
WITH ordered_orders AS (
  SELECT customer_id, order_date,
         LAG(order_date) OVER (PARTITION BY
customer_id ORDER BY order_date) AS
prev_order_date
  FROM orders
),
gaps AS (
  SELECT customer_id, order_date - prev_order_date
AS gap
  FROM ordered_orders
  WHERE prev_order_date IS NOT NULL
)
SELECT customer_id, AVG(gap) AS avg_gap_days
FROM gaps
GROUP BY customer_id;
"""

df_case_187_result = spark.sql(query)
display(df_case_187_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 188 [PDF 153]
**Brief explanation:** This query returns the rows needed to answer: List all customers who have never ordered product X.

**PySpark / Databricks code:**
```python
# Case 188 [PDF 153]
# List all customers who have never ordered product X.
df_customers_source = spark.sql("SELECT * FROM customers ORDER BY customer_id")
display(df_customers_source)

df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT customer_id
FROM customers
WHERE customer_id NOT IN (
  SELECT DISTINCT customer_id
  FROM sales
  WHERE product_id = 'X'
);
"""

df_case_188_result = spark.sql(query)
display(df_case_188_result)
```

**Expected result description:** Rows representing the missing relationship or absence condition requested in the case.

### Case 189 [PDF 154]
**Brief explanation:** This query calculates the metric requested in the case: Calculate total revenue and number of orders per country.

**PySpark / Databricks code:**
```python
# Case 189 [PDF 154]
# Calculate total revenue and number of orders per country.
df_customers_source = spark.sql("SELECT * FROM customers ORDER BY customer_id")
display(df_customers_source)

df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT c.country, COUNT(o.order_id) AS
order_count, SUM(o.amount) AS total_revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.country;
"""

df_case_189_result = spark.sql(query)
display(df_case_189_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 190 [PDF 155]
**Brief explanation:** This query returns the rows needed to answer: Find the employees who were hired on the same day as their managers.

**PySpark / Databricks code:**
```python
# Case 190 [PDF 155]
# Find the employees who were hired on the same day as their managers.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT e.name AS employee, m.name AS manager,
e.hire_date
FROM employees e
JOIN employees m ON e.manager_id = m.id
WHERE e.hire_date = m.hire_date;
"""

df_case_190_result = spark.sql(query)
display(df_case_190_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 191 [PDF 156]
**Brief explanation:** This query returns the rows needed to answer: Find the top 3 products by quantity sold in each category.

**PySpark / Databricks code:**
```python
# Case 191 [PDF 156]
# Find the top 3 products by quantity sold in each category.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

df_products_source = spark.sql("SELECT * FROM products ORDER BY product_id")
display(df_products_source)

query = """
SELECT category_id, product_id, total_quantity
FROM (
  SELECT p.category_id, s.product_id,
SUM(s.quantity) AS total_quantity,
         ROW_NUMBER() OVER (PARTITION BY
p.category_id ORDER BY SUM(s.quantity) DESC) AS
rn
  FROM sales s
  JOIN products p ON s.product_id = p.product_id
  GROUP BY p.category_id, s.product_id
) sub
WHERE rn <= 3;
"""

df_case_191_result = spark.sql(query)
display(df_case_191_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 192 [PDF 157]
**Brief explanation:** This query returns the rows needed to answer: Find the difference in days between the first and last order for each customer.

**PySpark / Databricks code:**
```python
# Case 192 [PDF 157]
# Find the difference in days between the first and last order for each customer.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT customer_id, MAX(order_date) -
MIN(order_date) AS days_between
FROM orders
GROUP BY customer_id;
"""

df_case_192_result = spark.sql(query)
display(df_case_192_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 193 [PDF 158]
**Brief explanation:** This Databricks version preserves the intent of the source question and includes a small inference where the PDF SQL was dialect-specific, incomplete, or logically broken.

**Databricks note:** This runnable version includes a small, explicit inference because the source SQL was dialect-specific, incomplete, or internally inconsistent.

**PySpark / Databricks code:**
```python
# Case 193 [PDF 158]
# Find customers who have increased their order volume every month for the last 3 months.
# Note: The Databricks version below includes a small inference to make the PDF logic runnable.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
WITH monthly_orders AS (
  SELECT customer_id,
         date_trunc('month', order_date) AS month,
         COUNT(*) AS orders_count
  FROM orders
  WHERE order_date >= add_months(date_trunc('month', current_date()), -2)
  GROUP BY customer_id, date_trunc('month', order_date)
),
ordered AS (
  SELECT customer_id,
         month,
         orders_count,
         lag(orders_count, 1) OVER (PARTITION BY customer_id ORDER BY month) AS prev_1,
         lag(orders_count, 2) OVER (PARTITION BY customer_id ORDER BY month) AS prev_2,
         count(*) OVER (PARTITION BY customer_id) AS month_count
  FROM monthly_orders
)
SELECT DISTINCT customer_id
FROM ordered
WHERE month_count = 3
  AND orders_count > prev_1
  AND prev_1 > prev_2;
"""

df_case_193_result = spark.sql(query)
display(df_case_193_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 194 [PDF 159]
**Brief explanation:** This query returns the rows needed to answer: Find employees who have the same salary as the average salary in their job title.

**PySpark / Databricks code:**
```python
# Case 194 [PDF 159]
# Find employees who have the same salary as the average salary in their job title.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT e.*
FROM employees e
JOIN (
  SELECT job_title, AVG(salary) AS avg_salary
  FROM employees
  GROUP BY job_title
) j ON e.job_title = j.job_title
WHERE e.salary = j.avg_salary;
"""

df_case_194_result = spark.sql(query)
display(df_case_194_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 195 [PDF 160]
**Brief explanation:** This Databricks query implements the requested logic: calculate the difference in salary between employees and their managers.

**PySpark / Databricks code:**
```python
# Case 195 [PDF 160]
# Write a query to calculate the difference in salary between employees and their managers.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT e.name, m.name AS manager_name, e.salary,
m.salary AS manager_salary, e.salary - m.salary AS
salary_diff
FROM employees e
JOIN employees m ON e.manager_id = m.id;
"""

df_case_195_result = spark.sql(query)
display(df_case_195_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 196 [PDF 161]
**Brief explanation:** This query returns the rows needed to answer: List the departments with no employees.

**PySpark / Databricks code:**
```python
# Case 196 [PDF 161]
# List the departments with no employees.
df_departments_source = spark.sql("SELECT * FROM departments ORDER BY department_id")
display(df_departments_source)

df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT d.*
FROM departments d
LEFT JOIN employees e ON d.department_id =
e.department_id
WHERE e.id IS NULL;
"""

df_case_196_result = spark.sql(query)
display(df_case_196_result)
```

**Expected result description:** Rows representing the missing relationship or absence condition requested in the case.

### Case 197 [PDF 162]
**Brief explanation:** This query returns the rows needed to answer: Find the employee with the maximum salary in each department.

**PySpark / Databricks code:**
```python
# Case 197 [PDF 162]
# Find the employee with the maximum salary in each department.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
WITH dept_max AS (
  SELECT department_id, MAX(salary) AS max_salary
  FROM employees
  GROUP BY department_id
)
SELECT e.*
FROM employees e
JOIN dept_max d ON e.department_id =
d.department_id AND e.salary = d.max_salary;
"""

df_case_197_result = spark.sql(query)
display(df_case_197_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 198 [PDF 163]
**Brief explanation:** This query returns the rows needed to answer: Find customers with orders on every day in the last week.

**PySpark / Databricks code:**
```python
# Case 198 [PDF 163]
# Find customers with orders on every day in the last week.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
WITH days AS (
  SELECT explode(
           sequence(date_sub(current_date(), 6), current_date(), interval 1 day)
         ) AS day
)
SELECT customer_id
FROM orders o
JOIN days d
  ON o.order_date = d.day
GROUP BY customer_id
HAVING COUNT(DISTINCT o.order_date) = 7;
"""

df_case_198_result = spark.sql(query)
display(df_case_198_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 199 [PDF 164]
**Brief explanation:** This query returns the rows needed to answer: Find the product that has been sold in the highest quantity in a single order.

**PySpark / Databricks code:**
```python
# Case 199 [PDF 164]
# Find the product that has been sold in the highest quantity in a single order.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT product_id, MAX(quantity) AS
max_quantity_in_order
FROM sales
GROUP BY product_id
ORDER BY max_quantity_in_order DESC
LIMIT 1;
"""

df_case_199_result = spark.sql(query)
display(df_case_199_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 200 [PDF 165]
**Brief explanation:** This query returns the rows needed to answer: Find employees who joined before their department was created.

**PySpark / Databricks code:**
```python
# Case 200 [PDF 165]
# Find employees who joined before their department was created.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

df_departments_source = spark.sql("SELECT * FROM departments ORDER BY department_id")
display(df_departments_source)

query = """
SELECT e.*
FROM employees e
JOIN departments d ON e.department_id =
d.department_id
WHERE e.hire_date < d.creation_date;
"""

df_case_200_result = spark.sql(query)
display(df_case_200_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 201 [PDF 166]
**Brief explanation:** This query returns the rows needed to answer: Find customers with sales in at least 3 different years.

**PySpark / Databricks code:**
```python
# Case 201 [PDF 166]
# Find customers with sales in at least 3 different years.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT customer_id
FROM sales
GROUP BY customer_id
HAVING COUNT(DISTINCT EXTRACT(YEAR
FROM sale_date)) >= 3;
"""

df_case_201_result = spark.sql(query)
display(df_case_201_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 202 [PDF 167]
**Brief explanation:** This query returns the rows needed to answer: Find employees whose salary is above the company’s average but below their department’s average.

**PySpark / Databricks code:**
```python
# Case 202 [PDF 167]
# Find employees whose salary is above the company’s average but below their department’s average.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
WITH company_avg AS (SELECT AVG(salary) AS
avg_salary FROM employees),
     dept_avg AS (
       SELECT department_id, AVG(salary) AS
avg_salary
       FROM employees
       GROUP BY department_id
     )
SELECT e.*
FROM employees e, company_avg ca
JOIN dept_avg da ON e.department_id =
da.department_id
WHERE e.salary > ca.avg_salary AND e.salary <
da.avg_salary;
"""

df_case_202_result = spark.sql(query)
display(df_case_202_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 203 [PDF 168]
**Brief explanation:** This query returns the rows needed to answer: Find the average order amount per customer per year.

**PySpark / Databricks code:**
```python
# Case 203 [PDF 168]
# Find the average order amount per customer per year.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT customer_id, EXTRACT(YEAR FROM
order_date) AS year, AVG(amount) AS
avg_order_amount
FROM orders
GROUP BY customer_id, year;
"""

df_case_203_result = spark.sql(query)
display(df_case_203_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 204 [PDF 169]
**Brief explanation:** This query returns the rows needed to answer: Find employees who have worked on at least one project with a budget over $1,000,000.

**PySpark / Databricks code:**
```python
# Case 204 [PDF 169]
# Find employees who have worked on at least one project with a budget over $1,000,000.
df_project_assignments_source = spark.sql("SELECT * FROM project_assignments ORDER BY employee_id, project_id")
display(df_project_assignments_source)

df_projects_source = spark.sql("SELECT * FROM projects ORDER BY project_id")
display(df_projects_source)

query = """
SELECT DISTINCT pa.employee_id
FROM project_assignments pa
JOIN projects p ON pa.project_id = p.project_id
WHERE p.budget > 1000000;
"""

df_case_204_result = spark.sql(query)
display(df_case_204_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 205 [PDF 170]
**Brief explanation:** This query returns the rows needed to answer: Find the most recent promotion date per employee.

**PySpark / Databricks code:**
```python
# Case 205 [PDF 170]
# Find the most recent promotion date per employee.
df_promotions_source = spark.sql("SELECT * FROM promotions ORDER BY promotion_id")
display(df_promotions_source)

query = """
SELECT employee_id, MAX(promotion_date) AS
last_promotion_date
FROM promotions
GROUP BY employee_id;
"""

df_case_205_result = spark.sql(query)
display(df_case_205_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 206 [PDF 171]
**Brief explanation:** This query returns the rows needed to answer: Find customers who made orders totaling more than the average order amount.

**PySpark / Databricks code:**
```python
# Case 206 [PDF 171]
# Find customers who made orders totaling more than the average order amount.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
WITH avg_order AS (
  SELECT AVG(amount) AS avg_amount FROM
orders
)
SELECT customer_id, SUM(amount) AS total_amount
FROM orders
GROUP BY customer_id
HAVING SUM(amount) > (SELECT avg_amount
FROM avg_order);
"""

df_case_206_result = spark.sql(query)
display(df_case_206_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 207 [PDF 172]
**Brief explanation:** This query returns the rows needed to answer: Find products never ordered.

**PySpark / Databricks code:**
```python
# Case 207 [PDF 172]
# Find products never ordered.
df_products_source = spark.sql("SELECT * FROM products ORDER BY product_id")
display(df_products_source)

df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT product_id
FROM products
WHERE product_id NOT IN (SELECT DISTINCT
product_id FROM sales);
"""

df_case_207_result = spark.sql(query)
display(df_case_207_result)
```

**Expected result description:** Rows representing the missing relationship or absence condition requested in the case.

### Case 208 [PDF 173]
**Brief explanation:** This query returns the rows needed to answer: Find the month with the lowest sales in the past year.

**PySpark / Databricks code:**
```python
# Case 208 [PDF 173]
# Find the month with the lowest sales in the past year.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT DATE_TRUNC('month', sale_date) AS
month, SUM(amount) AS total_sales
FROM sales
WHERE sale_date >= add_months(current_date(), -12)
GROUP BY month
ORDER BY total_sales
LIMIT 1;
"""

df_case_208_result = spark.sql(query)
display(df_case_208_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 209 [PDF 174]
**Brief explanation:** This query calculates the metric requested in the case: Calculate the number of employees hired each month in the last year.

**PySpark / Databricks code:**
```python
# Case 209 [PDF 174]
# Calculate the number of employees hired each month in the last year.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT DATE_TRUNC('month', hire_date) AS
month, COUNT(*) AS hires
FROM employees
WHERE hire_date >= add_months(current_date(), -12)
GROUP BY month
ORDER BY month;
"""

df_case_209_result = spark.sql(query)
display(df_case_209_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 210 [PDF 175]
**Brief explanation:** This query returns the rows needed to answer: Find the department with the highest number of projects.

**PySpark / Databricks code:**
```python
# Case 210 [PDF 175]
# Find the department with the highest number of projects.
df_projects_source = spark.sql("SELECT * FROM projects ORDER BY project_id")
display(df_projects_source)

query = """
SELECT department_id, COUNT(*) AS project_count
FROM projects
GROUP BY department_id
ORDER BY project_count DESC
LIMIT 1;
"""

df_case_210_result = spark.sql(query)
display(df_case_210_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 211 [PDF 176]
**Brief explanation:** This query returns the rows needed to answer: Find employees who do not have dependents.

**PySpark / Databricks code:**
```python
# Case 211 [PDF 176]
# Find employees who do not have dependents.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

df_dependents_source = spark.sql("SELECT * FROM dependents ORDER BY dependent_id")
display(df_dependents_source)

query = """
SELECT e.*
FROM employees e
LEFT JOIN dependents d ON e.id = d.employee_id
WHERE d.dependent_id IS NULL;
"""

df_case_211_result = spark.sql(query)
display(df_case_211_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 212 [PDF 177]
**Brief explanation:** This query returns the rows needed to answer: Get the total sales amount for each product category including categories with zero sales.

**PySpark / Databricks code:**
```python
# Case 212 [PDF 177]
# Get the total sales amount for each product category including categories with zero sales.
df_categories_source = spark.sql("SELECT * FROM categories ORDER BY category_id")
display(df_categories_source)

df_products_source = spark.sql("SELECT * FROM products ORDER BY product_id")
display(df_products_source)

df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT c.category_id, COALESCE(SUM(s.amount),
0) AS total_sales
FROM categories c
LEFT JOIN products p ON c.category_id =
p.category_id
LEFT JOIN sales s ON p.product_id = s.product_id
GROUP BY c.category_id;
"""

df_case_212_result = spark.sql(query)
display(df_case_212_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 213 [PDF 178]
**Brief explanation:** This query returns the rows needed to answer: Find employees who have been promoted but their salary didn’t increase.

**PySpark / Databricks code:**
```python
# Case 213 [PDF 178]
# Find employees who have been promoted but their salary didn’t increase.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

df_promotions_source = spark.sql("SELECT * FROM promotions ORDER BY promotion_id")
display(df_promotions_source)

df_promotion_history_source = spark.sql("SELECT * FROM promotion_history ORDER BY employee_id, promotion_date")
display(df_promotion_history_source)

query = """
SELECT e.id, e.name
FROM employees e
JOIN promotions p ON e.id = p.employee_id
WHERE e.salary <= (SELECT salary_before FROM
promotion_history WHERE employee_id = e.id
ORDER BY promotion_date DESC LIMIT 1);
"""

df_case_213_result = spark.sql(query)
display(df_case_213_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 214 [PDF 179]
**Brief explanation:** This query returns the rows needed to answer: Find customers with average order amount above $500.

**PySpark / Databricks code:**
```python
# Case 214 [PDF 179]
# Find customers with average order amount above $500.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT customer_id, AVG(amount) AS
avg_order_amount
FROM orders
GROUP BY customer_id
HAVING AVG(amount) > 500;
"""

df_case_214_result = spark.sql(query)
display(df_case_214_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 215 [PDF 180]
**Brief explanation:** This query returns the rows needed to answer: Find orders where the total quantity exceeds 100 units.

**PySpark / Databricks code:**
```python
# Case 215 [PDF 180]
# Find orders where the total quantity exceeds 100 units.
df_order_items_source = spark.sql("SELECT * FROM order_items ORDER BY order_id, product_id")
display(df_order_items_source)

query = """
SELECT order_id, SUM(quantity) AS total_quantity
FROM order_items
GROUP BY order_id
HAVING SUM(quantity) > 100;
"""

df_case_215_result = spark.sql(query)
display(df_case_215_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 216 [PDF 181]
**Brief explanation:** This query returns the rows needed to answer: Find products whose sales have doubled compared to the previous month.

**PySpark / Databricks code:**
```python
# Case 216 [PDF 181]
# Find products whose sales have doubled compared to the previous month.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
WITH monthly_sales AS (
  SELECT product_id, DATE_TRUNC('month',
sale_date) AS month, SUM(amount) AS total_sales
  FROM sales
  GROUP BY product_id, month
),
sales_comparison AS (
  SELECT product_id, month, total_sales,
         LAG(total_sales) OVER (PARTITION BY
product_id ORDER BY month) AS prev_month_sales
  FROM monthly_sales
)
SELECT product_id, month
FROM sales_comparison
WHERE prev_month_sales IS NOT NULL AND
total_sales >= 2 * prev_month_sales;
"""

df_case_216_result = spark.sql(query)
display(df_case_216_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 217 [PDF 182]
**Brief explanation:** This Databricks query implements the requested logic: find employees who worked on more than 3 projects in 2023.

**PySpark / Databricks code:**
```python
# Case 217 [PDF 182]
# Write a query to find employees who worked on more than 3 projects in 2023.
df_project_assignments_source = spark.sql("SELECT * FROM project_assignments ORDER BY employee_id, project_id")
display(df_project_assignments_source)

query = """
SELECT employee_id, COUNT(DISTINCT project_id)
AS project_count
FROM project_assignments
WHERE assignment_date BETWEEN '2023-01-01'
AND '2023-12-31'
GROUP BY employee_id
HAVING COUNT(DISTINCT project_id) > 3;
"""

df_case_217_result = spark.sql(query)
display(df_case_217_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 218 [PDF 183]
**Brief explanation:** This query returns the rows needed to answer: Find customers whose last order was placed more than 1 year ago.

**PySpark / Databricks code:**
```python
# Case 218 [PDF 183]
# Find customers whose last order was placed more than 1 year ago.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT customer_id, MAX(order_date) AS
last_order_date
FROM orders
GROUP BY customer_id
HAVING MAX(order_date) < add_months(current_date(), -12);
"""

df_case_218_result = spark.sql(query)
display(df_case_218_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 219 [PDF 184]
**Brief explanation:** This query returns the rows needed to answer: Find the average salary increase percentage per department.

**PySpark / Databricks code:**
```python
# Case 219 [PDF 184]
# Find the average salary increase percentage per department.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

df_promotions_source = spark.sql("SELECT * FROM promotions ORDER BY promotion_id")
display(df_promotions_source)

query = """
SELECT e.department_id, AVG((e.salary -
p.old_salary) / p.old_salary * 100) AS avg_increase_pct
FROM employees e
JOIN promotions p ON e.id = p.employee_id
GROUP BY e.department_id;
"""

df_case_219_result = spark.sql(query)
display(df_case_219_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 220 [PDF 185]
**Brief explanation:** This query returns the rows needed to answer: Find employees who have never been promoted.

**PySpark / Databricks code:**
```python
# Case 220 [PDF 185]
# Find employees who have never been promoted.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

df_promotions_source = spark.sql("SELECT * FROM promotions ORDER BY promotion_id")
display(df_promotions_source)

query = """
SELECT *
FROM employees
WHERE id NOT IN (SELECT DISTINCT
employee_id FROM promotions);
"""

df_case_220_result = spark.sql(query)
display(df_case_220_result)
```

**Expected result description:** Rows representing the missing relationship or absence condition requested in the case.

### Case 221 [PDF 186]
**Brief explanation:** This query returns the rows needed to answer: Find products ordered by all customers.

**PySpark / Databricks code:**
```python
# Case 221 [PDF 186]
# Find products ordered by all customers.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

df_customers_source = spark.sql("SELECT * FROM customers ORDER BY customer_id")
display(df_customers_source)

query = """
SELECT product_id
FROM sales
GROUP BY product_id
HAVING COUNT(DISTINCT customer_id) =
(SELECT COUNT(*) FROM customers);
"""

df_case_221_result = spark.sql(query)
display(df_case_221_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 222 [PDF 187]
**Brief explanation:** This query returns the rows needed to answer: Find customers with orders totaling more than $5000 in the last 6 months.

**PySpark / Databricks code:**
```python
# Case 222 [PDF 187]
# Find customers with orders totaling more than $5000 in the last 6 months.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT customer_id, SUM(amount) AS total_amount
FROM orders
WHERE order_date >= add_months(current_date(), -6)
GROUP BY customer_id
HAVING SUM(amount) > 5000;
"""

df_case_222_result = spark.sql(query)
display(df_case_222_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 223 [PDF 188]
**Brief explanation:** This query returns the rows needed to answer: Find the rank of employees based on salary within their department.

**PySpark / Databricks code:**
```python
# Case 223 [PDF 188]
# Find the rank of employees based on salary within their department.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT *, RANK() OVER (PARTITION BY
department_id ORDER BY salary DESC) AS
salary_rank
FROM employees;
"""

df_case_223_result = spark.sql(query)
display(df_case_223_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 224 [PDF 189]
**Brief explanation:** This query returns the rows needed to answer: Find customers who purchased a product but never reordered it.

**PySpark / Databricks code:**
```python
# Case 224 [PDF 189]
# Find customers who purchased a product but never reordered it.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
WITH order_counts AS (
  SELECT customer_id, product_id, COUNT(*) AS
order_count
  FROM sales
  GROUP BY customer_id, product_id
)
SELECT customer_id, product_id
FROM order_counts
WHERE order_count = 1;
"""

df_case_224_result = spark.sql(query)
display(df_case_224_result)
```

**Expected result description:** Rows representing the missing relationship or absence condition requested in the case.

### Case 225 [PDF 190]
**Brief explanation:** This query returns the rows needed to answer: Find the day with the highest number of new hires.

**PySpark / Databricks code:**
```python
# Case 225 [PDF 190]
# Find the day with the highest number of new hires.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT hire_date, COUNT(*) AS hires
FROM employees
GROUP BY hire_date
ORDER BY hires DESC
LIMIT 1;
"""

df_case_225_result = spark.sql(query)
display(df_case_225_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 226 [PDF 191]
**Brief explanation:** This query returns the rows needed to answer: Find the number of employees who have worked in more than one department.

**PySpark / Databricks code:**
```python
# Case 226 [PDF 191]
# Find the number of employees who have worked in more than one department.
df_employee_department_history_source = spark.sql("SELECT * FROM employee_department_history ORDER BY employee_id, change_date")
display(df_employee_department_history_source)

query = """
SELECT employee_id
FROM employee_department_history
GROUP BY employee_id
HAVING COUNT(DISTINCT department_id) > 1;
"""

df_case_226_result = spark.sql(query)
display(df_case_226_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 227 [PDF 192]
**Brief explanation:** This query returns the rows needed to answer: Find customers who ordered the most products in 2023.

**PySpark / Databricks code:**
```python
# Case 227 [PDF 192]
# Find customers who ordered the most products in 2023.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT customer_id, SUM(quantity) AS
total_quantity
FROM sales
WHERE EXTRACT(YEAR FROM sale_date) = 2023
GROUP BY customer_id
ORDER BY total_quantity DESC
LIMIT 1;
"""

df_case_227_result = spark.sql(query)
display(df_case_227_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 228 [PDF 193]
**Brief explanation:** This query returns the rows needed to answer: Find the average days taken to ship orders per shipping method.

**PySpark / Databricks code:**
```python
# Case 228 [PDF 193]
# Find the average days taken to ship orders per shipping method.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT shipping_method, AVG(shipping_date -
order_date) AS avg_shipping_days
FROM orders
GROUP BY shipping_method;
"""

df_case_228_result = spark.sql(query)
display(df_case_228_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 229 [PDF 194]
**Brief explanation:** This query returns the rows needed to answer: Find employees with overlapping project assignments.

**PySpark / Databricks code:**
```python
# Case 229 [PDF 194]
# Find employees with overlapping project assignments.
df_project_assignments_source = spark.sql("SELECT * FROM project_assignments ORDER BY employee_id, project_id")
display(df_project_assignments_source)

query = """
SELECT pa1.employee_id, pa1.project_id,
pa2.project_id AS overlapping_project
FROM project_assignments pa1
JOIN project_assignments pa2 ON pa1.employee_id =
pa2.employee_id AND pa1.project_id <>
pa2.project_id
WHERE pa1.start_date <= pa2.end_date AND
pa1.end_date >= pa2.start_date;
"""

df_case_229_result = spark.sql(query)
display(df_case_229_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 230 [PDF 195]
**Brief explanation:** This query returns the rows needed to answer: Find the total number of unique customers per product category.

**PySpark / Databricks code:**
```python
# Case 230 [PDF 195]
# Find the total number of unique customers per product category.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

df_products_source = spark.sql("SELECT * FROM products ORDER BY product_id")
display(df_products_source)

query = """
SELECT p.category_id, COUNT(DISTINCT
s.customer_id) AS unique_customers
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category_id;
"""

df_case_230_result = spark.sql(query)
display(df_case_230_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 231 [PDF 196]
**Brief explanation:** This query returns the rows needed to answer: Find customers whose orders increased by at least 20% compared to the previous month.

**PySpark / Databricks code:**
```python
# Case 231 [PDF 196]
# Find customers whose orders increased by at least 20% compared to the previous month.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
WITH monthly_orders AS (
  SELECT customer_id, DATE_TRUNC('month',
order_date) AS month, COUNT(*) AS order_count
  FROM orders
  GROUP BY customer_id, month
),
orders_comparison AS (
  SELECT customer_id, month, order_count,
         LAG(order_count) OVER (PARTITION BY
customer_id ORDER BY month) AS prev_order_count
  FROM monthly_orders
)
SELECT customer_id, month
FROM orders_comparison
WHERE prev_order_count IS NOT NULL AND
order_count >= 1.2 * prev_order_count;
"""

df_case_231_result = spark.sql(query)
display(df_case_231_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 232 [PDF 197]
**Brief explanation:** This query returns the rows needed to answer: Find employees with no projects assigned in the last 6 months.

**PySpark / Databricks code:**
```python
# Case 232 [PDF 197]
# Find employees with no projects assigned in the last 6 months.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

df_project_assignments_source = spark.sql("SELECT * FROM project_assignments ORDER BY employee_id, project_id")
display(df_project_assignments_source)

query = """
SELECT e.*
FROM employees e
LEFT JOIN project_assignments pa ON e.id =
pa.employee_id AND pa.start_date >=
add_months(current_date(), -6)
WHERE pa.project_id IS NULL;
"""

df_case_232_result = spark.sql(query)
display(df_case_232_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 233 [PDF 198]
**Brief explanation:** This query returns the rows needed to answer: Find the number of employees who have changed departments more than twice.

**PySpark / Databricks code:**
```python
# Case 233 [PDF 198]
# Find the number of employees who have changed departments more than twice.
df_employee_department_history_source = spark.sql("SELECT * FROM employee_department_history ORDER BY employee_id, change_date")
display(df_employee_department_history_source)

query = """
SELECT employee_id
FROM employee_department_history
GROUP BY employee_id
HAVING COUNT(DISTINCT department_id) > 2;
"""

df_case_233_result = spark.sql(query)
display(df_case_233_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 234 [PDF 199]
**Brief explanation:** This query returns the rows needed to answer: Find the product with the highest average rating.

**PySpark / Databricks code:**
```python
# Case 234 [PDF 199]
# Find the product with the highest average rating.
df_product_reviews_source = spark.sql("SELECT * FROM product_reviews ORDER BY review_id")
display(df_product_reviews_source)

query = """
SELECT product_id, AVG(rating) AS avg_rating
FROM product_reviews
GROUP BY product_id
ORDER BY avg_rating DESC
LIMIT 1;
"""

df_case_234_result = spark.sql(query)
display(df_case_234_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 235 [PDF 200]
**Brief explanation:** This query returns the rows needed to answer: Find customers who have placed orders but never used a discount.

**PySpark / Databricks code:**
```python
# Case 235 [PDF 200]
# Find customers who have placed orders but never used a discount.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT DISTINCT customer_id
FROM orders
WHERE discount_used = false;
"""

df_case_235_result = spark.sql(query)
display(df_case_235_result)
```

**Expected result description:** Rows representing the missing relationship or absence condition requested in the case.

### Case 236 [PDF 201]
**Brief explanation:** This query returns the rows needed to answer: Find employees who have worked on every project in their department.

**PySpark / Databricks code:**
```python
# Case 236 [PDF 201]
# Find employees who have worked on every project in their department.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

df_projects_source = spark.sql("SELECT * FROM projects ORDER BY project_id")
display(df_projects_source)

df_project_assignments_source = spark.sql("SELECT * FROM project_assignments ORDER BY employee_id, project_id")
display(df_project_assignments_source)

query = """
SELECT e.id, e.name
FROM employees e
JOIN projects p ON e.department_id = p.department_id
LEFT JOIN project_assignments pa ON e.id =
pa.employee_id AND p.project_id = pa.project_id
GROUP BY e.id, e.name, p.department_id
HAVING COUNT(p.project_id) =
COUNT(pa.project_id);
"""

df_case_236_result = spark.sql(query)
display(df_case_236_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 237 [PDF 202]
**Brief explanation:** This query returns the rows needed to answer: Find the average order amount excluding the top 5% largest orders.

**PySpark / Databricks code:**
```python
# Case 237 [PDF 202]
# Find the average order amount excluding the top 5% largest orders.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
WITH ordered_orders AS (
  SELECT amount,
         ntile(100) OVER (ORDER BY amount DESC) AS percentile_bucket
  FROM orders
)
SELECT AVG(amount) AS avg_amount_excluding_top_5_pct
FROM ordered_orders
WHERE percentile_bucket > 5;
"""

df_case_237_result = spark.sql(query)
display(df_case_237_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 238 [PDF 203]
**Brief explanation:** This query returns the rows needed to answer: Find the top 3 employees with the highest salary increase over last year.

**PySpark / Databricks code:**
```python
# Case 238 [PDF 203]
# Find the top 3 employees with the highest salary increase over last year.
df_salaries_source = spark.sql("SELECT * FROM salaries ORDER BY employee_id, year")
display(df_salaries_source)

query = """
WITH salary_last_year AS (
  SELECT employee_id, salary AS last_year_salary
  FROM salaries
  WHERE year = EXTRACT(YEAR FROM
current_date()) - 1
),
salary_this_year AS (
  SELECT employee_id, salary AS this_year_salary
  FROM salaries
  WHERE year = EXTRACT(YEAR FROM
current_date())
)
SELECT t.employee_id, t.this_year_salary -
l.last_year_salary AS salary_increase
FROM salary_this_year t
JOIN salary_last_year l ON t.employee_id =
l.employee_id
ORDER BY salary_increase DESC
LIMIT 3;
"""

df_case_238_result = spark.sql(query)
display(df_case_238_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 239 [PDF 204]
**Brief explanation:** This Databricks version preserves the intent of the source question and includes a small inference where the PDF SQL was dialect-specific, incomplete, or logically broken.

**Databricks note:** This runnable version includes a small, explicit inference because the source SQL was dialect-specific, incomplete, or internally inconsistent.

**PySpark / Databricks code:**
```python
# Case 239 [PDF 204]
# Find employees with the longest consecutive workdays.
# Note: The Databricks version below includes a small inference to make the PDF logic runnable.
df_attendance_source = spark.sql("SELECT * FROM attendance ORDER BY employee_id, attendance_date")
display(df_attendance_source)

query = """
WITH workdays AS (
  SELECT employee_id,
         work_date,
         date_sub(work_date, CAST(row_number() OVER (
           PARTITION BY employee_id
           ORDER BY work_date
         ) AS INT)) AS grp
  FROM attendance
),
consecutive_days AS (
  SELECT employee_id,
         COUNT(*) AS consecutive_days
  FROM workdays
  GROUP BY employee_id, grp
)
SELECT employee_id,
       MAX(consecutive_days) AS max_consecutive_days
FROM consecutive_days
GROUP BY employee_id;
"""

df_case_239_result = spark.sql(query)
display(df_case_239_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 240 [PDF 205]
**Brief explanation:** This Databricks version preserves the intent of the source question and includes a small inference where the PDF SQL was dialect-specific, incomplete, or logically broken.

**Databricks note:** This runnable version includes a small, explicit inference because the source SQL was dialect-specific, incomplete, or internally inconsistent.

**PySpark / Databricks code:**
```python
# Case 240 [PDF 205]
# Find all managers who do not manage any employee.
# Note: The Databricks version below includes a small inference to make the PDF logic runnable.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT e.id AS manager_id,
       e.name
FROM employees e
WHERE e.id NOT IN (
  SELECT DISTINCT manager_id
  FROM employees
  WHERE manager_id IS NOT NULL
);
"""

df_case_240_result = spark.sql(query)
display(df_case_240_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 241 [PDF 206]
**Brief explanation:** This query returns the rows needed to answer: Find the average salary of employees hired each month.

**PySpark / Databricks code:**
```python
# Case 241 [PDF 206]
# Find the average salary of employees hired each month.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT EXTRACT(YEAR FROM hire_date) AS
year, EXTRACT(MONTH FROM hire_date) AS
month, AVG(salary) AS avg_salary
FROM employees
GROUP BY year, month
ORDER BY year, month;
"""

df_case_241_result = spark.sql(query)
display(df_case_241_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 242 [PDF 207]
**Brief explanation:** This query returns the rows needed to answer: Find the first 5 orders after a customer's registration date.

**PySpark / Databricks code:**
```python
# Case 242 [PDF 207]
# Find the first 5 orders after a customer's registration date.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

df_customers_source = spark.sql("SELECT * FROM customers ORDER BY customer_id")
display(df_customers_source)

query = """
SELECT order_id, customer_id, order_date
FROM (
  SELECT order_id, customer_id, order_date,
         ROW_NUMBER() OVER (PARTITION BY
customer_id ORDER BY order_date) AS rn
  FROM orders
  JOIN customers c ON orders.customer_id =
c.customer_id
  WHERE order_date >= c.registration_date
) sub
WHERE rn <= 5;
"""

df_case_242_result = spark.sql(query)
display(df_case_242_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 243 [PDF 208]
**Brief explanation:** This query returns the rows needed to answer: Find customers who placed orders every month for the last 6 months.

**PySpark / Databricks code:**
```python
# Case 243 [PDF 208]
# Find customers who placed orders every month for the last 6 months.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
WITH months AS (
  SELECT explode(
           sequence(
             add_months(date_trunc('month', current_date()), -5),
             date_trunc('month', current_date()),
             interval 1 month
           )
         ) AS month
),
customer_months AS (
  SELECT customer_id,
         date_trunc('month', order_date) AS month
  FROM orders
  WHERE order_date >= add_months(current_date(), -6)
  GROUP BY customer_id, date_trunc('month', order_date)
)
SELECT customer_id
FROM customer_months cm
JOIN months m
  ON cm.month = m.month
GROUP BY customer_id
HAVING COUNT(DISTINCT cm.month) = 6;
"""

df_case_243_result = spark.sql(query)
display(df_case_243_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 244 [PDF 209]
**Brief explanation:** This query calculates the metric requested in the case: Calculate the moving average of sales over the last 3 days.

**PySpark / Databricks code:**
```python
# Case 244 [PDF 209]
# Calculate the moving average of sales over the last 3 days.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT sale_date, product_id, amount,
       AVG(amount) OVER (PARTITION BY
product_id ORDER BY sale_date ROWS BETWEEN 2
PRECEDING AND CURRENT ROW) AS
moving_avg_3_days
FROM sales;
"""

df_case_244_result = spark.sql(query)
display(df_case_244_result)
```

**Expected result description:** A row-level result set that adds a derived analytic column to each input row.

### Case 245 [PDF 210]
**Brief explanation:** This query returns the rows needed to answer: Find the number of employees who share the same birthday.

**PySpark / Databricks code:**
```python
# Case 245 [PDF 210]
# Find the number of employees who share the same birthday.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT birth_date, COUNT(*) AS count_employees
FROM employees
GROUP BY birth_date
HAVING COUNT(*) > 1;
"""

df_case_245_result = spark.sql(query)
display(df_case_245_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 246 [PDF 211]
**Brief explanation:** This query returns the rows needed to answer: Find customers who ordered the same product multiple times in one day.

**PySpark / Databricks code:**
```python
# Case 246 [PDF 211]
# Find customers who ordered the same product multiple times in one day.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT customer_id, product_id, order_date,
COUNT(*) AS order_count
FROM sales
GROUP BY customer_id, product_id, order_date
HAVING COUNT(*) > 1;
"""

df_case_246_result = spark.sql(query)
display(df_case_246_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 247 [PDF 212]
**Brief explanation:** This query returns the rows needed to answer: Find the total sales for each product including products with zero sales.

**PySpark / Databricks code:**
```python
# Case 247 [PDF 212]
# Find the total sales for each product including products with zero sales.
df_products_source = spark.sql("SELECT * FROM products ORDER BY product_id")
display(df_products_source)

df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT p.product_id, COALESCE(SUM(s.amount),
0) AS total_sales
FROM products p
LEFT JOIN sales s ON p.product_id = s.product_id
GROUP BY p.product_id;
"""

df_case_247_result = spark.sql(query)
display(df_case_247_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 248 [PDF 213]
**Brief explanation:** This query returns the rows needed to answer: List the top 5 employees by number of projects in each department.

**PySpark / Databricks code:**
```python
# Case 248 [PDF 213]
# List the top 5 employees by number of projects in each department.
df_project_assignments_source = spark.sql("SELECT * FROM project_assignments ORDER BY employee_id, project_id")
display(df_project_assignments_source)

df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT department_id, employee_id, project_count
FROM (
  SELECT e.department_id, pa.employee_id,
COUNT(DISTINCT pa.project_id) AS project_count,
         ROW_NUMBER() OVER (PARTITION BY
e.department_id ORDER BY COUNT(DISTINCT
pa.project_id) DESC) AS rn
  FROM project_assignments pa
  JOIN employees e ON pa.employee_id = e.id
  GROUP BY e.department_id, pa.employee_id
) sub
WHERE rn <= 5;
"""

df_case_248_result = spark.sql(query)
display(df_case_248_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 249 [PDF 214]
**Brief explanation:** This query returns the rows needed to answer: Find the day with the largest difference between maximum and minimum temperature.

**PySpark / Databricks code:**
```python
# Case 249 [PDF 214]
# Find the day with the largest difference between maximum and minimum temperature.
df_weather_data_source = spark.sql("SELECT * FROM weather_data ORDER BY weather_date")
display(df_weather_data_source)

query = """
SELECT weather_date, MAX(temperature) -
MIN(temperature) AS temp_diff
FROM weather_data
GROUP BY weather_date
ORDER BY temp_diff DESC
LIMIT 1;
"""

df_case_249_result = spark.sql(query)
display(df_case_249_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 250 [PDF 215]
**Brief explanation:** This query returns the rows needed to answer: Find the 3 most recent orders per customer.

**PySpark / Databricks code:**
```python
# Case 250 [PDF 215]
# Find the 3 most recent orders per customer.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT order_id, customer_id, order_date
FROM (
  SELECT order_id, customer_id, order_date,
         ROW_NUMBER() OVER (PARTITION BY
customer_id ORDER BY order_date DESC) AS rn
  FROM orders
) sub
WHERE rn <= 3;
"""

df_case_250_result = spark.sql(query)
display(df_case_250_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 251 [PDF 216]
**Brief explanation:** This query returns the rows needed to answer: Find products with sales only in a specific country.

**PySpark / Databricks code:**
```python
# Case 251 [PDF 216]
# Find products with sales only in a specific country.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

df_customers_source = spark.sql("SELECT * FROM customers ORDER BY customer_id")
display(df_customers_source)

query = """
SELECT product_id
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY product_id
HAVING COUNT(DISTINCT c.country) = 1;
"""

df_case_251_result = spark.sql(query)
display(df_case_251_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 252 [PDF 217]
**Brief explanation:** This query returns the rows needed to answer: Find employees with a salary greater than all employees in department 10.

**PySpark / Databricks code:**
```python
# Case 252 [PDF 217]
# Find employees with a salary greater than all employees in department 10.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT *
FROM employees
WHERE salary > ALL (
  SELECT salary FROM employees WHERE
department_id = 10
);
"""

df_case_252_result = spark.sql(query)
display(df_case_252_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 253 [PDF 218]
**Brief explanation:** This query returns the rows needed to answer: Find the percentage of employees in each department.

**PySpark / Databricks code:**
```python
# Case 253 [PDF 218]
# Find the percentage of employees in each department.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
WITH total_employees AS (SELECT COUNT(*) AS
total FROM employees)
SELECT department_id, COUNT(*) * 100.0 /
(SELECT total FROM total_employees) AS percentage
FROM employees
GROUP BY department_id;
"""

df_case_253_result = spark.sql(query)
display(df_case_253_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 254 [PDF 219]
**Brief explanation:** This query returns the rows needed to answer: Find the median salary per department.

**PySpark / Databricks code:**
```python
# Case 254 [PDF 219]
# Find the median salary per department.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT department_id,
       PERCENTILE_CONT(0.5) WITHIN GROUP
(ORDER BY salary) AS median_salary
FROM employees
GROUP BY department_id;
"""

df_case_254_result = spark.sql(query)
display(df_case_254_result)
```

**Expected result description:** A median or percentile value, either company-wide or partitioned by the grouping column used in the query.

### Case 255 [PDF 220]
**Brief explanation:** This query returns the rows needed to answer: Find the employee who worked the most hours in a project.

**PySpark / Databricks code:**
```python
# Case 255 [PDF 220]
# Find the employee who worked the most hours in a project.
df_project_assignments_source = spark.sql("SELECT * FROM project_assignments ORDER BY employee_id, project_id")
display(df_project_assignments_source)

query = """
SELECT employee_id, project_id,
MAX(hours_worked) AS max_hours
FROM project_assignments
GROUP BY employee_id, project_id
ORDER BY max_hours DESC
LIMIT 1;
"""

df_case_255_result = spark.sql(query)
display(df_case_255_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 256 [PDF 221]
**Brief explanation:** This query returns the rows needed to answer: Find the first order date for each customer.

**PySpark / Databricks code:**
```python
# Case 256 [PDF 221]
# Find the first order date for each customer.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT customer_id, MIN(order_date) AS
first_order_date
FROM orders
GROUP BY customer_id;
"""

df_case_256_result = spark.sql(query)
display(df_case_256_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 257 [PDF 222]
**Brief explanation:** This query returns the rows needed to answer: Find the second most expensive product per category.

**PySpark / Databricks code:**
```python
# Case 257 [PDF 222]
# Find the second most expensive product per category.
df_products_source = spark.sql("SELECT * FROM products ORDER BY product_id")
display(df_products_source)

query = """
SELECT category_id, product_id, price
FROM (
  SELECT category_id, product_id, price,
         ROW_NUMBER() OVER (PARTITION BY
category_id ORDER BY price DESC) AS rn
  FROM products
) sub
WHERE rn = 2;
"""

df_case_257_result = spark.sql(query)
display(df_case_257_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 258 [PDF 223]
**Brief explanation:** This query returns the rows needed to answer: Find employees with the highest salary in each job title.

**PySpark / Databricks code:**
```python
# Case 258 [PDF 223]
# Find employees with the highest salary in each job title.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
WITH max_salary_per_job AS (
  SELECT job_title, MAX(salary) AS max_salary
  FROM employees
  GROUP BY job_title
)
SELECT e.*
FROM employees e
JOIN max_salary_per_job m ON e.job_title =
m.job_title AND e.salary = m.max_salary;
"""

df_case_258_result = spark.sql(query)
display(df_case_258_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 259 [PDF 224]
**Brief explanation:** This query calculates the metric requested in the case: Calculate the ratio of males to females in each department.

**PySpark / Databricks code:**
```python
# Case 259 [PDF 224]
# Calculate the ratio of males to females in each department.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT department_id,
       SUM(CASE WHEN gender = 'M' THEN 1 ELSE 0
END) * 1.0 / NULLIF(SUM(CASE WHEN gender = 'F'
THEN 1 ELSE 0 END), 0) AS male_to_female_ratio
FROM employees
GROUP BY department_id;
"""

df_case_259_result = spark.sql(query)
display(df_case_259_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 260 [PDF 225]
**Brief explanation:** This query returns the rows needed to answer: Find customers who spent more than average in their country.

**PySpark / Databricks code:**
```python
# Case 260 [PDF 225]
# Find customers who spent more than average in their country.
df_customers_source = spark.sql("SELECT * FROM customers ORDER BY customer_id")
display(df_customers_source)

df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
WITH avg_spent_per_country AS (
  SELECT c.country, AVG(o.amount) AS avg_amount
  FROM customers c
  JOIN orders o ON c.customer_id = o.customer_id
  GROUP BY c.country
)
SELECT c.customer_id, SUM(o.amount) AS
total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN avg_spent_per_country a ON c.country =
a.country
GROUP BY c.customer_id, c.country, a.avg_amount
HAVING SUM(o.amount) > a.avg_amount;
"""

df_case_260_result = spark.sql(query)
display(df_case_260_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 261 [PDF 226]
**Brief explanation:** This query returns the rows needed to answer: Find employees who have not been assigned to any project in the last year.

**PySpark / Databricks code:**
```python
# Case 261 [PDF 226]
# Find employees who have not been assigned to any project in the last year.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

df_project_assignments_source = spark.sql("SELECT * FROM project_assignments ORDER BY employee_id, project_id")
display(df_project_assignments_source)

query = """
SELECT e.*
FROM employees e
LEFT JOIN project_assignments pa ON e.id =
pa.employee_id AND pa.assignment_date >=
add_months(current_date(), -12)
WHERE pa.project_id IS NULL;
"""

df_case_261_result = spark.sql(query)
display(df_case_261_result)
```

**Expected result description:** Rows representing the missing relationship or absence condition requested in the case.

### Case 262 [PDF 227]
**Brief explanation:** This query returns the rows needed to answer: Find the top 3 customers by total order amount in each region.

**PySpark / Databricks code:**
```python
# Case 262 [PDF 227]
# Find the top 3 customers by total order amount in each region.
df_customers_source = spark.sql("SELECT * FROM customers ORDER BY customer_id")
display(df_customers_source)

df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT region, customer_id, total_amount
FROM (
  SELECT c.region, o.customer_id, SUM(o.amount) AS
total_amount,
         ROW_NUMBER() OVER (PARTITION BY
c.region ORDER BY SUM(o.amount) DESC) AS rn
  FROM customers c
  JOIN orders o ON c.customer_id = o.customer_id
  GROUP BY c.region, o.customer_id
) sub
WHERE rn <= 3;
"""

df_case_262_result = spark.sql(query)
display(df_case_262_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 263 [PDF 228]
**Brief explanation:** This query returns the rows needed to answer: Find employees hired after their managers.

**PySpark / Databricks code:**
```python
# Case 263 [PDF 228]
# Find employees hired after their managers.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT e.name AS employee_name, m.name AS
manager_name, e.hire_date, m.hire_date AS
manager_hire_date
FROM employees e
JOIN employees m ON e.manager_id = m.id
WHERE e.hire_date > m.hire_date;
"""

df_case_263_result = spark.sql(query)
display(df_case_263_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 264 [PDF 229]
**Brief explanation:** This query returns the rows needed to answer: Find customers who ordered all products from a specific category.

**PySpark / Databricks code:**
```python
# Case 264 [PDF 229]
# Find customers who ordered all products from a specific category.
df_products_source = spark.sql("SELECT * FROM products ORDER BY product_id")
display(df_products_source)

df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

category_id = 1

query = f"""
WITH category_products AS (
  SELECT product_id
  FROM products
  WHERE category_id = {category_id}
),
customer_products AS (
  SELECT customer_id, product_id
  FROM sales
  WHERE product_id IN (SELECT product_id FROM category_products)
  GROUP BY customer_id, product_id
)
SELECT customer_id
FROM customer_products
GROUP BY customer_id
HAVING COUNT(DISTINCT product_id) = (SELECT COUNT(*) FROM category_products);
"""

df_case_264_result = spark.sql(query)
display(df_case_264_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 265 [PDF 230]
**Brief explanation:** This query returns the rows needed to answer: Find employees with the highest number of direct reports.

**PySpark / Databricks code:**
```python
# Case 265 [PDF 230]
# Find employees with the highest number of direct reports.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT manager_id, COUNT(*) AS report_count
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id
ORDER BY report_count DESC
LIMIT 1;
"""

df_case_265_result = spark.sql(query)
display(df_case_265_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 266 [PDF 231]
**Brief explanation:** This Databricks version preserves the intent of the source question and includes a small inference where the PDF SQL was dialect-specific, incomplete, or logically broken.

**Databricks note:** This runnable version includes a small, explicit inference because the source SQL was dialect-specific, incomplete, or internally inconsistent.

**PySpark / Databricks code:**
```python
# Case 266 [PDF 231]
# Calculate the retention rate of customers month- over-month.
# Note: The Databricks version below includes a small inference to make the PDF logic runnable.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
WITH monthly_customers AS (
  SELECT customer_id,
         date_trunc('month', order_date) AS month
  FROM orders
  GROUP BY customer_id, date_trunc('month', order_date)
),
previous_month_counts AS (
  SELECT month,
         COUNT(DISTINCT customer_id) AS active_customers
  FROM monthly_customers
  GROUP BY month
),
retention AS (
  SELECT curr.month AS current_month,
         curr.customer_id
  FROM monthly_customers curr
  JOIN monthly_customers prev
    ON curr.customer_id = prev.customer_id
   AND curr.month = add_months(prev.month, 1)
)
SELECT r.current_month,
       COUNT(DISTINCT r.customer_id) * 100.0 / pm.active_customers AS retention_rate
FROM retention r
JOIN previous_month_counts pm
  ON pm.month = add_months(r.current_month, -1)
GROUP BY r.current_month, pm.active_customers
ORDER BY r.current_month;
"""

df_case_266_result = spark.sql(query)
display(df_case_266_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 267 [PDF 232]
**Brief explanation:** This query returns the rows needed to answer: Find the average time difference between order and delivery.

**PySpark / Databricks code:**
```python
# Case 267 [PDF 232]
# Find the average time difference between order and delivery.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT AVG(delivery_date - order_date) AS
avg_delivery_time
FROM orders
WHERE delivery_date IS NOT NULL;
"""

df_case_267_result = spark.sql(query)
display(df_case_267_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 268 [PDF 233]
**Brief explanation:** This query returns the rows needed to answer: Find the department with the youngest average employee age.

**PySpark / Databricks code:**
```python
# Case 268 [PDF 233]
# Find the department with the youngest average employee age.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT department_id,
       AVG(months_between(current_date(), birth_date) / 12) AS avg_age
FROM employees
GROUP BY department_id
ORDER BY avg_age
LIMIT 1;
"""

df_case_268_result = spark.sql(query)
display(df_case_268_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 269 [PDF 234]
**Brief explanation:** This query returns the rows needed to answer: Find products that were sold in every quarter of the current year.

**PySpark / Databricks code:**
```python
# Case 269 [PDF 234]
# Find products that were sold in every quarter of the current year.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
WITH quarterly_sales AS (
  SELECT product_id, DATE_TRUNC('quarter',
sale_date) AS quarter
  FROM sales
  WHERE EXTRACT(YEAR FROM sale_date) =
EXTRACT(YEAR FROM current_date())
  GROUP BY product_id, quarter
)
SELECT product_id
FROM quarterly_sales
GROUP BY product_id
HAVING COUNT(DISTINCT quarter) = 4;
"""

df_case_269_result = spark.sql(query)
display(df_case_269_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 270 [PDF 235]
**Brief explanation:** This query returns the rows needed to answer: Find customers whose orders decreased consecutively for 3 months.

**PySpark / Databricks code:**
```python
# Case 270 [PDF 235]
# Find customers whose orders decreased consecutively for 3 months.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
WITH monthly_orders AS (
  SELECT customer_id, DATE_TRUNC('month',
order_date) AS month, COUNT(*) AS order_count
  FROM orders
  GROUP BY customer_id, month
),
orders_with_lag AS (
  SELECT customer_id, month, order_count,
         LAG(order_count, 1) OVER (PARTITION BY
customer_id ORDER BY month) AS prev_1,
         LAG(order_count, 2) OVER (PARTITION BY
customer_id ORDER BY month) AS prev_2
  FROM monthly_orders
)
SELECT DISTINCT customer_id
FROM orders_with_lag
WHERE order_count < prev_1 AND prev_1 < prev_2;
"""

df_case_270_result = spark.sql(query)
display(df_case_270_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 271 [PDF 236]
**Brief explanation:** This query returns the rows needed to answer: Find the employee(s) with the highest number of late arrivals.

**PySpark / Databricks code:**
```python
# Case 271 [PDF 236]
# Find the employee(s) with the highest number of late arrivals.
df_attendance_source = spark.sql("SELECT * FROM attendance ORDER BY employee_id, attendance_date")
display(df_attendance_source)

query = """
SELECT employee_id, COUNT(*) AS late_count
FROM attendance
WHERE arrival_time > scheduled_start_time
GROUP BY employee_id
ORDER BY late_count DESC
LIMIT 1;
"""

df_case_271_result = spark.sql(query)
display(df_case_271_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 272 [PDF 237]
**Brief explanation:** This query returns the rows needed to answer: Find the most common product combinations in orders (pairs).

**PySpark / Databricks code:**
```python
# Case 272 [PDF 237]
# Find the most common product combinations in orders (pairs).
df_order_items_source = spark.sql("SELECT * FROM order_items ORDER BY order_id, product_id")
display(df_order_items_source)

query = """
WITH order_pairs AS (
  SELECT o1.order_id, o1.product_id AS product1,
o2.product_id AS product2
  FROM order_items o1
  JOIN order_items o2 ON o1.order_id = o2.order_id
AND o1.product_id < o2.product_id
)
SELECT product1, product2, COUNT(*) AS
pair_count
FROM order_pairs
GROUP BY product1, product2
ORDER BY pair_count DESC
LIMIT 10;
"""

df_case_272_result = spark.sql(query)
display(df_case_272_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 273 [PDF 238]
**Brief explanation:** This query returns the rows needed to answer: Find employees who have worked more than 40 hours in a week.

**PySpark / Databricks code:**
```python
# Case 273 [PDF 238]
# Find employees who have worked more than 40 hours in a week.
df_work_logs_source = spark.sql("SELECT * FROM work_logs ORDER BY employee_id, work_date")
display(df_work_logs_source)

query = """
WITH weekly_hours AS (
  SELECT employee_id, DATE_TRUNC('week',
work_date) AS week_start, SUM(hours_worked) AS
total_hours
  FROM work_logs
  GROUP BY employee_id, week_start
)
SELECT employee_id, week_start, total_hours
FROM weekly_hours
WHERE total_hours > 40;
"""

df_case_273_result = spark.sql(query)
display(df_case_273_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 274 [PDF 239]
**Brief explanation:** This query returns the rows needed to answer: Find the total revenue generated per sales representative.

**PySpark / Databricks code:**
```python
# Case 274 [PDF 239]
# Find the total revenue generated per sales representative.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT sales_rep_id, SUM(amount) AS total_revenue
FROM sales
GROUP BY sales_rep_id;
"""

df_case_274_result = spark.sql(query)
display(df_case_274_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 275 [PDF 240]
**Brief explanation:** This query returns the rows needed to answer: Find customers with no orders in the last year.

**PySpark / Databricks code:**
```python
# Case 275 [PDF 240]
# Find customers with no orders in the last year.
df_customers_source = spark.sql("SELECT * FROM customers ORDER BY customer_id")
display(df_customers_source)

df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT customer_id
FROM customers
WHERE customer_id NOT IN (
  SELECT DISTINCT customer_id FROM orders
WHERE order_date >= add_months(current_date(), -12)
);
"""

df_case_275_result = spark.sql(query)
display(df_case_275_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 276 [PDF 241]
**Brief explanation:** This query returns the rows needed to answer: Find products with an increasing sales trend over the last 3 months.

**PySpark / Databricks code:**
```python
# Case 276 [PDF 241]
# Find products with an increasing sales trend over the last 3 months.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
WITH monthly_sales AS (
  SELECT product_id, DATE_TRUNC('month',
sale_date) AS month, SUM(amount) AS total_sales
  FROM sales
  WHERE sale_date >= add_months(current_date(), -3)
  GROUP BY product_id, month
),
sales_ranked AS (
  SELECT product_id, month, total_sales,
         LAG(total_sales) OVER (PARTITION BY
product_id ORDER BY month) AS prev_month_sales,
         LAG(total_sales, 2) OVER (PARTITION BY
product_id ORDER BY month) AS
prev_2_month_sales
  FROM monthly_sales
)
SELECT DISTINCT product_id
FROM sales_ranked
WHERE total_sales > prev_month_sales AND
prev_month_sales > prev_2_month_sales;
"""

df_case_276_result = spark.sql(query)
display(df_case_276_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 277 [PDF 242]
**Brief explanation:** This query returns the rows needed to answer: Find departments where average salary is higher than the company average.

**PySpark / Databricks code:**
```python
# Case 277 [PDF 242]
# Find departments where average salary is higher than the company average.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
WITH company_avg AS (
  SELECT AVG(salary) AS avg_salary FROM
employees
)
SELECT department_id, AVG(salary) AS dept_avg
FROM employees
GROUP BY department_id
HAVING AVG(salary) > (SELECT avg_salary FROM
company_avg);
"""

df_case_277_result = spark.sql(query)
display(df_case_277_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 278 [PDF 243]
**Brief explanation:** This query returns the rows needed to answer: Find customers with orders where no product quantity is less than 5.

**PySpark / Databricks code:**
```python
# Case 278 [PDF 243]
# Find customers with orders where no product quantity is less than 5.
df_order_items_source = spark.sql("SELECT * FROM order_items ORDER BY order_id, product_id")
display(df_order_items_source)

query = """
SELECT DISTINCT order_id
FROM order_items
GROUP BY order_id
HAVING MIN(quantity) >= 5;
"""

df_case_278_result = spark.sql(query)
display(df_case_278_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 279 [PDF 244]
**Brief explanation:** This query returns the rows needed to answer: Find products ordered only by customers from one country.

**PySpark / Databricks code:**
```python
# Case 279 [PDF 244]
# Find products ordered only by customers from one country.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

df_customers_source = spark.sql("SELECT * FROM customers ORDER BY customer_id")
display(df_customers_source)

query = """
SELECT product_id
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY product_id
HAVING COUNT(DISTINCT c.country) = 1;
"""

df_case_279_result = spark.sql(query)
display(df_case_279_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 280 [PDF 245]
**Brief explanation:** This query returns the rows needed to answer: Find employees who have not submitted their timesheets in the last month.

**PySpark / Databricks code:**
```python
# Case 280 [PDF 245]
# Find employees who have not submitted their timesheets in the last month.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

df_timesheets_source = spark.sql("SELECT * FROM timesheets ORDER BY timesheet_id")
display(df_timesheets_source)

query = """
SELECT e.id, e.name
FROM employees e
LEFT JOIN timesheets t ON e.id = t.employee_id AND
t.timesheet_date >= add_months(current_date(), -1)
WHERE t.timesheet_id IS NULL;
"""

df_case_280_result = spark.sql(query)
display(df_case_280_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 281 [PDF 246]
**Brief explanation:** This query returns the rows needed to answer: Find the total discount given in each month.

**PySpark / Databricks code:**
```python
# Case 281 [PDF 246]
# Find the total discount given in each month.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT DATE_TRUNC('month', order_date) AS
month, SUM(discount_amount) AS total_discount
FROM orders
GROUP BY month
ORDER BY month;
"""

df_case_281_result = spark.sql(query)
display(df_case_281_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 282 [PDF 247]
**Brief explanation:** This query returns the rows needed to answer: Find customers who have placed orders but never paid by credit card.

**PySpark / Databricks code:**
```python
# Case 282 [PDF 247]
# Find customers who have placed orders but never paid by credit card.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT DISTINCT customer_id
FROM orders
WHERE payment_method != 'Credit Card';
"""

df_case_282_result = spark.sql(query)
display(df_case_282_result)
```

**Expected result description:** Rows representing the missing relationship or absence condition requested in the case.

### Case 283 [PDF 248]
**Brief explanation:** This query returns the rows needed to answer: Find employees whose salaries are within 10% of their department’s average salary.

**PySpark / Databricks code:**
```python
# Case 283 [PDF 248]
# Find employees whose salaries are within 10% of their department’s average salary.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
WITH dept_avg AS (
  SELECT department_id, AVG(salary) AS avg_salary
  FROM employees
  GROUP BY department_id
)
SELECT e.*
FROM employees e
JOIN dept_avg d ON e.department_id =
d.department_id
WHERE e.salary BETWEEN d.avg_salary * 0.9 AND
d.avg_salary * 1.1;
"""

df_case_283_result = spark.sql(query)
display(df_case_283_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 284 [PDF 249]
**Brief explanation:** This query returns the rows needed to answer: Find customers who ordered the most products in each category.

**PySpark / Databricks code:**
```python
# Case 284 [PDF 249]
# Find customers who ordered the most products in each category.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

df_products_source = spark.sql("SELECT * FROM products ORDER BY product_id")
display(df_products_source)

df_customers_source = spark.sql("SELECT * FROM customers ORDER BY customer_id")
display(df_customers_source)

query = """
WITH product_totals AS (
  SELECT c.customer_id, p.category_id,
SUM(s.quantity) AS total_quantity,
         RANK() OVER (PARTITION BY p.category_id
ORDER BY SUM(s.quantity) DESC) AS rank
  FROM sales s
  JOIN products p ON s.product_id = p.product_id
  JOIN customers c ON s.customer_id = c.customer_id
  GROUP BY c.customer_id, p.category_id
)
SELECT customer_id, category_id, total_quantity
FROM product_totals
WHERE rank = 1;
"""

df_case_284_result = spark.sql(query)
display(df_case_284_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 285 [PDF 250]
**Brief explanation:** This query returns the rows needed to answer: Find the top 5 longest projects.

**PySpark / Databricks code:**
```python
# Case 285 [PDF 250]
# Find the top 5 longest projects.
df_projects_source = spark.sql("SELECT * FROM projects ORDER BY project_id")
display(df_projects_source)

query = """
SELECT project_id, start_date, end_date,
       end_date - start_date AS duration
FROM projects
ORDER BY duration DESC
LIMIT 5;
"""

df_case_285_result = spark.sql(query)
display(df_case_285_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 286 [PDF 251]
**Brief explanation:** This query returns the rows needed to answer: Find employees who have not taken any leave in the last 6 months.

**PySpark / Databricks code:**
```python
# Case 286 [PDF 251]
# Find employees who have not taken any leave in the last 6 months.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

df_leaves_source = spark.sql("SELECT * FROM leaves ORDER BY leave_id")
display(df_leaves_source)

query = """
SELECT e.id, e.name
FROM employees e
LEFT JOIN leaves l ON e.id = l.employee_id AND
l.leave_date >= add_months(current_date(), -6)
WHERE l.leave_id IS NULL;
"""

df_case_286_result = spark.sql(query)
display(df_case_286_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 287 [PDF 252]
**Brief explanation:** This query returns the rows needed to answer: Find the department with the most projects completed last year.

**PySpark / Databricks code:**
```python
# Case 287 [PDF 252]
# Find the department with the most projects completed last year.
df_projects_source = spark.sql("SELECT * FROM projects ORDER BY project_id")
display(df_projects_source)

query = """
SELECT department_id, COUNT(*) AS
completed_projects
FROM projects
WHERE status = 'Completed' AND completion_date
BETWEEN DATE_TRUNC('year',
current_date()) - INTERVAL '1 year' AND
DATE_TRUNC('year', current_date()) -
INTERVAL '1 day'
GROUP BY department_id
ORDER BY completed_projects DESC
LIMIT 1;
"""

df_case_287_result = spark.sql(query)
display(df_case_287_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 288 [PDF 253]
**Brief explanation:** This query returns the rows needed to answer: Find customers who have increased their order frequency month-over-month for 3 consecutive months.

**PySpark / Databricks code:**
```python
# Case 288 [PDF 253]
# Find customers who have increased their order frequency month-over-month for 3 consecutive months.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
WITH monthly_orders AS (
  SELECT customer_id, DATE_TRUNC('month',
order_date) AS month, COUNT(*) AS order_count
  FROM orders
  GROUP BY customer_id, month
),
orders_with_lag AS (
  SELECT customer_id, month, order_count,
         LAG(order_count, 1) OVER (PARTITION BY
customer_id ORDER BY month) AS prev_1,
         LAG(order_count, 2) OVER (PARTITION BY
customer_id ORDER BY month) AS prev_2
  FROM monthly_orders
)
SELECT DISTINCT customer_id
FROM orders_with_lag
WHERE order_count > prev_1 AND prev_1 > prev_2;
"""

df_case_288_result = spark.sql(query)
display(df_case_288_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 289 [PDF 254]
**Brief explanation:** This query returns the rows needed to answer: Find employees who have been assigned projects outside their department.

**PySpark / Databricks code:**
```python
# Case 289 [PDF 254]
# Find employees who have been assigned projects outside their department.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

df_project_assignments_source = spark.sql("SELECT * FROM project_assignments ORDER BY employee_id, project_id")
display(df_project_assignments_source)

df_projects_source = spark.sql("SELECT * FROM projects ORDER BY project_id")
display(df_projects_source)

query = """
SELECT DISTINCT e.id, e.name
FROM employees e
JOIN project_assignments pa ON e.id =
pa.employee_id
JOIN projects p ON pa.project_id = p.project_id
WHERE e.department_id != p.department_id;
"""

df_case_289_result = spark.sql(query)
display(df_case_289_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 290 [PDF 255]
**Brief explanation:** This query calculates the metric requested in the case: Calculate the average time to close tickets per support agent.

**PySpark / Databricks code:**
```python
# Case 290 [PDF 255]
# Calculate the average time to close tickets per support agent.
df_support_tickets_source = spark.sql("SELECT * FROM support_tickets ORDER BY ticket_id")
display(df_support_tickets_source)

query = """
SELECT support_agent_id,
       AVG(datediff(closed_date, opened_date)) AS avg_close_time
FROM support_tickets
WHERE closed_date IS NOT NULL
GROUP BY support_agent_id;
"""

df_case_290_result = spark.sql(query)
display(df_case_290_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 291 [PDF 256]
**Brief explanation:** This query returns the rows needed to answer: Find the first and last login date for each user.

**PySpark / Databricks code:**
```python
# Case 291 [PDF 256]
# Find the first and last login date for each user.
df_user_logins_source = spark.sql("SELECT * FROM user_logins ORDER BY user_id, login_date")
display(df_user_logins_source)

query = """
SELECT user_id, MIN(login_date) AS first_login,
MAX(login_date) AS last_login
FROM user_logins
GROUP BY user_id;
"""

df_case_291_result = spark.sql(query)
display(df_case_291_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 292 [PDF 257]
**Brief explanation:** This query returns the rows needed to answer: Find customers who made purchases only in one month of the year.

**PySpark / Databricks code:**
```python
# Case 292 [PDF 257]
# Find customers who made purchases only in one month of the year.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
WITH customer_months AS (
  SELECT customer_id, DATE_TRUNC('month',
order_date) AS month
  FROM orders
  GROUP BY customer_id, month
)
SELECT customer_id
FROM customer_months
GROUP BY customer_id
HAVING COUNT(*) = 1;
"""

df_case_292_result = spark.sql(query)
display(df_case_292_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 293 [PDF 258]
**Brief explanation:** This query returns the rows needed to answer: Find products with sales revenue above the average revenue per product.

**PySpark / Databricks code:**
```python
# Case 293 [PDF 258]
# Find products with sales revenue above the average revenue per product.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
WITH avg_revenue AS (
  SELECT AVG(total_revenue) AS avg_rev
  FROM (
    SELECT product_id, SUM(amount) AS
total_revenue
    FROM sales
    GROUP BY product_id
  ) sub
)
SELECT product_id, SUM(amount) AS total_revenue
FROM sales
GROUP BY product_id
HAVING SUM(amount) > (SELECT avg_rev FROM
avg_revenue);
"""

df_case_293_result = spark.sql(query)
display(df_case_293_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 294 [PDF 259]
**Brief explanation:** This query returns the rows needed to answer: Find departments where more than 50% of employees have a salary above $60,000.

**PySpark / Databricks code:**
```python
# Case 294 [PDF 259]
# Find departments where more than 50% of employees have a salary above $60,000.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT department_id
FROM employees
GROUP BY department_id
HAVING AVG(CASE WHEN salary > 60000 THEN 1
ELSE 0 END) > 0.5;
"""

df_case_294_result = spark.sql(query)
display(df_case_294_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 295 [PDF 260]
**Brief explanation:** This query returns the rows needed to answer: Find employees who worked on all projects in the company.

**PySpark / Databricks code:**
```python
# Case 295 [PDF 260]
# Find employees who worked on all projects in the company.
df_projects_source = spark.sql("SELECT * FROM projects ORDER BY project_id")
display(df_projects_source)

df_project_assignments_source = spark.sql("SELECT * FROM project_assignments ORDER BY employee_id, project_id")
display(df_project_assignments_source)

query = """
WITH total_projects AS (
  SELECT COUNT(DISTINCT project_id) AS
project_count FROM projects
),
employee_projects AS (
  SELECT employee_id, COUNT(DISTINCT
project_id) AS projects_worked
  FROM project_assignments
  GROUP BY employee_id
)
SELECT ep.employee_id
FROM employee_projects ep
JOIN total_projects tp ON 1=1
WHERE ep.projects_worked = tp.project_count;
"""

df_case_295_result = spark.sql(query)
display(df_case_295_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 296 [PDF 261]
**Brief explanation:** This query returns the rows needed to answer: Find customers who ordered products from all categories.

**PySpark / Databricks code:**
```python
# Case 296 [PDF 261]
# Find customers who ordered products from all categories.
df_products_source = spark.sql("SELECT * FROM products ORDER BY product_id")
display(df_products_source)

df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
WITH category_count AS (
  SELECT COUNT(DISTINCT category_id) AS
total_categories FROM products
),
customer_categories AS (
  SELECT customer_id, COUNT(DISTINCT
p.category_id) AS categories_ordered
  FROM sales s
  JOIN products p ON s.product_id = p.product_id
  GROUP BY customer_id
)
SELECT customer_id
FROM customer_categories
JOIN category_count ON 1=1
WHERE categories_ordered = total_categories;
"""

df_case_296_result = spark.sql(query)
display(df_case_296_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 297 [PDF 262]
**Brief explanation:** This query returns the rows needed to answer: Find the average tenure of employees by department.

**PySpark / Databricks code:**
```python
# Case 297 [PDF 262]
# Find the average tenure of employees by department.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT department_id, AVG(months_between(current_date(), hire_date) / 12) AS avg_tenure_years
FROM employees
GROUP BY department_id;
"""

df_case_297_result = spark.sql(query)
display(df_case_297_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 298 [PDF 263]
**Brief explanation:** This query returns the rows needed to answer: Find the number of orders placed on weekends vs weekdays.

**PySpark / Databricks code:**
```python
# Case 298 [PDF 263]
# Find the number of orders placed on weekends vs weekdays.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT CASE
         WHEN EXTRACT(DOW FROM order_date) IN
(0,6) THEN 'Weekend'
         ELSE 'Weekday'
       END AS day_type,
       COUNT(*) AS order_count
FROM orders
GROUP BY day_type;
"""

df_case_298_result = spark.sql(query)
display(df_case_298_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 299 [PDF 264]
**Brief explanation:** This query returns the rows needed to answer: Find the percentage of orders with discounts per month.

**PySpark / Databricks code:**
```python
# Case 299 [PDF 264]
# Find the percentage of orders with discounts per month.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT DATE_TRUNC('month', order_date) AS
month,
       100.0 * SUM(CASE WHEN discount > 0 THEN 1
ELSE 0 END) / COUNT(*) AS discount_percentage
FROM orders
GROUP BY month
ORDER BY month;
"""

df_case_299_result = spark.sql(query)
display(df_case_299_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 300 [PDF 265]
**Brief explanation:** This query returns the rows needed to answer: Find the employees who have never been late to work.

**PySpark / Databricks code:**
```python
# Case 300 [PDF 265]
# Find the employees who have never been late to work.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

df_attendance_source = spark.sql("SELECT * FROM attendance ORDER BY employee_id, attendance_date")
display(df_attendance_source)

query = """
SELECT e.id, e.name
FROM employees e
LEFT JOIN attendance a ON e.id = a.employee_id
AND a.arrival_time > a.scheduled_start_time
WHERE a.employee_id IS NULL;
"""

df_case_300_result = spark.sql(query)
display(df_case_300_result)
```

**Expected result description:** Rows representing the missing relationship or absence condition requested in the case.

### Case 301 [PDF 266]
**Brief explanation:** This query returns the rows needed to answer: Find products with sales only during holiday seasons.

**PySpark / Databricks code:**
```python
# Case 301 [PDF 266]
# Find products with sales only during holiday seasons.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

df_holidays_source = spark.sql("SELECT * FROM holidays ORDER BY holiday_date")
display(df_holidays_source)

query = """
SELECT product_id
FROM sales s
JOIN holidays h ON s.sale_date = h.holiday_date
GROUP BY product_id
HAVING COUNT(*) = (SELECT COUNT(*) FROM
sales WHERE product_id = s.product_id);
"""

df_case_301_result = spark.sql(query)
display(df_case_301_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 302 [PDF 267]
**Brief explanation:** This query returns the rows needed to answer: Find the department with the largest increase in employee count compared to last year.

**PySpark / Databricks code:**
```python
# Case 302 [PDF 267]
# Find the department with the largest increase in employee count compared to last year.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
WITH current_year AS (
  SELECT department_id, COUNT(*) AS emp_count
  FROM employees
  WHERE hire_date <= current_date() AND
(termination_date IS NULL OR termination_date >=
current_date())
  GROUP BY department_id
),
last_year AS (
  SELECT department_id, COUNT(*) AS emp_count
  FROM employees
  WHERE hire_date <= add_months(current_date(), -12) AND (termination_date IS NULL
OR termination_date >= add_months(current_date(), -12))
  GROUP BY department_id
)
SELECT c.department_id, c.emp_count -
COALESCE(l.emp_count,0) AS increase
FROM current_year c
LEFT JOIN last_year l ON c.department_id =
l.department_id
ORDER BY increase DESC
LIMIT 1;
"""

df_case_302_result = spark.sql(query)
display(df_case_302_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 303 [PDF 268]
**Brief explanation:** This query returns the rows needed to answer: Find the average order value per customer segment.

**PySpark / Databricks code:**
```python
# Case 303 [PDF 268]
# Find the average order value per customer segment.
df_customers_source = spark.sql("SELECT * FROM customers ORDER BY customer_id")
display(df_customers_source)

df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT segment, AVG(o.amount) AS
avg_order_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY segment;
"""

df_case_303_result = spark.sql(query)
display(df_case_303_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 304 [PDF 269]
**Brief explanation:** This query returns the rows needed to answer: Find employees who manage more than 3 projects.

**PySpark / Databricks code:**
```python
# Case 304 [PDF 269]
# Find employees who manage more than 3 projects.
df_projects_source = spark.sql("SELECT * FROM projects ORDER BY project_id")
display(df_projects_source)

query = """
SELECT manager_id, COUNT(DISTINCT project_id)
AS project_count
FROM projects
GROUP BY manager_id
HAVING COUNT(DISTINCT project_id) > 3;
"""

df_case_304_result = spark.sql(query)
display(df_case_304_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 305 [PDF 270]
**Brief explanation:** This query returns the rows needed to answer: Find products that have never been returned.

**PySpark / Databricks code:**
```python
# Case 305 [PDF 270]
# Find products that have never been returned.
df_products_source = spark.sql("SELECT * FROM products ORDER BY product_id")
display(df_products_source)

df_returns_source = spark.sql("SELECT * FROM returns ORDER BY return_id")
display(df_returns_source)

query = """
SELECT p.product_id
FROM products p
LEFT JOIN returns r ON p.product_id = r.product_id
WHERE r.return_id IS NULL;
"""

df_case_305_result = spark.sql(query)
display(df_case_305_result)
```

**Expected result description:** Rows representing the missing relationship or absence condition requested in the case.

### Case 306 [PDF 271]
**Brief explanation:** This query returns the rows needed to answer: Find customers with orders but no shipments.

**PySpark / Databricks code:**
```python
# Case 306 [PDF 271]
# Find customers with orders but no shipments.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

df_shipments_source = spark.sql("SELECT * FROM shipments ORDER BY shipment_id")
display(df_shipments_source)

query = """
SELECT DISTINCT o.customer_id
FROM orders o
LEFT JOIN shipments s ON o.order_id = s.order_id
WHERE s.shipment_id IS NULL;
"""

df_case_306_result = spark.sql(query)
display(df_case_306_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 307 [PDF 272]
**Brief explanation:** This query returns the rows needed to answer: Find employees whose salaries increased every year.

**PySpark / Databricks code:**
```python
# Case 307 [PDF 272]
# Find employees whose salaries increased every year.
df_salaries_source = spark.sql("SELECT * FROM salaries ORDER BY employee_id, year")
display(df_salaries_source)

query = """
WITH salary_diff AS (
  SELECT employee_id, year, salary,
         LAG(salary) OVER (PARTITION BY
employee_id ORDER BY year) AS prev_salary
  FROM salaries
)
SELECT DISTINCT employee_id
FROM salary_diff
WHERE salary > prev_salary OR prev_salary IS NULL
GROUP BY employee_id
HAVING COUNT(*) = (SELECT COUNT(*) FROM
salaries s2 WHERE s2.employee_id =
salary_diff.employee_id);
"""

df_case_307_result = spark.sql(query)
display(df_case_307_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 308 [PDF 273]
**Brief explanation:** This query returns the rows needed to answer: Find the total number of unique products sold in the last quarter.

**PySpark / Databricks code:**
```python
# Case 308 [PDF 273]
# Find the total number of unique products sold in the last quarter.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT COUNT(DISTINCT product_id) AS
unique_products_sold
FROM sales
WHERE sale_date >= DATE_TRUNC('quarter',
current_date()) - INTERVAL '3 months'
  AND sale_date < DATE_TRUNC('quarter',
current_date());
"""

df_case_308_result = spark.sql(query)
display(df_case_308_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 309 [PDF 274]
**Brief explanation:** This query returns the rows needed to answer: Find the day with the highest sales in each month.

**PySpark / Databricks code:**
```python
# Case 309 [PDF 274]
# Find the day with the highest sales in each month.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
WITH daily_sales AS (
  SELECT DATE(order_date) AS day, SUM(amount)
AS total_sales
  FROM orders
  GROUP BY day
),
ranked_sales AS (
  SELECT day, total_sales,
         RANK() OVER (PARTITION BY
DATE_TRUNC('month', day) ORDER BY total_sales
DESC) AS sales_rank
  FROM daily_sales
)
SELECT day, total_sales
FROM ranked_sales
WHERE sales_rank = 1;
"""

df_case_309_result = spark.sql(query)
display(df_case_309_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 310 [PDF 275]
**Brief explanation:** This query returns the rows needed to answer: Find the products with the highest sales increase compared to the previous month.

**PySpark / Databricks code:**
```python
# Case 310 [PDF 275]
# Find the products with the highest sales increase compared to the previous month.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
WITH monthly_sales AS (
  SELECT product_id, DATE_TRUNC('month',
sale_date) AS month, SUM(amount) AS total_sales
  FROM sales
  GROUP BY product_id, month
),
sales_diff AS (
  SELECT product_id, month, total_sales,
         LAG(total_sales) OVER (PARTITION BY
product_id ORDER BY month) AS prev_month_sales
  FROM monthly_sales
)
SELECT product_id, month, total_sales -
prev_month_sales AS increase
FROM sales_diff
WHERE prev_month_sales IS NOT NULL
ORDER BY increase DESC
LIMIT 10;
"""

df_case_310_result = spark.sql(query)
display(df_case_310_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 311 [PDF 276]
**Brief explanation:** This query returns the rows needed to answer: Find the top 5 customers by total order value in the last year.

**PySpark / Databricks code:**
```python
# Case 311 [PDF 276]
# Find the top 5 customers by total order value in the last year.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT customer_id, SUM(amount) AS
total_order_value
FROM orders
WHERE order_date >= add_months(current_date(), -12)
GROUP BY customer_id
ORDER BY total_order_value DESC
LIMIT 5;
"""

df_case_311_result = spark.sql(query)
display(df_case_311_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 312 [PDF 277]
**Brief explanation:** This query returns the rows needed to answer: Find the number of employees who changed departments in the last year.

**PySpark / Databricks code:**
```python
# Case 312 [PDF 277]
# Find the number of employees who changed departments in the last year.
df_employee_department_history_source = spark.sql("SELECT * FROM employee_department_history ORDER BY employee_id, change_date")
display(df_employee_department_history_source)

query = """
SELECT COUNT(DISTINCT employee_id)
FROM employee_department_history
WHERE change_date >= add_months(current_date(), -12);
"""

df_case_312_result = spark.sql(query)
display(df_case_312_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 313 [PDF 278]
**Brief explanation:** This query returns the rows needed to answer: Find the average salary for each job title within each department.

**PySpark / Databricks code:**
```python
# Case 313 [PDF 278]
# Find the average salary for each job title within each department.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT department_id, job_title, AVG(salary) AS
avg_salary
FROM employees
GROUP BY department_id, job_title;
"""

df_case_313_result = spark.sql(query)
display(df_case_313_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 314 [PDF 279]
**Brief explanation:** This query returns the rows needed to answer: Find customers who placed orders with multiple payment methods.

**PySpark / Databricks code:**
```python
# Case 314 [PDF 279]
# Find customers who placed orders with multiple payment methods.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING COUNT(DISTINCT payment_method) > 1;
"""

df_case_314_result = spark.sql(query)
display(df_case_314_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 315 [PDF 280]
**Brief explanation:** This query returns the rows needed to answer: Find products with the lowest average rating per category.

**PySpark / Databricks code:**
```python
# Case 315 [PDF 280]
# Find products with the lowest average rating per category.
df_product_reviews_source = spark.sql("SELECT * FROM product_reviews ORDER BY review_id")
display(df_product_reviews_source)

query = """
SELECT category_id, product_id, AVG(rating) AS
avg_rating
FROM product_reviews
GROUP BY category_id, product_id
QUALIFY ROW_NUMBER() OVER (PARTITION
BY category_id ORDER BY AVG(rating)) = 1;
"""

df_case_315_result = spark.sql(query)
display(df_case_315_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 316 [PDF 281]
**Brief explanation:** This query returns the rows needed to answer: Find employees who have never received a promotion.

**PySpark / Databricks code:**
```python
# Case 316 [PDF 281]
# Find employees who have never received a promotion.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

df_promotions_source = spark.sql("SELECT * FROM promotions ORDER BY promotion_id")
display(df_promotions_source)

query = """
SELECT e.id, e.name
FROM employees e
LEFT JOIN promotions p ON e.id = p.employee_id
WHERE p.promotion_id IS NULL;
"""

df_case_316_result = spark.sql(query)
display(df_case_316_result)
```

**Expected result description:** Rows representing the missing relationship or absence condition requested in the case.

### Case 317 [PDF 282]
**Brief explanation:** This query returns the rows needed to answer: Find the total number of orders placed each day in the last week.

**PySpark / Databricks code:**
```python
# Case 317 [PDF 282]
# Find the total number of orders placed each day in the last week.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT DATE(order_date) AS order_day, COUNT(*)
AS orders_count
FROM orders
WHERE order_date >= date_sub(current_date(), 7)
GROUP BY order_day
ORDER BY order_day;
"""

df_case_317_result = spark.sql(query)
display(df_case_317_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 318 [PDF 283]
**Brief explanation:** This query returns the rows needed to answer: Find customers with orders in both online and in- store channels.

**PySpark / Databricks code:**
```python
# Case 318 [PDF 283]
# Find customers with orders in both online and in- store channels.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING COUNT(DISTINCT order_channel) > 1;
"""

df_case_318_result = spark.sql(query)
display(df_case_318_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 319 [PDF 284]
**Brief explanation:** This query returns the rows needed to answer: Find the top 3 sales reps by number of deals closed this quarter.

**PySpark / Databricks code:**
```python
# Case 319 [PDF 284]
# Find the top 3 sales reps by number of deals closed this quarter.
df_sales_deals_source = spark.sql("SELECT * FROM sales_deals ORDER BY deal_id")
display(df_sales_deals_source)

query = """
SELECT sales_rep_id, COUNT(*) AS deals_closed
FROM sales_deals
WHERE deal_close_date >= DATE_TRUNC('quarter',
current_date())
GROUP BY sales_rep_id
ORDER BY deals_closed DESC
LIMIT 3;
"""

df_case_319_result = spark.sql(query)
display(df_case_319_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 320 [PDF 285]
**Brief explanation:** This query returns the rows needed to answer: Find products that have been discontinued but still have sales.

**PySpark / Databricks code:**
```python
# Case 320 [PDF 285]
# Find products that have been discontinued but still have sales.
df_products_source = spark.sql("SELECT * FROM products ORDER BY product_id")
display(df_products_source)

df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT p.product_id
FROM products p
JOIN sales s ON p.product_id = s.product_id
WHERE p.discontinued = true;
"""

df_case_320_result = spark.sql(query)
display(df_case_320_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 321 [PDF 286]
**Brief explanation:** This query returns the rows needed to answer: Find employees who report to a manager hired after them.

**PySpark / Databricks code:**
```python
# Case 321 [PDF 286]
# Find employees who report to a manager hired after them.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT e.id, e.name, m.id AS manager_id, m.name
AS manager_name
FROM employees e
JOIN employees m ON e.manager_id = m.id
WHERE e.hire_date < m.hire_date;
"""

df_case_321_result = spark.sql(query)
display(df_case_321_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 322 [PDF 287]
**Brief explanation:** This Databricks version preserves the intent of the source question and includes a small inference where the PDF SQL was dialect-specific, incomplete, or logically broken.

**Databricks note:** This runnable version includes a small, explicit inference because the source SQL was dialect-specific, incomplete, or internally inconsistent.

**PySpark / Databricks code:**
```python
# Case 322 [PDF 287]
# Find the average delivery time by shipping method.
# Note: The Databricks version below includes a small inference to make the PDF logic runnable.
df_shipments_source = spark.sql("SELECT * FROM shipments ORDER BY shipment_id")
display(df_shipments_source)

query = """
SELECT shipping_method,
       AVG(datediff(delivery_date, order_date)) AS avg_delivery_time
FROM shipments
GROUP BY shipping_method;
"""

df_case_322_result = spark.sql(query)
display(df_case_322_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 323 [PDF 288]
**Brief explanation:** This query returns the rows needed to answer: Find orders where the total quantity exceeds 100.

**PySpark / Databricks code:**
```python
# Case 323 [PDF 288]
# Find orders where the total quantity exceeds 100.
df_order_items_source = spark.sql("SELECT * FROM order_items ORDER BY order_id, product_id")
display(df_order_items_source)

query = """
SELECT order_id, SUM(quantity) AS total_quantity
FROM order_items
GROUP BY order_id
HAVING SUM(quantity) > 100;
"""

df_case_323_result = spark.sql(query)
display(df_case_323_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 324 [PDF 289]
**Brief explanation:** This query returns the rows needed to answer: Find customers who made orders but never returned a product.

**PySpark / Databricks code:**
```python
# Case 324 [PDF 289]
# Find customers who made orders but never returned a product.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

df_returns_source = spark.sql("SELECT * FROM returns ORDER BY return_id")
display(df_returns_source)

query = """
SELECT DISTINCT o.customer_id
FROM orders o
LEFT JOIN returns r ON o.order_id = r.order_id
WHERE r.return_id IS NULL;
"""

df_case_324_result = spark.sql(query)
display(df_case_324_result)
```

**Expected result description:** Rows representing the missing relationship or absence condition requested in the case.

### Case 325 [PDF 290]
**Brief explanation:** This query returns the rows needed to answer: Find products that have been ordered but never reviewed.

**PySpark / Databricks code:**
```python
# Case 325 [PDF 290]
# Find products that have been ordered but never reviewed.
df_products_source = spark.sql("SELECT * FROM products ORDER BY product_id")
display(df_products_source)

df_product_reviews_source = spark.sql("SELECT * FROM product_reviews ORDER BY review_id")
display(df_product_reviews_source)

df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
SELECT p.product_id
FROM products p
LEFT JOIN product_reviews pr ON p.product_id =
pr.product_id
JOIN sales s ON p.product_id = s.product_id
WHERE pr.review_id IS NULL
GROUP BY p.product_id;
"""

df_case_325_result = spark.sql(query)
display(df_case_325_result)
```

**Expected result description:** Rows representing the missing relationship or absence condition requested in the case.

### Case 326 [PDF 291]
**Brief explanation:** This query returns the rows needed to answer: Find employees who have worked on projects for more than 2 years.

**PySpark / Databricks code:**
```python
# Case 326 [PDF 291]
# Find employees who have worked on projects for more than 2 years.
df_project_assignments_source = spark.sql("SELECT * FROM project_assignments ORDER BY employee_id, project_id")
display(df_project_assignments_source)

query = """
SELECT employee_id
FROM project_assignments
GROUP BY employee_id
HAVING MAX(assignment_end_date) -
MIN(assignment_start_date) > INTERVAL '2 years';
"""

df_case_326_result = spark.sql(query)
display(df_case_326_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 327 [PDF 292]
**Brief explanation:** This query returns the rows needed to answer: Find the product with the highest sales for each month.

**PySpark / Databricks code:**
```python
# Case 327 [PDF 292]
# Find the product with the highest sales for each month.
df_sales_source = spark.sql("SELECT * FROM sales ORDER BY sale_id")
display(df_sales_source)

query = """
WITH monthly_sales AS (
  SELECT product_id, DATE_TRUNC('month',
sale_date) AS month, SUM(amount) AS total_sales
  FROM sales
  GROUP BY product_id, month
),
ranked_sales AS (
  SELECT product_id, month, total_sales,
         ROW_NUMBER() OVER (PARTITION BY
month ORDER BY total_sales DESC) AS rn
  FROM monthly_sales
)
SELECT product_id, month, total_sales
FROM ranked_sales
WHERE rn = 1;
"""

df_case_327_result = spark.sql(query)
display(df_case_327_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 328 [PDF 293]
**Brief explanation:** The PDF source is truncated for this case, so the block only preserves the available source context.

**Databricks note:** The PDF source is truncated, so the block below preserves the available context and does not execute a final `spark.sql(...)` result query.

**PySpark / Databricks code:**
```python
# Case 328 [PDF 293]
# Find customers with the highest order count in each region.
# Note: The source SQL is truncated in the PDF, so an exact runnable conversion is not possible.
df_customers_source = spark.sql("SELECT * FROM customers ORDER BY customer_id")
display(df_customers_source)

df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
-- The source PDF is truncated for this case after `JOIN orders o`.
-- No exact Databricks conversion is possible without inventing the missing SQL.
"""

print(query)
```

**Expected result description:** No exact result description is possible because the SQL shown in the PDF is incomplete.

### Case 329 [PDF 294]
**Brief explanation:** This case solves: Flag customers with an increase in orders every month this year.

**PySpark / Databricks code:**
```python
# Case 329 [PDF 294]
# Flag customers with an increase in orders every month this year.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

query = """
WITH monthly_counts AS (
  SELECT customer_id, DATE_TRUNC('month',
order_date) AS month, COUNT(*) AS cnt
  FROM orders
  WHERE EXTRACT(YEAR FROM order_date) =
EXTRACT(YEAR FROM current_date())
  GROUP BY customer_id, month
),
increase_check AS (
  SELECT customer_id,
         LAG(cnt) OVER (PARTITION BY customer_id
ORDER BY month) AS prev_cnt,
         cnt
  FROM monthly_counts
)
SELECT DISTINCT customer_id
FROM increase_check
WHERE cnt > prev_cnt AND prev_cnt IS NOT NULL;
"""

df_case_329_result = spark.sql(query)
display(df_case_329_result)
```

**Expected result description:** A row-level result set that adds a derived analytic column to each input row.

### Case 330 [PDF 295]
**Brief explanation:** This query returns the rows needed to answer: Find employees whose hire date is the same weekday as their manager’s.

**PySpark / Databricks code:**
```python
# Case 330 [PDF 295]
# Find employees whose hire date is the same weekday as their manager’s.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
SELECT e.id, e.name
FROM employees e
JOIN employees m ON e.manager_id = m.id
WHERE EXTRACT(DOW FROM e.hire_date) =
EXTRACT(DOW FROM m.hire_date);
"""

df_case_330_result = spark.sql(query)
display(df_case_330_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 331 [PDF 296]
**Brief explanation:** This query returns the rows needed to answer: Get total working hours per employee per week.

**PySpark / Databricks code:**
```python
# Case 331 [PDF 296]
# Get total working hours per employee per week.
df_work_logs_source = spark.sql("SELECT * FROM work_logs ORDER BY employee_id, work_date")
display(df_work_logs_source)

query = """
SELECT employee_id, DATE_TRUNC('week',
work_date) AS week_start, SUM(hours_worked) AS
total_hours
FROM work_logs
GROUP BY employee_id, week_start;
"""

df_case_331_result = spark.sql(query)
display(df_case_331_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 332 [PDF 297]
**Brief explanation:** This query returns the rows needed to answer: Identify suppliers who delivered to all regions.

**PySpark / Databricks code:**
```python
# Case 332 [PDF 297]
# Identify suppliers who delivered to all regions.
df_suppliers_source = spark.sql("SELECT * FROM suppliers ORDER BY supplier_id")
display(df_suppliers_source)

df_deliveries_source = spark.sql("SELECT * FROM deliveries ORDER BY delivery_id")
display(df_deliveries_source)

query = """
WITH total_regions AS (
  SELECT COUNT(DISTINCT region) AS total FROM
suppliers
),
supplier_regions AS (
  SELECT supplier_id, COUNT(DISTINCT
delivery_region) AS regions_served
  FROM deliveries
  GROUP BY supplier_id
)
SELECT supplier_id
FROM supplier_regions
JOIN total_regions ON regions_served = total;
"""

df_case_332_result = spark.sql(query)
display(df_case_332_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 333 [PDF 298]
**Brief explanation:** This query returns the rows needed to answer: Find products ordered on their launch date.

**PySpark / Databricks code:**
```python
# Case 333 [PDF 298]
# Find products ordered on their launch date.
df_orders_source = spark.sql("SELECT * FROM orders ORDER BY order_id")
display(df_orders_source)

df_products_source = spark.sql("SELECT * FROM products ORDER BY product_id")
display(df_products_source)

query = """
SELECT o.product_id
FROM orders o
JOIN products p ON o.product_id = p.product_id
WHERE CAST(o.order_date AS DATE) =
p.launch_date;
"""

df_case_333_result = spark.sql(query)
display(df_case_333_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

### Case 334 [PDF 299]
**Brief explanation:** This query returns the rows needed to answer: Retrieve employees with salary in top 5% company-wide.

**PySpark / Databricks code:**
```python
# Case 334 [PDF 299]
# Retrieve employees with salary in top 5% company-wide.
df_employees_source = spark.sql("SELECT * FROM employees ORDER BY id")
display(df_employees_source)

query = """
WITH salary_ranks AS (
  SELECT salary, PERCENT_RANK() OVER
(ORDER BY salary DESC) AS pr
  FROM employees
)
SELECT e.*
FROM employees e
JOIN salary_ranks sr ON e.salary = sr.salary
WHERE sr.pr <= 0.05;
"""

df_case_334_result = spark.sql(query)
display(df_case_334_result)
```

**Expected result description:** An aggregated or ranked result set matching the grouping and filter rules in the query.

### Case 335 [PDF 300]
**Brief explanation:** This query returns the rows needed to answer: List departments with no open positions.

**PySpark / Databricks code:**
```python
# Case 335 [PDF 300]
# List departments with no open positions.
df_departments_source = spark.sql("SELECT * FROM departments ORDER BY department_id")
display(df_departments_source)

df_job_openings_source = spark.sql("SELECT * FROM job_openings ORDER BY job_id")
display(df_job_openings_source)

query = """
SELECT d.department_id
FROM departments d
LEFT JOIN job_openings j ON d.department_id =
j.department_id AND j.status = 'Open'
WHERE j.job_id IS NULL;
"""

df_case_335_result = spark.sql(query)
display(df_case_335_result)
```

**Expected result description:** A result set that should match the filter, join, grouping, or ranking logic expressed in the SQL.

## D. Practice Environment Setup

### departments
**Note:** Supports 7 extracted cases that reference `departments`, including examples such as: Get departments with no employees.; List all departments and their employee counts, including departments with zero employees.; Write a recursive query to compute the total budget under each manager (including subordinates)..

```sql
CREATE OR REPLACE TABLE departments (
    department_id INT,
    id INT,
    department_name STRING,
    creation_date DATE,
    manager_id INT,
    budget BIGINT
);

INSERT INTO departments VALUES
(10, 10, 'Executive', DATE '2008-01-01', NULL, 5000000),
(20, 20, 'Engineering', DATE '2010-03-01', 2, 3000000),
(30, 30, 'Finance', DATE '2011-05-01', 3, 1500000),
(40, 40, 'Sales', DATE '2012-07-01', 8, 2500000),
(50, 50, 'HR', DATE '2013-09-01', 11, 800000),
(60, 60, 'Support', DATE '2014-01-15', 18, 900000),
(70, 70, 'Analytics', DATE '2024-01-01', 20, 1200000),
(80, 80, 'R&D', DATE '2025-01-01', 20, 2000000),
(90, 90, 'Legal', DATE '2020-02-01', NULL, 700000),
(100, 100, 'Operations', DATE '2018-04-01', NULL, 1100000);
```

### employees
**Note:** Supports 137 extracted cases that reference `employees`, including examples such as: Find the second highest salary from the Employee table.; Find duplicate records in a table.; Retrieve employees who earn more than their manager..

```sql
CREATE OR REPLACE TABLE employees (
    id INT,
    name STRING,
    department_id INT,
    manager_id INT,
    salary INT,
    join_date DATE,
    hire_date DATE,
    termination_date DATE,
    gender STRING,
    job_title STRING,
    birth_date DATE
);

INSERT INTO employees VALUES
(1, 'Alice', 10, NULL, 200000, DATE '2010-01-04', DATE '2010-01-04', NULL, 'F', 'CEO', DATE '1980-05-01'),
(2, 'Bob', 20, 1, 170000, DATE '2012-02-06', DATE '2012-02-06', NULL, 'M', 'CTO', DATE '1982-03-12'),
(3, 'Carol', 30, 1, 165000, DATE '2011-03-07', DATE '2011-03-07', NULL, 'F', 'CFO', DATE '1983-08-22'),
(4, 'Dan', 20, 2, 120000, DATE '2014-06-09', DATE '2014-06-09', NULL, 'M', 'Manager', DATE '1985-01-20'),
(5, 'Eve', 20, 4, 125000, DATE '2013-06-09', DATE '2013-06-09', NULL, 'F', 'Developer', DATE '1987-07-14'),
(6, 'Frank', 20, 4, 90000, DATE '2015-01-12', DATE '2015-01-12', NULL, 'M', 'Developer', DATE '1991-11-11'),
(7, 'Grace', 20, 4, 90000, DATE '2015-01-12', DATE '2015-01-12', NULL, 'F', 'Tester', DATE '1991-11-11'),
(8, 'Henry', 40, 1, 150000, DATE '2012-11-05', DATE '2012-11-05', NULL, 'M', 'Director', DATE '1984-04-18'),
(9, 'Ivy', 40, 8, 85000, DATE '2024-10-01', DATE '2024-10-01', NULL, 'F', 'Sales Rep', DATE '1994-09-09'),
(10, 'Jack', 40, 8, 65000, DATE '2025-12-01', DATE '2025-12-01', NULL, 'M', 'Sales Rep', DATE '1996-12-12'),
(11, 'Kate', 50, 1, 110000, DATE '2016-02-01', DATE '2016-02-01', NULL, 'F', 'Manager', DATE '1988-02-01'),
(12, 'Leo', 50, 11, 110000, DATE '2016-02-01', DATE '2016-02-01', NULL, 'M', 'HR Specialist', DATE '1990-10-10'),
(13, 'Mia', 30, 3, 95000, DATE '2023-01-15', DATE '2023-01-15', NULL, 'F', 'Analyst', DATE '1993-03-03'),
(14, 'Nina', 30, 3, 95000, DATE '2023-01-15', DATE '2023-01-15', NULL, 'F', 'Analyst', DATE '1993-03-03'),
(15, 'Otto', NULL, 6, 35000, DATE '2025-11-01', DATE '2025-11-01', NULL, 'M', 'Contractor', DATE '1998-05-05'),
(16, 'Ada', 20, 4, 101, DATE '2025-04-01', DATE '2025-04-01', NULL, 'F', 'Developer', DATE '1999-04-01'),
(17, 'Anna', 20, 4, 110000, DATE '2014-06-09', DATE '2014-06-09', NULL, 'F', 'Developer', DATE '1992-06-09'),
(18, 'Paul', 60, 1, 105000, DATE '2022-01-03', DATE '2022-01-03', NULL, 'M', 'Manager', DATE '1989-01-03'),
(19, 'Quinn', 60, 18, 105000, DATE '2022-01-03', DATE '2022-01-03', NULL, 'F', 'Support Agent', DATE '1990-01-03'),
(20, 'Rita', 70, 1, 98000, DATE '2025-03-03', DATE '2025-03-03', NULL, 'F', 'Analyst', DATE '1995-03-03'),
(21, 'Sam', 80, 20, 99000, DATE '2024-12-15', DATE '2024-12-15', NULL, 'M', 'Scientist', DATE '1992-12-15'),
(22, 'Tara', 80, 20, 99000, DATE '2025-04-14', DATE '2025-04-14', NULL, 'F', 'Scientist', DATE '1994-04-14');
```

### customers
**Note:** Supports 18 extracted cases that reference `customers`, including examples such as: Find customers who have not made any purchase.; Write a query to find the first purchase date and last purchase date for each customer, including customers who never purchased anything.; Find customers who haven’t ordered in the last 6 months..

```sql
CREATE OR REPLACE TABLE customers (
    customer_id INT,
    name STRING,
    country STRING,
    region STRING,
    segment STRING,
    registration_date DATE
);

INSERT INTO customers VALUES
(101, 'Acme Corp', 'USA', 'North', 'Enterprise', DATE '2024-01-05'),
(102, 'Beta LLC', 'UK', 'West', 'SMB', DATE '2024-02-14'),
(103, 'Casa Retail', 'Spain', 'South', 'Consumer', DATE '2024-03-21'),
(104, 'Delta GmbH', 'Germany', 'East', 'Enterprise', DATE '2024-05-12'),
(105, 'Echo Ltd', 'India', 'South', 'SMB', DATE '2024-06-30'),
(106, 'Foxtrot SA', 'Spain', 'East', 'Consumer', DATE '2025-01-15'),
(107, 'Gamma Inc', 'USA', 'West', 'Enterprise', DATE '2025-08-01'),
(108, 'Hotel Co', 'France', 'North', 'SMB', DATE '2025-12-05');
```

### categories
**Note:** Supports 1 extracted cases that reference `categories`, including examples such as: Get the total sales amount for each product category including categories with zero sales..

```sql
CREATE OR REPLACE TABLE categories (
    category_id INT,
    category_name STRING
);

INSERT INTO categories VALUES
(1, 'Electronics'),
(2, 'Grocery'),
(3, 'Apparel'),
(4, 'Home'),
(5, 'Books');
```

### products
**Note:** Supports 20 extracted cases that reference `products`, including examples such as: Find products that have never been sold.; List the customers who purchased all products in a specific category.; Find products that have never been ordered..

```sql
CREATE OR REPLACE TABLE products (
    product_id STRING,
    product_name STRING,
    category_id INT,
    price DECIMAL(10,2),
    launch_date DATE,
    discontinued BOOLEAN
);

INSERT INTO products VALUES
('A', 'Laptop', 1, 1200, DATE '2025-01-10', false),
('B', 'Phone', 1, 900, DATE '2025-02-15', false),
('C', 'Tablet', 1, 700, DATE '2025-03-20', false),
('D', 'Coffee', 2, 15, DATE '2024-12-01', false),
('E', 'Tea', 2, 12, DATE '2024-12-15', false),
('F', 'Jacket', 3, 150, DATE '2025-09-01', false),
('G', 'Chair', 4, 80, DATE '2025-11-20', false),
('H', 'Desk', 4, 300, DATE '2026-03-25', false),
('X', 'Headphones', 1, 200, DATE '2025-10-05', true),
('Z', 'Book', 5, 25, DATE '2026-04-10', false);
```

### sales
**Note:** Supports 78 extracted cases that reference `sales`, including examples such as: Find customers who have not made any purchase.; Write a query to get the first and last purchase date for each customer.; Find the most recent purchase per customer using window functions..

```sql
CREATE OR REPLACE TABLE sales (
    sale_id INT,
    customer_id INT,
    product_id STRING,
    employee_id INT,
    salesperson_id INT,
    sales_rep_id INT,
    category_id INT,
    sale_date DATE,
    purchase_date DATE,
    amount DECIMAL(10,2),
    sale_amount DECIMAL(10,2),
    quantity INT
);

INSERT INTO sales VALUES
(1, 101, 'A', 9, 9, 1, DATE '2023-02-10', DATE '2023-02-10', 1200, 1200, 1),
(2, 101, 'B', 9, 9, 1, DATE '2023-07-12', DATE '2023-07-12', 900, 900, 1),
(3, 105, 'D', 10, 10, 2, DATE '2023-09-05', DATE '2023-09-05', 45, 45, 3),
(4, 101, 'A', 9, 9, 1, DATE '2024-03-15', DATE '2024-03-15', 1200, 1200, 1),
(5, 102, 'B', 10, 10, 1, DATE '2024-06-20', DATE '2024-06-20', 900, 900, 1),
(6, 103, 'D', 9, 9, 2, DATE '2024-09-10', DATE '2024-09-10', 30, 30, 2),
(7, 104, 'A', 9, 9, 1, DATE '2024-12-05', DATE '2024-12-05', 1200, 1200, 1),
(8, 101, 'A', 9, 9, 1, DATE '2025-01-05', DATE '2025-01-05', 1200, 1200, 1),
(9, 101, 'B', 9, 9, 1, DATE '2025-01-20', DATE '2025-01-20', 900, 900, 1),
(10, 102, 'A', 9, 9, 1, DATE '2025-02-10', DATE '2025-02-10', 1200, 1200, 1),
(11, 102, 'X', 9, 9, 1, DATE '2025-10-10', DATE '2025-10-10', 200, 200, 1),
(12, 103, 'D', 10, 10, 2, DATE '2025-11-01', DATE '2025-11-01', 45, 45, 2),
(13, 101, 'A', 9, 9, 1, DATE '2025-12-15', DATE '2025-12-15', 2400, 2400, 1),
(14, 104, 'B', 10, 10, 1, DATE '2026-01-02', DATE '2026-01-02', 900, 900, 1),
(15, 104, 'C', 10, 10, 1, DATE '2026-01-25', DATE '2026-01-25', 700, 700, 1),
(16, 105, 'A', 9, 9, 1, DATE '2026-02-05', DATE '2026-02-05', 1200, 1200, 1),
(17, 105, 'B', 9, 9, 1, DATE '2026-02-06', DATE '2026-02-06', 900, 900, 1),
(18, 105, 'A', 9, 9, 1, DATE '2026-02-20', DATE '2026-02-20', 1200, 1200, 1),
(19, 106, 'H', 10, 10, 4, DATE '2026-03-25', DATE '2026-03-25', 300, 300, 1),
(20, 106, 'A', 10, 10, 1, DATE '2026-03-26', DATE '2026-03-26', 1200, 1200, 1),
(21, 107, 'X', 9, 9, 1, DATE '2026-04-01', DATE '2026-04-01', 200, 200, 1),
(22, 107, 'B', 9, 9, 1, DATE '2026-04-02', DATE '2026-04-02', 900, 900, 1),
(23, 107, 'D', 9, 9, 2, DATE '2026-04-03', DATE '2026-04-03', 15, 15, 2),
(24, 101, 'E', 9, 9, 2, DATE '2026-04-04', DATE '2026-04-04', 12, 12, 2),
(25, 102, 'F', 9, 9, 3, DATE '2026-04-05', DATE '2026-04-05', 150, 150, 1),
(26, 103, 'A', 10, 10, 1, DATE '2026-04-06', DATE '2026-04-06', 1200, 1200, 1),
(27, 103, 'B', 10, 10, 1, DATE '2026-04-06', DATE '2026-04-06', 900, 900, 1),
(28, 104, 'A', 10, 10, 1, DATE '2026-04-10', DATE '2026-04-10', 1200, 1200, 1),
(29, 101, 'B', 9, 9, 1, DATE '2026-04-10', DATE '2026-04-10', 900, 900, 1),
(30, 101, 'A', 9, 9, 1, DATE '2026-04-11', DATE '2026-04-11', 1200, 1200, 1),
(31, 101, 'A', 9, 9, 1, DATE '2026-04-12', DATE '2026-04-12', 1200, 1200, 1),
(32, 101, 'A', 9, 9, 1, DATE '2026-04-13', DATE '2026-04-13', 1200, 1200, 1),
(33, 106, 'C', 10, 10, 1, DATE '2026-04-14', DATE '2026-04-14', 700, 700, 1);
```

### orders
**Note:** Supports 61 extracted cases that reference `orders`, including examples such as: Retrieve the last 5 orders for each customer.; Find average order value per month and product category.; Write a query to find the second most recent order date per customer..

```sql
CREATE OR REPLACE TABLE orders (
    order_id INT,
    customer_id INT,
    product_id STRING,
    order_date DATE,
    amount DECIMAL(10,2),
    category_id INT,
    order_value DECIMAL(10,2),
    shipping_method STRING,
    shipping_date DATE,
    delivery_date DATE,
    payment_method STRING,
    order_channel STRING,
    discount DECIMAL(10,2),
    discount_amount DECIMAL(10,2),
    discount_used BOOLEAN
);

INSERT INTO orders VALUES
(1001, 101, 'A', DATE '2025-01-05', 1200, 1, 1200, 'Air', DATE '2025-01-06', DATE '2025-01-09', 'Credit Card', 'Online', 0, 0, false),
(1002, 101, 'B', DATE '2025-01-20', 900, 1, 900, 'Ground', DATE '2025-01-21', DATE '2025-01-25', 'Wire', 'Online', 50, 50, true),
(1003, 102, 'A', DATE '2025-02-10', 1200, 1, 1200, 'Air', DATE '2025-02-11', DATE '2025-02-13', 'Credit Card', 'Store', 0, 0, false),
(1004, 102, 'X', DATE '2025-10-10', 200, 1, 200, 'Ground', DATE '2025-10-11', DATE '2025-10-14', 'Credit Card', 'Online', 20, 20, true),
(1005, 103, 'D', DATE '2025-11-01', 45, 2, 45, 'Ground', DATE '2025-11-02', DATE '2025-11-04', 'Cash', 'Store', 0, 0, false),
(1006, 101, 'A', DATE '2025-12-15', 2400, 1, 2400, 'Air', DATE '2025-12-16', DATE '2025-12-18', 'Wire', 'Online', 0, 0, false),
(1007, 104, 'B', DATE '2026-01-02', 900, 1, 900, 'Ground', DATE '2026-01-03', DATE '2026-01-05', 'Credit Card', 'Online', 0, 0, false),
(1008, 104, 'C', DATE '2026-01-25', 700, 1, 700, 'Ground', DATE '2026-01-26', DATE '2026-01-30', 'Credit Card', 'Store', 35, 35, true),
(1009, 105, 'A', DATE '2026-02-05', 1200, 1, 1200, 'Air', DATE '2026-02-06', DATE '2026-02-08', 'UPI', 'Online', 0, 0, false),
(1010, 105, 'B', DATE '2026-02-06', 900, 1, 900, 'Air', DATE '2026-02-07', DATE '2026-02-09', 'UPI', 'Online', 0, 0, false),
(1011, 105, 'A', DATE '2026-02-20', 1200, 1, 1200, 'Ground', DATE '2026-02-21', DATE '2026-02-24', 'Credit Card', 'Store', 0, 0, false),
(1012, 106, 'H', DATE '2026-03-25', 300, 4, 300, 'Freight', DATE '2026-03-26', DATE '2026-03-30', 'Credit Card', 'Online', 0, 0, false),
(1013, 106, 'A', DATE '2026-03-26', 1200, 1, 1200, 'Air', DATE '2026-03-27', DATE '2026-03-29', 'Credit Card', 'Online', 100, 100, true),
(1014, 107, 'X', DATE '2026-04-01', 200, 1, 200, 'Ground', DATE '2026-04-02', DATE '2026-04-05', 'Cash', 'Store', 10, 10, true),
(1015, 107, 'B', DATE '2026-04-02', 900, 1, 900, 'Ground', DATE '2026-04-03', DATE '2026-04-06', 'Credit Card', 'Online', 0, 0, false),
(1016, 107, 'D', DATE '2026-04-03', 15, 2, 15, 'Ground', DATE '2026-04-04', DATE '2026-04-07', 'Credit Card', 'Online', 0, 0, false),
(1017, 101, 'E', DATE '2026-04-04', 12, 2, 12, 'Ground', DATE '2026-04-05', DATE '2026-04-08', 'Wire', 'Store', 0, 0, false),
(1018, 102, 'F', DATE '2026-04-05', 150, 3, 150, 'Ground', DATE '2026-04-06', DATE '2026-04-10', 'Credit Card', 'Online', 15, 15, true),
(1019, 103, 'A', DATE '2026-04-06', 1200, 1, 1200, 'Air', DATE '2026-04-07', DATE '2026-04-09', 'Credit Card', 'Online', 0, 0, false),
(1020, 103, 'B', DATE '2026-04-06', 900, 1, 900, 'Air', DATE '2026-04-07', DATE '2026-04-09', 'Credit Card', 'Online', 0, 0, false),
(1021, 104, 'A', DATE '2026-04-10', 1200, 1, 1200, 'Air', DATE '2026-04-11', DATE '2026-04-13', 'Cash', 'Store', 0, 0, false),
(1022, 101, 'B', DATE '2026-04-10', 900, 1, 900, 'Ground', DATE '2026-04-11', DATE '2026-04-14', 'Credit Card', 'Online', 0, 0, false),
(1023, 101, 'A', DATE '2026-04-11', 1200, 1, 1200, 'Air', DATE '2026-04-12', DATE '2026-04-14', 'Credit Card', 'Online', 0, 0, false),
(1024, 101, 'A', DATE '2026-04-12', 1200, 1, 1200, 'Air', DATE '2026-04-13', DATE '2026-04-15', 'Credit Card', 'Online', 0, 0, false),
(1025, 101, 'A', DATE '2026-04-13', 1200, 1, 1200, 'Air', DATE '2026-04-14', NULL, 'Credit Card', 'Online', 0, 0, false),
(1026, 106, 'C', DATE '2026-04-14', 700, 1, 700, 'Ground', NULL, NULL, 'Debit Card', 'Store', 0, 0, false);
```

### projects
**Note:** Supports 11 extracted cases that reference `projects`, including examples such as: Write a query to find the difference in days between two dates in the same table.; Find employees who have managed more than 3 projects.; Find employees who have worked on all projects..

```sql
CREATE OR REPLACE TABLE projects (
    project_id INT,
    department_id INT,
    manager_id INT,
    start_date DATE,
    end_date DATE,
    completion_date DATE,
    status STRING,
    budget BIGINT
);

INSERT INTO projects VALUES
(201, 20, 4, DATE '2023-01-01', DATE '2023-12-31', DATE '2023-12-31', 'Completed', 1500000),
(202, 20, 4, DATE '2024-01-15', DATE '2024-10-30', DATE '2024-10-30', 'Completed', 800000),
(203, 30, 3, DATE '2025-01-01', DATE '2025-11-30', DATE '2025-11-30', 'Completed', 500000),
(204, 40, 8, DATE '2025-03-01', DATE '2025-12-31', DATE '2025-12-31', 'Completed', 2200000),
(205, 40, 8, DATE '2026-01-10', DATE '2026-09-30', NULL, 'Active', 900000),
(206, 60, 18, DATE '2025-06-01', DATE '2026-06-01', NULL, 'Active', 300000),
(207, 70, 20, DATE '2025-02-01', DATE '2025-08-15', DATE '2025-08-15', 'Completed', 1200000),
(208, 80, 20, DATE '2025-04-01', DATE '2027-04-01', NULL, 'Active', 2500000),
(209, 20, 4, DATE '2025-07-01', DATE '2026-01-31', NULL, 'Active', 400000),
(210, 20, 4, DATE '2026-02-01', DATE '2026-12-31', NULL, 'Active', 600000);
```

### project_assignments
**Note:** Supports 16 extracted cases that reference `project_assignments`, including examples such as: Identify employees who had overlapping project assignments.; Find employees who have not been assigned to any project.; Find employees who have worked on all projects..

```sql
CREATE OR REPLACE TABLE project_assignments (
    employee_id INT,
    project_id INT,
    assignment_date DATE,
    start_date DATE,
    end_date DATE,
    assignment_start_date DATE,
    assignment_end_date DATE,
    hours_worked INT
);

INSERT INTO project_assignments VALUES
(5, 201, DATE '2023-01-01', DATE '2023-01-01', DATE '2023-06-30', DATE '2023-01-01', DATE '2023-06-30', 120),
(5, 202, DATE '2024-01-15', DATE '2024-01-15', DATE '2024-10-30', DATE '2024-01-15', DATE '2024-10-30', 200),
(5, 203, DATE '2025-01-01', DATE '2025-01-01', DATE '2025-05-31', DATE '2025-01-01', DATE '2025-05-31', 150),
(5, 204, DATE '2025-06-01', DATE '2025-06-01', DATE '2025-12-31', DATE '2025-06-01', DATE '2025-12-31', 180),
(5, 205, DATE '2026-01-10', DATE '2026-01-10', DATE '2026-03-31', DATE '2026-01-10', DATE '2026-03-31', 90),
(5, 206, DATE '2026-02-01', DATE '2026-02-01', DATE '2026-06-01', DATE '2026-02-01', DATE '2026-06-01', 130),
(6, 201, DATE '2023-02-01', DATE '2023-02-01', DATE '2023-12-31', DATE '2023-02-01', DATE '2023-12-31', 100),
(6, 203, DATE '2025-02-01', DATE '2025-02-01', DATE '2025-11-30', DATE '2025-02-01', DATE '2025-11-30', 110),
(6, 205, DATE '2026-01-10', DATE '2026-01-10', DATE '2026-09-30', DATE '2026-01-10', DATE '2026-09-30', 95),
(7, 202, DATE '2024-03-01', DATE '2024-03-01', DATE '2024-10-30', DATE '2024-03-01', DATE '2024-10-30', 90),
(7, 204, DATE '2025-03-01', DATE '2025-03-01', DATE '2025-12-31', DATE '2025-03-01', DATE '2025-12-31', 115),
(8, 204, DATE '2025-03-01', DATE '2025-03-01', DATE '2025-12-31', DATE '2025-03-01', DATE '2025-12-31', 80),
(9, 204, DATE '2025-03-15', DATE '2025-03-15', DATE '2025-10-31', DATE '2025-03-15', DATE '2025-10-31', 85),
(9, 205, DATE '2026-01-15', DATE '2026-01-15', DATE '2026-09-30', DATE '2026-01-15', DATE '2026-09-30', 70),
(10, 205, DATE '2026-01-20', DATE '2026-01-20', DATE '2026-09-30', DATE '2026-01-20', DATE '2026-09-30', 60),
(13, 203, DATE '2025-01-10', DATE '2025-01-10', DATE '2025-11-30', DATE '2025-01-10', DATE '2025-11-30', 140),
(14, 203, DATE '2025-01-10', DATE '2025-01-10', DATE '2025-11-30', DATE '2025-01-10', DATE '2025-11-30', 130),
(18, 206, DATE '2025-06-01', DATE '2025-06-01', DATE '2026-06-01', DATE '2025-06-01', DATE '2026-06-01', 150),
(20, 207, DATE '2025-02-01', DATE '2025-02-01', DATE '2025-08-15', DATE '2025-02-01', DATE '2025-08-15', 160),
(21, 208, DATE '2025-04-01', DATE '2025-04-01', DATE '2027-04-01', DATE '2025-04-01', DATE '2027-04-01', 220),
(5, 209, DATE '2025-07-01', DATE '2025-07-01', DATE '2026-01-31', DATE '2025-07-01', DATE '2026-01-31', 100),
(6, 210, DATE '2026-02-01', DATE '2026-02-01', DATE '2026-12-31', DATE '2026-02-01', DATE '2026-12-31', 105),
(5, 210, DATE '2026-02-01', DATE '2026-02-01', DATE '2026-12-31', DATE '2026-02-01', DATE '2026-12-31', 110);
```

### promotions
**Note:** Supports 9 extracted cases that reference `promotions`, including examples such as: Write a query to find the employee(s) who have never received a promotion.; Find employees who have been promoted more than twice.; Find employees who have been promoted more than once..

```sql
CREATE OR REPLACE TABLE promotions (
    promotion_id INT,
    employee_id INT,
    promotion_date DATE,
    old_salary INT
);

INSERT INTO promotions VALUES
(1, 5, DATE '2024-01-01', 110000),
(2, 5, DATE '2025-01-01', 118000),
(3, 5, DATE '2026-01-01', 123000),
(4, 6, DATE '2025-06-01', 85000),
(5, 9, DATE '2025-12-01', 80000),
(6, 13, DATE '2024-07-01', 90000),
(7, 13, DATE '2025-07-01', 93000);
```

### promotion_history
**Note:** Supports 1 extracted cases that reference `promotion_history`, including examples such as: Find employees who have been promoted but their salary didn’t increase..

```sql
CREATE OR REPLACE TABLE promotion_history (
    employee_id INT,
    promotion_date DATE,
    salary_before INT
);

INSERT INTO promotion_history VALUES
(5, DATE '2026-01-01', 123000),
(6, DATE '2025-06-01', 85000),
(9, DATE '2025-12-01', 80000),
(13, DATE '2025-07-01', 93000);
```

### salary_history
**Note:** Supports 3 extracted cases that reference `salary_history`, including examples such as: Identify employees who haven’t received a salary raise in more than a year.; Find employees with no salary changes in the last 2 years.; Find employees with no corresponding entries in the salary_history table..

```sql
CREATE OR REPLACE TABLE salary_history (
    employee_id INT,
    raise_date DATE,
    change_date DATE
);

INSERT INTO salary_history VALUES
(5, DATE '2024-01-01', DATE '2024-01-01'),
(5, DATE '2025-01-01', DATE '2025-01-01'),
(5, DATE '2026-01-01', DATE '2026-01-01'),
(6, DATE '2025-06-01', DATE '2025-06-01'),
(9, DATE '2025-12-01', DATE '2025-12-01'),
(13, DATE '2024-07-01', DATE '2024-07-01'),
(13, DATE '2025-07-01', DATE '2025-07-01');
```

### salaries
**Note:** Supports 2 extracted cases that reference `salaries`, including examples such as: Find the top 3 employees with the highest salary increase over last year.; Find employees whose salaries increased every year..

```sql
CREATE OR REPLACE TABLE salaries (
    employee_id INT,
    year INT,
    salary INT
);

INSERT INTO salaries VALUES
(5, 2024, 115000),
(5, 2025, 123000),
(5, 2026, 125000),
(6, 2024, 80000),
(6, 2025, 85000),
(6, 2026, 90000),
(9, 2024, 78000),
(9, 2025, 80000),
(9, 2026, 85000),
(13, 2024, 90000),
(13, 2025, 93000),
(13, 2026, 95000),
(17, 2024, 100000),
(17, 2025, 105000),
(17, 2026, 110000);
```

### employee_department_history
**Note:** Supports 5 extracted cases that reference `employee_department_history`, including examples such as: Find employees who have worked for multiple departments over time.; Find employees who have worked in more than 3 different departments.; Find the number of employees who have worked in more than one department..

```sql
CREATE OR REPLACE TABLE employee_department_history (
    employee_id INT,
    department_id INT,
    change_date DATE
);

INSERT INTO employee_department_history VALUES
(5, 20, DATE '2023-01-01'),
(5, 30, DATE '2024-06-01'),
(5, 20, DATE '2025-02-01'),
(6, 20, DATE '2015-01-12'),
(9, 40, DATE '2024-10-01'),
(13, 30, DATE '2023-01-15'),
(13, 70, DATE '2025-03-01'),
(13, 30, DATE '2025-10-01'),
(20, 70, DATE '2025-03-03'),
(21, 80, DATE '2024-12-15');
```

### bonuses
**Note:** Supports 1 extracted cases that reference `bonuses`, including examples such as: Find employees who have never received a bonus..

```sql
CREATE OR REPLACE TABLE bonuses (
    bonus_id INT,
    employee_id INT,
    bonus_date DATE,
    bonus_amount DECIMAL(10,2)
);

INSERT INTO bonuses VALUES
(1, 5, DATE '2025-12-31', 5000),
(2, 9, DATE '2025-12-31', 2000);
```

### dependents
**Note:** Supports 2 extracted cases that reference `dependents`, including examples such as: Find employees with the highest number of dependents.; Find employees who do not have dependents..

```sql
CREATE OR REPLACE TABLE dependents (
    dependent_id INT,
    employee_id INT
);

INSERT INTO dependents VALUES
(1, 5),
(2, 5),
(3, 5),
(4, 9),
(5, 13);
```

### leaves
**Note:** Supports 2 extracted cases that reference `leaves`, including examples such as: Find employees who have never taken any leave.; Find employees who have not taken any leave in the last 6 months..

```sql
CREATE OR REPLACE TABLE leaves (
    leave_id INT,
    employee_id INT,
    leave_date DATE
);

INSERT INTO leaves VALUES
(1, 5, DATE '2025-11-10'),
(2, 9, DATE '2026-03-15'),
(3, 13, DATE '2025-08-20');
```

### bookings
**Note:** Supports 1 extracted cases that reference `bookings`, including examples such as: Identify overlapping date ranges for bookings..

```sql
CREATE OR REPLACE TABLE bookings (
    booking_id INT,
    start_date DATE,
    end_date DATE
);

INSERT INTO bookings VALUES
(1, DATE '2026-04-01', DATE '2026-04-05'),
(2, DATE '2026-04-04', DATE '2026-04-08'),
(3, DATE '2026-04-10', DATE '2026-04-12'),
(4, DATE '2026-04-20', DATE '2026-04-22');
```

### user_logins
**Note:** Supports 2 extracted cases that reference `user_logins`, including examples such as: Find the longest consecutive streak of daily logins for each user.; Find the first and last login date for each user..

```sql
CREATE OR REPLACE TABLE user_logins (
    user_id INT,
    login_date DATE
);

INSERT INTO user_logins VALUES
(101, DATE '2026-04-01'),
(101, DATE '2026-04-02'),
(101, DATE '2026-04-03'),
(101, DATE '2026-04-05'),
(102, DATE '2026-04-01'),
(102, DATE '2026-04-02'),
(102, DATE '2026-04-03'),
(102, DATE '2026-04-04'),
(102, DATE '2026-04-05'),
(103, DATE '2026-04-10'),
(103, DATE '2026-04-12');
```

### attendance
**Note:** Supports 5 extracted cases that reference `attendance`, including examples such as: Write a query to identify “gaps and islands” in attendance records (consecutive dates present).; Find employees with consecutive workdays.; Find employees with the longest consecutive workdays..

```sql
CREATE OR REPLACE TABLE attendance (
    employee_id INT,
    attendance_date DATE,
    work_date DATE,
    arrival_time STRING,
    scheduled_start_time STRING
);

INSERT INTO attendance VALUES
(5, DATE '2026-04-01', DATE '2026-04-01', '09:05:00', '09:00:00'),
(5, DATE '2026-04-02', DATE '2026-04-02', '08:55:00', '09:00:00'),
(5, DATE '2026-04-03', DATE '2026-04-03', '09:10:00', '09:00:00'),
(5, DATE '2026-04-04', DATE '2026-04-04', '08:50:00', '09:00:00'),
(6, DATE '2026-04-01', DATE '2026-04-01', '08:45:00', '09:00:00'),
(6, DATE '2026-04-02', DATE '2026-04-02', '08:46:00', '09:00:00'),
(6, DATE '2026-04-03', DATE '2026-04-03', '08:47:00', '09:00:00'),
(7, DATE '2026-04-01', DATE '2026-04-01', '09:15:00', '09:00:00'),
(7, DATE '2026-04-03', DATE '2026-04-03', '09:20:00', '09:00:00'),
(9, DATE '2026-04-01', DATE '2026-04-01', '08:59:00', '09:00:00'),
(9, DATE '2026-04-02', DATE '2026-04-02', '09:30:00', '09:00:00'),
(9, DATE '2026-04-03', DATE '2026-04-03', '09:35:00', '09:00:00'),
(13, DATE '2026-04-01', DATE '2026-04-01', '08:50:00', '09:00:00'),
(13, DATE '2026-04-02', DATE '2026-04-02', '08:50:00', '09:00:00');
```

### work_logs
**Note:** Supports 2 extracted cases that reference `work_logs`, including examples such as: Find employees who have worked more than 40 hours in a week.; Get total working hours per employee per week..

```sql
CREATE OR REPLACE TABLE work_logs (
    employee_id INT,
    work_date DATE,
    hours_worked INT
);

INSERT INTO work_logs VALUES
(5, DATE '2026-04-07', 9),
(5, DATE '2026-04-08', 9),
(5, DATE '2026-04-09', 9),
(5, DATE '2026-04-10', 9),
(5, DATE '2026-04-11', 8),
(6, DATE '2026-04-07', 8),
(6, DATE '2026-04-08', 8),
(6, DATE '2026-04-09', 8),
(9, DATE '2026-04-07', 10),
(9, DATE '2026-04-08', 10),
(9, DATE '2026-04-09', 10),
(9, DATE '2026-04-10', 10),
(9, DATE '2026-04-11', 5),
(13, DATE '2026-04-07', 7),
(13, DATE '2026-04-08', 7);
```

### work_log
**Note:** Supports 1 extracted cases that reference `work_log`, including examples such as: Find employees with consecutive workdays..

```sql
CREATE OR REPLACE TABLE work_log (
    employee_id INT,
    work_date DATE,
    hours_worked INT
);

INSERT INTO work_log VALUES
(5, DATE '2026-04-07', 9),
(5, DATE '2026-04-08', 9),
(5, DATE '2026-04-09', 9),
(5, DATE '2026-04-10', 9),
(5, DATE '2026-04-11', 8),
(6, DATE '2026-04-07', 8),
(6, DATE '2026-04-08', 8),
(6, DATE '2026-04-09', 8),
(9, DATE '2026-04-07', 10),
(9, DATE '2026-04-08', 10),
(9, DATE '2026-04-09', 10),
(9, DATE '2026-04-10', 10),
(9, DATE '2026-04-11', 5),
(13, DATE '2026-04-07', 7),
(13, DATE '2026-04-08', 7);
```

### shifts
**Note:** Supports 1 extracted cases that reference `shifts`, including examples such as: Write a query to identify overlapping shifts for employees..

```sql
CREATE OR REPLACE TABLE shifts (
    shift_id INT,
    employee_id INT,
    start_time TIMESTAMP,
    end_time TIMESTAMP
);

INSERT INTO shifts VALUES
(1, 5, TIMESTAMP '2026-04-01 08:00:00', TIMESTAMP '2026-04-01 12:00:00'),
(2, 5, TIMESTAMP '2026-04-01 11:00:00', TIMESTAMP '2026-04-01 15:00:00'),
(3, 6, TIMESTAMP '2026-04-02 09:00:00', TIMESTAMP '2026-04-02 17:00:00'),
(4, 6, TIMESTAMP '2026-04-03 09:00:00', TIMESTAMP '2026-04-03 17:00:00');
```

### invoices
**Note:** Supports 1 extracted cases that reference `invoices`, including examples such as: Write a query to detect gaps in a sequence of invoice numbers..

```sql
CREATE OR REPLACE TABLE invoices (
    invoice_number INT
);

INSERT INTO invoices VALUES
(1001),
(1002),
(1004),
(1005),
(1008);
```

### product_prices
**Note:** Supports 1 extracted cases that reference `product_prices`, including examples such as: Find products that have seen a price increase in the last 6 months..

```sql
CREATE OR REPLACE TABLE product_prices (
    product_id STRING,
    price DECIMAL(10,2),
    effective_date DATE
);

INSERT INTO product_prices VALUES
('A', 1100, DATE '2025-09-01'),
('A', 1200, DATE '2026-02-01'),
('B', 850, DATE '2025-10-01'),
('B', 900, DATE '2026-01-15'),
('X', 180, DATE '2025-11-01'),
('X', 200, DATE '2026-03-01');
```

### product_reviews
**Note:** Supports 3 extracted cases that reference `product_reviews`, including examples such as: Find the product with the highest average rating.; Find products with the lowest average rating per category.; Find products that have been ordered but never reviewed..

```sql
CREATE OR REPLACE TABLE product_reviews (
    review_id INT,
    product_id STRING,
    category_id INT,
    rating DECIMAL(3,2)
);

INSERT INTO product_reviews VALUES
(1, 'A', 1, 4.8),
(2, 'A', 1, 4.6),
(3, 'B', 1, 4.4),
(4, 'C', 1, 4.9),
(5, 'D', 2, 4.2),
(6, 'E', 2, 4.1),
(7, 'F', 3, 3.8),
(8, 'X', 1, 4.0);
```

### support_tickets
**Note:** Supports 1 extracted cases that reference `support_tickets`, including examples such as: Calculate the average time to close tickets per support agent..

```sql
CREATE OR REPLACE TABLE support_tickets (
    ticket_id INT,
    support_agent_id INT,
    opened_date DATE,
    closed_date DATE
);

INSERT INTO support_tickets VALUES
(1, 19, DATE '2026-03-01', DATE '2026-03-03'),
(2, 19, DATE '2026-03-05', DATE '2026-03-06'),
(3, 19, DATE '2026-03-10', DATE '2026-03-15'),
(4, 18, DATE '2026-03-02', DATE '2026-03-08');
```

### timesheets
**Note:** Supports 1 extracted cases that reference `timesheets`, including examples such as: Find employees who have not submitted their timesheets in the last month..

```sql
CREATE OR REPLACE TABLE timesheets (
    timesheet_id INT,
    employee_id INT,
    timesheet_date DATE
);

INSERT INTO timesheets VALUES
(1, 5, DATE '2026-04-10'),
(2, 6, DATE '2026-04-12'),
(3, 9, DATE '2026-04-13'),
(4, 13, DATE '2026-02-15');
```

### holidays
**Note:** Supports 1 extracted cases that reference `holidays`, including examples such as: Find products with sales only during holiday seasons..

```sql
CREATE OR REPLACE TABLE holidays (
    holiday_date DATE,
    holiday_name STRING
);

INSERT INTO holidays VALUES
(DATE '2025-12-25', 'Christmas'),
(DATE '2026-01-01', 'New Year'),
(DATE '2026-04-01', 'Spring Festival');
```

### returns
**Note:** Supports 2 extracted cases that reference `returns`, including examples such as: Find products that have never been returned.; Find customers who made orders but never returned a product..

```sql
CREATE OR REPLACE TABLE returns (
    return_id INT,
    order_id INT,
    product_id STRING,
    return_date DATE
);

INSERT INTO returns VALUES
(1, 1004, 'X', DATE '2025-10-20'),
(2, 1014, 'X', DATE '2026-04-10');
```

### shipments
**Note:** Supports 2 extracted cases that reference `shipments`, including examples such as: Find customers with orders but no shipments.; Find the average delivery time by shipping method..

```sql
CREATE OR REPLACE TABLE shipments (
    shipment_id INT,
    order_id INT,
    order_date DATE,
    shipping_method STRING,
    shipping_date DATE,
    delivery_date DATE
);

INSERT INTO shipments VALUES
(1, 1001, DATE '2025-01-05', 'Air', DATE '2025-01-06', DATE '2025-01-09'),
(2, 1002, DATE '2025-01-20', 'Ground', DATE '2025-01-21', DATE '2025-01-25'),
(3, 1003, DATE '2025-02-10', 'Air', DATE '2025-02-11', DATE '2025-02-13'),
(4, 1004, DATE '2025-10-10', 'Ground', DATE '2025-10-11', DATE '2025-10-14'),
(5, 1005, DATE '2025-11-01', 'Ground', DATE '2025-11-02', DATE '2025-11-04'),
(6, 1006, DATE '2025-12-15', 'Air', DATE '2025-12-16', DATE '2025-12-18'),
(7, 1007, DATE '2026-01-02', 'Ground', DATE '2026-01-03', DATE '2026-01-05'),
(8, 1008, DATE '2026-01-25', 'Ground', DATE '2026-01-26', DATE '2026-01-30'),
(9, 1009, DATE '2026-02-05', 'Air', DATE '2026-02-06', DATE '2026-02-08'),
(10, 1010, DATE '2026-02-06', 'Air', DATE '2026-02-07', DATE '2026-02-09'),
(11, 1011, DATE '2026-02-20', 'Ground', DATE '2026-02-21', DATE '2026-02-24'),
(12, 1012, DATE '2026-03-25', 'Freight', DATE '2026-03-26', DATE '2026-03-30'),
(13, 1013, DATE '2026-03-26', 'Air', DATE '2026-03-27', DATE '2026-03-29'),
(14, 1014, DATE '2026-04-01', 'Ground', DATE '2026-04-02', DATE '2026-04-05'),
(15, 1015, DATE '2026-04-02', 'Ground', DATE '2026-04-03', DATE '2026-04-06');
```

### suppliers
**Note:** Supports 1 extracted cases that reference `suppliers`, including examples such as: Identify suppliers who delivered to all regions..

```sql
CREATE OR REPLACE TABLE suppliers (
    supplier_id INT,
    supplier_name STRING,
    region STRING
);

INSERT INTO suppliers VALUES
(1, 'SupplyOne', 'North'),
(2, 'GlobalGoods', 'South'),
(3, 'EastSource', 'East'),
(4, 'WestBridge', 'West');
```

### deliveries
**Note:** Supports 1 extracted cases that reference `deliveries`, including examples such as: Identify suppliers who delivered to all regions..

```sql
CREATE OR REPLACE TABLE deliveries (
    delivery_id INT,
    supplier_id INT,
    delivery_region STRING
);

INSERT INTO deliveries VALUES
(1, 1, 'North'),
(2, 1, 'South'),
(3, 1, 'East'),
(4, 1, 'West'),
(5, 2, 'North'),
(6, 2, 'South'),
(7, 3, 'East'),
(8, 4, 'West');
```

### sales_deals
**Note:** Supports 1 extracted cases that reference `sales_deals`, including examples such as: Find the top 3 sales reps by number of deals closed this quarter..

```sql
CREATE OR REPLACE TABLE sales_deals (
    deal_id INT,
    sales_rep_id INT,
    deal_close_date DATE
);

INSERT INTO sales_deals VALUES
(1, 9, DATE '2026-04-02'),
(2, 9, DATE '2026-04-05'),
(3, 9, DATE '2026-04-07'),
(4, 10, DATE '2026-04-03'),
(5, 10, DATE '2026-04-08');
```

### weather_data
**Note:** Supports 1 extracted cases that reference `weather_data`, including examples such as: Find the day with the largest difference between maximum and minimum temperature..

```sql
CREATE OR REPLACE TABLE weather_data (
    weather_date DATE,
    temperature INT
);

INSERT INTO weather_data VALUES
(DATE '2026-04-01', 15),
(DATE '2026-04-01', 24),
(DATE '2026-04-02', 12),
(DATE '2026-04-02', 28),
(DATE '2026-04-03', 18),
(DATE '2026-04-03', 26);
```

### job_openings
**Note:** Supports 1 extracted cases that reference `job_openings`, including examples such as: List departments with no open positions..

```sql
CREATE OR REPLACE TABLE job_openings (
    job_id INT,
    department_id INT,
    status STRING
);

INSERT INTO job_openings VALUES
(1, 20, 'Open'),
(2, 20, 'Closed'),
(3, 40, 'Open'),
(4, 60, 'Closed');
```

### order_items
**Note:** Supports 4 extracted cases that reference `order_items`, including examples such as: Find orders where the total quantity exceeds 100 units.; Find the most common product combinations in orders (pairs).; Find customers with orders where no product quantity is less than 5..

```sql
CREATE OR REPLACE TABLE order_items (
    order_id INT,
    product_id STRING,
    quantity INT
);

INSERT INTO order_items VALUES
(1006, 'A', 60),
(1006, 'B', 50),
(1012, 'H', 4),
(1013, 'A', 1),
(1013, 'D', 5),
(1014, 'X', 1),
(1015, 'B', 1),
(1015, 'D', 10),
(1019, 'A', 1),
(1019, 'B', 1),
(1020, 'B', 1),
(1021, 'A', 80),
(1021, 'C', 30),
(1022, 'B', 5),
(1023, 'A', 6),
(1024, 'A', 7),
(1025, 'A', 8);
```

### table1
**Note:** Supports 1 extracted cases that reference `table1`, including examples such as: Compare two tables and find rows with differences in any column (all columns)..

```sql
CREATE OR REPLACE TABLE table1 (
    id INT,
    col1 STRING,
    col2 INT,
    col3 STRING
);

INSERT INTO table1 VALUES
(1, 'x', 10, 'same'),
(2, 'y', 20, 'left_only'),
(3, 'z', 30, 'diff');
```

### table2
**Note:** Supports 1 extracted cases that reference `table2`, including examples such as: Compare two tables and find rows with differences in any column (all columns)..

```sql
CREATE OR REPLACE TABLE table2 (
    id INT,
    col1 STRING,
    col2 INT,
    col3 STRING
);

INSERT INTO table2 VALUES
(1, 'x', 10, 'same'),
(3, 'z', 35, 'diff'),
(4, 'w', 40, 'right_only');
```

### table_name
**Note:** Supports 2 extracted cases that reference `table_name`, including examples such as: Write a query to find duplicate rows based on multiple columns.; Write a query to identify duplicate rows (all columns) in a table..

```sql
CREATE OR REPLACE TABLE table_name (
    column1 STRING,
    column2 STRING,
    col1 STRING,
    col2 STRING,
    col3 STRING
);

INSERT INTO table_name VALUES
('dupA', 'dupB', 'x', 'y', 'z'),
('dupA', 'dupB', 'x', 'y', 'z'),
('dupA', 'other', 'x', 'y', 'w'),
('one', 'two', 'm', 'n', 'o'),
('one', 'two', 'm', 'n', 'o');
```

### sales_data
**Note:** Supports 1 extracted cases that reference `sales_data`, including examples such as: Write a query to unpivot quarterly sales data into rows..

```sql
CREATE OR REPLACE TABLE sales_data (
    product_id STRING,
    Q1_sales INT,
    Q2_sales INT,
    Q3_sales INT,
    Q4_sales INT
);

INSERT INTO sales_data VALUES
('A', 5000, 5200, 5400, 5600),
('B', 4000, 3900, 4100, 4200),
('C', 3000, 3200, 3100, 3300);
```


## E. Mapping Section

| Case Number | Case Title | Main Table(s) Used | Practice Table Available? (Yes/No) |
|---:|---|---|---|
| 1 | [PDF 1] Find the second highest salary from the Employee table. | employees | Yes |
| 2 | [PDF 2] Find duplicate records in a table. | employees | Yes |
| 3 | [PDF 3] Retrieve employees who earn more than their manager. | employees | Yes |
| 4 | [PDF 4] Count employees in each department having more than 5 employees. | employees | Yes |
| 5 | [PDF 5] Find employees who joined in the last 6 months. | employees | Yes |
| 6 | [PDF 6] Get departments with no employees. | departments, employees | Yes |
| 7 | [PDF 7] Write a query to find the median salary. | employees | Yes |
| 8 | [PDF 8] Running total of salaries by department. | employees | Yes |
| 9 | [PDF 9] Find the longest consecutive streak of daily logins for each user. | user_logins | Yes |
| 10 | [PDF 10] Recursive query to find the full reporting chain for each employee. | employees | Yes |
| 11 | [PDF 11] Write a query to find gaps in a sequence of numbers (missing IDs). | employees | Yes |
| 12 | [PDF 12] Calculate cumulative distribution (CDF) of salaries. | employees | Yes |
| 13 | [PDF 13] Compare two tables and find rows with differences in any column (all columns). | table1, table2 | Yes |
| 14 | [PDF 14] Write a query to rank employees based on salary with ties handled properly. | employees | Yes |
| 15 | [PDF 15] Find customers who have not made any purchase. | customers, sales | Yes |
| 16 | [PDF 16] Write a query to perform a conditional aggregation (count males and females in each department). | employees | Yes |
| 17 | [PDF 17] Write a query to calculate the difference between current row and previous row's salary (lag function). | employees | Yes |
| 18 | [PDF 18] Identify overlapping date ranges for bookings. | bookings | Yes |
| 19 | [PDF 19] Write a query to find employees with salary greater than average salary in the entire company, ordered by salary descending. | employees | Yes |
| 20 | [PDF 20] Aggregate JSON data (if supported) to list all employee names in a department as a JSON array. | employees | Yes |
| 21 | [PDF 21a] Find employees who have the same salary as their manager. | employees | Yes |
| 22 | [PDF 22a] Write a query to get the first and last purchase date for each customer. | sales | Yes |
| 23 | [PDF 23a] Find departments with the highest average salary. | employees | Yes |
| 24 | [PDF 24a] Write a query to find the number of employees in each job title. | employees | Yes |
| 25 | [PDF 25a] Find employees who don’t have a department assigned. | employees | Yes |
| 26 | [PDF 21b] Write a query to find the difference in days between two dates in the same table. | projects | Yes |
| 27 | [PDF 22b] Calculate the moving average of salaries over the last 3 employees ordered by hire date. | employees | Yes |
| 28 | [PDF 23b] Find the most recent purchase per customer using window functions. | sales | Yes |
| 29 | [PDF 24b] Detect hierarchical depth of each employee in the org chart. | employees | Yes |
| 30 | [PDF 25b] Write a query to perform a self-join to find pairs of employees in the same department. | employees | Yes |
| 31 | [PDF 26] Write a query to pivot rows into columns dynamically (if dynamic pivot is not supported, simulate it for fixed values). | employees | Yes |
| 32 | [PDF 27] Find customers who made purchases in every category available. | sales | Yes |
| 33 | [PDF 28] Identify employees who haven’t received a salary raise in more than a year. | employees, salary_history | Yes |
| 34 | [PDF 29] Write a query to rank salespeople by monthly sales, resetting the rank every month. | sales | Yes |
| 35 | [PDF 30] Calculate the percentage change in sales compared to the previous month for each product. | sales | Yes |
| 36 | [PDF 31a] Find employees who earn more than the average salary across the company but less than the highest salary in their department. | employees | Yes |
| 37 | [PDF 32a] Retrieve the last 5 orders for each customer. | orders | Yes |
| 38 | [PDF 33a] Find employees with no salary changes in the last 2 years. | employees, salary_history | Yes |
| 39 | [PDF 34a] Find the department with the lowest average salary. | employees | Yes |
| 40 | [PDF 35a] List employees whose names start and end with the same letter. | employees | Yes |
| 41 | [PDF 31b] Write a query to detect circular references in employee-manager hierarchy (cycles). | employees | Yes |
| 42 | [PDF 32b] Write a query to get the running total of sales per customer, ordered by sale date. | sales | Yes |
| 43 | [PDF 33b] Find the department-wise salary percentile (e.g., 90th percentile) using window functions. | employees | Yes |
| 44 | [PDF 34b] Find employees whose salary is a prime number. | employees | Yes |
| 45 | [PDF 35b] Find employees who have worked for multiple departments over time. | employee_department_history | Yes |
| 46 | [PDF 36] Use window function to find the difference between current row’s sales and previous row’s sales partitioned by product. | sales | Yes |
| 47 | [PDF 37] Write a query to find all employees who are at the lowest level in the hierarchy (no subordinates). | employees | Yes |
| 48 | [PDF 38] Find average order value per month and product category. | orders | Yes |
| 49 | [PDF 39] Write a query to create a running count of how many employees joined in each year. | employees | Yes |
| 50 | [PDF 40] Write a query to find the second most recent order date per customer. | orders | Yes |
| 51 | [PDF 41a] Find employees who have never made a sale. | employees, sales | Yes |
| 52 | [PDF 42a] Find the average tenure of employees by department. | employees | Yes |
| 53 | [PDF 43a] Get employees with salary in the top 10% in their department. | employees | Yes |
| 54 | [PDF 44a] Find customers who purchased more than once in the same day. | sales | Yes |
| 55 | [PDF 45a] List all departments and their employee counts, including departments with zero employees. | departments, employees | Yes |
| 56 | [PDF 41b] Write a query to find duplicate rows based on multiple columns. | table_name | Yes |
| 57 | [PDF 42b] Write a recursive query to calculate factorial of a number (e.g., 5). | (none) | Yes |
| 58 | [PDF 43b] Write a query to calculate the cumulative percentage of total sales per product. | sales | Yes |
| 59 | [PDF 44b] Write a query to get employees who reported directly or indirectly to a given manager (hierarchy traversal). | employees | Yes |
| 60 | [PDF 45b] Find the average number of orders per customer and standard deviation. | orders | Yes |
| 61 | [PDF 46] Find gaps in date sequences for each customer (missing days). | sales | Yes |
| 62 | [PDF 47] Rank employees by salary within their department, and calculate percent rank. | employees | Yes |
| 63 | [PDF 48] Find products that have never been sold. | products, sales | Yes |
| 64 | [PDF 49] Write a query to find consecutive days where sales were above a threshold. | sales | Yes |
| 65 | [PDF 50] Write a query to concatenate employee names in each department (string aggregation). | employees | Yes |
| 66 | [PDF 51a] Find employees whose salary is above the average salary of their department but below the company-wide average. | employees | Yes |
| 67 | [PDF 52a] List the customers who purchased all products in a specific category. | sales, products | Yes |
| 68 | [PDF 53a] Retrieve the Nth highest salary from the employees table. | employees | Yes |
| 69 | [PDF 54a] Find employees with no corresponding entries in the salary_history table. | employees, salary_history | Yes |
| 70 | [PDF 55a] Show the department with the highest number of employees and the count. | employees | Yes |
| 71 | [PDF 51b] Write a recursive query to list all ancestors (managers) of a given employee. | employees | Yes |
| 72 | [PDF 52b] Calculate the median salary by department using window functions. | employees | Yes |
| 73 | [PDF 53b] Write a query to find the first purchase date and last purchase date for each customer, including customers who never purchased anything. | customers, sales | Yes |
| 74 | [PDF 54b] Find the percentage difference between each month’s total sales and the previous month’s total sales. | sales | Yes |
| 75 | [PDF 55b] Write a query to find employees who have the longest tenure within their department. | employees | Yes |
| 76 | [PDF 56] Generate a report that shows sales and sales growth percentage compared to the same month last year. | sales | Yes |
| 77 | [PDF 57] Write a query to identify overlapping shifts for employees. | shifts | Yes |
| 78 | [PDF 58] Calculate the total revenue for each customer, and rank them from highest to lowest spender. | sales | Yes |
| 79 | [PDF 59] Write a query to find the employee(s) who have never received a promotion. | employees, promotions | Yes |
| 80 | [PDF 60] Write a query to find the top 3 products with the highest total sales amount each month. | sales | Yes |
| 81 | [PDF 61a] Find the customers who placed orders only in the last 30 days. | orders | Yes |
| 82 | [PDF 62a] Find products that have never been ordered. | products, orders | Yes |
| 83 | [PDF 63a] Find employees whose salary is above their department’s average but below the overall average salary. | employees | Yes |
| 84 | [PDF 64a] Calculate the total sales amount and number of orders per customer in the last year. | sales | Yes |
| 85 | [PDF 65a] List the top 5 highest-paid employees per department. | employees | Yes |
| 86 | [PDF 61b] Write a query to identify “gaps and islands” in attendance records (consecutive dates present). | attendance | Yes |
| 87 | [PDF 62b] Write a recursive query to list all descendants of a manager in an organizational hierarchy. | employees | Yes |
| 88 | [PDF 63b] Calculate a 3-month moving average of monthly sales per product. | sales | Yes |
| 89 | [PDF 64b] Write a query to find employees who have the same hire date as their managers. | employees | Yes |
| 90 | [PDF 65b] Write a query to find products with increasing sales over the last 3 months. | sales | Yes |
| 91 | [PDF 66] Write a query to get the nth highest salary per department. | employees | Yes |
| 92 | [PDF 67] Find employees who have managed more than 3 projects. | projects | Yes |
| 93 | [PDF 68] Write a query to calculate the difference in days between each employee's hire date and their manager’s hire date. | employees | Yes |
| 94 | [PDF 69] Write a query to find the department with the highest average years of experience. | employees | Yes |
| 95 | [PDF 70] Identify employees who had overlapping project assignments. | project_assignments | Yes |
| 96 | [PDF 71a] Find customers who made purchases in every month of the current year. | sales | Yes |
| 97 | [PDF 72a] List employees who earn more than all their subordinates. | employees | Yes |
| 98 | [PDF 73a] Get the product with the highest sales for each category. | sales | Yes |
| 99 | [PDF 74a] Find customers who haven’t ordered in the last 6 months. | customers, orders | Yes |
| 100 | [PDF 75a] Find the maximum salary gap between any two employees within the same department. | employees | Yes |
| 101 | [PDF 71b] Write a recursive query to compute the total budget under each manager (including subordinates). | departments | Yes |
| 102 | [PDF 72b] Write a query to detect gaps in a sequence of invoice numbers. | invoices | Yes |
| 103 | [PDF 73b] Calculate the rank of employees by salary within their department but restart rank numbering every 10 employees. | employees | Yes |
| 104 | [PDF 74b] Find the moving median of daily sales over the last 7 days for each product. | sales | Yes |
| 105 | [PDF 75b] Find customers who purchased both product A and product B. | sales | Yes |
| 106 | [PDF 76] Write a query to generate a calendar table with all dates for the current year. | (none) | Yes |
| 107 | [PDF 77] Find employees who have worked in more than 3 different departments. | employee_department_history | Yes |
| 108 | [PDF 78] Calculate the percentage contribution of each product’s sales to the total sales per month. | sales | Yes |
| 109 | [PDF 79] Write a query to pivot monthly sales data for each product into columns. | sales | Yes |
| 110 | [PDF 80] Find the 3 most recent orders per customer including order details. | orders | Yes |
| 111 | [PDF 81a] Find employees who have never taken any leave. | employees, leaves | Yes |
| 112 | [PDF 82a] List customers who placed orders in January but not in February. | orders | Yes |
| 113 | [PDF 83a] Find products that have seen a price increase in the last 6 months. | product_prices | Yes |
| 114 | [PDF 84a] Find the department(s) with the second highest average salary. | employees | Yes |
| 115 | [PDF 85a] Find employees who joined in the same month and year. | employees | Yes |
| 116 | [PDF 81b] Write a recursive query to find all employees and their level of reporting (distance from CEO). | employees | Yes |
| 117 | [PDF 82b] Find the second highest salary per department without using window functions. | employees | Yes |
| 118 | [PDF 83b] Calculate the percentage change in sales for each product comparing current month to previous month. | sales | Yes |
| 119 | [PDF 84b] Write a query to identify duplicate rows (all columns) in a table. | table_name | Yes |
| 120 | [PDF 85b] Write a query to unpivot quarterly sales data into rows. | sales_data | Yes |
| 121 | [PDF 86] Find employees whose salary is above the average salary of their department but below the company-wide average. | employees | Yes |
| 122 | [PDF 87] Write a query to find customers with the highest purchase amount per year. | sales | Yes |
| 123 | [PDF 88] Write a query to list all employees who have a salary equal to the average salary of their department. | employees | Yes |
| 124 | [PDF 89] Find the first order date for each customer. | orders | Yes |
| 125 | [PDF 90] Find employees who have been promoted more than twice. | promotions | Yes |
| 126 | [PDF 91] Find employees who have not been assigned to any project. | employees, project_assignments | Yes |
| 127 | [PDF 92] Find the total sales per customer including those with zero sales. | customers, sales | Yes |
| 128 | [PDF 93] Find the highest salary by department and the employee(s) who earn it. | employees | Yes |
| 129 | [PDF 94] Find customers with no orders in the last year. | customers, orders | Yes |
| 130 | [PDF 95] Find employees whose salary is within 10% of the highest salary in their department. | employees | Yes |
| 131 | [PDF 96] Find the running total of sales by date. | sales | Yes |
| 132 | [PDF 97] Find employees who earn more than the average salary of the entire company. | employees | Yes |
| 133 | [PDF 98] Get the last 3 orders placed by each customer. | orders | Yes |
| 134 | [PDF 99] Find the difference in days between the earliest and latest orders per customer. | orders | Yes |
| 135 | [PDF 100a] Find employees who have worked on all projects. | project_assignments, projects | Yes |
| 136 | [PDF 101] Find customers who placed orders only in the last 6 months. | orders | Yes |
| 137 | [PDF 102] Get the total number of orders per day, including days with zero orders. | orders | Yes |
| 138 | [PDF 103] Find the department with the most employees. | employees | Yes |
| 139 | [PDF 104] Write a query to find gaps in employee IDs. | employees | Yes |
| 140 | [PDF 105] Find employees who were hired before their managers. | employees | Yes |
| 141 | [PDF 106] List departments with average salary greater than the overall average. | employees | Yes |
| 142 | [PDF 107] Find employees with the highest number of dependents. | dependents | Yes |
| 143 | [PDF 108] Find customers with the longest gap between two consecutive orders. | orders | Yes |
| 144 | [PDF 109] Find customers who ordered all products in a category. | sales, products | Yes |
| 145 | [PDF 110] Get the most recent order date per customer. | orders | Yes |
| 146 | [PDF 111] List all employees and their manager names. | employees | Yes |
| 147 | [PDF 112] Find employees with the same salary as their manager. | employees | Yes |
| 148 | [PDF 113] List products with sales above the average sales amount. | sales | Yes |
| 149 | [PDF 114] Get the number of employees hired each year. | employees | Yes |
| 150 | [PDF 115] Find the number of employees with the same job title per department. | employees | Yes |
| 151 | [PDF 116] Find employees with no manager assigned. | employees | Yes |
| 152 | [PDF 117] Calculate average salary by department and job title. | employees | Yes |
| 153 | [PDF 118] Find the median salary of employees. | employees | Yes |
| 154 | [PDF 119] Find employees who have been promoted more than once. | promotions | Yes |
| 155 | [PDF 120] Calculate total sales by product category. | sales, products | Yes |
| 156 | [PDF 121] Find the top 3 products by sales amount. | sales | Yes |
| 157 | [PDF 122] Get employees who joined after their department was created. | employees, departments | Yes |
| 158 | [PDF 123] Find customers with no sales records. | customers, sales | Yes |
| 159 | [PDF 124] Find the second highest salary in the company. | employees | Yes |
| 160 | [PDF 125] Find products with sales only in the current month. | sales | Yes |
| 161 | [PDF 126] Find employees with consecutive workdays. | work_log, attendance | Yes |
| 162 | [PDF 127] Find the average number of orders per customer. | orders | Yes |
| 163 | [PDF 128] Find employees who have worked on more than 5 projects. | project_assignments | Yes |
| 164 | [PDF 129] Find the total number of products sold each day. | sales | Yes |
| 165 | [PDF 130] Find customers with orders totaling more than $10,000. | sales | Yes |
| 166 | [PDF 131] Find employees who have never received a bonus. | employees, bonuses | Yes |
| 167 | [PDF 132] Find the department with the lowest average salary. | employees | Yes |
| 168 | [PDF 133] Get cumulative count of orders per customer over time. | orders | Yes |
| 169 | [PDF 134] Find customers who ordered products only from one category. | sales, products | Yes |
| 170 | [PDF 135] Write a query to display employee names alongside their manager names, including those without managers. | employees | Yes |
| 171 | [PDF 136] Find products with sales increasing every month for the last 3 months. | sales | Yes |
| 172 | [PDF 137] Write a recursive query to get all descendants of a manager. | employees | Yes |
| 173 | [PDF 138] Find the department with the highest variance in salaries. | employees | Yes |
| 174 | [PDF 139] Calculate the difference between each order amount and the previous order amount per customer. | orders | Yes |
| 175 | [PDF 140] Find customers who purchased both Product A and Product B. | sales | Yes |
| 176 | [PDF 141] Find the top N customers by total sales amount. | sales | Yes |
| 177 | [PDF 142] Find the month with the highest sales in the current year. | sales | Yes |
| 178 | [PDF 143] Write a query to display all employees who have worked on a project longer than 6 months. | project_assignments | Yes |
| 179 | [PDF 144] Find the nth highest salary in a company (e.g., 5th highest). | employees | Yes |
| 180 | [PDF 145] Get the average salary of employees hired each year. | employees | Yes |
| 181 | [PDF 146] Find employees whose salaries are between the 25th and 75th percentile. | employees | Yes |
| 182 | [PDF 147] Find employees with salaries higher than their department average. | employees | Yes |
| 183 | [PDF 148] Find the difference between each row's value and the previous row’s value in sales. | sales | Yes |
| 184 | [PDF 149] List employees who have been in the company for more than 10 years. | employees | Yes |
| 185 | [PDF 150] Find the department with the most promotions. | promotions, employees | Yes |
| 186 | [PDF 151] Find customers who ordered products from at least 3 different categories. | sales, products | Yes |
| 187 | [PDF 152] Find the average gap (in days) between orders per customer. | orders | Yes |
| 188 | [PDF 153] List all customers who have never ordered product X. | customers, sales | Yes |
| 189 | [PDF 154] Calculate total revenue and number of orders per country. | customers, orders | Yes |
| 190 | [PDF 155] Find the employees who were hired on the same day as their managers. | employees | Yes |
| 191 | [PDF 156] Find the top 3 products by quantity sold in each category. | sales, products | Yes |
| 192 | [PDF 157] Find the difference in days between the first and last order for each customer. | orders | Yes |
| 193 | [PDF 158] Find customers who have increased their order volume every month for the last 3 months. | orders | Yes |
| 194 | [PDF 159] Find employees who have the same salary as the average salary in their job title. | employees | Yes |
| 195 | [PDF 160] Write a query to calculate the difference in salary between employees and their managers. | employees | Yes |
| 196 | [PDF 161] List the departments with no employees. | departments, employees | Yes |
| 197 | [PDF 162] Find the employee with the maximum salary in each department. | employees | Yes |
| 198 | [PDF 163] Find customers with orders on every day in the last week. | orders | Yes |
| 199 | [PDF 164] Find the product that has been sold in the highest quantity in a single order. | sales | Yes |
| 200 | [PDF 165] Find employees who joined before their department was created. | employees, departments | Yes |
| 201 | [PDF 166] Find customers with sales in at least 3 different years. | sales | Yes |
| 202 | [PDF 167] Find employees whose salary is above the company’s average but below their department’s average. | employees | Yes |
| 203 | [PDF 168] Find the average order amount per customer per year. | orders | Yes |
| 204 | [PDF 169] Find employees who have worked on at least one project with a budget over $1,000,000. | project_assignments, projects | Yes |
| 205 | [PDF 170] Find the most recent promotion date per employee. | promotions | Yes |
| 206 | [PDF 171] Find customers who made orders totaling more than the average order amount. | orders | Yes |
| 207 | [PDF 172] Find products never ordered. | products, sales | Yes |
| 208 | [PDF 173] Find the month with the lowest sales in the past year. | sales | Yes |
| 209 | [PDF 174] Calculate the number of employees hired each month in the last year. | employees | Yes |
| 210 | [PDF 175] Find the department with the highest number of projects. | projects | Yes |
| 211 | [PDF 176] Find employees who do not have dependents. | employees, dependents | Yes |
| 212 | [PDF 177] Get the total sales amount for each product category including categories with zero sales. | categories, products, sales | Yes |
| 213 | [PDF 178] Find employees who have been promoted but their salary didn’t increase. | employees, promotions, promotion_history | Yes |
| 214 | [PDF 179] Find customers with average order amount above $500. | orders | Yes |
| 215 | [PDF 180] Find orders where the total quantity exceeds 100 units. | order_items | Yes |
| 216 | [PDF 181] Find products whose sales have doubled compared to the previous month. | sales | Yes |
| 217 | [PDF 182] Write a query to find employees who worked on more than 3 projects in 2023. | project_assignments | Yes |
| 218 | [PDF 183] Find customers whose last order was placed more than 1 year ago. | orders | Yes |
| 219 | [PDF 184] Find the average salary increase percentage per department. | employees, promotions | Yes |
| 220 | [PDF 185] Find employees who have never been promoted. | employees, promotions | Yes |
| 221 | [PDF 186] Find products ordered by all customers. | sales, customers | Yes |
| 222 | [PDF 187] Find customers with orders totaling more than $5000 in the last 6 months. | orders | Yes |
| 223 | [PDF 188] Find the rank of employees based on salary within their department. | employees | Yes |
| 224 | [PDF 189] Find customers who purchased a product but never reordered it. | sales | Yes |
| 225 | [PDF 190] Find the day with the highest number of new hires. | employees | Yes |
| 226 | [PDF 191] Find the number of employees who have worked in more than one department. | employee_department_history | Yes |
| 227 | [PDF 192] Find customers who ordered the most products in 2023. | sales | Yes |
| 228 | [PDF 193] Find the average days taken to ship orders per shipping method. | orders | Yes |
| 229 | [PDF 194] Find employees with overlapping project assignments. | project_assignments | Yes |
| 230 | [PDF 195] Find the total number of unique customers per product category. | sales, products | Yes |
| 231 | [PDF 196] Find customers whose orders increased by at least 20% compared to the previous month. | orders | Yes |
| 232 | [PDF 197] Find employees with no projects assigned in the last 6 months. | employees, project_assignments | Yes |
| 233 | [PDF 198] Find the number of employees who have changed departments more than twice. | employee_department_history | Yes |
| 234 | [PDF 199] Find the product with the highest average rating. | product_reviews | Yes |
| 235 | [PDF 200] Find customers who have placed orders but never used a discount. | orders | Yes |
| 236 | [PDF 201] Find employees who have worked on every project in their department. | employees, projects, project_assignments | Yes |
| 237 | [PDF 202] Find the average order amount excluding the top 5% largest orders. | orders | Yes |
| 238 | [PDF 203] Find the top 3 employees with the highest salary increase over last year. | salaries | Yes |
| 239 | [PDF 204] Find employees with the longest consecutive workdays. | attendance | Yes |
| 240 | [PDF 205] Find all managers who do not manage any employee. | employees | Yes |
| 241 | [PDF 206] Find the average salary of employees hired each month. | employees | Yes |
| 242 | [PDF 207] Find the first 5 orders after a customer's registration date. | orders, customers | Yes |
| 243 | [PDF 208] Find customers who placed orders every month for the last 6 months. | orders | Yes |
| 244 | [PDF 209] Calculate the moving average of sales over the last 3 days. | sales | Yes |
| 245 | [PDF 210] Find the number of employees who share the same birthday. | employees | Yes |
| 246 | [PDF 211] Find customers who ordered the same product multiple times in one day. | sales | Yes |
| 247 | [PDF 212] Find the total sales for each product including products with zero sales. | products, sales | Yes |
| 248 | [PDF 213] List the top 5 employees by number of projects in each department. | project_assignments, employees | Yes |
| 249 | [PDF 214] Find the day with the largest difference between maximum and minimum temperature. | weather_data | Yes |
| 250 | [PDF 215] Find the 3 most recent orders per customer. | orders | Yes |
| 251 | [PDF 216] Find products with sales only in a specific country. | sales, customers | Yes |
| 252 | [PDF 217] Find employees with a salary greater than all employees in department 10. | employees | Yes |
| 253 | [PDF 218] Find the percentage of employees in each department. | employees | Yes |
| 254 | [PDF 219] Find the median salary per department. | employees | Yes |
| 255 | [PDF 220] Find the employee who worked the most hours in a project. | project_assignments | Yes |
| 256 | [PDF 221] Find the first order date for each customer. | orders | Yes |
| 257 | [PDF 222] Find the second most expensive product per category. | products | Yes |
| 258 | [PDF 223] Find employees with the highest salary in each job title. | employees | Yes |
| 259 | [PDF 224] Calculate the ratio of males to females in each department. | employees | Yes |
| 260 | [PDF 225] Find customers who spent more than average in their country. | customers, orders | Yes |
| 261 | [PDF 226] Find employees who have not been assigned to any project in the last year. | employees, project_assignments | Yes |
| 262 | [PDF 227] Find the top 3 customers by total order amount in each region. | customers, orders | Yes |
| 263 | [PDF 228] Find employees hired after their managers. | employees | Yes |
| 264 | [PDF 229] Find customers who ordered all products from a specific category. | products, sales | Yes |
| 265 | [PDF 230] Find employees with the highest number of direct reports. | employees | Yes |
| 266 | [PDF 231] Calculate the retention rate of customers month- over-month. | orders | Yes |
| 267 | [PDF 232] Find the average time difference between order and delivery. | orders | Yes |
| 268 | [PDF 233] Find the department with the youngest average employee age. | employees | Yes |
| 269 | [PDF 234] Find products that were sold in every quarter of the current year. | sales | Yes |
| 270 | [PDF 235] Find customers whose orders decreased consecutively for 3 months. | orders | Yes |
| 271 | [PDF 236] Find the employee(s) with the highest number of late arrivals. | attendance | Yes |
| 272 | [PDF 237] Find the most common product combinations in orders (pairs). | order_items | Yes |
| 273 | [PDF 238] Find employees who have worked more than 40 hours in a week. | work_logs | Yes |
| 274 | [PDF 239] Find the total revenue generated per sales representative. | sales | Yes |
| 275 | [PDF 240] Find customers with no orders in the last year. | customers, orders | Yes |
| 276 | [PDF 241] Find products with an increasing sales trend over the last 3 months. | sales | Yes |
| 277 | [PDF 242] Find departments where average salary is higher than the company average. | employees | Yes |
| 278 | [PDF 243] Find customers with orders where no product quantity is less than 5. | order_items | Yes |
| 279 | [PDF 244] Find products ordered only by customers from one country. | sales, customers | Yes |
| 280 | [PDF 245] Find employees who have not submitted their timesheets in the last month. | employees, timesheets | Yes |
| 281 | [PDF 246] Find the total discount given in each month. | orders | Yes |
| 282 | [PDF 247] Find customers who have placed orders but never paid by credit card. | orders | Yes |
| 283 | [PDF 248] Find employees whose salaries are within 10% of their department’s average salary. | employees | Yes |
| 284 | [PDF 249] Find customers who ordered the most products in each category. | sales, products, customers | Yes |
| 285 | [PDF 250] Find the top 5 longest projects. | projects | Yes |
| 286 | [PDF 251] Find employees who have not taken any leave in the last 6 months. | employees, leaves | Yes |
| 287 | [PDF 252] Find the department with the most projects completed last year. | projects | Yes |
| 288 | [PDF 253] Find customers who have increased their order frequency month-over-month for 3 consecutive months. | orders | Yes |
| 289 | [PDF 254] Find employees who have been assigned projects outside their department. | employees, project_assignments, projects | Yes |
| 290 | [PDF 255] Calculate the average time to close tickets per support agent. | support_tickets | Yes |
| 291 | [PDF 256] Find the first and last login date for each user. | user_logins | Yes |
| 292 | [PDF 257] Find customers who made purchases only in one month of the year. | orders | Yes |
| 293 | [PDF 258] Find products with sales revenue above the average revenue per product. | sales | Yes |
| 294 | [PDF 259] Find departments where more than 50% of employees have a salary above $60,000. | employees | Yes |
| 295 | [PDF 260] Find employees who worked on all projects in the company. | projects, project_assignments | Yes |
| 296 | [PDF 261] Find customers who ordered products from all categories. | products, sales | Yes |
| 297 | [PDF 262] Find the average tenure of employees by department. | employees | Yes |
| 298 | [PDF 263] Find the number of orders placed on weekends vs weekdays. | orders | Yes |
| 299 | [PDF 264] Find the percentage of orders with discounts per month. | orders | Yes |
| 300 | [PDF 265] Find the employees who have never been late to work. | employees, attendance | Yes |
| 301 | [PDF 266] Find products with sales only during holiday seasons. | sales, holidays | Yes |
| 302 | [PDF 267] Find the department with the largest increase in employee count compared to last year. | employees | Yes |
| 303 | [PDF 268] Find the average order value per customer segment. | customers, orders | Yes |
| 304 | [PDF 269] Find employees who manage more than 3 projects. | projects | Yes |
| 305 | [PDF 270] Find products that have never been returned. | products, returns | Yes |
| 306 | [PDF 271] Find customers with orders but no shipments. | orders, shipments | Yes |
| 307 | [PDF 272] Find employees whose salaries increased every year. | salaries | Yes |
| 308 | [PDF 273] Find the total number of unique products sold in the last quarter. | sales | Yes |
| 309 | [PDF 274] Find the day with the highest sales in each month. | orders | Yes |
| 310 | [PDF 275] Find the products with the highest sales increase compared to the previous month. | sales | Yes |
| 311 | [PDF 276] Find the top 5 customers by total order value in the last year. | orders | Yes |
| 312 | [PDF 277] Find the number of employees who changed departments in the last year. | employee_department_history | Yes |
| 313 | [PDF 278] Find the average salary for each job title within each department. | employees | Yes |
| 314 | [PDF 279] Find customers who placed orders with multiple payment methods. | orders | Yes |
| 315 | [PDF 280] Find products with the lowest average rating per category. | product_reviews | Yes |
| 316 | [PDF 281] Find employees who have never received a promotion. | employees, promotions | Yes |
| 317 | [PDF 282] Find the total number of orders placed each day in the last week. | orders | Yes |
| 318 | [PDF 283] Find customers with orders in both online and in- store channels. | orders | Yes |
| 319 | [PDF 284] Find the top 3 sales reps by number of deals closed this quarter. | sales_deals | Yes |
| 320 | [PDF 285] Find products that have been discontinued but still have sales. | products, sales | Yes |
| 321 | [PDF 286] Find employees who report to a manager hired after them. | employees | Yes |
| 322 | [PDF 287] Find the average delivery time by shipping method. | shipments | Yes |
| 323 | [PDF 288] Find orders where the total quantity exceeds 100. | order_items | Yes |
| 324 | [PDF 289] Find customers who made orders but never returned a product. | orders, returns | Yes |
| 325 | [PDF 290] Find products that have been ordered but never reviewed. | products, product_reviews, sales | Yes |
| 326 | [PDF 291] Find employees who have worked on projects for more than 2 years. | project_assignments | Yes |
| 327 | [PDF 292] Find the product with the highest sales for each month. | sales | Yes |
| 328 | [PDF 293] Find customers with the highest order count in each region. | customers, orders | Yes (SQL text incomplete in source) |
| 329 | [PDF 294] Flag customers with an increase in orders every month this year. | orders | Yes |
| 330 | [PDF 295] Find employees whose hire date is the same weekday as their manager’s. | employees | Yes |
| 331 | [PDF 296] Get total working hours per employee per week. | work_logs | Yes |
| 332 | [PDF 297] Identify suppliers who delivered to all regions. | suppliers, deliveries | Yes |
| 333 | [PDF 298] Find products ordered on their launch date. | orders, products | Yes |
| 334 | [PDF 299] Retrieve employees with salary in top 5% company-wide. | employees | Yes |
| 335 | [PDF 300] List departments with no open positions. | departments, job_openings | Yes |