-- Learn you a Haskell for Great Good
-- §2 Starting Out

-- doubleMe takes a number and multiples it by 2.
doubleMe x = x + x

-- doubleUs akes two numbers and multiplies each by two and then adds them together.
doubleUs x y = doubleMe x + doubleMe y 

-- A function that multiplies a number by 2 but only if that number is smaller than or equal to 100.
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


-- A function that takes a string and removes everything except uppercase letters from it.
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]   

-- which right triangle that has integers for all sides and all sides equal to or smaller than 10 has a perimeter of 24?
rightTriangles = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2 ]
rightTriangles' = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24 ]