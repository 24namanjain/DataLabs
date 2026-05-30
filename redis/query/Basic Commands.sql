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
