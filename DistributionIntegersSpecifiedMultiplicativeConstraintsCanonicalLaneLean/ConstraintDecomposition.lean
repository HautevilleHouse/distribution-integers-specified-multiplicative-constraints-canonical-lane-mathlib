import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean

structure ConstraintDecompositionPackage (A : MultiplicativeConstraintAdmissibleClass) where
  primeFactorDecomposition : Prop
  multiplicativeConstraintPreserved : Prop
  distributionCompatibility : Prop
  carriedRemainder : Prop

structure ConstraintDecompositionEvidence (A : MultiplicativeConstraintAdmissibleClass)
    (C : ConstraintDecompositionPackage A) where
  primeFactorDecompositionClosed : C.primeFactorDecomposition
  multiplicativeConstraintPreservedClosed : C.multiplicativeConstraintPreserved
  distributionCompatibilityClosed : C.distributionCompatibility
  carriedRemainderClosed : C.carriedRemainder

def ConstraintDecompositionClosed (A : MultiplicativeConstraintAdmissibleClass)
    (C : ConstraintDecompositionPackage A) : Prop :=
  C.primeFactorDecomposition ∧ C.multiplicativeConstraintPreserved ∧
  C.distributionCompatibility ∧ C.carriedRemainder

theorem constraint_decomposition_closed_from_evidence (A : MultiplicativeConstraintAdmissibleClass)
    (C : ConstraintDecompositionPackage A) (E : ConstraintDecompositionEvidence A C) :
    ConstraintDecompositionClosed A C := by
  exact And.intro E.primeFactorDecompositionClosed
    (And.intro E.multiplicativeConstraintPreservedClosed
      (And.intro E.distributionCompatibilityClosed E.carriedRemainderClosed))

end DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean
end HautevilleHouse