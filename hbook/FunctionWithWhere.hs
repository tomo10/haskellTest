module FunctionWithWhere where 

printInc n = print plusTwo
  where plusTwo = n + 2

printInc2 n = let plusTwo = n + 2
              in print plusTwo



-- let x = 3; y = 1000 in x * 3 + y
-- equivalent in where format 
mult3plusY = x * 3 + y
  where  x = 3
         y = 1000

mult1     = x * y
  where x = 5
        y = 8

triple x = x * 3

z = 7 
x = y ^ 2
y = z + 8

-- waxOn = x * 5
waxOn     = x * y
  where y = 5

