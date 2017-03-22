variables A B C : Prop 

premise P : A /\ (B -> C)

example : ((A->B)->C) :=
have H2: A, from and.left P,
have H3: (B->C), from and.right P,
assume H1 : (A->B), 
show C, from H3 (H1 H2).
