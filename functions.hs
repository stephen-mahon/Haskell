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