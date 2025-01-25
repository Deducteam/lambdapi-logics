require open Logic.U.Set Logic.U.Prop;

constant symbol zero : El ι;

constant symbol succ : El ι → El ι;

symbol pred : El ι → El ι;

rule pred zero ↪ zero
with pred (succ $x) ↪ $x;

symbol positive : El ι → Prop;

rule positive zero ↪ ⊥
with positive (succ _) ↪ ⊤;
