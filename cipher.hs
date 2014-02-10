-- cipher.hs
-- |The 'cipher' function encrypts a lowercase string using rotx 
-- |where x in an integer
cipher :: [Char] -> Int -> [Char]
cipher xs n = [last (take (n+1) ([x..'z']++['a'..'z'])) | x <- xs]

cipher' xs n  = [last ( take ((14) - ((n `mod` 13)) ) (iterate (if x<(['a'..'z']!!(n-1)) then succ else pred) x) ) | x <-xs]

cipher'' xs n  = [ (iterate (if x<(['a'..'z']!!(n-1)) then succ else pred) x) !! n  | x <-xs]