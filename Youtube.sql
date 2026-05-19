select * from in_youtube_trending_data;
show tables;
SELECT categoryid, AVG(view_count) AS avg_view_count FROM in_youtube_trending_data GROUP BY categoryid ORDER BY avg_view_count DESC;

SELECT title, DATEDIFF(trending_date, publishedAt) AS trending_duration
FROM in_youtube_trending_data;

SELECT categoryId, COUNT(*) AS total_videos FROM in_youtube_trending_data GROUP BY categoryId
ORDER BY total_videos DESC;

SELECT title, ROUND(((likes + comment_count) * 100.0 / view_count),2) AS engagement_rate FROM in_youtube_trending_data
ORDER BY engagement_rate DESC;

SELECT channelTitle, COUNT(*) AS trending_count FROM in_youtube_trending_data GROUP BY channelTitle
ORDER BY trending_count DESC;

SELECT categoryId, AVG(likes) AS avg_likes FROM in_youtube_trending_data GROUP BY categoryId
ORDER BY avg_likes DESC;

SELECT MONTH(trending_date) AS month, COUNT(*) AS total_trending FROM in_youtube_trending_data GROUP BY MONTH(trending_date)
ORDER BY month;

SELECT title, view_count FROM youtube_trending ORDER BY view_count DESC
LIMIT 10;

SELECT title, comment_count FROM in_youtube_trending_data ORDER BY comment_count DESC
LIMIT 10;

SELECT title, likes FROM in_youtube_trending_data ORDER BY likes  DESC
LIMIT 10;

SELECT title, ROUND((dislikes * 100.0 / view_count),2) AS dislike_ratio FROM in_youtube_trending_data
ORDER BY dislike_ratio DESC;



