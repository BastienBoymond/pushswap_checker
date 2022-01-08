module Pushswap where
import System.Environment
import Data.Char
import System.Exit
import System.IO
import Data.Maybe
import Text.Read
import Actions
import Findactions
import Outils

process :: [String] -> ([Maybe Int], [Maybe Int]) ->
                            ([Maybe Int], [Maybe Int])
process [] b = b
process (a:xs) (b, []) = process xs (execActions (a:xs) (b, []))
process (a:xs) b = process xs (execActions (a:xs) b)

printResult :: ([Maybe Int], [Maybe Int]) -> IO ()
printResult b = putStr "KO: " >> print b

main :: IO ()
main = do
    actionsStr <- getLine
    args <- getArgs
    let intList = argsIntToIntList args
    let actions = myStwa actionsStr
    if Nothing `elem` intList then exitWith(ExitFailure 84) else putStr ""
    let result = process actions (intList, [])
    if myCActions result == Just 0 then putStr "" else exitWith(ExitFailure 84)
    if myCLSort result then print "OK" >> exitSuccess
    else printResult result >> exitWith(ExitFailure 84)