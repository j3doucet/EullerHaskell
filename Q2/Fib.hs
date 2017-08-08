fib f0 f1 fmax = 
    if f0 + f1 >= fmax
        then 0
    else if (f0 + f1) `mod` 2 == 0 
        then f0 + f1 + fib f1 (f0 + f1) fmax
    else
        fib f1 (f0 + f1) fmax
