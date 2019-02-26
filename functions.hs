-- Learn you a Haskell for Great Good

-- Baby's first function. 

-- doubleMe takes a number and multiples it by 2.
doubleMe x = x + x

-- doubleUs akes two numbers and multiplies each by two and then adds them together.
doubleUs x y = doubleMe x + doubleMe y 

--
doubleSmallNumber x = if x > 100
    then x
    else doubleMe x

-- boomBang replaces each odd number greater than 10 with "BANG!" and each odd number that's less than 10 with "BOOM!".
-- If a number isn't odd, we throw it out of our list.
boomBang xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

-- _ means that we don't care what we'll draw from the list anyway so instead of writing a variable name that we'll never use,
-- we just write _. This function replaces every element of a list with 1 and then sums that up. 
-- This means that the resulting sum will be the length of our list.
length' xs = sum[1 | _ <- xs]