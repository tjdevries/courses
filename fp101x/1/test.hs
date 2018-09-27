
-- hello world
-- double x = x + x
-- quadruple x = double (double x)

-- factorial n = product [1..n]

-- average ns = sum ns `div` length

add :: (Int, Int) -> Int
add (x, y) = x + y

add'     :: Int -> (Int -> Int)
add' x y = x+y

mult :: Int -> (Int -> (Int -> Int))
mult x y z = x*y*z

second :: [a] -> a
second xs = head (tail xs)

swap :: (a, b) -> (b, a)
swap (a, b) = (b, a)

pair :: a -> b -> (a, b)
pair x y = (x, y)

palindrome :: Eq a => [a] -> Bool
palindrome xs = reverse xs == xs

twice f x = f (f x)

signum n
  | n > 0 = 1
  | n == 0 = 1
  | otherwise = -1

my_func x
  | x == 10     = 1
  | otherwise   = 10
