CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name TEXT,
    age INT,
    city TEXT
);

CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    customer_id INT,
    account_type TEXT,
    balance FLOAT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_type TEXT,
    amount FLOAT,
    transaction_date DATE,
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);
