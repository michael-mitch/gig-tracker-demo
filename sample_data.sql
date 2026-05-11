INSERT INTO platforms (platform_name, category)
VALUES
('DoorDash', 'Delivery'),
('Uber', 'Rideshare'),
('TaskRabbit', 'Freelance');

INSERT INTO gigs (platform_id, gig_date, description, income, expenses, mileage)
VALUES
(1, '2025-01-10', 'Dinner deliveries', 85.50, 12.00, 18.2),
(2, '2025-01-11', 'Airport ride', 42.75, 5.00, 12.5),
(3, '2025-01-12', 'Furniture assembly', 120.00, 0.00, 0.0);
