p←⍎¨¨'\d+'⎕S'&'¨⊃⎕NGET'p3.txt'1
q←{(a b c d e)←⍵ ⋄ b c∘+¨⍳d e}¨p
g←1000 1000⍴0 ⋄ {g[⍵]+←1}¨q ⍝ grid
+/,1<g ⍝ part 1
⊃⊃p/⍨{∧/,1=g[⍵]}¨q ⍝ part 2
