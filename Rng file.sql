Table follows {
  following_user_id integer
  followed_user_id integer
  created_at timestamp 
}


Table users {
  id integer [primary key]
  username varchar
  role varchar
  created_at timestamp
}

Table posts {
  id integer [primary key]
  title varchar
  body text [note: 'Content of the post']
  user_id integer
  status varchar
  created_at timestamp
}

Ref: posts.user_id > users.id // many-to-one

CREATE TABLE users (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255)
);

CREATE TABLE posts (
  id INT PRIMARY KEY,
  user_id INT,
  title VARCHAR(255),
  content TEXT,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

Ref: users.id < follows.following_user_id

CREATE TABLE users (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255)
);

CREATE TABLE follows (
  id INT PRIMARY KEY,
  follower_user_id INT,
  following_user_id INT,
  FOREIGN KEY (follower_user_id) REFERENCES users(id),
  FOREIGN KEY (following_user_id) REFERENCES users(id)
);

Ref: users.id < follows.followed_user_id

CREATE TABLE users (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255)
);

CREATE TABLE follows (
  id INT PRIMARY KEY,
  follower_user_id INT,
  followed_user_id INT,
  FOREIGN KEY (follower_user_id) REFERENCES users(id),
  FOREIGN KEY (followed_user_id) REFERENCES users(id)
);

