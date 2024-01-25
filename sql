--Bài 1
SELECT
    SUM(
        CASE
            WHEN device_type = 'laptop' THEN 1 ELSE 0
        END
    ) AS laptop_views,
    SUM(
        CASE
        WHEN device_type IN ('tablet', 'phone') THEN 1 ELSE 0
        END
    ) AS mobile_views
FROM
    viewership;
--Bài 2
select x, y, z,
    case
        when x + y > z AND x + z > y AND y + z > x THEN 'Yes'
        else 'No'
    end as 'triangle'
from triangle
--Bài 3 
SELECT
    ROUND(SUM(CASE 
      WHEN call_category IS NULL THEN 1 
      WHEN call_category = 'n/a' THEN 1
      ELSE 0
    END) * 100 /COUNT(call_category), 1)
FROM callers
--Bài 4
select name from customer 
where referee_id <> 2
	or referee_id is null
--Bài 5
SELECT
    survived,
    sum(CASE WHEN pclass = 1 THEN 1 ELSE 0 END) AS first_class,
    sum(CASE WHEN pclass = 2 THEN 1 ELSE 0 END) AS second_class,
    sum(CASE WHEN pclass = 3 THEN 1 ELSE 0 END) AS third_class
FROM titanic
GROUP BY 
    survived
    
