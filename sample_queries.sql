-- Total income by platform
SELECT p.platform_name, SUM(g.income) AS total_income
FROM gigs g
JOIN platforms p ON g.platform_id = p.platform_id
GROUP BY p.platform_name;

-- Net earnings per gig
SELECT gig_id,
       income - expenses AS net_earnings
FROM gigs;

-- Monthly summary (demo version)
SELECT DATE_FORMAT(gig_date, '%Y-%m') AS month,
       SUM(income) AS total_income,
       SUM(expenses) AS total_expenses,
       SUM(income - expenses) AS net_total
FROM gigs
GROUP BY month;
