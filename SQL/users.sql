SELECT DATE_TRUNC('day',created_at) AS day_created,
       COUNT(*) AS all_users,
       COUNT(CASE WHEN activated_at IS NOT NULL THEN user_id ELSE NULL END) AS active_users
  FROM tutorial.yammer_users 
   WHERE created_at >= '2014-06-01'
   AND created_at < '2014-09-01'
  GROUP BY day_created