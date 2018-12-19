⎕IO←0
p←⊃⎕NGET'p16.txt'1

an←{2⊥∧/(2/⍨⌈2⍟1+⍺⌈⍵)⊤⍺⍵}
or←{2⊥∨/(2/⍨⌈2⍟1+⍺⌈⍵)⊤⍺⍵}

addr←{_ a b c←⍺ ⋄ r⊣r[c]←r[a]+r[b]⊣r←⍵}
addi←{_ a b c←⍺ ⋄ r⊣r[c]←r[a]+b⊣r←⍵}
mulr←{_ a b c←⍺ ⋄ r⊣r[c]←r[a]×r[b]⊣r←⍵}
muli←{_ a b c←⍺ ⋄ r⊣r[c]←r[a]×b⊣r←⍵}
banr←{_ a b c←⍺ ⋄ r⊣r[c]←r[a]an r[b]⊣r←⍵}
bani←{_ a b c←⍺ ⋄ r⊣r[c]←r[a]an b⊣r←⍵}
borr←{_ a b c←⍺ ⋄ r⊣r[c]←r[a]or r[b]⊣r←⍵}
bori←{_ a b c←⍺ ⋄ r⊣r[c]←r[a]or b⊣r←⍵}
setr←{_ a b c←⍺ ⋄ r⊣r[c]←r[a]⊣r←⍵}
seti←{_ a b c←⍺ ⋄ r⊣r[c]←a⊣r←⍵}
gtir←{_ a b c←⍺ ⋄ r⊣r[c]←a>r[b]⊣r←⍵}
gtrr←{_ a b c←⍺ ⋄ r⊣r[c]←r[a]>r[b]⊣r←⍵}
gtri←{_ a b c←⍺ ⋄ r⊣r[c]←r[a]>b⊣r←⍵}
eqir←{_ a b c←⍺ ⋄ r⊣r[c]←a=r[b]⊣r←⍵}
eqrr←{_ a b c←⍺ ⋄ r⊣r[c]←r[a]=r[b]⊣r←⍵}
eqri←{_ a b c←⍺ ⋄ r⊣r[c]←r[a]=b⊣r←⍵}

all←{16 4⍴⍺(addr,addi,mulr,muli,banr,bani,borr,bori,setr,seti,gtir,gtrr,gtri,eqir,eqrr,eqri)⍵}

p1←⍎¨↑'\d+'⎕S'&'¨0 ¯1↓(+/'B'=⊃¨p)4⍴p
mat←{x y z←↓⍵ ⋄ z≡⍤1⊢y all x}⍤2⊢p1
+/2<+/mat ⍝ part 1

ops←p1[;1;0]
map←16/0 ⋄ {}{map[n⊃ops]←c←1⍳⍨⍵⌷⍨n←1⍳⍨1=+/⍵ ⋄ m⊣m[;c]←0⊣m←⍵}⍣16⊢mat
p2←⍎¨{⍵↑⍨+/∧\×≢¨⍵}⌽p
⊃⊃{map[⊃⍺]⌷⍺ all ⍵}/p2,⊂0 0 0 0 ⍝ part 2
