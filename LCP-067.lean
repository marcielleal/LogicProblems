open classical
variables A B : Prop 

premise P1 : not( (not A) /\ B)
premise P2 : B

example : A :=
by_contradiction(
    assume H1: not A,
    show false, from P1 (and.intro
        (H1) (P2))
).
