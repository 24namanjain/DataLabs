SET message "Hi there!"

GET message

-- Run only if the key does exist
SET asdf "Hello" XX
GET asdf

-- Run only if the key does not exist
SET message "Hello" NX
GET message

-- Expiry Options
-- Set the key to expire in 10 seconds
SET color "RED" EX 10
GET color

SETEX color 10 "BLUE"
GET color

-- Multiple Set & Get
-- Syntax: MSET key1 value1 [key2 value2 ...]
-- Syntax: MGET key1 [key2 ...]
MSET name "Naman" city "Delhi"
MGET name city

-- MSET does not support Expiry Options in pre Redis 8.4
MSET platform "Flipkart" sale "Big Billion"
MGET platform sale
MSET platform "Amazon" sale "Great Indian"

-- Delete a key
DEL name platform

-- String Ranges
GETRANGE platform 4 8
SETRANGE platform 4 dart

-- Numeric
SET age 20
GET age

INCR age
GET age

DECR age
GET age

INCRBY age 10
GET age

DECRBY age 10
GET age

INCRBYFLOAT age 1.5
GET age

INCRBYFLOAT age -1.5
GET age
