import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean

structure MultiplicativeConstraintObject where
  baseSet : Type u
  multiplicationLaw : baseSet → baseSet → Prop
  distributionInteger : baseSet → ℤ
  constraintLaw : ∀ x y : baseSet, distributionInteger (multiplicationLaw x y) = distributionInteger x * distributionInteger y

structure MultiplicativeConstraintAdmissibleClass extends AdmissibleClass where
  object : MultiplicativeConstraintObject
  constraintSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : constraintSatisfied ∨ remainderRecorded

end DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean
end HautevilleHouse