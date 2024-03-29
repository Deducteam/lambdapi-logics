constant symbol Prop : TYPE;

symbol Prf : Prop → TYPE;

constant symbol ⊤ : Prop;

rule Prf ⊤ ↪ Π r, Prf r → Prf r;

constant symbol ⊥ : Prop;

rule Prf ⊥ ↪ Π r, Prf r;

constant symbol ¬ : Prop → Prop; notation ¬ prefix 40;

rule Prf (¬ $p) ↪ Prf $p → Π r, Prf r;

constant symbol ∧ : Prop → Prop → Prop; notation ∧ infix right 30;

rule Prf ($p ∧ $q) ↪ Π r, (Prf $p → Prf $q → Prf r) → Prf r;

constant symbol ∨ : Prop → Prop → Prop; notation ∨ infix right 20;

rule Prf ($p ∨ $q) ↪ Π r, (Prf $p → Prf r) → (Prf $q → Prf r) → Prf r;

constant symbol ⇒ : Prop → Prop → Prop; notation ⇒ infix right 10;

rule Prf ($x ⇒ $y) ↪ Prf $x → Prf $y;

// some sanity checks
assert p q  ⊢ ¬ p ∧ q ≡ (¬ p) ∧ q;
assert p q  ⊢ ¬ p ∨ q ≡ (¬ p) ∨ q;
assert p q r ⊢ p ∨ q ∧ r ≡ p ∨ (q ∧ r);
