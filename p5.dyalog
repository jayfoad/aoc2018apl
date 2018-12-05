p←⊃⊃⎕NGET'p5.txt'1
lcase←819⌶
f←(1↓∊'|',¨(⊢,⌽¨)⎕A,¨lcase ⎕A)⎕R''⍣≡
≢q←f p ⍝ part 1
⌊/{≢f q~⍵,lcase ⍵}¨⎕A ⍝ part 2
