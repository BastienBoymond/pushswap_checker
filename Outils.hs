module Outils where
import Text.Read

myCActions :: ([Maybe Int], [Maybe Int]) -> Maybe Int
myCActions ([],[]) = Just 0
myCActions (a, b) | Nothing `elem` a || Nothing `elem` b = Nothing
myCActions (a:as, b:bs) = myCActions (as, bs)
myCActions (_,_) = Just 0

myStwa :: String -> [String]
myStwa "" = []
myStwa s = words s

myCLSort :: ([Maybe Int], [Maybe Int]) -> Bool
myCLSort ([], []) = True
myCLSort ([a], []) = True
myCLSort (a:b:xs, []) | a > b = False
myCLSort (a:as, []) = myCLSort (as, [])
myCLSort (_ , a) = False

argsIntToIntList :: [String] -> [Maybe Int]
argsIntToIntList [] = []
argsIntToIntList (a:as) = map readMaybe (a:as)
