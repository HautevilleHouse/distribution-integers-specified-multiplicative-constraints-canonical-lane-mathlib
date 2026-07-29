import DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean.MultiplicativeConstraintsPackage

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean

structure DistributionRangePackage {G : DistributionIntegersSpace}
    (M : MultiplicativeConstraintsPackage G) where
  interval : Prop
  densityEstimate : Prop
  uniformityCondition : Prop
  tailBehavior : Prop

structure DistributionRangeEvidence {G : DistributionIntegersSpace}
    {M : MultiplicativeConstraintsPackage G} (D : DistributionRangePackage M) where
  intervalClosed : D.interval
  densityEstimateClosed : D.densityEstimate
  uniformityConditionClosed : D.uniformityCondition
  tailBehaviorClosed : D.tailBehavior

def DistributionRangeClosed {G : DistributionIntegersSpace}
    {M : MultiplicativeConstraintsPackage G} (D : DistributionRangePackage M) : Prop :=
  D.interval ∧ D.densityEstimate ∧ D.uniformityCondition ∧ D.tailBehavior

theorem distribution_range_closed_from_evidence
    {G : DistributionIntegersSpace} {M : MultiplicativeConstraintsPackage G}
    (D : DistributionRangePackage M) (E : DistributionRangeEvidence D) :
    DistributionRangeClosed D := by
  exact And.intro E.intervalClosed
    (And.intro E.densityEstimateClosed
      (And.intro E.uniformityConditionClosed E.tailBehaviorClosed))

end DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean
end HautevilleHouse