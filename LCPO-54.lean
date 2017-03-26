variable U : Type
variables R : U → Prop

example (P : (forall x, R x)) : not(exists x, not(R x)):=

assume H1 : (exists x, not(R x)),
obtain (x : U) (H2 : not(R x)), from H1,
have H3 : (R x), from P x,
show false, from H2 H3.
