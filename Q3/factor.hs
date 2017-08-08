findFactor x y=
    if y * y > x
        then x
    else if x `mod` y == 0
        then y
    else 
        findFactor x (succ y)

factor x =
    if findFactor x 2 == x
        then x
    else
        factor (x `div` findFactor x 2)
