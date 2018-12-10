p←↑⍎¨¨'-?\d+'⎕S'&'¨⊃⎕NGET'p10.txt'1
v←0 2↓p ⋄ p←0 ¯2↓p
mean←+⌿÷≢
n←⌊0.5+mean,-(p-⍤1 mean p)÷(v-⍤1 mean v)
c←(⊢-⍤1⌊⌿)p+n×v
⍉'#'@(↓⎕IO+c)⊢(1+⌈⌿c)⍴'' ⍝ part 1
n ⍝ part 2
