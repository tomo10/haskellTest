import Test.QuickCheck
quickCheck ((\n -> (abs(n) == n)) :: Int -> Bool)