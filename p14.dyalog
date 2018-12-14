⎕IO←0
input←⍎⊃⊃⎕NGET'p14.txt'1
scores←3 7

nxt←{(≢scores)|⍵+1+cur⊣scores,←(t<10)↓10 10⊤t←+/cur←scores[⍵]}
super←{nxt⍣(⌈0.2×≢scores)⊢⍵}
pos←super⍣{input<¯10+≢scores}0 1
∊⍕¨r←10↑input↓scores ⍝ part 1

match←⍎¨⍕input
{}super⍣{∨/match⍷scores}pos
⊃⍸match⍷scores ⍝ part 2
