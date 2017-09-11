variable U: Type
variables P Q: U -> Prop

example (P1 : exists x, P x \/ Q x)
        (P2 : forall x, P x -> Q x)
        : exists x, Q x  :=
        
obtain (z : U)(H1 : P z \/ Q z), from P1,
have H2: P z -> Q z, from P2 z,
have Hq: Q z, from or.elim H1
    (assume H : P z,
        show Q z, from H2 H)
    (assume H : Q z,
        show Q z, from H), 
exists.intro z Hq.