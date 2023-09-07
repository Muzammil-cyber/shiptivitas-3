-- TYPE YOUR SQL QUERY BELOW

-- PART 1: Create a SQL query that maps out the daily average users before and after the feature change

SELECT 
    login_timestamp, 
    AVG(CASE WHEN login_timestamp < '2018-06-02' THEN 1 ELSE 0 END) AS avg_users_before, 
    AVG(CASE WHEN login_timestamp >= '2018-06-02' THEN 1 ELSE 0 END) AS avg_users_after
FROM 
    login_history
GROUP BY 
    login_timestamp;


-- PART 2: Create a SQL query that indicates the number of status changes by card

SELECT 
    cardID, 
    COUNT(*) AS status_changes
FROM 
    card_change_history
GROUP BY 
    cardID;



