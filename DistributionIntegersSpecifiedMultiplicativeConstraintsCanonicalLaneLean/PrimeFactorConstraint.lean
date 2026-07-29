import DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean.MultiplicativeConstraintsDistribution

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean

structure PrimeFactorConstraintPackage {A : AdmissibleClass} (P : MultiplicativeConstraintsDistributionPackage A) where
  primeSet : Set ℕ
  exponentBounds : ℕ → ℕ
  multiplicativeConstraintFormulation : Prop
  constraintHoldsForAllIntegers : Prop
  consequenceForDistribution : Prop

structure PrimeFactorConstraintEvidence {A : AdmissibleClass} {P : MultiplicativeConstraintsDistributionPackage A} (Q : PrimeFactorConstraintPackage P) where
  primeSetClosed : Q.primeSet = Q.primeSet
  exponentBoundsClosed : Q.exponentBounds = Q.exponentBounds
  multiplicativeConstraintFormulationClosed : Q.multiplicativeConstraintFormulation
  constraintHoldsForAllIntegersClosed : Q.constraintHoldsForAllIntegers
  consequenceForDistributionClosed : Q.consequenceForDistribution

def PrimeFactorConstraintClosed {A : AdmissibleClass} {P : MultiplicativeConstraintsDistributionPackage A} (Q : PrimeFactorConstraintPackage P) : Prop :=
  Q.multiplicativeConstraintFormulation ∧ Q.constraintHoldsForAllIntegers ∧ Q.consequenceForDistribution

theorem prime_factor_constraint_closed_from_evidence
    {A : AdmissibleClass} {P : MultiplicativeConstraintsDistributionPackage A}
    (Q : PrimeFactorConstraintPackage P) (E : PrimeFactorConstraintEvidence Q) :
    PrimeFactorConstraintClosed Q := by
  exact And.intro E.multiplicativeConstraintFormulationClosed
    (And.intro E.constraintHoldsForAllIntegersClosed E.consequenceForDistributionClosed)

end DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean
end HautevilleHouse