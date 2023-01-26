




SELECT * 
FROM Airbnb..Calendar

SELECT *
FROM Airbnb..Listings 

-- Average price per zipcode 

SELECT zipcode, AVG(price) as AveragePrice 
FROM Airbnb..Listings
WHERE zipcode IS NOT NULL 
GROUP BY zipcode
ORDER BY AveragePrice DESC


--Number of Bedrooms

SELECT bedrooms, COUNT(bedrooms) as NumberofBedrooms
FROM Airbnb..Listings
GROUP BY bedrooms
ORDER BY 1

--Average price per bedroom 


SELECT bedrooms, AVG(price) AveragePrice 
FROM Airbnb..Listings
GROUP BY bedrooms
ORDER BY bedrooms DESC


UPDATE Airbnb..Listings
SET bedrooms = 0
WHERE bedrooms IS NULL


-- ratings

UPDATE Airbnb..Listings
SET review_scores_rating = 0
where review_scores_rating IS NULL 


SELECT COUNT(review_scores_rating) as NumberofReviews, review_scores_rating 
FROM Airbnb..Listings
--WHERE review_scores_rating 
GROUP BY review_scores_rating
ORDER BY review_scores_rating DESC























