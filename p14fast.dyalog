⎕IO←0
input←⍎⊃⊃⎕NGET'p14.txt'1
scores←3 7

nxt←{⍵+1+tmp,←scores[⍵]}
super←{tmp∘←⍬ ⋄ (≢scores)|(scores,←∊(t<10)↓¨↓⍉10 10⊤t←+/(0.5×≢tmp)2⍴tmp)⊢nxt⍣(1+⌊10÷⍨¯1+(≢scores)-⌈/⍵)⊢⍵}⍣4
pos←super⍣{input<¯10+≢scores}0 1
∊⍕¨r←10↑input↓scores ⍝ part 1

match←⍎¨⍕input
{}super⍣{∨/match⍷scores}pos
⊃⍸match⍷scores ⍝ part 2
