module Tests where
import Pushswap (sa, sb, sc)
import Test.HUnit

testMySa1 :: Test
testMySa1 = TestLabel "testMySa1" (TestCase $ assertEqual
                "mySa little check" [1,2,3] (sa [2,1,3]))

testMySa2 :: Test
testMySa2 = TestLabel "testMySa2" (TestCase $ assertEqual
                "mySa big check" [2,3,4,5,6,7,8,9] (sa [3,2,4,5,6,7,8,9]))

testMySb1 :: Test
testMySb1 = TestLabel "testMySb1" (TestCase $ assertEqual
                "mySb little check" [1,2,3] (sb [2,1,3]))

testMySb2 :: Test
testMySb2 = TestLabel "testMySb2" (TestCase $ assertEqual
                "mySb big check" [2,3,4,5,6,7,8,9] (sb [3,2,4,5,6,7,8,9]))

testMySc1 :: Test
testMySc1 = TestLabel "testMySc1" (TestCase $ assertEqual
                "mySc little check" ([1,2,3],[2,3,4]) (sc [2,1,3] [3,2,4]))

testMySc2 :: Test
testMySc2 = TestLabel "testMySc2" (TestCase $ assertEqual
                "mySc big check" ([2,3,4,5,6,7,8,9], [2,3,4,5,6]) (sc [3,2,4,5,6,7,8,9] [3,2,4,5,6]))

tests :: Test
tests = TestList [TestLabel "testMySa1" testMySa1,
                TestLabel "testMySa2" testMySa2,
                TestLabel "testMySb1" testMySb1,
                TestLabel "testMySb2" testMySb2,
                TestLabel "testMySc1" testMySc1,
                TestLabel "testMySc2" testMySc2]


main :: IO Counts
main = do
    runTestTT tests