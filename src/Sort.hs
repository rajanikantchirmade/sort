module Sort
  (qsort,
   selectionsort
  ) where
 
qsort :: (Num a, Ord a) => [a] -> [a]
qsort[] = []
qsort (x:xs) = qsort ys ++ [x] ++ qsort zs
  where
    ys = [a | a <- xs, a <= x]
    zs = [b | b <- xs, b > x]

min_ :: (Num a, Ord a) => a -> a -> a
min_ a b = if a <= b then a else b
listmin :: (Num a, Ord a) => [a] -> a
listmin [x] = x
listmin (x:xs) = min_ x (listmin xs)
selectionsort :: (Num a, Ord a) => [a] -> [a]
selectionsort [x] = [x]
selectionsort zs = [m] ++ selectionsort ys
  where
    m  = listmin zs 
    ys = [a | a <- zs, a /= m]
