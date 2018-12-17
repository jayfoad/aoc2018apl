⎕IO←0
p←⊃⎕NGET'p16.txt'1

an←{2⊥∧/(2/⍨⌈2⍟1+⍺⌈⍵)⊤⍺⍵}
or←{2⊥∨/(2/⍨⌈2⍟1+⍺⌈⍵)⊤⍺⍵}

addr←{_ a b c←⍺ ⋄ w⊣(c⊃w)←(a⊃w)+(b⊃w)⊣w←⍵}
addi←{_ a b c←⍺ ⋄ w⊣(c⊃w)←(a⊃w)+b⊣w←⍵}
mulr←{_ a b c←⍺ ⋄ w⊣(c⊃w)←(a⊃w)×(b⊃w)⊣w←⍵}
muli←{_ a b c←⍺ ⋄ w⊣(c⊃w)←(a⊃w)×b⊣w←⍵}
banr←{_ a b c←⍺ ⋄ w⊣(c⊃w)←(a⊃w)an(b⊃w)⊣w←⍵}
bani←{_ a b c←⍺ ⋄ w⊣(c⊃w)←(a⊃w)an b⊣w←⍵}
borr←{_ a b c←⍺ ⋄ w⊣(c⊃w)←(a⊃w)or(b⊃w)⊣w←⍵}
bori←{_ a b c←⍺ ⋄ w⊣(c⊃w)←(a⊃w)or b⊣w←⍵}
setr←{_ a b c←⍺ ⋄ w⊣(c⊃w)←(a⊃w)⊣w←⍵}
seti←{_ a b c←⍺ ⋄ w⊣(c⊃w)←a⊣w←⍵}
gtir←{_ a b c←⍺ ⋄ w⊣(c⊃w)←a>(b⊃w)⊣w←⍵}
gtrr←{_ a b c←⍺ ⋄ w⊣(c⊃w)←(a⊃w)>(b⊃w)⊣w←⍵}
gtri←{_ a b c←⍺ ⋄ w⊣(c⊃w)←(a⊃w)>b⊣w←⍵}
eqir←{_ a b c←⍺ ⋄ w⊣(c⊃w)←a=(b⊃w)⊣w←⍵}
eqrr←{_ a b c←⍺ ⋄ w⊣(c⊃w)←(a⊃w)=(b⊃w)⊣w←⍵}
eqri←{_ a b c←⍺ ⋄ w⊣(c⊃w)←(a⊃w)=b⊣w←⍵}

all←{16 4⍴⍺(addr,addi,mulr,muli,banr,bani,borr,bori,setr,seti,gtir,gtrr,gtri,eqir,eqrr,eqri)⍵}

p1←⍎¨↑'\d+'⎕S'&'¨0 ¯1↓(+/'B'=⊃¨p)4⍴p
mat←{x y z←↓⍵ ⋄ z≡⍤1⊢y all x}⍤2⊢p1
+/2<+/mat ⍝ part 1

ops←p1[;1;0]
map←16/0 ⋄ {}{map[n⊃ops]←c←1⍳⍨⍵⌷⍨n←1⍳⍨1=+/⍵ ⋄ m⊣m[;c]←0⊣m←⍵}⍣16⊢mat
p2←⍎¨{⍵↑⍨+/∧\×≢¨⍵}⌽p
⊃⊃{map[⊃⍺]⌷⍺ all ⍵}/p2,⊂0 0 0 0 ⍝ part 2
