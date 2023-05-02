-- Check out the top 100 interacted videos with an interaction score, weighting a comment 10x a like


with int_cte as (
select cast(10000.0* ((comment_count/10)+(like_count/100))/view_count as decimal (5,2))as interactions,* 
 from GCN_video_data
)
SELECT TOP 100 RANK() OVER (ORDER BY interactions DESC) as int_rank, 
rank () OVER(ORDER BY like_count DESC) as like_rank,DATENAME (weekday, upload_date) as day, * from
 int_cte 

ORDER BY interactions DESC





