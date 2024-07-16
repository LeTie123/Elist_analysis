
# Project Background
Elist Electronics is a global e-commerce company that sells popular electronics worldwide via its website and apps.
The company has a significant amount of data such as their yearly revenue and sales, products sold, and marketing tools. 
With over 100,000 records from 2019 to 2024 within the dataset, analytical tools such privot tables and conditional formatting from Excel and queries written in SQL will be used to meticulously clean and dissect the hidden insights within the data.

The projects will focus on the following areas:
* Sales Trend: Focus on sales pattern through out the years 
* Product Performance: Focus on which products performing well and which that are underperforming in popularity
* Loyalty Program: Focus on whether the loyalty program is worth keeping for customer retention and sales
* Refund Rates: Focus on which apple products have the highest refund rate


## Data
The database structure as seen below consists of four tables: orders, customers, geo_lookup, and order_status.

![image](https://github.com/LeTie123/Elist_analysis/assets/147008583/07d94637-b9ff-48d6-9073-2bebe65de23e)

Quality issues were found within the data set and a fix was documented <a href= https://github.com/LeTie123/Elist_analysis/blob/main/Elist%20ChangeLog.xlsx>here</a>.


## Overview
The Elist dataset reveals a notable decline in sales revenue, which initially might raise concerns. However, this decrease can be attributed to rare anomalies affecting the economic landscape in 2020. Encouragingly, recent sales data indicates a return to previous performance levels, suggesting a resilient recovery.

A detailed analysis uncovers that Elist Electronics experiences peak sales activity during the holiday season, particularly around Thanksgiving and Christmas. Conversely, sales remain stagnant or dip below average during other times of the year. Notably, Apple Airpods emerge as the top-selling product, underscoring their popularity among consumers. In contrast, Bose Soundsport Headphones lag behind as the least popular item in the product lineup.

The company's loyalty program has proven effective in expanding its customer base, demonstrating strong appeal among its clientele. Furthermore, Apple products consistently exhibit a higher rate of return compared to other offerings, highlighting potential areas for improvement in product satisfaction or customer support.

In conclusion, while facing challenges in revenue performance, Elist Electronics shows promise in recovering from market disruptions. Insights gleaned from sales trends, product performance, and customer loyalty provide a solid foundation for strategic adjustments aimed at sustaining growth and enhancing customer satisfaction moving forward.


## Summary of Analysis
**Yearly Trends:** From 2019 to 2022, the total sales value was 28 million with over 100,000 orders. 2020 accounted for more than 35% of the total value with the highest yearly sales total of $10.1 million and average order values (AOV) around $300. Sales and orders have been on a decline since 2020 with rates decreasing by roughly 10% and 46% for 2021 and 2022. However, AOV has only decreased by roughly 10% each year. It is assumed that the enforced lockdown and increased stimulus spending may have had the greatest factor in such increased in 2020 and slowly exiting in 2021.

![image](https://github.com/LeTie123/Elist_analysis/assets/147008583/ff19628d-27d4-40e4-b09a-d476408eb232)



**Monthly Trends:** Analysis reveals that E-list sales does have seasonality. November and December tend to average around a 21% growth rate compared to other months. February and October shows the biggest decrease in growth avaergaing around -25%. Trends most likely occur due to customers saving for the big holidays in November and December and regressing from wanting to purchase anything new after the holidays. March 2020 was deemed to be an outlier due to having a growth rate of 50% in total sales, most likely stemming from pandemic spending.

![image](https://github.com/user-attachments/assets/45870039-6b9c-4e35-80a3-267a19ef86d8)


 

**Product Performance:** Apple Airpods Headphones were the most popular product averaging around 12,000 orders per year and having a total revenue of $7.7 million. The 27in 4k Gaming Monitor was the 2nd most brought product, averaging around 6k sales per year, but had brought in the most for a total of $9.8 million. In contrast, Bose Soundsport Headphones were consistently the least popular item, accounting for less thean 1% of total sales and orders.

![image](https://github.com/LeTie123/Elist_analysis/assets/147008583/226e00ba-9709-4620-9ec0-6bc6e75f5a0a)


**Loyalty Program:** 
The loyalty program started off slow but has steadily gained popularity throughout the years based on the customer breakdown with loyalty memebrs in 2021 and 2022 making up more than 50% of the customer base. The company's current members account for 42% of the grand total. Loyalty members have also outperformed non-loyalty members in 2021 and 2022, with each years loyalty revenue bringing in $500k more than non-loyalty.

![image](https://github.com/user-attachments/assets/97828b19-0911-424f-92df-3ea4b62b9925)


**Refund Rate:**
Apple Products have had a higher refund rate compare to other products each year since 2019. Refund rates peaked in 2020 with rates around 10% and dipped to 4% the following year. One thing to note is that Apple products sold 2,000 more products compared to other products in 2020 and had a higher return rate (10.31% against 7.97%). However, in 2021, Apple Product undersold by 2,500 compared to the other brand products but it still maintained a higher return rate (4.32% against 3.01%).

![image](https://github.com/LeTie123/Elist_analysis/assets/147008583/848514bc-f724-4cf2-8c6b-dcc3cb9e4990)

Out of all the Apple Product sold at this company, The Macbook Air Laptop had the highest return rate. 2019 and 2020 had the biggest gaps in rates at around 6% difference from the next highest returned product while in 2021 all products were relatively similar in rates.

![image](https://github.com/user-attachments/assets/16b3d0f0-ab3a-4a00-86b8-c53fe9c5e847)


2022 return data was excluded due to having 0 returns documented in 2022. Further research must be done to determine why the data does not show any results

## Recommendations
Based on the above insights, the company should looking into the following:

* Reach out to sales team or marketing teams to determine if it is possible to promote sales during down time such as non-holiday seasons to help increase interest
* Drop Bose Soundsport Headphones from inventory due to accounting for less than 1% of revenue and prioritize other high selling products to increase profit margins
* Due to increasing popularity, continue to promote loyalty program because the program is continuing to bring in more customer and revenue than non-loyalty 
* Look into the reason why Apple Products have higher refund rate in general with the main focus being on Macbooks due to its high rates compare to headphones and iphones
