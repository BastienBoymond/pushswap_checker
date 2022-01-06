import Data.Text

myStwa :: String -> [Text]
myStwa "" = []
myStwa s = splitOn (pack " ")  (pack s)

myCheckListSort :: [Int] -> Bool
myCheckListSort [] = True
myCheckListSort [a] = True
myCheckListSort (a:b:xs) | a > b = False
myCheckListSort (a:as) = myCheckListSort as
