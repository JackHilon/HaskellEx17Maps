import Data.List
import System.IO


myList = [1, 2, 3, 4, 5, 6]::[Int]

multBy4::Int -> Int
multBy4 x = x * 4

multListItemsBy4UsingMap::[Int] -> [Int]
multListItemsBy4UsingMap list = map multBy4 list


multListItemsBy4::[Int] -> [Int]
multListItemsBy4 [] = []
multListItemsBy4 (x:xs) = multBy4 x : multListItemsBy4 xs



main = do
    print(multListItemsBy4UsingMap myList)
    print(multListItemsBy4 myList)



