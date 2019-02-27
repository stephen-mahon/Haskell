qsort []     = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
               where
                  smaller = [a | a <- xs, a <x]
                  larger  = [b | b <- xs, b >x]


qsortrevs []     = []
qsortrevs (x:xs) = qsortrevs ys ++ [x] ++ qsortrevs zs
                   where
                      ys = [a | a <- xs, a >x]
                      zs = [b | b <- xs, b <=x]