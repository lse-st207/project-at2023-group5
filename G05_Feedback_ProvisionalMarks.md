# ST207 AT2023 - Coursework

## Project title: London Cafe Database

## Group 05: 21630, 27065, 28717, 24852

## TOPIC AND SCENARIO (maximum 15 points)

The project concentrates on the design of a database capturing data on coffee shops and customer reviews across London. The database is intended for three types of users - customers, owners, and investors - who can check top-rated coffee shops and their geographic distribution; analyse market and consumer behaviours; and decide on investments based on market prospection, respectively. Population data related to London boroughs was extracted from Wikipedia and aggregated with geographic location of coffee shops acquired through Google Maps API.

The project is interesting and comprises a relevant scenario that involves thousands of people in London on a daily basis. There is a moderate technical complexity related to the acquisition and aggregation of proper data and the tools used to build the database. The queries concentrate mostly on analysing and comparing coffee shops against their ratings. One good improvement would be to incorporate analysis by type of coffee and/or period of the day, and see how this influences the results.

## DATA (maximum 15 points)

Data on population per borough and other relevant attributes was extracted from Wikipedia and populated into the database. Data on coffee shops and associated reviews was acquired through Google Maps and incorporated into the database as well. The resulting database is of moderate size, covering most (or all) London boroughs and 451 coffee shops.

Good mastery of APIs and data preprocessing techniques to get this data aggregated into the database. You mentioned some limitations related to tags used in Google Maps (such as cafes and restaurants) and how some commercial establishments are listed. Indeed, the `Cafe_Types` column does not add much to your database. However, such limitations were properly circumvented to minimise impact or bias on your database. No problem related to your search radius - i.e., there is no need to cover all coffee shops nor to worry about data distribution - we know some boroughs have much more establishments than others. One improvement would be splitting between artisan and "off the counter" coffee and check how ratings vary between them, as (presumably) the expectation is higher when you go to a small, artisan coffee shop.

## DATABASE MODELLING (maximum 15 points)

The database model is presented in an ER mapping entities and relationships. The database is simple - 4 entities with a few attributes each - and does not capture many temporal aspects, apart from the review timestamp varying from one month ago to 7+ years. There is a 1:n relationship between `CAFE` and `REVIEW`, which means all coffee shops have at least one review. The same applies to `RATING`, with a composite key formed by `Place_id`. As you went through a manual process to collect and aggregate this data, these relationships are assumed to be checked for all data instances. As mentioned, `Cafe_Types` does not add much to the database the way it is. Perhaps filtering by establishments where the first service is cafe would allow for a better analysis.

One improvement to your model would be adding a view table to capture different rankings over time. As the reviews span one month to 7+ years, you cannot directly compare all coffee shops. Perhaps splitting by year or periods and looking at reviews and ratings would give you a better approximation of current trends and preferred spots against past ones. Another point to consider in your model and report is whether all constraints and assumptions were clearly explained.

## DATABASE CREATION (maximum 10 points)

Database creation is based on a Python file to extracted data from Wikipedia and Google API and generate the CSV files. Overall, good and consistent use of different libraries to get raw data, pre-process and aggregate it into the database. The code is overall well-organised with minimal documentation. A separate SQL script with DDL commands to create the tables is provided. As suggestion, to ease reproducibility, you could incorporate the DDL part into the Python code, so the user can run the entire code to get the data and prepare the database structure.

## DATABASE USAGE (maximum 30 points)

Regarding your queries (presented in the report):

* Query 1 intends to map the correlation between borough population and coffee shop distribution. As mentioned, you didn't notice a strong correlation, which is somewhat expected. We can assume the concentration of shops would be in commercial and touristic areas rather than highly populated ones. Regarding the presentation of results, it woudl be nice to properly discuss the distributed shown in Figure 6.

* Query 2 list the highest number of coffee shops per borough, as a result of a simple aggregation query. Perhaps splitting between artisan and franchising coffees or relating with the average rating would give a better perspective of the most popular boroughs.

* Query 3 analyses chain/franchising coffee shops and their relative ratings. This is a simple aggregation query bringing interesting results, despite the imbalance in the data (Costa Coffee accounts for the majority of the data).

* Query 4 is fine but, given the data skew, it would be nice to run this analysis by clustering low-rated and high-rated coffees and perhaps looking at the review text - this is valuable information not used in your project - and other factors influencing the reviews and ratings.

* Queries 5 and 6 show top-rated coffee shops in the entire city and per borough, respectively. Overall, the queries are fine for a first search, especially for a new customer wishing to taste a different coffee. It would be nice to try to incorporate data on specific products, such as coffee types or other relevant item, that could lead a new customer to pick one location. For instance, in Figure 11, most locations have a rating of 4.8, so what would be the tiebreaker in this case?

* The map plotted in Kinetica shows what we know to be the distribution of coffee shops across London, most of them tied to commercial and touristic areas. Perhaps moving this visualisation to the beginning of your report, when you mention the final 451 shops selected in your search, would improve the understanding of some of your results.

Overall, good/correct use of SQL commands and specific libraries.

## DATABASE TECHNOLOGY (maximum 10 points)

You designed a relational database in SQLite with support of DB Browser, with subsequent use of specialised libraries and tools, such as Kinetica, Google API, and BeautilSoup. The database itself is of a small size with static elements which do not add temporal or dynamic requirements - no updates or triggers, for instance. So, the technology is adherent to the size and nature of your database.

## DOCUMENTATION (maximum 5 points)

Documentation is overall fine but a better link between the report (doc file) and any code you have used would ease reading. Some clarification related to your data modelling, such as constraints and assumptions would improve the text.

---

| Problem breakdown  | Max marks | Your marks |
| ------------- | ------------- | ------------- |
| (2) Topic/scenario      |  15 | 11 |
| (3) Data                |  15 | 11 |
| (4) Database modelling  |  15 | 10 |
| (5) Database creation   |  10 |  9 |
| (6) Database usage      |  30 | 18 |
| (7) Database technology |  10 |  9 |
| Documentation           |   5 |  3 |
| TOTAL                   | 100 | 71 |
