# Schema Information

## users
column name         | data type | details
--------------------|-----------|-----------------------
id                  | integer   | not null, primary key
username            | string    | not null, unique
profile_picture_url | string    |
password_digest     | string    | not null
session_token       | string    | not null, unique

## followings
column name  | data type | details
-------------|-----------|-----------------------
id           | integer   | not null, primary key
following_id | integer   | not null, foreign key (references users)
follower_id  | integer   | not null, foreign key (references users)

## posts
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id     | integer   | not null, foreign key (references users)
image_url   | string    | not null
caption     | string    |
location    | string    |

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
user_id     | integer   | not null, foreign key (references users)
post_id     | integer   | foreign key (references post, if relevant)
body        | string    | not null
read        | boolean   | not null (default false)
