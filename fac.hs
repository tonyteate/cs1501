facA n = product [1..n]
facA' n = product [n, n-1..1]
facB n = foldr (*) 1 [1..n]