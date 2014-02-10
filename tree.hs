import Data.Maybe (fromJust)

data Tree 	= Tree 	{ value :: Int
					, left :: Maybe Tree
					, right :: Maybe Tree}
					deriving (Show)

add :: Tree -> Int
add (Tree x Nothing Nothing) = x
add (Tree x t1 Nothing) = x + add (fromJust t1)
add (Tree x Nothing t2) = x + add (fromJust t2)
add (Tree x t1 t2) = x + add (fromJust t1) + add (fromJust t2)

--data Tree 	= Node Int 
--			| BNode Int Tree 
--			| FNode Int Tree Tree 
--			deriving (Show, Eq)

--add :: Tree -> Int
--add (Node x) = x
--add (BNode x t) = x + (add t)
--add (FNode x t v) = x + (add t) + (add v)