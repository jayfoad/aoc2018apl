⎕IO←0 ⋄ ⎕PP←17
s←15↓⊃p←'#'=⊃⎕NGET'p12.txt'1 ⍝ initial state
u←5↑¨2↓p ⋄ v←⊃∘⌽¨2↓p ⍝ patterns and replacements
f←{v[u⍳5,/4⌽⍵,⍨8/0]} ⍝ next generation
g←{+/(⍸⍵)-0.5×(≢⍵)-≢s} ⍝ score function
g f⍣20⊢s ⍝ part 1
z←g t←f⍣{≡/(⍸-⍳∘1)¨⍺⍵}s ⍝ iterate until pattern stabilises
z+(z-g f t)×¯50E9+4÷⍨(≢t)-≢s ⍝ part 2
