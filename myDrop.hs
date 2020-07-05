myDrop :: Int -> [a] -> [a]
myDrop n xs = if n <= 0 || null xs        -- this line post if, is our boolean
              then xs                     -- if true
              else myDrop (n-1) (tail xs) -- if false 

