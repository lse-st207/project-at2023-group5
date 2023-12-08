# ST207 - Databases: Project (AT2023)

### OBJECTIVE

This project is intended to assess your overall knowledge related to Databases and allow you, as a data science team, to design an entire database application on a topic/scenario of your choice.

The overall objective is to design a database application with focus on *non-standard data*, such as multimedia, audio, video, spatial, streaming, multimodal or NoSQL data.

<hr>

### ACTION ITEMS

1. Read the instructions below.
2. Fill in [this proposal form](https://docs.google.com/forms/d/e/1FAIpQLSf1ukyZQto-9HJj0xV6FhqPPgJqIE3nJzWfmwvHWn0qN3ZmJg/viewform?usp=sf_link) with your chosen topic (see Item 2 below) by **14 December 2023, 6 pm**.
3. Proposed topics will be assessed and approved/rejected/asked to be adjusted by **15 December 2023, 4 pm**.
4. If your topic is approved, go ahead with your project. If your topic is rejected or need to be modified, re-submit the proposal form by **18 December 2023, 6 pm** and wait for a decision by **20 December 2023, 4 pm**.

<hr>

### INSTRUCTIONS

1. **GROUPS**: This is a workgroup project. As such, the group is expected to design a solid solution for a particular application or scenario. Everyone in the group is expected to contribute to the final solution.

2. **TOPIC**: Choose a topic or scenario for which you want to design a database application. Your choice should be based on real database applications that we find and/or use daily, such as e-commerce platforms, entertainment websites/platforms, medical/financial services, transportation, food/goods delivery etc. The topic/scenario can involve standard (structured, tabular) data and/or non-standard (unstructured, audio, video, streaming, multimodal) data. Remember to identify the *main entities and attributes* (objects from the real world), generalisation and specialisation dependencies (if any), and *relationships* that you can map into your database application. The main point for you is to assess how easy/hard is to design a database application for the chosen topic/scenario given i) your knowledge about the context, ii) the set of queries and other operations you can perform against the proposed database, and iii) available data (see item 3).

3. **DATA**: Make sure to identify a consistent set of **real data** to use in your application. You can also **generate synthetic data** if you don't find real data or as a complement to your real data. You can **use any existing dataset(s)** and **import them into your database** application. Make sure you have a clear understanding of the data and its quality and representativeness. **There is no need to use huge data**, but **make sure you have a good amount of data for each entity/object that allows for relevant queries and update operations**. Please, reflect on the following questions when choosing your data sources:
* Have you identified publicly available data sources?
* Will you generate synthetic data (including as a complement to your real datasets)?
* Is there sufficient information that allows you to understand how the data was captured and is structured?
* Any restrictions or specific concerns about the chosen data sources?

4. **DATA MODELLING**: Make sure to clearly describe all *entities* and *relationships* from the chosen topic/scenario. Also, any constraints and business rules (*assumptions*) that are relevant to your application. For instance, if you decide to design a *multimedia database*, make sure to describe all data items (such as audio, video or other files) and their related attributes, how these data items relate to each other (for instance, if a given audio is linked to a video, how this link is expressed in the database) and all constraints and other aspects of your database application. There should be a clear explanation of how entities relate to each other, and a clear link between your model and the data you are using. You *must* provide a data model for the chosen database. This can be an **Entity-Relationship (ER)** model capturing all the entities and relationships, primary and foreign keys, single and multivalued attributes, weak entities, partial and total relationships, and any other important aspect for understanding the context of your database application (you can choose any data modelling tool). If you decide for a **NoSQL database**, make sure you provide a **conceptual description** of the topic, the entities/objects and corresponding structure/attributes, any relationships among the objects, and any other specific aspects you are considering in your model. This conceptual description can be a diagram or text clearly presenting the required information.

