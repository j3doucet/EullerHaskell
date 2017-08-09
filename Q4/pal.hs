toList x = 
    if x > 0
        then (x `mod` 10) : toList (x `div` 10)
    else
        []

isPal x = toList x == reverse (toList x)

allPals = [x*y | x <- [100..999], y <- [100..999], isPal (x*y)]

biggestPal = maximum allPals

