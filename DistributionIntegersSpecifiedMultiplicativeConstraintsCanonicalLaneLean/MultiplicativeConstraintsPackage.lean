import DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean.DistributionIntegersStructure

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean

structure MultiplicativeConstraintsPackage (G : DistributionIntegersSpace) where
  constraintType : Type u
  bound : Prop
  factorizationBehavior : Prop
  closureUnderMultiplication : Prop

structure MultiplicativeConstraintsEvidence {G : DistributionIntegersSpace}
    (M : MultiplicativeConstraintsPackage G) where
  boundClosed : M.bound
  factorizationBehaviorClosed : M.factorizationBehavior
  closureUnderMultiplicationClosed : M.closureUnderMultiplication

def MultiplicativeConstraintsClosed {G : DistributionIntegersSpace}
    (M : MultiplicativeConstraintsPackage G) : Prop :=
  M.bound ∧ M.factorizationBehavior ∧ M.closureUnderMultiplication

theorem multiplicative_constraints_closed_from_evidence
    {G : DistributionIntegersSpace} (M : MultiplicativeConstraintsPackage G)
    (E : MultiplicativeConstraintsEvidence M) : MultiplicativeConstraintsClosed M := by
  exact And.intro E.boundClosed
    (And.intro E.factorizationBehaviorClosed E.closureUnderMultiplicationClosed)

end DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean
end HautevilleHouse