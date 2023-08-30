# Sparktan-Slices-Pizza-Sales-Analysis
![image](https://github.com/TaCaoThuc/Sparktan-Slices-Pizza-Sales-Analysis/assets/142728022/9297def9-2e1d-4f3c-87a6-12ed98d4ad3a)

## Introduction
### Scenario: 
You are a Data Analyst working Spartan Slices Pizza, a Greek-inspired pizza place in Florida, USA. You've been hired to help the restaurant make things work better using data. The manager welcomed you and mentioned that things are alright at Spartan Slices, but there's room for improvement. They've been collecting transaction data for a year, but haven't really been able to use it well. They hope you can analyze the data to help them find ways to increase sales and work more efficiently.

### KPIs that should be identified:
-	Total Revenue
-	Average Order Value
-	Total Pizzas Sold
-	Total Orders
-	Average Pizzas per Order
Other metrics that need to be explored: 
-	Daily and monthly trend for total orders 
-	Percentage of sales for pizza category and size
-	Total pizzas sold by category
-	Top 5 best/ worst sellers by revenue, quantity, and number of orders.

### This dataset provides 12 important characteristics regarding pizza sales:
- order_id: An unique identifier for each order made at a table.
- order_details_id: A unique identifier for each pizza within an order (pizzas of the same type and size are grouped together, and the quantity increases).
- pizza_id: A distinct key identifier linking the ordered pizza to its specifics, such as size and price.
- quantity: The number of pizzas ordered of the same type and size.
- order_date: The date when the order was placed (noted before cooking and serving).
- order_time: The time when the order was placed (noted before cooking and serving).
- unit_price: The cost of the pizza in USD.
- total_price: Calculated by multiplying the unit_price by the quantity.
- pizza_size: The size classification of the pizza (Small, Medium, Large, X Large, or XX Large).
- pizza_type: A distinct identifier connecting the pizza order to its attributes, like size and price.
- pizza_ingredients: The ingredients used in the pizza as displayed on the menu (all variations include Mozzarella Cheese, unless not specified; and all include Tomato Sauce, except if another sauce is stated).
- pizza_name: The title of the pizza as presented on the menu.

A preview of the dataset:
![image](https://github.com/TaCaoThuc/Sparktan-Slices-Pizza-Sales-Analysis/assets/142728022/9a425001-fe46-4eb1-8bb1-c17d14ec3cf7)

## Data Cleaning

## Data Analysis
The dataset is analyzed using SQL

**1. KPI**

**a. Revenue**

![image](https://github.com/TaCaoThuc/Sparktan-Slices-Pizza-Sales-Analysis/assets/142728022/19cfc0e1-acad-456f-8753-431f852c287a)

The total revenue of the pizza sales is $817,860.

**b. Average order Value**

![image](https://github.com/TaCaoThuc/Sparktan-Slices-Pizza-Sales-Analysis/assets/142728022/54df4d05-7b60-4f75-a6ec-86626603b0db)

The average order value is $38.31.

**c. Total pizzas sold**

![image](https://github.com/TaCaoThuc/Sparktan-Slices-Pizza-Sales-Analysis/assets/142728022/283c1d6d-fc96-47de-9093-7bc72a7bb5de)

The total number of pizzas sold is 49,574.

**d. Total orders**

![image](https://github.com/TaCaoThuc/Sparktan-Slices-Pizza-Sales-Analysis/assets/142728022/ebbd1803-c0c0-478c-a89b-9eeafcf6d54b)

The total number of orders is 21,350.

**e. Average number of pizzas per order**

![image](https://github.com/TaCaoThuc/Sparktan-Slices-Pizza-Sales-Analysis/assets/142728022/55ee4003-f155-4432-b4f1-a70083b4fd1b)

The average number of pizzas per order is 2.32.

**2. Other key insights**

**a. Daily trend and monthly trend for total sales**

**a.1. Daily trend for total sales**

![image](https://github.com/TaCaoThuc/Sparktan-Slices-Pizza-Sales-Analysis/assets/142728022/15058e0b-fd82-43cc-a2a6-70bc28239df7)

Sales show varying patterns across the days of the week, with the highest daily orders on Fridays (3,538), Thursdays (3,239) and Saturdays (3,158). In contrast, Mondays (2,794) and Sundays (2,624) see lowest sales.

**a.2. Monthly trend for total sales**

![image](https://github.com/TaCaoThuc/Sparktan-Slices-Pizza-Sales-Analysis/assets/142728022/abb5be49-c1e8-453c-9787-145bb48d82f2)

Monthly sales also exhibit varying patterns. Peak months are July (1,935), May (1,853), and January (1,845) while lowest sales are observed in December (1,680) and February (1,685).

**b. Percentage of sales by category and size**

**b.1 Percentage of sales by category**

![image](https://github.com/TaCaoThuc/Sparktan-Slices-Pizza-Sales-Analysis/assets/142728022/fa8848c1-b78e-44f9-b5c0-f6332b81f51e)

Sales distribution by category shows a relatively balanced preference among customers. The largest percentage of sales belongs to the Classic pizza category (26.91%), followed by Supreme (25.46%) and Chicken (23.96%), while Veggie accounts for the smallest share (23.68%).

**b.2. Percentage of sales by pizza size**

![image](https://github.com/TaCaoThuc/Sparktan-Slices-Pizza-Sales-Analysis/assets/142728022/8b777d3e-4a33-4c0f-a20d-55da96c202b7)

Sales distribution by pizza size indicates varying customer preferences: L takes up the largest percentage (45.89%), followed by M (30.49%) and S (21.77%). XL and XXL have the smallest shares of revenue, with only 1.72% and 0.12%, respectively.

**c. Total pizzas sold by category**

![image](https://github.com/TaCaoThuc/Sparktan-Slices-Pizza-Sales-Analysis/assets/142728022/98d7a040-6c4e-4adc-ae1a-f38815ce3207)

Among the pizza categories, the Chicken category has the highest sales with 14,888 units sold, trailed by Supreme (11,987 units) and Veggie (11,649 units). The Chicken category records the lowest sales with 11,050 units.  

**d. Top 5 best sellers by revenue, quantity and order**

**d.1. Top 5 best sellers by revenue**

![image](https://github.com/TaCaoThuc/Sparktan-Slices-Pizza-Sales-Analysis/assets/142728022/2667a6ab-77e2-4526-8423-590314e36d81)

**d.2. Top 5 best sellers by quantity**

![image](https://github.com/TaCaoThuc/Sparktan-Slices-Pizza-Sales-Analysis/assets/142728022/6b0ab472-3915-4574-ae42-966c53c2e649)

**d.3. Top 5 best sellers by order**

![image](https://github.com/TaCaoThuc/Sparktan-Slices-Pizza-Sales-Analysis/assets/142728022/605acb5e-0461-4773-a63d-21abbe5355d4)

From the top 5 best sellers across the 3 categories, it can be seen that Thai Pizza, with the highest revenue and Classic Deluxe, with the most quantity and orders, are two most outstanding items. Additionally, Barbecue Chicken, Hawaiian and Pepperoni also demonstrates remarkable performances with their appearances in all 3 tables.

**e. Top 5 worst sellers by revenue, quantity and order**

**e.1. Top 5 worst sellers by revenue**

![image](https://github.com/TaCaoThuc/Sparktan-Slices-Pizza-Sales-Analysis/assets/142728022/6fcdcaf2-72e0-462c-8ef9-34af61b8b81a)

**e.2. Top 5 worst sellers by quantity**

![image](https://github.com/TaCaoThuc/Sparktan-Slices-Pizza-Sales-Analysis/assets/142728022/122f04ad-3793-4818-a5c8-a4460c6343d3)

**e.3. Top 5 worst sellers by order**

![image](https://github.com/TaCaoThuc/Sparktan-Slices-Pizza-Sales-Analysis/assets/142728022/5ee91672-f693-405f-b4f9-866f8758907e)

Brie Carre is the worst seller, with the lowest sales in revenue, quantity, and orders. Additionally, Mediterranean and Spinach Supreme also emerge as notable underperformers, appearing in all three tables.

## Visualization

PowerBI is used to created a dashboard visualizing the data

![image](https://github.com/TaCaoThuc/Sparktan-Slices-Pizza-Sales-Analysis/assets/142728022/75a92e97-ad9b-4b5d-9115-1aa3926cb7dc)

## Recommendations

Based on above findings, some recommendations can be made for the restaurant's manager:

-	As Thursday, Friday and Saturday have the highest order volumes, additional staff and resources should be allocated to handle the increased demand on these days, especially Friday. As Sunday and Monday have lower orders, the restaurant can introduce promotions to encourage more sales on these days.

-	The manager should adjust inventory levels and ingredient purchases based on the monthly trend for total orders. During peak months like July and May, inventory should be scaled up, and during off-peak months like October and September, a more conservative approach is advisable. Additionally, conducting further investigations to understand the reasons behind specific months' order fluctuations can lead to more effective strategies.

-	With regards to categories, as Class and Supreme have higher demand and contribute more to total revenue, the manager should consider running more promotions or marketing strategies to maintain their popularity. It is also advisable to introduce more items or variations within these categories. Moreover, attention should still be paid to Veggie and Chicken. Although they have lower demand and contribute less to total revenue, their contributions are still significant and strategies should be developed to optimize their sales.

-	Best sellers like Thai Chicken Pizza and Classic Deluxe Pizza, with L size, should be further promoted by marketing campaigns and pricing strategies so that the restaurant can capitalize on customers’ love for them.

-	For worst sellers like Brie Carre Pizza, Spinach Supreme Pizza and Mediterranean Pizza, it is advised to further analyze why they are low in demand, considering their recipes, prices, and local preferences. After that, actions like modifications of these pizzas or removals of them from the menu can be made.





















