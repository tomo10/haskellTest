module Main where
import ShowParser ( parseShow )

data PersonRecord = MkPersonRecord {
  name :: String,
  address :: Address,
  id :: Integer,
  labels :: [Label]
} deriving Show 

data Address = MkAddress {
  line1 :: String,
  number :: Integer,
  street :: String,
  town :: String,
  postcode :: String 
} deriving Show 

data Label = Green | Red | Blue | Yellow deriving Show

-- create some instances 
rec1 = MkPersonRecord 
     "Thomas Edwards"
     (MkAddress "The White House" 555 "Pennsylvania Drive" "Washington DC" "45393")
     333
     [Green, Red]

rec2 = MkPersonRecord 
     "Harry Styles"
     (MkAddress "Red House" 67 "Drury Drive" "Utah" "42211")
     332
     [Green, Yellow]

-- main = putStrLn $ show [rec1, rec2]

rec_str = show [rec1, rec2]
main = putStrLn $ parseShow rec_str


