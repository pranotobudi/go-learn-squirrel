DROP TABLE IF EXISTS emails;

CREATE TABLE IF NOT EXISTS emails (
    email VARCHAR(255) NOT NULL UNIQUE,
    subject VARCHAR(255),
    body VARCHAR (1000),
    PRIMARY KEY (email) 
);


INSERT INTO emails
  ( email, subject, body )
VALUES
  ('pranotobudi.s@gmail.com', 'Subject 1', 'This is body email 1'), 
  ('ultiumlabs@gmail.com', 'Subject 2', 'This is body email 2');

