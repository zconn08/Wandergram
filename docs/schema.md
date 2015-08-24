# Schema Information

## users
column name         | data type | details
--------------------|-----------|-----------------------
id                  | integer   | not null, primary key
username            | string    | not null, unique
password_digest     | string    | not null
session_token       | string    | not null, unique
image_id            | integer   | foreign key, default 1
bio                 | string    |

## followings
column name  | data type | details
-------------|-----------|-----------------------
id           | integer   | not null, primary key
followee_id  | integer   | not null, foreign key (references users)
follower_id  | integer   | not null, foreign key (references users)

## posts
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references users)
image_id    | integer   | not null
caption     | string    |
location    | string    | not null
lat         | float     | not null
lng         | float     | not null

## likes
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references users)
post_id     | integer   | not null, foreign key (references posts)

## comments
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
post_id     | integer   | not null, foreign key (references posts)
user_id     | integer   | not null, foreign key (references users)
body        | string    | not null

## notifications
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
post_id     | integer   | foreign key (references post, if relevant)
body        | string    | not null
user_id     | integer   | not null, foreign key (references users)
creator_id  | integer   | not null, foreign key (references users)
read        | boolean   | not null (default false)

## images
column name   | data type | details
--------------|-----------|-----------------------
id            | integer   | not null, primary key
url           | string    | not null
thumbnail_url | string    | not null
