variables A B C : Prop 

premise P : A ->B

example : ((C\/A)->(B\/C)) :=
assume H1: (C\/A),
show B\/C, from or.elim H1
    (assume H : C,
        show B\/C, from or.inr H)
    (assume H : A,
        have Hb: B, from P H,
        show B\/C, from or.inl Hb).