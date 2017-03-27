variable U : Type
variables P Q R : U → Prop

example (P1 : forall x,(R x -> Q x)) 
        (P2 : exists x,(P x /\ R x)) : 
        exists x, (P x /\ Q x) :=

obtain (y:U)(H1 : (P y /\ R y)), from P2,
have H2 : (R y -> Q y), from P1 y,

show exists x,(P x /\ Q x), from exists.intro y (
    and.intro (and.left H1) (H2 (and.right H1))
).
