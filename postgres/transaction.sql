-- show active transactions
SELECT pid,
       now() - pg_stat_activity.query_start AS duration,
       query,
       state, usename, backend_type
FROM pg_stat_activity
where state = 'active'
order by duration desc;

-- show active transactions that are running for more than 5 minutes
SELECT
  pid,
  now() - pg_stat_activity.query_start AS duration,
  query,
  state
FROM pg_stat_activity
WHERE state = 'active' and (now() - pg_stat_activity.query_start) > interval '5 minutes';

-- Cancels the current query of the session whose backend process has the specified PID by sending SIGINT 
SELECT pg_cancel_backend(pid);

-- Cancels the current query of the session whose backend process has the specified PID by sending SIGTERM 
SELECT pg_terminate_backend(pid);
