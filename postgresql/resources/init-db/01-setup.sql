-- Create a read-only user for students to practice with
CREATE ROLE naman WITH LOGIN PASSWORD 'naman';
GRANT USAGE ON SCHEMA public TO naman;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO naman;

-- Create an admin-level user for a specific service
CREATE ROLE service_admin WITH LOGIN PASSWORD 'admin_pass';
ALTER ROLE service_admin CREATEDB;

CREATE database learning
with
owner = naman
encoding = 'UTF8'
connection limit = -1;