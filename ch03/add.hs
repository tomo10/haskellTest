myNot True = False
myNot False = True

sumList (x:xs) = x + sumList xs
sumList []     = 0

-- sumList is purely a demostration for pattern matching
