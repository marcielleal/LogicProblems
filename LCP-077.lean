variables A B : Prop 

premise P1 : A

example : not( (not A) /\ B) :=
assume H1: (not A)/\ B,
show false, from (and.left H1) P1.

/- Negation at right-/
