variable U: Type
variables R S: U -> Prop

example (P1 : (exists x, R(x)) \/ (exists y, S(y)))
        : exists z,(R(z)\/S(z)):=

show exists z,(R(z)\/S(z)), from or.elim P1
    (assume H : exists x, R(x),
        obtain (z:U)(Hr: R z), from H,
        exists.intro z (or.inl Hr)
        )
    (assume H : exists y, S(y),
        obtain (z:U)(Hr: S z), from H,
        exists.intro z (or.inr Hr)
        ).