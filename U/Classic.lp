require open Logic.U.Prop;

symbol Prfᶜ p ≔ Prf (¬ ¬ p);

symbol ∧ᶜ p q ≔ ¬ ¬ p ∧ ¬ ¬ q; notation ∧ᶜ infix right 30;

symbol ∨ᶜ p q ≔ ¬ ¬ p ∨ ¬ ¬ q; notation ∨ᶜ infix right 20;

symbol ⇒ᶜ p q ≔ ¬ ¬ p ⇒ ¬ ¬ q; notation ⇒ᶜ infix right 10;

require open Logic.U.Set Logic.U.Quant;

symbol ∀ᶜ [a] p ≔ `∀ x : El a, ¬ ¬ (p x); notation ∀ᶜ quantifier;

symbol ∃ᶜ [a] p ≔ `∃ x : El a, ¬ ¬ (p x); notation ∃ᶜ quantifier;

// some sanity checks
assert p q  ⊢ p ∧ᶜ q ≡ (¬ ¬ p) ∧ (¬ ¬ q);
assert p q  ⊢ p ∨ᶜ q ≡ (¬ ¬ p) ∨ (¬ ¬ q);
