-- simple factorial definition

fact2 :: Int -> Int
fact2 0 = 1
fact2 n = n*fact2(n-1)

-- make people noble

mknoble :: Bool -> String -> String
mknoble female name = (if female then "Dame " else "Sir ") ++ name


