⎕IO←1
p←⍎⊃⊃⎕NGET'p11.txt'1
g←{r y←10 0+⍵ ⋄ ¯5+10|⌊100÷⍨r×p+y×r}¨⍳300 300 ⍝ grid
⊃⍸{⍵=⌈/,⍵}3+/3+⌿g ⍝ part 1
1↓{(⊃⍒⍵)⌷⍵}↑1{0>m←⌈/,t←⍺+/⍺+⌿g:⍵ ⋄ (⍺+1)∇⍵,⊂m,(⊃⍸m=t),⍺}⍬ ⍝ part 2
