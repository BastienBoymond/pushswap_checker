module Findactions where
import Actions

execActions :: [String] -> ([Maybe Int], [Maybe Int]) ->
                                ([Maybe Int], [Maybe Int])
execActions ("sa":b)  (a, as) = sa a as
execActions ("sb":b)  (a, as)  = sb a as
execActions ("sc":b)  (a, as)  = sc a as
execActions ("pa":b)  (a, as)  = pa a as
execActions ("pb":b)  (a, as)  = pb a as
execActions ("ra":b)  (a, as)  = ra (a, as)
execActions ("rb":b)  (a, as)  = rb (a, as)
execActions ("rr":b)  (a, as)  = rr (a, as)
execActions str a = execActionsTwo str a

execActionsTwo :: [String] -> ([Maybe Int], [Maybe Int]) ->
                                ([Maybe Int], [Maybe Int])
execActionsTwo ("rra":b) (a, as)  = rra a as
execActionsTwo ("rrb":b) (a, as)  = rrb a as
execActionsTwo ("rrr":b) (a, as)  = rrr a as
execActionsTwo _ _ = ([Nothing], [Nothing])