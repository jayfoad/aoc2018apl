⎕IO←0
sort←{(⊂⍋⍵)⌷⍵}
p←↑⊃⎕NGET'p13.txt'1
g←'|'@(∊∘'^v')'-'@(∊∘'<>')⊢p ⍝ grid
m←4>t←'^>v<'⍳p

x←↑⍸m
c←0×d←(,m)/,t
turn←{⍵='/':(⍺⊃d)←4|1-⍺⊃d ⋄ ⍵='\':(⍺⊃d)←3-⍺⊃d ⋄ ⍵='+':(⍺⊃d)←4|(⍺⊃d)+¯1+3|⍺⊃c ⋄ 0}
move←{z←(⍵⌷x)+(⍵⊃d)⌷4 2⍴¯1 0 0 1 1 0 0 ¯1 ⋄ (⊂z)∊↓x:r,←z ⋄ (⍵⌷x)←z ⋄ _←⍵ turn (a←z⌷g) ⋄ (⍵⊃c)+←'+'=a}
tick←{move¨⍋x}
r←⍬ ⋄ {}tick⍣{×≢r}⊢0 ⋄ ⌽2↑r ⍝ part 1

x←↑⍸m
v←1+c←0×d←(,m)/,t
move←{z←(⍵⌷x)+(⍵⊃d)⌷4 2⍴¯1 0 0 1 1 0 0 ¯1 ⋄ i←(↓x)⍳⊂z ⋄ v[⍵ i/⍨1 1≡v[⍵ i/⍨i<≢v]]←0 ⋄ (⍵⌷x)←z ⋄ _←⍵ turn (a←z⌷g) ⋄ (⍵⊃c)+←'+'=a}
{}tick⍣{1=+/v}⊢0 ⋄ ⌽v⌿x ⍝ part 2
