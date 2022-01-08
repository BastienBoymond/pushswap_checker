module Tests where
import Actions (sa, sb, sc, pa, pb, ra, rb, rr, rra, rrb, rrr)
import Findactions (execActions)
import Outils (myCActions, myStwa)
import Test.HUnit

testMySa1 :: Test
testMySa1 = TestLabel "testMySa1" (TestCase $ assertEqual
                "mySa little check" ([Just 2,Just 1,Just 3],[Just 1,
                Just 2])
                (sa [Just 1,Just 2,Just 3] [Just 1,Just 2]))

testMySa2 :: Test
testMySa2 = TestLabel "testMySa2" (TestCase $ assertEqual
                "mySa big check" ([Just 2,Just 1,Just 3],[])
                (sa [Just 1,Just 2,Just 3] []))

testMySb1 :: Test
testMySb1 = TestLabel "testMySb1" (TestCase $ assertEqual
                "mySb little check" ([Just 1,
                Just 2], [Just 2,Just 1,Just 3])
                (sb [Just 1,Just 2][Just 1,Just 2,Just 3]))

testMyRa1 :: Test
testMyRa1 = TestLabel "testMyRa1" (TestCase $ assertEqual
                "myRa little check" ([Just 1,
                Just 2], [Just 1,Just 2,Just 3])
                (ra ([Just 2,Just 1],[Just 1,Just 2,Just 3])))

testMyRa2 :: Test
testMyRa2 = TestLabel "testMyRa1" (TestCase $ assertEqual
                "myRa empty check" ([], [Just 1,Just 2,Just 3])
                (ra ([],[Just 1,Just 2,Just 3])))

testMyRb1 :: Test
testMyRb1 = TestLabel "testMyRb1" (TestCase $ assertEqual
                "myRb little check" ([Just 1,Just 2,Just 3],
                [Just 1,Just 2])
                (rb ([Just 1,Just 2,Just 3], [Just 2,Just 1])))

testMyRb2 :: Test
testMyRb2 = TestLabel "testMyRb1" (TestCase $ assertEqual
                "myRb empty check" ([Just 1,Just 2,Just 3], [])
                (rb ([Just 1,Just 2,Just 3],[])))

testMyRr1 :: Test
testMyRr1 = TestLabel "testMyRr1" (TestCase $ assertEqual
                "myRr little check" ([Just 2,Just 3,Just 1],
                [Just 1,Just 2])
                (rr ([Just 1,Just 2,Just 3], [Just 2,Just 1])))

testMyRr2 :: Test
testMyRr2 = TestLabel "testMyRr1" (TestCase $ assertEqual
                "myRr empty check" ([Just 2,Just 1, Just 3], [])
                (rr ([Just 1,Just 2,Just 3],[])))

testMySb2 :: Test
testMySb2 = TestLabel "testMySb2" (TestCase $ assertEqual
                "mySb big check" ([],[Just 2,Just 1,Just 3])
                (sb [][Just 1,Just 2,Just 3]))

testMyPa1 :: Test
testMyPa1 = TestLabel "testMyPa1" (TestCase $ assertEqual
                "myPa little check" ([Just 3,Just 2,Just 1,Just 3],
                [Just 2,Just 4])
                (pa [Just 2,Just 1,Just 3] [Just 3,Just 2,Just 4]))

testMyPa2 :: Test
testMyPa2 = TestLabel "testMyPa2" (TestCase $ assertEqual
                "myPa big check" ([Just 3,Just 3,Just 2, Just 4,Just 5, Just 6,
                Just 7,Just 8,Just 9], [Just 2,Just 4,Just 5, Just 6])
                (pa [Just 3,Just 2,Just 4,Just 5,Just 6,Just 7,Just 8,Just 9]
                [Just 3,Just 2,Just 4,Just 5,Just 6]))

testMyPb1 :: Test
testMyPb1 = TestLabel "testMyPa1" (TestCase $ assertEqual
                "myPb little check" ([Just 2,Just 1,Just 3],
                [Just 3, Just 2, Just 4])
                (pb [Just 3,Just 2,Just 1,Just 3] [Just 2,Just 4]))

