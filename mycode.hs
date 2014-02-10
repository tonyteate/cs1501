-- mycode.hs
-- |The 'zipTogether' function binds together two lists.
-- zipTogether :: [a] -> [b] -> [(a,b)]
zipTogether a b = zip a b
zipTogether xs xx= [(a, b) | a <- xs, b <-xx]
zipTogether' xs xx = (head xs, head xx):(zipTogether' (tail xs) (tail xx))
