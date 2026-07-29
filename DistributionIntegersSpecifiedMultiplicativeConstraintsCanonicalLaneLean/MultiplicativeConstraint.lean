import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean

structure MultiplicativeConstraint (A : AdmissibleClass) where
  domain : Type u
  multiplication : domain → domain → domain
  identity : domain
  associativity : ∀ a b c, multiplication (multiplication a b) c = multiplication a (multiplication b c)
  identity_left : ∀ a, multiplication identity a = a
  identity_right : ∀ a, multiplication a identity = a
  cancellation : ∀ a b c, multiplication a b = multiplication a c → b = c
  orderCondition : Prop

structure MultiplicativeConstraintEvidence (A : AdmissibleClass) (C : MultiplicativeConstraint A) where
  associativity_closed : ∀ a b c : C.domain, C.multiplication (C.multiplication a b) c = C.multiplication a (C.multiplication b c)
  identity_left_closed : ∀ a : C.domain, C.multiplication C.identity a = a
  identity_right_closed : ∀ a : C.domain, C.multiplication a C.identity = a
  cancellation_closed : ∀ a b c : C.domain, C.multiplication a b = C.multiplication a c → b = c
  orderCondition_closed : C.orderCondition

def MultiplicativeConstraintClosed (A : AdmissibleClass) (C : MultiplicativeConstraint A) : Prop :=
  (∀ a b c : C.domain, C.multiplication (C.multiplication a b) c = C.multiplication a (C.multiplication b c)) ∧
  (∀ a : C.domain, C.multiplication C.identity a = a) ∧
  (∀ a : C.domain, C.multiplication a C.identity = a) ∧
  (∀ a b c : C.domain, C.multiplication a b = C.multiplication a c → b = c) ∧
  C.orderCondition

theorem multiplicative_constraint_closed_from_evidence (A : AdmissibleClass) (C : MultiplicativeConstraint A) (E : MultiplicativeConstraintEvidence A C) : MultiplicativeConstraintClosed A C := by
  exact And.intro E.associativity_closed (And.intro E.identity_left_closed (And.intro E.identity_right_closed (And.intro E.cancellation_closed E.orderCondition_closed)))

end DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean
end HautevilleHouse