fizzBuzzHelper y x= 
    if y >= x
        then 0
    else 
        if y `mod` 3 == 0 || y `mod` 5 == 0
            then y + fizzBuzzHelper (succ y) x
        else
            fizzBuzzHelper (succ y) x

fizzBuzz x = fizzBuzzHelper 3 x
