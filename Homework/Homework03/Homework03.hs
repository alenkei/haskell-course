-- Question 1
-- Write a function that checks if the monthly consumption of an electrical device is bigger, equal, or smaller than the maximum allowed and
-- returns a message accordingly. 
-- The function has to take the hourly consumption of an electrical device, the hours of daily use, and the maximum monthly consumption allowed.
-- (Monthly usage = consumption (kW) * hours of daily use (h) * 30 days).
mc c h m
  | mu > m = "Consumption was greater"
  | mu < m = "Consumption was smaller"
  | otherwise = "Consumption was equal"
  where
    mu = c * h * 30

-- Question 2
-- Prelude:
-- We use the function `show :: a -> String` to transform any type into a String.
-- So `show 3` will produce `"3"` and `show (3 > 2)` will produce `"True"`.

-- In the previous function, return the excess/savings of consumption as part of the message.
mc' c h m
  | mu > m = "Consumption was greater by " ++ show (mu - m)
  | mu < m = "Consumption was smaller: " ++ show (m - mu)
  | otherwise = "Consumption was equal"
  where
    mu = c * h * 30


-- Question 3
-- Write a function that showcases the advantages of using let expressions to split a big expression into smaller ones.
-- Then, share it with other students in Canvas.


-- Question 4
-- Write a function that takes in two numbers and returns their quotient such that it is not greater than 1.
-- Return the number as a string, and in case the divisor is 0, return a message why the division is not
-- possible. To implement this function using both guards and if-then-else statements.
lq :: Double -> Double -> String
lq a b
  | a == 0 && b > a = "Cannot divide by zero"
  | b == 0 && a > b = "Cannot divide by zero"
  | otherwise = if a < b then show (a/b) else show (b/a)

-- Question 5
-- Write a function that takes in two numbers and calculates the sum of square roots for the product and quotient
-- of those numbers. Write the function such that you use a where block inside a let expression and a
-- let expression inside a where block. 
