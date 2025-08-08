-- Question 1: What is the overall distribution of game outcomes?

SELECT 
	winner,COUNT(*) AS number_of_games 
FROM 
	cleaned_games 
GROUP BY 
	winner 
ORDER BY 
	number_of_games DESC;

--Question 2: Does White have a tangible advantage in decisive games?

SELECT
    winner,
    COUNT(*) AS wins,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM cleaned_games WHERE winner IN ('White', 'Black')), 2) AS win_percentage
FROM
    cleaned_games
WHERE
    winner IN ('White', 'Black')
GROUP BY
    winner;

-- Question 3: What are the top 10 most frequently played openings?

SELECT 
	opening_name, COUNT(*) AS frequency 
FROM 
	cleaned_games 
GROUP BY 
	opening_name 
ORDER BY 
	frequency DESC LIMIT 10;
	
-- Question 4: How many unique openings are in this dataset?

SELECT
    COUNT(DISTINCT opening_name) AS number_of_unique_openings
FROM
    cleaned_games;
	
-- Question 5: How does rating difference correlate with outcome and victory status?

SELECT
    winner,
    victory_status,
    AVG(ratingdiff)
FROM
    cleaned_games
WHERE
    winner IN ('White', 'Black')
GROUP BY
    winner, victory_status
ORDER BY
    winner, victory_status;
	
--Question 6: What is the average game length for rated games? 

SELECT 
	rated, AVG(turns) as average_turns
FROM 
	cleaned_games
GROUP BY 
	rated;

--Question 7: What is the average number of turns for the 'Sicilian Defense'?

SELECT 
	AVG(turns) as average_turns
FROM 
	cleaned_games
WHERE 
	opening_name = 'Sicilian Defense';
	
-- Question 8: What is the range of player skill in this dataset?

SELECT
    MIN(white_rating) AS min_white_rating,
    MAX(white_rating) AS max_white_rating,
    MIN(black_rating) AS min_black_rating,
    MAX(black_rating) AS max_black_rating
FROM
    cleaned_games;
	
-- Question 9: Do games between higher-rated players last longer?

SELECT
    rating_tier,
    AVG(turns) as average_turns
FROM
    cleaned_games
GROUP BY
    rating_tier
ORDER BY
    AVG(turns) DESC;

-- Question 10: What is the count of games won by checkmate, resignation, and outoftime?

SELECT 
	victory_status, COUNT(*) AS count
FROM 
	cleaned_games
WHERE 
	victory_status IN ('mate','resign','outoftime')
GROUP BY
	victory_status;
	
