import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean

structure DistributionIntegersSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DistributionIntegersAdmittedObject where
  space : DistributionIntegersSpace
  multiplicativeConstraint : Prop
  distributionSpecified : Prop
  integerModel : Type
  integrity : Prop
  conclusion : integrity

structure DistributionIntegersEndgameState where
  object : DistributionIntegersAdmittedObject

def DistributionIntegersWitnessClosed (O : DistributionIntegersAdmittedObject) : Prop :=
  O.integrity

end DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean
end HautevilleHouse