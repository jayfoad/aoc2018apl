⎕IO←0
p←⊃⎕NGET'p19.txt'1
ip←⍎(⊃p)∩⎕D
addr←{a b c←⍵ ⋄ r[c]←r[a]+r[b]}
addi←{a b c←⍵ ⋄ r[c]←r[a]+b}
mulr←{a b c←⍵ ⋄ r[c]←r[a]×r[b]}
muli←{a b c←⍵ ⋄ r[c]←r[a]×b}
setr←{a b c←⍵ ⋄ r[c]←r[a]}
seti←{a b c←⍵ ⋄ r[c]←a}
gtir←{a b c←⍵ ⋄ r[c]←a>r[b]}
gtrr←{a b c←⍵ ⋄ r[c]←r[a]>r[b]}
gtri←{a b c←⍵ ⋄ r[c]←r[a]>b}
eqir←{a b c←⍵ ⋄ r[c]←a=r[b]}
eqrr←{a b c←⍵ ⋄ r[c]←r[a]=r[b]}
eqri←{a b c←⍵ ⋄ r[c]←r[a]=b}
⎕FX(⊂'r←f r'),{'r[ip]←¯1+⊃⎕LC⋄',⍵,'⋄→2+r[ip]'}¨1↓p
⊃f 6↑0 ⍝ part 1

g←{+/⍵{⍵/⍨0=⍵|⍺}1+⍳⍵}
⎕FX(⊂'→0')(@2)⎕NR'f'
g 3⊃f 6↑1 ⍝ part 2
