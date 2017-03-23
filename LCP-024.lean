variables A B C : Prop 

premise P : (A->(B/\C)) 

example : ((A->B)/\(A->C)) :=
and.intro 
    (assume H2: A,
        show B, from and.left(P H2))
    (assume H3: A,
        show C, from and.right(P H3)).
