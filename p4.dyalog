⎕IO←0
p←{⍵[⍋⍵]}⊃⎕NGET'p4.txt'1
a←4000 60⍴0
s←⍬ ⋄ {e←⍎⊃⌽n←'\d+'⎕S'&'⊢⍵ ⋄ 6=≢n:g∘←e ⋄ s≡⍬:s∘←e ⋄ a[g;s+⍳e-s]+←1 ⋄ s∘←⍬}¨p
f←{⊃⍸⍵=⌈/,⍵} ⍝ coordinates of maximum value
{⍵×f ⍵⌷a}f+/a ⍝ part 1
×/f a ⍝ part 2
