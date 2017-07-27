SELECT DATE_TRUNC('week',occurred_at) AS week_occurred,
       COUNT(CASE WHEN action = 'sent_weekly_digest' THEN 1 ELSE NULL END) AS "weekly digest",
       COUNT(CASE WHEN action = 'email_open' THEN 1 ELSE NULL END) AS "email open",
       COUNT(CASE WHEN action = 'email_clickthrough' THEN 1 ELSE NULL END) AS "email clickthrough",
       COUNT(CASE WHEN action = 'sent_reengagement_email' THEN 1 ELSE NULL END) AS "reengagement email"
  FROM tutorial.yammer_emails 
  GROUP BY week_occurred