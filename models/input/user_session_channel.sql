
-- models/input/user_session_channel.sql
WITH user_session_channel AS (
  SELECT
    userId,
    sessionId,
    channel
  FROM {{ source('raw_data', 'user_session_channel') }}
  WHERE sessionId IS NOT NULL
)
SELECT * FROM user_session_channel

