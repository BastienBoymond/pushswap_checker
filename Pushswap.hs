module Pushswap where
import Data.Text hiding (last, init, map)
import Data.Char
import System.Environment
import Text.Read (readMaybe)
import System.Exit

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

pa :: [Int] -> [Int] -> ([Int], [Int])
pa [a] [] = ([a], [])
pa [] [] = ([], [])
pa (a:b) (c:d) = (c:a:b, d)
pa _ _ = ([], [])

pb :: [Int] -> [Int] -> ([Int], [Int])
pb [] [b] = ([], [b])
pb [] [] = ([], [])
pb (a:b) (c:d) = (b, a:c:d)
pb _ _ = ([], [])

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

rra :: [Int] -> [Int]
rra [] = []
rra [a] = [a]
rra (a:as) = last (a:as) : init (a:as)

rrb :: [Int] -> [Int]
rrb [] = []
rrb [a] = [a]
rrb (a:as) = last (a:as) : init (a:as)

rrr :: [Int] -> [Int] -> ([Int], [Int])
rrr [] [] = ([], [])
rrr a [] = (rra a, [])
rrr [] a = ([], rrb a)
rrr a b = (rra a, rrb b)

argsIntToIntList :: [String] -> [Maybe Int]
argsIntToIntList [] = []
argsIntToIntList (a:as) = map readMaybe (a:as)

main :: IO ()
main = do
    actionsStr <- getLine
    args <- getArgs
    let intList = argsIntToIntList args
    let actions = myStwa actionsStr
    case elem Nothing intList of
        True -> exitWith(ExitFailure 84)
        False -> print intList
    print actions
    print intList