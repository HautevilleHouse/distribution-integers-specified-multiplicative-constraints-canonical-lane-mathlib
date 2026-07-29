import DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DistributionIntWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean
end HautevilleHouse