p←⊃⊃⎕NGET'p5.txt'1
lcase←819⌶
b←⌽¨a←⎕A,¨lcase ⎕A
f←{⍵/⍨(⊢⍱¯1⌽⊢)⊃∨/⍺⍷¨⊂⍵}
g←(a∘f b∘f)⍣≡
≢q←g p ⍝ part 1
⌊/{≢g q~⍵,lcase ⍵}¨⎕A ⍝ part 2
