🏡 Real Estate Database Project
📌 Overview

This project implements a Real Estate Management System using SQL.
It models the relationships between Agents, Clients, Properties, and Transactions, enabling queries to analyze sales performance, property availability, commissions, and more.

🗂 Database Schema

The project creates and manages the following tables:

Agents – Stores real estate agents’ details.

agents_id, name, phone, email

Clients – Stores clients’ details.

client_id, name, phone, email

Properties – Stores information about listed properties.

property_id, address, city, price, status (Available/Sold)

Transactions – Records transactions between clients and agents.

transaction_id, property_id, client_id, agents_id, salesPrice, commission, date

🛠 Features & Queries

✅ Insert sample data for 30 agents, 30 clients, and 30 properties
✅ Record transactions with sales price & commission tracking
✅ Query real-world scenarios such as:

List available properties with their agent details

Find the top 3 agents with the most transactions

Retrieve all transactions for a specific client

Show properties in a price range with agent details

Calculate total sales per agent

Get client names who purchased in a specific city

Identify properties never sold

Calculate agent commissions (descending order)

Find the most expensive property sold and its buyer

Count the number of properties sold in each city

📊 Example Queries

🔹 Available Properties with Agent Details

SELECT a.name, p.status
FROM properties p
JOIN transactions t ON p.property_id = t.property_id
JOIN agents a ON t.agents_id = a.agents_id
WHERE p.status = 'available';


🔹 Top 3 Agents by Transactions

SELECT a.agents_id, a.name, COUNT(t.transaction_id) AS total_transaction
FROM agents a
JOIN transactions t ON a.agents_id = t.agents_id
GROUP BY a.agents_id, a.name
ORDER BY total_transaction DESC
LIMIT 3;


🔹 Commission per Agent

SELECT a.agents_id, a.name, SUM(t.commission) AS total_commission
FROM agents a
JOIN transactions t ON a.agents_id = t.agents_id
GROUP BY a.agents_id, a.name
ORDER BY total_commission DESC;

🚀 How to Use

Import the SQL file into your database:

mysql -u root -p < Real_Estate\ Project.sql


Run the queries inside the script or modify them as per your requirements.

Explore different scenarios for real estate sales analysis.

📖 Use Cases

Real estate agencies tracking sales & commissions

Business insights into top-performing agents

Identifying profitable cities and properties

Data analysis for property investments
