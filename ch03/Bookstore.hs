-- BookInfo is our type constructor 
-- Book is our value contructor
-- Int String [String] are components (aka fields) of the type
data BookInfo = Book Int String [String]
                deriving (Show)

data MagazineInfo = Magazine Int String [String]
                deriving (Show)

myInfo = Book 970 "Alegebra of Programming" ["Richard Bird", "Oege de Moor"]

-- we can use synonyms do give more descriptive names. never a bad idea

type CustomerID = Int
type ReviewBody = String

data BetterReview = BetterReview BookInfo CustomerID ReviewBody

---------------------

type CardHolder = String 
type CardNumber = Int
type Address = [String]

data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice 
                   deriving (Show)


-- pattern matching

bookID      (Book id title authors) = id
bookTitle   (Book id title authors) = title
bookAuthors (Book id title authors) = authors