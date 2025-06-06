CREATE TABLE messages (
     id SERIAL PRIMARY KEY,
     sender_id INT REFERENCES users(id) ON DELETE CASCADE,
     receiver_id INT REFERENCES users(id) ON DELETE CASCADE,
     content TEXT NOT NULL,
     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
 );