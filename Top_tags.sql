with int_cte as (
select cast(10000.0* ((comment_count/10)+(like_count/100))/view_count as decimal (5,2))as interactions,* 
 from GCN_video_data
), top_int as(
SELECT TOP 200 RANK() OVER (ORDER BY interactions DESC) as int_rank, 
rank () OVER(ORDER BY like_count DESC) as like_rank,DATENAME (weekday, upload_date) as day, * from
 int_cte 
 )

SELECT TOP 100
       REPLACE(value,'''','')[word]
     , COUNT(*) [#times]
FROM top_int t


CROSS APPLY STRING_SPLIT(t.tags, ',') 
GROUP BY value

ORDER BY COUNT(*) DESC