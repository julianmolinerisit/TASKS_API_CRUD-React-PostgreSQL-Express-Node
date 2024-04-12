CREATE TABLE task(                                    -- Primero ejecutamos este
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) UNIQUE NOT NULL,
    description TEXT
);

ALTER TABLE task ADD COLUMN user_id INTEGER REFERENCES users(id);    -- Tercero este

-- remove unique from title
ALTER TABLE task DROP CONSTRAINT task_title_key;                     -- Cuarto este

CREATE TABLE users (                                    -- Segundo este
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

ALTER TABLE users ADD COLUMN gravatar VARCHAR(255);   -- Quinto este