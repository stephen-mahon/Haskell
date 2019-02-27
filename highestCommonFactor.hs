{-##############################################################################

		highestCommonFactor.hs
		
		Stephen Mahon, September 2017
		
		The purpose of this function is to give a recursive definition to find the highest common factor of two positive integers.
	  	  	 	  
	 	Taken from Haskell, the craft of Functional Programming 2nd Ed 1999, Chp. 4, Exercise 4.13

##############################################################################-}

--		Functions I'm using
--		^^^^^^^^^^^^^^^^^^^

-- 		This function returns the remainder of m/n, e.g. 4/3 = 1 rem. 1
--      remainder 4 3 = 1
remainder :: Int -> Int -> Int
remainder m n
  | m < n       = m
  | otherwise   = remainder (m - n) n


--		Rough work
--		^^^^^^^^^^
--
--		highestCommonFactor 420 396
--		remainder 420 396 == 0
--      ?? remainder 420 396
--		?? 24
--      ~> False
--		remainder 396 (remainder 420 396)
--		?? remainder 396 (remainder 420 396)
--		?? remainder 396 24
--		?? remainder 396 24
--      ?? 12 ==0
--		~> False
--		remainder (remainder 420 396) (remainder 396 (remainder 420 396)) == 0
--		?? remainder (remainder 420 396) (remainder 396 (remainder 420 396))
--		?? remainder 24 (remainder 396 24)
--		?? remainder 24 12
--		?? 0 == 0
--		~> True
--		return remainder 396 (remainder 420 396) = 12


highestCommonFactor :: Int -> Int -> Int
highestCommonFactor m n
  | remainder m n == 0 = n
  | otherwise = remainder m (remainder m n)