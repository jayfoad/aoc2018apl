p←⍎¨⊃⎕NGET'p1.txt'1
+/p ⍝ part 1
q←+\1E6⍴p
q⊃⍨1⍳⍨(q⍳q)≠⍳≢q ⍝ part 2
