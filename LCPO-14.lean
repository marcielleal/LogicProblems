variable U: Type
variables R S: U -> Prop
variable j: U

example (P1 : R(j)) 
        (P2 : forall x,(R(x)->S(x)))
        : S(j):=

show S j, from (show R(j)->S(j), from P2 j) P1.