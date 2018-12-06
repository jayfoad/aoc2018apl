p←⍎¨⊃⎕NGET'p1.txt'1
+/p ⍝ part 1
q←(⊢,⊢+(⊃⌽))⍣(⊢≢(∪⊢))+\p
⊃q/⍨(q⍳q)≠⍳≢q ⍝ part 2
