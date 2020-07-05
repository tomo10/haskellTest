speller :: [[Char]] -> [Char]
speller [] = ""


-- currying (named after Haskell Curry)
f :: Int -> Int -> Int
f x y = 2*x + y



-- test

join :: String -> [String] -> String
join str strs = foldl (++) str strs
