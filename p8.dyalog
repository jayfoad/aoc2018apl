p←⍎⊃⊃⎕NGET'p8.txt' 1
e←{⍵≡⍬:⍬ ⋄ ⍺⍺¨⍵}
n←0 ⋄ {a b←p[(n+←2)⊢n+⍳2] ⋄ +/p[(n+←b)⊢n+⍳b],∇ e⍳a}0 ⍝ part 1
n←0 ⋄ {a b←p[(n+←2)⊢n+⍳2] ⋄ c←∇ e⍳a ⋄ m←p[(n+←b)⊢n+⍳b] ⋄ a=0:+/m ⋄ +/c[m∩⍳a]}0 ⍝ part 2
