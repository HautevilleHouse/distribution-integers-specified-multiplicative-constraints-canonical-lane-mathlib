import DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean.DistributionIntegersClosure

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean

structure ConstraintEndpointClassificationPackage {A : AdmissibleClass} {P : MultiplicativeConstraintsDistributionPackage A} {Q : PrimeFactorConstraintPackage P} {R : MultiplicativeInvariantConditionPackage Q} {S : DistributionIntegersClosurePackage R} where
  endpointCondition : Prop
  classificationResult : Prop
  closureToEndpoint : Prop

structure ConstraintEndpointClassificationEvidence {A : AdmissibleClass} {P : MultiplicativeConstraintsDistributionPackage A} {Q : PrimeFactorConstraintPackage P} {R : MultiplicativeInvariantConditionPackage Q} {S : DistributionIntegersClosurePackage R} (T : ConstraintEndpointClassificationPackage S) where
  endpointConditionClosed : T.endpointCondition
  classificationResultClosed : T.classificationResult
  closureToEndpointClosed : T.closureToEndpoint

def ConstraintEndpointClassificationClosed {A : AdmissibleClass} {P : MultiplicativeConstraintsDistributionPackage A} {Q : PrimeFactorConstraintPackage P} {R : MultiplicativeInvariantConditionPackage Q} {S : DistributionIntegersClosurePackage R} (T : ConstraintEndpointClassificationPackage S) : Prop :=
  T.endpointCondition ∧ T.classificationResult ∧ T.closureToEndpoint

theorem constraint_endpoint_classification_closed_from_evidence
    {A : AdmissibleClass} {P : MultiplicativeConstraintsDistributionPackage A} {Q : PrimeFactorConstraintPackage P} {R : MultiplicativeInvariantConditionPackage Q} {S : DistributionIntegersClosurePackage R}
    (T : ConstraintEndpointClassificationPackage S) (E : ConstraintEndpointClassificationEvidence T) :
    ConstraintEndpointClassificationClosed T := by
  exact And.intro E.endpointConditionClosed
    (And.intro E.classificationResultClosed E.closureToEndpointClosed)

end DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean
end HautevilleHouse