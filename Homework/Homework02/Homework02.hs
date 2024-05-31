import Data.Kind

-- Question 1
-- Add the type signatures for the functions below and then remove the comments and try to compile.
-- (Use the types presented in the lecture.)

f1 :: Double -> Double -> Double -> Double
f1 x y z = x ** (y/z)

f2 :: Double -> Double -> Double -> Double
f2 x y z = sqrt (x/y - z)

f3 :: Bool -> Bool -> [Bool]
f3 x y = [x == True] ++ [y]


f4 :: Eq a => [a] -> [a] -> [a] -> Bool
f4 x y z = x == (y ++ z)


-- Question 2
-- Why should we define type signatures of functions? How can they help you? How can they help others?
--   They act as documentation
--   They act as assertions that the compiler checks: help you spot mistakes
--   You can use type annotations to give a function a narrower type than Haskell infers

-- Question 3
-- Why should you define type signatures for variables? How can they help you?
--

-- Question 4
-- Are there any functions in Haskell that let you transform one type to the other? Try googling for the answer.
--   Yes, any function of type "f :: a -> b" performs a type conversion. See also fromInteger

-- Question 5
-- Can you also define in Haskell list of lists? Did we show any example of that? How would you access the inner
-- most elements?
--   Yes, you can
--   No
--   I would write a function that takes a list of Integers and the list of lists and returns the element corresponding
--   to that sub-index if it is not a list otherwise Nothing
--   Spmething like:
lol = [[[1,2,3]]]
im :: [Int] -> [a] -> Maybe a
im a b
  | null a = Nothing
  | null b = Nothing
  | otherwise = Nothing -- TODO