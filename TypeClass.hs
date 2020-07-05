data Bright 
  = Blue 
  | Red
  deriving (Read, Show)

darkBright :: Bright -> Bool
darkBright Blue = True 
darkBright Red = False

lightenBright :: Bright -> Bright 
lightenBright Blue = Red 
lightenBright Red = Red

-- type for milder colours 
data Pastal 
  = Turquoise
  | Tan
  deriving (Read, Show)

darkPastel :: Pastal -> Bool 
darkPastel Turquoise = True 
darkPastel Tan = False 

lightenPastel :: Pastal -> Pastal
lightenPastel Turquoise = Tan
lightenPastel Tan = Tan 


-- we can define a class Colour and its corresponding functions 
class Colour a where 
  dark :: a -> Bool 
  lighten :: a -> a

-- an instance
instance Colour Bright where 
  dark = darkBright
  lighten = lightenBright

-- another instance
instance Colour Pastal where 
  dark = darkPastel
  lighten = lightenPastel


