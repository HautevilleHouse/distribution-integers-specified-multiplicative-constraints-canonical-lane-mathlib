import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean

structure FactorisationIntegralDomain where
  carrier : Type u
  zero : carrier
  one : carrier
  add : carrier → carrier → carrier
  mul : carrier → carrier → carrier
  isDomain : Prop
  factorizationExists : Prop
  factorizationUnique : Prop
  factorisationDomainClosed : Prop

def FactorisationIntegralDomainClosed (R : FactorisationIntegralDomain) : Prop :=
  R.isDomain ∧ R.factorizationExists ∧ R.factorizationUnique

end DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean
end HautevilleHouse
