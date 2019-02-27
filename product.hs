prod []     = 1
prod (n:ns) = n * prod ns

n = a `div` length xs
    where
       a = 10
       xs = [1,2,3,4,5]