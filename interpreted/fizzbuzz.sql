WITH RECURSIVE numbers_cte AS (
    SELECT 1 AS num
    UNION ALL
    SELECT num + 1
    FROM numbers_cte
    WHERE num < 100
)
SELECT
    num,
    CASE 
        WHEN num % 3 = 0 AND num % 5 = 0 THEN 'FizzBuzz'
        WHEN num % 3 = 0 THEN 'Fizz'
        WHEN num % 5 = 0 THEN 'Buzz'
        ELSE CAST(num AS VARCHAR(10))
    END AS result
FROM numbers_cte;
