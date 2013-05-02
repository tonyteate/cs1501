-- factorial.hs

--  |the factorial of n calculates the product of all positive integers less than or equal to n
factorial :: Integer -> Integer
factorial n = foldr (*) 1 [1..n]
