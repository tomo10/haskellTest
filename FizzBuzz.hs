fizzBuzzOne :: (Show a, Integral a) => a -> String
fizzBuzzOne i | i `mod` 5 == 0 && i `mod` 3 == 0 = "FizzBuzz"
fizzBuzzOne i | i `mod` 5 == 0 = "Buzz"
fizzBuzzOne i | i `mod` 3 == 0 = "Fizz"
fizzBuzzOne i = show i

fizzBuzz :: (Show a, Integral a) => [a] -> [String]
fizzBuzz [] = []
fizzBuzz (i:is) = fizzBuzzOne i : fizzBuzz is
-- last line above can also be written as this
-- fizzBuzz = map fizzBuzzOne

main :: IO ()
main = putStr $ unlines $ fizzBuzz [1..100]


