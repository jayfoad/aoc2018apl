p←⍎¨¨'\d+'⎕S'&'¨⊃⎕NGET'p3.txt'1
g←1000 1000⍴0 ⍝ grid
{(a b c d e)←⍵ ⋄ g[(⊂c b)+⍳e d]+←1}¨p
+/,1<g ⍝ part 1
⊃⊃p/⍨{(a b c d e)←⍵ ⋄ ∧/,1=g[(⊂c b)+⍳e d]}¨p ⍝ part 2
