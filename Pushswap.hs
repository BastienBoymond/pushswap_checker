{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
module Pushswap where
import System.Environment
import Data.Char
import Data.List.Split
import System.Exit
import System.IO
import Data.Maybe
import Text.Read

myStwa :: String -> [String]
myStwa "" = []
myStwa s = splitOn " " s

myCheckListSort :: [Maybe Int] -> Bool
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

rra :: [Maybe Int] -> [Maybe Int]
rra [] = []
rra [a] = [a]
rra (a:as) = last (a:as) : init (a:as)

rrb :: [Maybe Int] -> [Maybe Int]
rrb [] = []
rrb [a] = [a]
rrb (a:as) = last (a:as) : init (a:as)

rrr :: [Maybe Int] -> [Maybe Int] -> ([Maybe Int], [Maybe Int])
rrr [] [] = ([], [])
rrr a [] = (rra a, [])
rrr [] a = ([], rrb a)
rrr a b = (rra a, rrb b)

argsIntToIntList :: [String] -> [Maybe Int]
argsIntToIntList [] = []
argsIntToIntList (a:as) = map readMaybe (a:as)

getAction :: String -> ([Maybe Int] -> [Maybe Int])
getAction _ = rrb

findActions :: [String] -> ([Maybe Int], [Maybe Int])-> [Maybe Int]
findActions ("sa":b)  ((a : c): as) = getAction "sa" (a:as)
findActions ("sb":b)  (a:as) = getAction "sb" (a:as)
findActions ("sc":b)  (a:as) = getAction "sc" (a:as)
findActions ("pa":b)  (a:as) = getAction "pa" (a:as)
findActions ("pb":b)  (a:as) = getAction "pb" (a:as)
findActions ("ra":b)  (a:as) = getAction "ra" (a:as)
findActions ("rb":b)  (a:as) = getAction "rb" (a:as)
findActions ("rr":b)  (a:as) = getAction "rr" (a:as)
findActions ("rra":b)  (a:as) = getAction "rra" (a:as)
findActions ("rrb":b)  (a:as) = getAction "rrb" (a:as)
findActions ("rrr":b)  (a:as) = getAction "rrr" (a:as)
findActions _ _ = []

main :: IO ()
main = do
    actionsStr <- getLine
    args <- getArgs
    let intList = argsIntToIntList args
    let actions = myStwa actionsStr
    if Nothing `elem` intList then exitWith(ExitFailure 84)
    else putStr ""
    if myCheckListSort (findActions actions intList) then print "OK" >> exitSuccess else print "KO" >> exitWith(ExitFailure 84)