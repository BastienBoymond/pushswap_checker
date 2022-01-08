module Actions where

sa :: [Maybe Int] -> [Maybe Int] -> ([Maybe Int], [Maybe Int])
sa [] [] = ([],[])
sa [] b = ([], b)
sa [a] [] = ([a], [])
sa [b] a = ([b], a)
sa (a:b:as) [] = (b:a:as, [])
sa (a:b:as) c = (b:a:as, c)

sb :: [Maybe Int] -> [Maybe Int] -> ([Maybe Int], [Maybe Int])
sb [] [] = ([],[])
sb a [] = (a, [])
sb [] [a] = ([], [a])
sb a [b] = (a, [b])
sb [] (a:b:as) = ([], b:a:as)
sb c (a:b:as) = (c, b:a:as)

sc :: [Maybe Int] -> [Maybe Int] -> ([Maybe Int], [Maybe Int])
sc [] [] = ([], [])
sc [a] [] = ([a], [])
sc [] [b] = ([], [b])
sc a [] = sa a []
sc [] a = sb [] a
sc a b = sa a [] >> sb [] b

pa :: [Maybe Int] -> [Maybe Int] -> ([Maybe Int], [Maybe Int])
pa [] [] = ([], [])
pa [a] [] = ([a], [])
pa [] [a] = ([a], [])
pa (a:b) [c] = (c:a:b, [])
pa [] (a:as) = ([a], as)
pa (a:as) [] = (a:as, [])
pa (a:b) (c:d) = (c:a:b, d)

pb :: [Maybe Int] -> [Maybe Int] -> ([Maybe Int], [Maybe Int])
pb [] [] = ([], [])
pb [] [b] = ([], [b])
pb [a] [] = ([], [a])
pb [c] (a:b) = ([], c:a:b)
pb (a:as) [] = (as, [a])
pb [] (a:as) = ([], a:as)
pb (a:b) (c:d) = (b, a:c:d)

ra :: ([Maybe Int], [Maybe Int]) -> ([Maybe Int], [Maybe Int])
ra ([], a) = ([], a)
ra (a:as, b) = (as ++ [a], b)

rb :: ([Maybe Int], [Maybe Int]) -> ([Maybe Int], [Maybe Int])
rb (a, []) = (a, [])
rb (a, b:bs) = (a, bs ++ [b])

rr :: ([Maybe Int], [Maybe Int]) -> ([Maybe Int], [Maybe Int])
rr a = ra (rb a)

rra :: [Maybe Int] -> [Maybe Int] -> ([Maybe Int], [Maybe Int])
rra [] [] = ([], [])
rra (a:as) [] = (last (a:as) : init (a:as), [])
rra [a] [b] = ([a], [b])
rra [a] b = ([a], b)
rra [] [a] = ([], [a])
rra [] a = ([], a)
rra (a:as) [b] = (last (a:as) : init (a:as), [b])
rra (a:as) b = (last (a:as) : init (a:as), b)

rrb :: [Maybe Int] -> [Maybe Int] -> ([Maybe Int], [Maybe Int])
rrb [] [] = ([], [])
rrb [] (b:bs) = ([], last (b:bs) : init (b:bs))
rrb [a] [b] = ([a], [b])
rrb a [b] = (a, [b])
rrb [a] [] = ([a], [])
rrb a [] = (a, [])
rrb [a] (b:bs) = ([a], last (b:bs) : init (b:bs))
rrb a (b:bs) = (a, last (b:bs) : init (b:bs))

rrr :: [Maybe Int] -> [Maybe Int] -> ([Maybe Int], [Maybe Int])
rrr [] [] = ([], [])
rrr [a] [] = ([a], [])
rrr a [] = rra a []
rrr [] [b] = ([], [b])
rrr [] a = rrb [] a
rrr [a] [b] = ([a], [b])
rrr a b = rra a [] >> rrb [] b
