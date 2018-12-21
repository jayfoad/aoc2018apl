⎕IO←0
p←⊃⎕NGET'p21.txt'1
input←⍎⊃'\d+'⎕S'&'⊢8⊃p
f←{16777216|65899×16777216|⍵+⍺}
g←{p q r←256 256 256⊤⍵ ⋄ (p+~2|p) f q f r f input}
g 0 ⍝ part 1
z←⍬ ⋄ {⍵∊z:⊃⌽z ⋄ z,←⍵ ⋄ ∇g ⍵}0 ⍝ part 2
