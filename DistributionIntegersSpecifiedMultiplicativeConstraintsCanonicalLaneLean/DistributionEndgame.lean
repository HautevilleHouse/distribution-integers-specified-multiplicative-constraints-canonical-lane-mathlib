import DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean.MultiplicativeConstraintSpec

/-!
# Distribution Endgame Package
-/

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean

structure DistributionEndgamePackage {A : AdmissibleClass}
    {C : IntegerConstraintSystem A} {M : MultiplicativeConstraintSpec C} where
  distributionIdentified : Prop
  distributionConsistent : Prop
  distributionComplete : Prop
  distributableBase : Prop

structure DistributionEndgameEvidence {A : AdmissibleClass}
    {C : IntegerConstraintSystem A} {M : MultiplicativeConstraintSpec C}
    (D : DistributionEndgamePackage M) where
  distributionIdentifiedClosed : D.distributionIdentified
  distributionConsistentClosed : D.distributionConsistent
  distributionCompleteClosed : D.distributionComplete
  distributableBaseClosed : D.distributableBase

def DistributionEndgameClosed {A : AdmissibleClass}
    {C : IntegerConstraintSystem A} {M : MultiplicativeConstraintSpec C}
    (D : DistributionEndgamePackage M) : Prop :=
  D.distributionIdentified ∧ D.distributionConsistent ∧ D.distributionComplete ∧ D.distributableBase

theorem distribution_endgame_closed_from_evidence
    {A : AdmissibleClass} {C : IntegerConstraintSystem A} {M : MultiplicativeConstraintSpec C}
    (D : DistributionEndgamePackage M) (E : DistributionEndgameEvidence D) :
    DistributionEndgameClosed D := by
  exact And.intro E.distributionIdentifiedClosed
    (And.intro E.distributionConsistentClosed
      (And.intro E.distributionCompleteClosed E.distributableBaseClosed))

theorem distribution_endgame_supplies_endpoint
    {A : AdmissibleClass} {C : IntegerConstraintSystem A} {M : MultiplicativeConstraintSpec C}
    (D : DistributionEndgamePackage M) : D.distributionIdentified := D.distributionIdentified

end DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean
end HautevilleHouse