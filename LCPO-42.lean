variable U : Type
variables P Q R : U → Prop

premise P1: forall x, forall y, (P x \/ P y)

example (y : U): forall x, P x :=
take x,
have H1 : (forall y, (P x \/ P y)), from P1 x,
have H2 : (P x \/ P x), from H1 x,
show P x, from 
    or.elim H2 
    (assume H1 : P x, show P x, from H1) 
    (assume H2 : P x, show P x, from H2)
.
