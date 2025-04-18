CREATE TABLE subs (
     id SERIAL PRIMARY KEY,
     subscriber_id INT REFERENCES users(id) ON DELETE CASCADE,
     subscribed_to_id INT REFERENCES users(id) ON DELETE CASCADE,
     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
 );