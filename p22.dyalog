⎕IO←0
p←⍎¨¨'\d+'⎕S'&'¨⊃⎕NGET'p22.txt'1
depth←⊃⊃p ⋄ target←⊃⌽p
f←{⍵≡target:0 ⋄ 0∊⍵:16807 48271+.×⍵ ⋄ e[⊂⍵-0 1]×e[⊂⍵-1 0]}
e←0⍴⍨⌈7×target ⋄ {e[⊂⍵]←20183|depth+f ⍵}¨⍳⍴e
t←3|e ⍝ type
+/,t↑⍨1+target ⍝ part 1

m←0@(⊂0 0 1)⊢1E6⍴⍨3,⍨⍴t ⍝ last axis: 0=neither, 1=torch, 2=climbing gear
mv←{z←1+(1e6⍪⍨1↓⍵)⌊(1e6⍪¯1↓⍵)⌊(1e6,[1]⍨0 1↓⍵)⌊(1e6,[1]0 ¯1↓⍵) ⋄ z[t,¨⍨⍳⍴t]←1E6 ⋄ ⍵⌊z} ⍝ move
cg←{z←⍵⌊⍤1 0⊢7+⌊/⍵ ⋄ z[t,¨⍨⍳⍴t]←1E6 ⋄ z} ⍝ change gear
(target,1)⌷cg∘mv⍣≡m ⍝ part 2
