module Tests where
import Pushswap (sa)
import Test.HUnit

testMySa1 = TestLabel "testMySa1" (TestCase $ assertEqual
                 "mySa" [1,2,3] (sa [2,1,3]))

tests = TestList [TestLabel "testMySa1" testMySa1]


main :: IO Counts
main = do
    runTestTT tests