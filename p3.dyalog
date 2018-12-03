p←⍎¨¨'\d+'⎕S'&'¨⊃⎕NGET'p3.txt'1
g←1000 1000⍴0 ⋄ {(a b c d e)←⍵ ⋄ g[b c∘+¨⍳d e]+←1}¨p ⍝ grid
+/,1<g ⍝ part 1
⊃⊃p/⍨{(a b c d e)←⍵ ⋄ ∧/,1=g[b c∘+¨⍳d e]}¨p ⍝ part 2
