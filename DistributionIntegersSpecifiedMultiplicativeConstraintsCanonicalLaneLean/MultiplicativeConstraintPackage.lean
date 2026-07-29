import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean.FactorisationIntegralDomain

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean

structure MultiplicativeConstraintPackage {R : FactorisationIntegralDomain} where
  mulConstraintMap : R.carrier → R.carrier → Prop
  constraintCompatibility : Prop
  compatibleFactorisation : Prop

def MultiplicativeConstraintClosed {R : FactorisationIntegralDomain} (M : MultiplicativeConstraintPackage R) : Prop :=
  M.constraintCompatibility ∧ M.compatibleFactorisation

end DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean
end HautevilleHouse
