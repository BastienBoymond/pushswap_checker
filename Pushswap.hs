module Pushswap where
import System.Environment
import Data.Char
import System.Exit
import System.IO
import Data.Maybe
import Text.Read

myStwa :: String -> [String]
myStwa "" = []
myStwa s = words s

myCheckListSort :: ([Maybe Int], [Maybe Int]) -> Bool
myCheckListSort ([], []) = True
myCheckListSort ([a], []) = True
myCheckListSort (a:b:xs, []) | a > b = False
myCheckListSort (a:as, []) = myCheckListSort (as, [])
myCheckListSort (_ , a) = False

sa :: [Maybe Int] -> [Maybe Int] -> ([Maybe Int], [Maybe Int])
sa [] [] = ([],[])
sa [a] [] = ([a], [])
sa (a:b:as) [] = (b:a:as, [])
sa _ _ = ([], [])

sb :: [Maybe Int] -> [Maybe Int] -> ([Maybe Int], [Maybe Int])
sb [] [] = ([],[])
sb [] [a] = ([], [a])
sb [] (a:b:as) = ([], b:a:as)
sb _ _ = ([], [])

sc :: [Maybe Int] -> [Maybe Int] -> ([Maybe Int], [Maybe Int])
sc [] [] = ([], [])
sc a [] = sa a []
sc [] a = sb [] a
sc a b = sa a [] >> sb [] b

pa :: [Maybe Int] -> [Maybe Int] -> ([Maybe Int], [Maybe Int])
pa [a] [] = ([a], [])
pa [] [] = ([], [])
pa (a:b) (c:d) = (c:a:b, d)
pa _ _ = ([], [])

pb :: [Maybe Int] -> [Maybe Int] -> ([Maybe Int], [Maybe Int])
pb [] [b] = ([], [b])
pb [] [] = ([], [])
pb (a:b) (c:d) = (b, a:c:d)
pb _ _ = ([], [])

ra :: [Maybe Int] -> [Maybe Int] -> ([Maybe Int], [Maybe Int])
ra [] [] = ([], [])
ra [a] [] = ([a], [])
ra (a:b:as) [] = (b:as ++ [a], [])
ra _ _ = ([], [])

rb :: [Maybe Int] -> [Maybe Int] -> ([Maybe Int], [Maybe Int])
rb [] [] = ([], [])
rb [] [a] = ([], [a])
rb [] (a:b:as) = ([], b:as ++ [a])
rb _ _ = ([], [])

rr :: [Maybe Int] -> [Maybe Int] -> ([Maybe Int], [Maybe Int])
rr [] [] = ([], [])
rr a [] = ra a []
rr [] a = rb [] a
rr a b = ra a [] >> rb [] b

rra :: [Maybe Int] -> [Maybe Int] -> ([Maybe Int], [Maybe Int])
rra [] [] = ([], [])
rra (a:as) [] = (last (a:as) : init (a:as), [])
rra [a] [b] = ([a], [b])
rra (a:as) [b] = (last (a:as) : init (a:as), [b])
rra _ _ = ([], [])

rrb :: [Maybe Int] -> [Maybe Int] -> ([Maybe Int], [Maybe Int])
rrb [] [] = ([], [])
rrb [] (b:bs) = ([], last (b:bs) : init (b:bs))
rrb [a] [b] = ([a], [b])
rrb [a] (b:bs) = ([a], last (b:bs) : init (b:bs))
rrb _ _ = ([], [])

rrr :: [Maybe Int] -> [Maybe Int] -> ([Maybe Int], [Maybe Int])
rrr [] [] = ([], [])
rrr a [] = rra a []
rrr [] a = rrb [] a
rrr a b = rra a [] >> rrb [] b

argsIntToIntList :: [String] -> [Maybe Int]
argsIntToIntList [] = []
argsIntToIntList (a:as) = map readMaybe (a:as)

getAction :: String -> ([Maybe Int],[Maybe Int])  -> ([Maybe Int], [Maybe Int])
getAction "sa" (a, b) = sa a b
getAction "sb" (a, b) = sb a b
getAction "sc" (a, b) = sc a b
getAction "pa" (a, b) = pa a b
getAction "pb" (a, b) = pb a b
getAction "ra" (a, b) = ra a b
getAction "rb" (a, b) = rb a b
getAction "rr" (a, b) = ra a b
getAction "rra" (a, b) = rra a b
getAction "rrb" (a, b) = rrb a b
getAction "rrr" (a, b) = rrr a b
getAction _ _ = ([], [])


findActions :: [String] -> ([Maybe Int], [Maybe Int]) -> ([Maybe Int], [Maybe Int])
findActions ("sa":b)  (a : c, as) = getAction "sa" (a : c, as)
findActions ("sb":b)  (a : c, as)  = getAction "sb" (a : c, as)
findActions ("sc":b)  (a : c, as)  = getAction "sc" (a : c, as)
findActions ("pa":b)  (a : c, as)  = getAction "pa" (a : c, as)
findActions ("pb":b)  (a : c, as)  = getAction "pb" (a : c, as)
findActions ("ra":b)  (a : c, as)  = getAction "ra" (a : c, as)
findActions ("rb":b)  (a : c, as)  = getAction "rb" (a : c, as)
findActions ("rr":b)  (a : c, as)  = getAction "rr" (a : c, as)
findActions ("rra":b) (a : c, as)  = getAction "rra" (a : c, as)
findActions ("rrb":b) (a : c, as)  = getAction "rrb" (a : c, as)
findActions ("rrr":b) (a : c, as)  = getAction "rrr" (a : c, as)
findActions _ _ = ([], [])

doProcess :: [String] -> ([Maybe Int], [Maybe Int]) -> ([Maybe Int], [Maybe Int])
doProcess [] b = b
doProcess (a:xs) (b, []) = doProcess xs (findActions (a:xs) (b, []))
doProcess (a:xs) b = doProcess xs (findActions (a:xs) b)

main :: IO ()
main = do
    actionsStr <- getLine
    args <- getArgs
    let intList = argsIntToIntList args
    let actions = myStwa actionsStr
    if Nothing `elem` intList then exitWith(ExitFailure 84)
    else putStr ""
    if myCheckListSort (doProcess actions (intList, [])) then print "OK" >> exitSuccess else print "KO" >> exitWith(ExitFailure 84)