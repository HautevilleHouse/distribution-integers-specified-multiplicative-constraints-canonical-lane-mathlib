import DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean

structure MultiplicativeConstraintsDistributionPackage (A : AdmissibleClass) where
  integerDistribution : Type u
  specifiedMultiplicativeConstraint : Prop
  distributionSatisfiesConstraint : Prop
  constraintPreservedUnderMultiplication : Prop
  closureUnderMultiplication : Prop

structure MultiplicativeConstraintsDistributionEvidence {A : AdmissibleClass} (P : MultiplicativeConstraintsDistributionPackage A) where
  integerDistributionClosed : P.integerDistribution
  specifiedMultiplicativeConstraintClosed : P.specifiedMultiplicativeConstraint
  distributionSatisfiesConstraintClosed : P.distributionSatisfiesConstraint
  constraintPreservedUnderMultiplicationClosed : P.constraintPreservedUnderMultiplication
  closureUnderMultiplicationClosed : P.closureUnderMultiplication

def MultiplicativeConstraintsDistributionClosed {A : AdmissibleClass} (P : MultiplicativeConstraintsDistributionPackage A) : Prop :=
  P.integerDistribution ∧ P.specifiedMultiplicativeConstraint ∧ P.distributionSatisfiesConstraint ∧ P.constraintPreservedUnderMultiplication ∧ P.closureUnderMultiplication

theorem multiplicative_constraints_distribution_closed_from_evidence
    {A : AdmissibleClass} (P : MultiplicativeConstraintsDistributionPackage A)
    (E : MultiplicativeConstraintsDistributionEvidence P) : MultiplicativeConstraintsDistributionClosed P := by
  exact And.intro E.integerDistributionClosed
    (And.intro E.specifiedMultiplicativeConstraintClosed
      (And.intro E.distributionSatisfiesConstraintClosed
        (And.intro E.constraintPreservedUnderMultiplicationClosed E.closureUnderMultiplicationClosed)))

end DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean
end HautevilleHouse