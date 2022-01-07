module Tests where
import Pushswap (sa, sb, sc, pa, pb, ra, rb, rr, rra, rrb)
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

testMyPa1 :: Test
testMyPa1 = TestLabel "testMyPa1" (TestCase $ assertEqual
                "myPa little check" ([3,2,1,3],[2,4]) (pa [2,1,3] [3,2,4]))

testMyPa2 :: Test
testMyPa2 = TestLabel "testMyPa2" (TestCase $ assertEqual
                "myPa big check" ([3,3,2,4,5,6,7,8,9], [2,4,5,6]) (pa [3,2,4,5,6,7,8,9] [3,2,4,5,6]))

testMyPb1 :: Test
testMyPb1 = TestLabel "testMyPa1" (TestCase $ assertEqual
                "myPb little check" ([3,2,1,3],[2,4]) (pb [2,1,3] [3,2,4]))

testMyPb2 :: Test
testMyPb2 = TestLabel "testMpb2" (TestCase $ assertEqual
                "myPb big check" ([3,3,2,4,5,6,7,8,9], [2,4,5,6]) (pb [3,2,4,5,6,7,8,9] [3,2,4,5,6]))

testMyRa1 :: Test
testMyRa1 = TestLabel "testMyRa1" (TestCase $ assertEqual
                "myRa little check" [1,3,2] (ra [2,1,3]))

testMyRa2 :: Test
testMyRa2 = TestLabel "testMyRa2" (TestCase $ assertEqual
                "myRa big check" [2,4,5,6,7,8,9,3] (ra [3,2,4,5,6,7,8,9]))

tests :: Test
tests = TestList [TestLabel "testMySa1" testMySa1,
                TestLabel "testMySa2" testMySa2,
                TestLabel "testMySb1" testMySb1,
                TestLabel "testMySb2" testMySb2,
                TestLabel "testMySc1" testMySc1,
                TestLabel "testMySc2" testMySc2,
                TestLabel "testMyPa1" testMyPa1,
                TestLabel "testMyPa2" testMyPa2,
                TestLabel "testMyPa1" testMyPa1,
                TestLabel "testMyPa2" testMyPa2,
                TestLabel "testMyRa1" testMyRa1,
                TestLabel "testMyRa2" testMyRa2]


main :: IO Counts
main = do
    runTestTT tests