-- script that creates a tabe users with these attr
-- id, email, name...
CREATE TABLE IF NOT EXISTS users(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        email VARCHAR(255) NOT NULL UNIQUE,
        name VARCHAR(255)
        );
