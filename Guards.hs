holeScore :: Int -> Int -> String
holeScore strokes par
  | score < 0 = show (abs score) ++ " under par"
  | strokes == 0 = "level par"
  | otherwise = show(score) ++ " over par"
  where score = strokes-par

-- case expressions

data Pet = Cat | Dog | Fish | Parrot String
hello :: Pet -> String
hello x = 
  case x of 
    -- Cat -> "meow"
    -- Dog -> "woof"
    -- Fish -> "bubble"
    Parrot name -> "pretty " ++ name 
    _ -> "grunt"


maxhelper :: Int -> [Int] -> Int 
maxhelper x [] = x
maxhelper x (y:ys) = maxhelper
    (if x>y then x else y) ys

maxfromlist :: [Int] -> Maybe Int
maxfromlist [] = Nothing
maxfromlist (x:xs) = Just (maxhelper x xs)
