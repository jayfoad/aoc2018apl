p←⎕UCS⊃⊃⎕NGET'p5.txt'1
f←{⊃{32=|⍺-⊃⌽⍵:¯1↓⍵⋄⍵,⍺}/⍵,⊂⍬}
≢q←f p ⍝ part 1
⌊/{≢f q~⍵,32+⍵}¨⎕UCS ⎕A ⍝ part 2
