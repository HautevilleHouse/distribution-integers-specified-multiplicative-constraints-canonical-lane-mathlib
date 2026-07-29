import DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean.DistributionRangePackage

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean

structure PrimeDistributionPackage {G : DistributionIntegersSpace}
    {M : MultiplicativeConstraintsPackage G} {D : DistributionRangePackage M} where
  primeCounting : Prop
  asymptoticLaw : Prop
  errorTerm : Prop
  multiplicativeStructureCompatible : Prop

structure PrimeDistributionEvidence {G : DistributionIntegersSpace}
    {M : MultiplicativeConstraintsPackage G} {D : DistributionRangePackage M}
    (P : PrimeDistributionPackage D) where
  primeCountingClosed : P.primeCounting
  asymptoticLawClosed : P.asymptoticLaw
  errorTermClosed : P.errorTerm
  multiplicativeStructureCompatibleClosed : P.multiplicativeStructureCompatible

def PrimeDistributionClosed {G : DistributionIntegersSpace}
    {M : MultiplicativeConstraintsPackage G} {D : DistributionRangePackage M}
    (P : PrimeDistributionPackage D) : Prop :=
  P.primeCounting ∧ P.asymptoticLaw ∧ P.errorTerm ∧ P.multiplicativeStructureCompatible

theorem prime_distribution_closed_from_evidence
    {G : DistributionIntegersSpace} {M : MultiplicativeConstraintsPackage G}
    {D : DistributionRangePackage M} (P : PrimeDistributionPackage D)
    (E : PrimeDistributionEvidence P) : PrimeDistributionClosed P := by
  exact And.intro E.primeCountingClosed
    (And.intro E.asymptoticLawClosed
      (And.intro E.errorTermClosed E.multiplicativeStructureCompatibleClosed))

end DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean
end HautevilleHouse