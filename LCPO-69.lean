variable U : Type
variables P Q R : U → Prop

example (P1: forall x,(Q x -> R x)) 
        (P2 : exists x,(P x /\ (not (R x)))) : 
        exists x, (P x /\ (not (Q x))) :=

obtain (y:U)(H1 : (P y /\ (not (R y)))), from P2,
have H2 : (Q y -> R y), from P1 y,
have H3 : not(Q y), from (
    assume Hqy : Q y,
    show false, from (and.right H1) (H2 Hqy)
),
show exists x,(P x /\ (not (Q x))), from exists.intro y (
    and.intro (and.left H1) H3
)
