/* Workbook: Cafe */
/* Workbook Description: Description for Cafe */


/* Worksheet: Cafe visualization */
/* Worksheet Description: Description for Sheet 1 */

/*Query 3*/
SELECT 
    CAFE.Cafe_Name,
    ROUND(AVG(RATING.Rating),1) AS Average_Rating, COUNT(CAFE.Cafe_Name) AS Number_Cafe
FROM 
    CAFE
JOIN 
    RATING ON CAFE.Place_Id = RATING.Place_Id
GROUP BY 
    CAFE.Cafe_Name
HAVING COUNT (CAFE.Cafe_Name) > 1
ORDER BY COUNT (CAFE.Cafe_Name) DESC
LIMIT 5


/* SQL Block Start */
SELECT * FROM cafe_kinetica;
/* SQL Block End */


/* Worksheet: Borough */
/* Worksheet Description: Description for sheet 3 */


/* SQL Block Start */
SELECT Borough_Name, COUNT(Borough_Name)
FROM borough_entity AS b
INNER JOIN cafe_entity AS c
ON b.Converted_Coordinates = c.Borough_Coordinates
GROUP BY b.Borough_Name
ORDER BY COUNT(Borough_Name) DESC;
/* SQL Block End */


/* SQL Block Start */
SELECT Borough_Name, COUNT(Borough_Name), MEAN(Borough_Population)
FROM borough_entity AS b
INNER JOIN cafe_entity AS c
ON b.Converted_Coordinates = c.Borough_Coordinates
GROUP BY b.Borough_Name;
/* SQL Block End */


/* Worksheet: Rating */
/* Worksheet Description: Description for sheet 2 */


/* SQL Block Start */
SELECT Cafe_Name, rating_entity.Rating
FROM cafe_kinetica
INNER JOIN rating_entity ON cafe_kinetica.Place_Id = rating_entity.Place_Id
ORDER BY rating_entity.Rating DESC
LIMIT 10;
/* SQL Block End */


/* SQL Block Start */
SELECT Rating, Number_Ratings
FROM rating_entity AS R;
/* SQL Block End */


/* Worksheet: View */
/* Worksheet Description: Description for sheet 4 */


/* SQL Block Start */
WITH RankedCafes AS (
  SELECT
    b.Borough_Name,
    c.Cafe_Name,
    r.Rating,
    ROW_NUMBER() OVER (PARTITION BY b.Borough_Name ORDER BY r.Rating DESC) AS CafeRank
  FROM
    borough_entity AS b
    INNER JOIN cafe_entity AS c ON b.Converted_Coordinates = c.Borough_Coordinates
    INNER JOIN rating_entity AS r ON r.Place_Id = c.Place_Id
)
SELECT
  Borough_Name,
  Cafe_Name,
  Rating
FROM
  RankedCafes
WHERE
  CafeRank <= 5
ORDER BY
  Borough_Name,
  CafeRank;
/* SQL Block End */
