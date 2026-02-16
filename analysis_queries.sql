-- Total Customers
SELECT COUNT(*) AS total_customers FROM customers;

-- Total Transaction Amount
SELECT SUM(amount) AS total_transaction_amount
FROM transactions;

-- Average Transaction Amount
SELECT AVG(amount) AS avg_transaction
FROM transactions;

-- Top Spending Customers
SELECT c.name, SUM(t.amount) AS total_spent
FROM customers c
JOIN accounts a ON c.customer_id = a.customer_id
JOIN transactions t ON a.account_id = t.account_id
WHERE t.transaction_type = 'Debit'
GROUP BY c.name
ORDER BY total_spent DESC;

-- City-wise Customer Distribution
SELECT city, COUNT(*) AS customer_count
FROM customers
GROUP BY city;

-- Account Type Balance Analysis
SELECT account_type, AVG(balance) AS avg_balance
FROM accounts
GROUP BY account_type;
