CREATE TABLE BOROUGH (
Borough_Name VARCHAR(255),
Converted_Coordinates VARCHAR(50),
Borough_Population INTEGER,
PRIMARY KEY(Converted_Coordinates)
);

CREATE TABLE CAFE (
Cafe_Name VARCHAR(255),
Place_Id VARCHAR(255),
Cafe_Coordinates VARCHAR(255),
Vicinity VARCHAR(255),
Cafe_Types VARCHAR(255),
Borough_Coordinates VARCHAR(255),
PRIMARY KEY(Place_Id),
FOREIGN KEY(Borough_Coordinates) REFERENCES BOROUGH(Converted_Coordinates)
);

CREATE TABLE RATING (
Place_Id VARCHAR(255),
Rating NUMERIC,
Number_Ratings INTEGER,
PRIMARY KEY(Place_Id),
FOREIGN KEY(Place_Id) REFERENCES CAFE(Place_Id)
);

CREATE TABLE REVIEW (
Place_Id VARCHAR(255),
Review_Id VARCHAR(255),
Author_Name VARCHAR(255),
Review_Text VARCHAR,
Relative_Time_Description VARCHAR(255),
PRIMARY KEY(Review_Id),
FOREIGN KEY(Place_Id) REFERENCES CAFE(Place_Id)
);
