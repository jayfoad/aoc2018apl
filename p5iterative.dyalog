p←⎕UCS⊃⊃⎕NGET'p5.txt'1
f←{a←⍬ ⋄ _←{32=|⍵-⊃⌽a:a↓⍨←¯1 ⋄ a,←⍵}¨⍵ ⋄ a}
≢q←f p ⍝ part 1
⌊/{≢f q~⍵,⍵+32}¨⎕UCS ⎕A ⍝ part 2
