# Stock Market Project 
Watch stock market, collect data, analyse trends. 

Follows [Data Science Independent Project #1 from Codecademy](https://discuss.codecademy.com/t/data-science-independent-project-1-watching-the-stock-market/419943) 

## To start project
1. Install a SQLite browser [(recommend this)](https://sqlitebrowser.org)
2. Open `stocks.db`
3. Answer questions below using SQL queries
4. Use SQL queries in `code.sqlite.sql` to and insert into browser for answers


## Aims
### Basic Requirements:
1. What are the distinct stocks in the table?
2. Query all data for a single stock. Do you notice any overall trends?
3. Which rows have a price above 100? between 40-50, etc?
4. Sort the table by price. What are the minimum and maximum prices?

### Intermediate Challenge
1. Explore using aggregate functions to look at key statistics about data (eg., min, max, average)
2. Group data by stock and repeat. How do the stocks compare to each other?
3. Group the data by day or hour of day. Does day of week or time of day impact prices?
4. Which of the rows have a price greater than average of all prices in the dataset?


### Advanced Challenge
1. In addition to the built-in aggregate functions, explore ways to calculate other key statistics about the data, such as the median or variance
2. Let’s refactor the data into 2 tables - `stock_info` to store general info about the stock itself (ie. `symbol`, `name`) and `stock_prices` to store the collected data on price (ie. `symbol`, `datetime`, `price`)
3. Now, we do not need to repeat both symbol and name for each row of price data. Instead, join the 2 tables in order to view more information on the stock with each row of price.
4. Add more variables to the stock_info table and update the data (e.g., sector, industry, etc).



