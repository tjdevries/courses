
Function calling has the highest priority of any operation.

So f a + c ==> f(a) + c
f x (g y) ==> f(x,g(y))


= Haskell Scripts =
".hs" is the suffix for Haskell scripts

Infix operator
```haskell
average ns = sum ns `div` length ns

-- This is the same as:
average ns = div (sum ns) (length ns)
```

Naming conventions:
1. Function and argument names must begin with a lowe-case letter
    - Can also use `'` as an identifier.
2. List arguments usually have an _s_ suffic after their name.
    - _ss_ means list of lists
3. Types must begin with an upper-case letter

Whitespace is significant in Haskell

What is a type?
- A _type_ is a name for a collection of related values. `Bool` => `False`, `True`
- Every (well formed) expression has a type.
    - To specify a type, use `e :: t`, which means `e has type t`

Base Types:
- Bool
- Char
- String (strings of characters -- a list of characters)
- Int (fixed-precision integers)
- Integer (Arbitrary precision integers)
- Float


= Generic Types =
Lists:
A list is a sequence of values of the *same* type
- Generally, `[t]` is the type of lists with elements of type t

Tuples:
A tuple is a sequence of values of *different* types.
Must be of the same length -- the tuple encodes its size.

Curried Functions
Functions with multiple arguments are also possible by returning functions as results:
```haskell
add :: (Int, Int) -> Int
add (x, y) = x + y

add'     :: Int -> (Int -> Int)
add' x y = x+y
```

Polymorphic Functions
A function is called "polymorphic" -- of many forms -- if its type contains one more type variables.
```haskell
length :: [a] -> Int
```
You can tlle "a" is a variable, because it doesn't start with a capital letter.
- usually use a, b, or c for types

Overloaded Functions
A polymorphic function is called overloaded if its type contains one or more class constraints.
```haskell
sum :: Num a => [a] -> a
```
Pretty similar to thinking of interface implementation. Sum only works on things that implement the Num interface

Haskell has a number of type classes:
- Num: Numeric types
- Eq: Equality types
- Ord: Ordered types

Guarded equations
They are another way to write conditionals

Pattern Matching
```haskell
not     :: Bool -> Bool
not True = False
not False = True

(&&) :: Bool -> Bool -> Bool
True && True = True
_ && _       = False
```
Patterns are always matched left->right, top->bottom.
All the variables inside of a pattern must be unique

x:xs pattern
it's a real thing... I guess you really just need to know it.


Lambda expressions
Helpful when writing curried functions. \x -> \y -> x + y
Use when using a function _only_ once

Sections:
This was the cool thing about "+"

1 + 2
(+) 1 2
(1+) 2
(+2) 1

All are equivalent
