-- Create the user
CREATE USER 'crossfit'@'localhost' IDENTIFIED BY 'crossfit';

-- Grant all privileges on the database 'miempresa' to the user
GRANT ALL PRIVILEGES ON crossfit.* TO 'crossfit'@'localhost';

-- Apply the changes
FLUSH PRIVILEGES;

