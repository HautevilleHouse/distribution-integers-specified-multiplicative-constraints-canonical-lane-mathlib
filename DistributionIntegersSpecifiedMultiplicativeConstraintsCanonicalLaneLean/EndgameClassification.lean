import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean

structure EndgameClassificationPackage (A : MultiplicativeConstraintAdmissibleClass)
    (C : ConstraintDecompositionPackage A) where
  constraintClosure : Prop
  endpointDistinguished : Prop
  remainderZero : Prop

structure EndgameClassificationEvidence (A : MultiplicativeConstraintAdmissibleClass)
    (C : ConstraintDecompositionPackage A) (E : EndgameClassificationPackage A C) where
  constraintClosureClosed : E.constraintClosure
  endpointDistinguishedClosed : E.endpointDistinguished
  remainderZeroClosed : E.remainderZero

def EndgameClassificationClosed (A : MultiplicativeConstraintAdmissibleClass)
    (C : ConstraintDecompositionPackage A) (E : EndgameClassificationPackage A C) : Prop :=
  E.constraintClosure ∧ E.endpointDistinguished ∧ E.remainderZero

theorem endgame_classification_closed_from_evidence (A : MultiplicativeConstraintAdmissibleClass)
    (C : ConstraintDecompositionPackage A) (E : EndgameClassificationPackage A C)
    (Ev : EndgameClassificationEvidence A C E) : EndgameClassificationClosed A C E := by
  exact And.intro Ev.constraintClosureClosed
    (And.intro Ev.endpointDistinguishedClosed Ev.remainderZeroClosed)

end DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean
end HautevilleHouse