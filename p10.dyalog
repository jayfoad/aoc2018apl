p←↑⍎¨¨'-?\d+'⎕S'&'¨⊃⎕NGET'p10.txt'1
q←0 2↓p ⋄ p←0 ¯2↓p
mean←+⌿÷≢
n←⌊0.5+mean,-(p-⍤1 mean p)÷(q-⍤1 mean q)
c←(⊢-⍤1⌊⌿)p+n×q
⍉'#'@(↓⎕IO+c)⊢(1+⌈⌿c)⍴'' ⍝ part 1
n ⍝ part 2
