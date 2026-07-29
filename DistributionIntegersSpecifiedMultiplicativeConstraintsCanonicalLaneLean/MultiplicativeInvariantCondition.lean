import DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean.PrimeFactorConstraint

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean

structure MultiplicativeInvariantConditionPackage {A : AdmissibleClass} {P : MultiplicativeConstraintsDistributionPackage A} {Q : PrimeFactorConstraintPackage P} where
  invariantProperty : Prop
  preservationUnderMultiplication : Prop
  closureUnderFactorisation : Prop
  linkToPrimeConstraint : Prop

structure MultiplicativeInvariantConditionEvidence {A : AdmissibleClass} {P : MultiplicativeConstraintsDistributionPackage A} {Q : PrimeFactorConstraintPackage P} (R : MultiplicativeInvariantConditionPackage Q) where
  invariantPropertyClosed : R.invariantProperty
  preservationUnderMultiplicationClosed : R.preservationUnderMultiplication
  closureUnderFactorisationClosed : R.closureUnderFactorisation
  linkToPrimeConstraintClosed : R.linkToPrimeConstraint

def MultiplicativeInvariantConditionClosed {A : AdmissibleClass} {P : MultiplicativeConstraintsDistributionPackage A} {Q : PrimeFactorConstraintPackage P} (R : MultiplicativeInvariantConditionPackage Q) : Prop :=
  R.invariantProperty ∧ R.preservationUnderMultiplication ∧ R.closureUnderFactorisation ∧ R.linkToPrimeConstraint

theorem multiplicative_invariant_condition_closed_from_evidence
    {A : AdmissibleClass} {P : MultiplicativeConstraintsDistributionPackage A} {Q : PrimeFactorConstraintPackage P}
    (R : MultiplicativeInvariantConditionPackage Q) (E : MultiplicativeInvariantConditionEvidence R) :
    MultiplicativeInvariantConditionClosed R := by
  exact And.intro E.invariantPropertyClosed
    (And.intro E.preservationUnderMultiplicationClosed
      (And.intro E.closureUnderFactorisationClosed E.linkToPrimeConstraintClosed))

end DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean
end HautevilleHouse