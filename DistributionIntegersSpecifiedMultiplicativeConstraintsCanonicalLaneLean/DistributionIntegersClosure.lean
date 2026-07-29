import DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean.MultiplicativeInvariantCondition

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean

structure DistributionIntegersClosurePackage {A : AdmissibleClass} {P : MultiplicativeConstraintsDistributionPackage A} {Q : PrimeFactorConstraintPackage P} {R : MultiplicativeInvariantConditionPackage Q} where
  distributionInteger : Type u
  specifiedConstraint : Prop
  multiplicativeInvariant : Prop
  closureCondition : Prop
  endgameStatement : Prop

structure DistributionIntegersClosureEvidence {A : AdmissibleClass} {P : MultiplicativeConstraintsDistributionPackage A} {Q : PrimeFactorConstraintPackage P} {R : MultiplicativeInvariantConditionPackage Q} (S : DistributionIntegersClosurePackage R) where
  distributionIntegerClosed : S.distributionInteger
  specifiedConstraintClosed : S.specifiedConstraint
  multiplicativeInvariantClosed : S.multiplicativeInvariant
  closureConditionClosed : S.closureCondition
  endgameStatementClosed : S.endgameStatement

def DistributionIntegersClosureClosed {A : AdmissibleClass} {P : MultiplicativeConstraintsDistributionPackage A} {Q : PrimeFactorConstraintPackage P} {R : MultiplicativeInvariantConditionPackage Q} (S : DistributionIntegersClosurePackage R) : Prop :=
  S.distributionInteger ∧ S.specifiedConstraint ∧ S.multiplicativeInvariant ∧ S.closureCondition ∧ S.endgameStatement

theorem distribution_integers_closure_closed_from_evidence
    {A : AdmissibleClass} {P : MultiplicativeConstraintsDistributionPackage A} {Q : PrimeFactorConstraintPackage P} {R : MultiplicativeInvariantConditionPackage Q}
    (S : DistributionIntegersClosurePackage R) (E : DistributionIntegersClosureEvidence S) :
    DistributionIntegersClosureClosed S := by
  exact And.intro E.distributionIntegerClosed
    (And.intro E.specifiedConstraintClosed
      (And.intro E.multiplicativeInvariantClosed
        (And.intro E.closureConditionClosed E.endgameStatementClosed)))

end DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean
end HautevilleHouse