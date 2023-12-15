## Project title: Spatial data analysis in Kinetica and Neo4j

Kinetica: for spatial data (by using geographic coordinates)
Neo4j: 
- locations can be the nodes
- number of the nodes can be seen as frequency
  
## Data sources
* Build database by ourselves: Distribution of coffee shops in London using Google map API: https://developers.google.com/maps/documentation/embed/get-started 
* Concerns/difficulties:
  * Data Cleaning and Data Collection
  * If too difficult for data collection then we might use synthetic data / hardcode locations
  
* ## Proposed queries
1. Locations and frequency of chain shops vs independent - Potentially using Neo4j 
2. Comparing cities, for example New York and London
   * How are the shops distributed there?
   * What brands are similar/ different?
3. Comparing reviews between areas
4. How population distribution relates to frequency, reviews
5. Average price per person when visiting

## Feedback

One positive aspect of the proposal is the idea of mixing Kinetica and Neo4j in the same code to explore different aspects of your data. The idea of collecting data from coffee shops is fine (I'm not sure how 
easy/complicated it is as well, so it is worth trying). Forget about New York, as this will introduce overhead to your work. Concentrate on London only and try to avoid generating synthetic data (unless you base your
data generation process on real location of coffee shops, obtained from Google Maps for instance. Regarding your queries, one idea (question 1) would be to compare sale revenues for chain x independent coffee shops, as
(presumably) both types of shops have a significant number of customers (*fast coffee* x *artisanal coffee*). The comparison of reviews is fine but requires some consistent data across all coffee locations. Instead of
average price per person, consider average price within regions, for all types of coffee shops. Also, if available, the most popular coffees (americano, latte, espresso etc) per day (?) or hour (?). 

**Project approved**
