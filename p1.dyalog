p←⍎¨⊃⎕NGET'p1.txt'1
+/p ⍝ part 1
{⍬≢z←⍵/⍨(⍵⍳⍵)≠⍳≢⍵:⊃z ⋄ ∇⍵,⍵+⊃⌽⍵}+\p ⍝ part 2
