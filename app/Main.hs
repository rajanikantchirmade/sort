module Main where

import Sort

main :: IO ()
main = do
  print $ qsort [9, 1, 8, 2, 7, 3, 6, 4, 5]
  print $ selectionsort [9, 1, 8, 2, 7, 3, 6, 4, 5]