testMyPb2 :: Test
testMyPb2 = TestLabel "testMpb2" (TestCase $ assertEqual
                "myPb big check" ([Just 2,Just 4,Just 5,Just 6,Just 7,
                Just 8,Just 9],[Just 3,Just 3,Just 2,Just 4,Just 5,Just 6])
                (pb [Just 3,Just 2,Just 4,Just 5,Just 6,Just 7,Just 8,Just 9]
                [Just 3,Just 2,Just 4,Just 5,Just 6]))

testMyRra1 :: Test
testMyRra1 = TestLabel "testMyRra1" (TestCase $ assertEqual
                "myRra little check" ([Just 1,
                Just 2], [Just 1,Just 2,Just 3])
                (rra  [Just 2,Just 1] [Just 1,Just 2,Just 3]))

testMyRra2 :: Test
testMyRra2 = TestLabel "testMyRra1" (TestCase $ assertEqual
                "myRra empty check" ([], [Just 1,Just 2,Just 3])
                (rra [][Just 1,Just 2,Just 3]))

testMyRrb1 :: Test
testMyRrb1 = TestLabel "testMyRrb1" (TestCase $ assertEqual
                "myRrb little check" ([Just 1,Just 2,Just 3],
                [Just 1,Just 2])
                (rrb [Just 1,Just 2,Just 3] [Just 2,Just 1]))

testMyRrb2 :: Test
testMyRrb2 = TestLabel "testMyRrb1" (TestCase $ assertEqual
                "myRrb little check" ([Just 1,Just 2,Just 3],
                [])
                (rrb [Just 1,Just 2,Just 3] []))

testMyRrr1 :: Test
testMyRrr1 = TestLabel "testMyRrr1" (TestCase $ assertEqual
                "myRrr little check" ([Just 3,Just 1,Just 2],
                [Just 1,Just 2])
                (rrr [Just 1,Just 2,Just 3] [Just 2,Just 1]))

testMyRrr2 :: Test
testMyRrr2 = TestLabel "testMyRr1" (TestCase $ assertEqual
                "myRr empty check" ([Just 3,Just 1,Just 2],[])
                (rrr  [Just 1,Just 2,Just 3][]))

testExecAction :: Test
testExecAction = TestLabel "testExecAction" (TestCase $ assertEqual
                "test of execAction" ([Just 3,Just 5],[Just 1,Just 4])
                (execActions ["sa", "sb",
                "sc","ra","rb","rra","rrb","rrr","pa","pb"]
                ([Just 5, Just 3], [Just 1, Just 4])))


testmyCActions :: Test
testmyCActions = TestLabel "testmyCAction" (TestCase $ assertEqual 
                "myCAction" (Just 0) (myCActions ([Just 1], [Just 2])))

testMyStwa :: Test
testMyStwa = TestLabel "testMyStwa" (TestCase $ assertEqual 
                "myStwa" ["yo", "le", "rap"] (myStwa "yo le rap"))

tests :: Test
tests = TestList [
                TestLabel "testMySa1" testMySa1,
                TestLabel "testMySa2" testMySa2,
                TestLabel "testMySb1" testMySb1,
                TestLabel "testMySb2" testMySb2,
                TestLabel "testMyRa1" testMyRa1,
                TestLabel "testMyRa2" testMyRa2,
                TestLabel "testMyRb1" testMyRb1,
                TestLabel "testMyRb2" testMyRb2,
                TestLabel "testMyRr1" testMyRr1,
                TestLabel "testMyRr1" testMyRr1,
                TestLabel "testMyPa1" testMyPa1,
                TestLabel "testMyPa2" testMyPa2,
                TestLabel "testMyPb1" testMyPb1,
                TestLabel "testMyPb2" testMyPb2,
                TestLabel "testMyRra1" testMyRra1,
                TestLabel "testMyRra2" testMyRra2,
                TestLabel "testMyRrb1" testMyRrb1,
                TestLabel "testMyRrb1" testMyRrb1,
                TestLabel "testMyRrb2" testMyRrb2,
                TestLabel "testMyRrr1" testMyRrr1,
                TestLabel "testMyRrr2" testMyRrr2,
                TestLabel "testExecAction" testExecAction,
                TestLabel "testmyCAction" testmyCActions,
                TestLabel "testMyStwa" testMyStwa]


main :: IO Counts
main = do
    runTestTT tests