5. **DATABASE CREATION/DESIGN**: Make sure to describe how the entities are created in the chosen database application, and how the data is populated into the database. You should demonstrate any commands used for defining entities/objects and their attributes, as well as to load data into those entities/objects. If feasible, you can create any **indexes, triggers and views** as needed by the application rules of your topic/scenario. In case of a **NoSQL database**, specify all the creation commands needed for mapping your conceptual model into a set of objects (e.g. documents, graphs etc). This step should cover all the **database definition** tasks. **Make sure to show all results/outputs for each command** (screenshots, textual outputs etc).

6. **DATABASE USAGE**: Based on the chosen topic/scenario, specify **five** queries and update operations *from an user perspective* (i.e., what would be the main operations that an user would execute over your database?). These operations can comprise i) retrieving general information from an entity/object, ii) filtering entities/objects by specific filters/conditions, iii) aggregating/summarising data based on aggregation operators, iv) joining entities/objects to address more complex queries, v) any update or delete operations. Make sure to consider whether you can use **aggregation operations, subqueries, meterialised views, and any other type of more elaborated queries**. You **must** provide a **consistent textual description** of each query in terms of i) what the query or update operation is about, ii) input parameters and conditions for filtering/matching data, and iii) outputs. **Only the SQL/NoSQL code is not sufficient; you must provide the textual description explaining all the database operations along with the outputs/results**. **You must provide 5 (five) interesting queries to your database application**.

7. **DATABASE TECHNOLOGY**: Feel free to play with any database software/tool and/or programming library. Make sure to justify your choice based on the chosen topic/scenario, proposed database operations, and available data. **Make sure to provide all code for your database application, the data itself (CSV files or links to external data sources) along with instructions for reproducibility**.

<hr>

### DELIVERABLES

Your **solution** `MUST` contain:

* a PDF document (**10 pages maximum, except cover**) with:
i) LSE candidate numbers (LSE student IDs are fine in case you don't have your candidate numbers, but **don't put your names**),
ii) description of the chosen topic/scenario (based on item 2 above),
iii) description of your data (based on item 3 above),
iv) the outputs of your data modelling step (any ER/EER diagram or conceptual description of your NoSQL model),
v) textual description of all the operations (queries and updates) with the corresponding outputs for each command.
vi) justification of the database technology/tool (item 7) with necessary instructions for reproducibility (for instance, whether an account is necessary, software download/installation - **links to appropriate pages are fine**).

* any code file designed in your project (i.e., SQL commands, scripts etc).

* any datasets or synthetic data used in your project.

* **make sure to upload all your solution files and data to the provided GitHub repository**. In case of storage/space limitations, please provide links to alternative repositories where the data can be accessed.

<hr>

### IMPORTANT DATES

* Assignment released: 08/12/2023, 5 pm.
* Submission of topic proposal: 14 December 2023, 6 pm.
* Project approval/rejection decision: 15 December 2023, 4 pm.
* Submission of new proposal (if rejected): 18 December 2023, 6 pm
* Project approval/rejection decision (if previously rejected): 20 December 2023, 4 pm.
* Submission of solution: 10/01/2024, 5 pm (London) **firm deadline**
* Feedback and provisional mark (tentative): 28/02/2024, 10 pm (London)

<hr>

### NOTE ON GENERATIVE AI TOOLS

