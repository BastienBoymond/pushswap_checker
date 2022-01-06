import Data.Text

myStwa :: String -> [Text]
myStwa "" = []
myStwa s = splitOn (pack " ")  (pack s)

myCheckListSort :: [Int] -> Bool
myCheckListSort [] = True
myCheckListSort [a] = True
myCheckListSort (a:b:xs) | a > b = False
myCheckListSort (a:as) = myCheckListSort as

sa :: [Int] -> [Int]
sa [] = []
sa [a] = [a]
sa (a:b:as) = b:a:as

sb :: [Int] -> [Int]
sb  [] = []
sb [a] = [a]
sb (a:b:as) = b:a:as

sc :: [Int] -> [Int] -> ([Int], [Int])
sc [] [] = ([], [])
sc a [] = (sa a, [])
sc [] a = ([], sb a)
sc a b = (sa a, sb b)

ra :: [Int] -> [Int]
ra [] = []
ra [a] = [a]
ra (a:b:as) = b:as ++ [a]

rb :: [Int] -> [Int]
rb [] = []
rb [a] = [a]
rb (a:b:as) = b:as ++ [a]

rr :: [Int] -> [Int] -> ([Int], [Int])
rr [] [] = ([], [])
rr a [] = (ra a, [])
rr [] a = ([], rb a)
rr a b = (ra a, rb b)