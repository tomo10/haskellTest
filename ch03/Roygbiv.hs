-- the enumeration type. 

data Roygbiv = Red
             | Orange
             | Yellow
             | Green
             | Blue
             | Indigo
             | Violet
               deriving (Eq, Show)

-- Shape Union 

type Vector = (Double, Double)

data Shape = Circle Vector Double 
           | Poly [Vector]
           