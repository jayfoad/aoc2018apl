p←⎕UCS⊃⊃⎕NGET'p5.txt'1
f←{⍵/⍨{(⍵,0)⍱0,⍵}⍺=2-/⍵}
g←(32∘f ¯32∘f)⍣≡
≢q←g p ⍝ part 1
⌊/{≢g q~⍵,32+⍵}¨⎕UCS ⎕A ⍝ part 2
