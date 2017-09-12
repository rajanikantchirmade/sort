-- This is still not working
import Sort

main :: IO ()
main = if qsort [9, 1, 8, 2, 7, 3, 6, 4, 5] == [1,2,3,4,5,6,7,8,9] then print "Test Passed" else "Test Failed"
