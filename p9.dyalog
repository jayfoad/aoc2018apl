⎕IO←0
(p w)←⍎¨'\d+'⎕S'&'⊃⊃⎕NGET'p9.txt'1

ins←{q←(p←⍵ 1⌷m)1⌷m ⋄ n←m[(p 1)(q 0)]←≢m ⋄ m⍪←p q ⋄ n}
del←{f←{⍵ 0⌷m} ⋄ p←f(r,←f(q←f⍣6⊢⍵)) ⋄ m[(p 1)(q 0)]←q p ⋄ m⍪←0 ⋄ q}
run←{ins⍣(23|⍵)del∘(ins⍣22)⍣(⌊⍵÷23)⊢0}
hscore←{⌈/+⌿z⍵⍴(⍵×z←⌈⍵÷⍨≢r)↑r+23×1+⍳≢r}

r←⍬ ⋄ m←1 2⍴0 ⋄ (hscore p)⊣run w ⍝ part 1
r←⍬ ⋄ m←1 2⍴0 ⋄ (hscore p)⊣run w×100 ⍝ part 2
