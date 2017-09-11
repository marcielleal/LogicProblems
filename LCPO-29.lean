variable U: Type
variable P: U -> Prop
variable z: U

premise P1 : forall x, P(x) 

example : exists y, P(y) :=
have H: P(z), from P1 z,
exists.intro z H.