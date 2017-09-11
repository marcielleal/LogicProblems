variables A B : Prop 

premise P1 : (A->B)

example : not(A /\ not(B)) :=
assume H1: A /\ not(B),

show false, from 
    (show not(B), from and.right H1) 
    (show B, from P1 (show A, from and.left H1)).