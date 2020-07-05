journeycost :: Float -> Float -> Float
journeycost miles fuelcostperlitre =
  let milespergallon = 35
      litrespergallon = 4.55
      gallons = miles/milespergallon
  in (gallons*litrespergallon*fuelcostperlitre)
-- NB let expression are expressions; 
-- let can be used anywhere an expression is allowed

cel2far :: Float -> Float
cel2far x = (x*scalingfactor) + freezingpoint
  where scalingfactor = 9.0/5.0
        freezingpoint = 32
-- NB where clauses are not expressions; 
-- they can be used only to provide some local variables for top level equation


mylength l =
  case l of
    [] -> 0
    x:xs -> 1+mylength xs

-- empty list pattern is the base case for my length