variables A B : Prop 

premise P1 : not(A/\B) 
premise P2 : A

example : not(B) :=
assume H1: B,
show false, from P1 (and.intro P2 H1).