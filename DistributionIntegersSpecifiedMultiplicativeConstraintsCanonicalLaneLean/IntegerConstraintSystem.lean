import DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean.AdmissibleClass

/-!
# Integer Constraint System Package
-/

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean

structure IntegerConstraintSystem (A : AdmissibleClass) where
  modulus : Nat
  constraints : List (Prop)
  solutionSpaceCardinality : Prop
  constraintConsistent : Prop

structure IntegerConstraintSystemEvidence {A : AdmissibleClass} (C : IntegerConstraintSystem A) where
  modulusClosed : C.constraintConsistent
  solutionSpaceCardinalityClosed : C.solutionSpaceCardinality
  constraintConsistentClosed : C.constraintConsistent

def IntegerConstraintSystemClosed {A : AdmissibleClass} (C : IntegerConstraintSystem A) : Prop :=
  C.solutionSpaceCardinality ∧ C.constraintConsistent

theorem integer_constraint_system_closed_from_evidence
    {A : AdmissibleClass} (C : IntegerConstraintSystem A)
    (E : IntegerConstraintSystemEvidence C) : IntegerConstraintSystemClosed C := by
  exact And.intro E.solutionSpaceCardinalityClosed E.constraintConsistentClosed

end DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean
end HautevilleHouse