* Refer to [Moodle](https://moodle.lse.ac.uk/course/view.php?id=7681) for the Generative AI guidance document and course-specific policy. Make sure to comply with all items in the document.

<hr>

### MARKING CRITERIA

* This assignment is worth 60% of the final grade.
* **IMPORTANT**: according to the School policy, you **must** submit an answer to this assignment; otherwise, you will be graded 0 (zero).

| Problem breakdown  | Max marks |
| ------------- | ------------- |
| (2) Topic/scenario - relevance and complexity of the topic/scenario in terms of entities/objects, attributes, generalisation and specialisation dependencies, relationships, constraints and assumptions. Clear description of the topic/scenario.  | 15 |
| (3) Data - Usage of real data and any criteria for subsampling. Generation of synthetic data and how it mimics a real scenario. Good description of the data. Aspects of data consistency and quality. Adherence of data sources to the proposed topic/scenario. Amount of data used versus database usage operations (SQL queries).  | 15 |
| (4) Database modelling - model clarity and consistency (how close to the real scenario the model is). Complete description of all entities/objects, generalisation/specialisation, relationships, keys and constraints. | 15 |
| (5) Database creation - Complete and correct set of commands for materialising the database model into a set of objects (relational tables, documents, nodes etc) and associated relationships. Use of indexes, views, and triggers according to the application rules (chosen topic/scenario). | 10 |
| (6) Database usage - relevant and consistent set of queries and update operations. Rationale behind each database operation and to what extent the provided query/update commands have explored the available data. Usage of aggregation, subquery, join and other complex query/update structure. If available in the database, good exploration of indexes, views, and triggers. Clear documentation of all queries. Submission of all outputs. | 30  |
| (7) Database technology - justification, adherence, and technical complexity involved in its use. Clear instructions for reproducibility purposes. | 10 |
| Documentation - quality of the PDF report, code organisation and documentation. | 5 |
| TOTAL  | 100  |

<hr>

### FEEDBACK AND PROVISIONAL MARK

* To be provided after your submission.

<hr>

### REFERENCES

- Wikipedia: [Database application](https://en.wikipedia.org/wiki/Database_application) - some example databases.
- [10 Database Examples in Real Life](https://www.liquidweb.com/blog/ten-ways-databases-run-your-life/)
- [Database Applications Types and Examples](https://www.mongodb.com/basics/database-application)
- [15 Database Software Examples 2022](https://rigorousthemes.com/blog/database-software-examples/)
- Oracle: [Application Express App Builder User's Guide](https://docs.oracle.com/database/apex-5.1/HTMDB/understanding-sample-database-application.htm#HTMDB02005)
- Medium: [10 Best Database Design Practices](https://medium.com/quick-code/10-best-database-design-practices-1f10f3441730)
- Learn Computer Science: [How to design a database?](https://www.learncomputerscienceonline.com/how-to-design-database/)
- The Digital Skye: [8 Practical Guidelines for Designing Databases That Don’t Land You in Hot Water](https://thedigitalskye.com/2020/12/19/8-practical-guidelines-for-designing-databases-that-dont-land-you-in-hot-water/)

#### Multimedia databases

* https://en.wikipedia.org/wiki/Multimedia_database
* https://www.sciencedirect.com/topics/computer-science/multimedia-databases

#### Spatial Databases

* https://en.wikipedia.org/wiki/Spatial_database
* Kinetica - https://www.kinetica.com/features/geospatial-analytics/
* https://www.safe.com/blog/2021/11/7-spatial-databases-enterprise/
* Oracle - https://www.oracle.com/uk/database/spatial/
* https://gisgeography.com/spatial-databases/

#### Streaming databases

* https://www.theseattledataguy.com/7-real-time-data-streaming-databases-which-one-is-right-for-you/#page-content
* HStreamDB - https://hstream.io/
* Amazon AWS - https://aws.amazon.com/streaming-data/
* ksqlDB - https://ksqldb.io/

#### NoSQL databases

* https://en.wikipedia.org/wiki/NoSQL
* DataStax - https://www.datastax.com/lp/nosql-database
* IBM Cloud - https://www.ibm.com/uk-en/cloud/free/databases
* MongoDB NoSQL - https://www.mongodb.com/nosql-explained
* https://www.g2.com/categories/graph-databases
* https://en.wikipedia.org/wiki/Graph_database
* Neo4j - https://neo4j.com/developer/graph-database/

### Additional references

- Microsoft: [Database design basics](https://support.microsoft.com/en-us/office/database-design-basics-eb2159cf-1e30-401a-8084-bd4f9c9ca1f5)
- Xplenty: [Complete Guide to Database Schema Design](https://www.xplenty.com/blog/complete-guide-to-database-schema-design-guide/)
