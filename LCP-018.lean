variables A B C : Prop 

premise P : A ->B

example : ((C/\A) -> (B/\C)) :=
assume H1: (C/\A),
have H2: C, from and.left H1,
have H3: A, from and.right H1,
have H4: B, from P H3,
show B/\C, from and.intro H4 H2.