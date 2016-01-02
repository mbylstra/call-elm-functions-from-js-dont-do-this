module PureElmExamples where

import String

add : Int -> Int -> Int
add a b = a + b

{-
 a "pure Elm" implementation of List.Reverse. You wouldn't actually
 use this in practice of course.
-}
listReverse : List a -> List a
listReverse xs =
    List.foldl (\x acc -> [x] ++ acc) [] xs

{-
  Another contrived example: reverse a string purely with Elm code.
  The string must first first be converted to a List of Char to be
  able to use to the listReverse function
-}
stringReverse : String -> String
stringReverse s =
    s |> String.toList |> listReverse |> String.fromList
