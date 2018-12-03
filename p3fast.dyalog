⎕IO←0
p←⍎¨¨'\d+'⎕S'&'¨⊃⎕NGET'p3.txt'1
q←{(a b c d e)←⍵ ⋄ ,(b+⍳d)∘.+1000×c+⍳e}¨p
g←1E6/0 ⋄ g[⊃,/q]+←1 ⍝ grid
+/,1<g ⍝ part 1
⊃⊃p/⍨{∧/1=g[⍵]}¨q ⍝ part 2
