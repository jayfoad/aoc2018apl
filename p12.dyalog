⎕IO←0 ⋄ ⎕PP←17
s←15↓⊃p←'#'=⊃⎕NGET'p12.txt'1 ⍝ initial state
u←↑5↑¨2↓p ⋄ v←⊃∘⌽¨2↓p ⍝ patterns and replacements
f←{v[u⍳⍉0 ¯1↓(5,5+≢⍵)⍴0 0 0 0,⍵]} ⍝ next generation
g←{+/(⍸⍵)-0.5×(≢⍵)-≢s} ⍝ score function
g f⍣20⊢s ⍝ part 1
t←f⍣{≡/(⊢-⌊/)∘⍸¨⍺⍵}s ⍝ iterate until pattern stabilises
(g t)+((g f t)-g t)×50E9-0.25×(≢t)-≢s ⍝ part 2
