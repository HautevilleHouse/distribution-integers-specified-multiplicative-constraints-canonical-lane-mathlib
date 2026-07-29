import DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean.IntegerConstraintSystem

/-!
# Multiplicative Constraint Specification Package
-/

namespace HautevilleHouse
namespace DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean

structure MultiplicativeConstraintSpec {A : AdmissibleClass}
    (C : IntegerConstraintSystem A) where
  multiplicativeRelation : Prop
  factorStructure : Prop
  closureUnderMultiplication : Prop
  distributivityCondition : Prop

structure MultiplicativeConstraintSpecEvidence {A : AdmissibleClass}
    {C : IntegerConstraintSystem A} (M : MultiplicativeConstraintSpec C) where
  multiplicativeRelationClosed : M.multiplicativeRelation
  factorStructureClosed : M.factorStructure
  closureUnderMultiplicationClosed : M.closureUnderMultiplication
  distributivityConditionClosed : M.distributivityCondition

def MultiplicativeConstraintSpecClosed {A : AdmissibleClass}
    {C : IntegerConstraintSystem A} (M : MultiplicativeConstraintSpec C) : Prop :=
  M.multiplicativeRelation ∧ M.factorStructure ∧ M.closureUnderMultiplication ∧ M.distributivityCondition

theorem multiplicative_constraint_spec_closed_from_evidence
    {A : AdmissibleClass} {C : IntegerConstraintSystem A}
    (M : MultiplicativeConstraintSpec C) (E : MultiplicativeConstraintSpecEvidence M) :
    MultiplicativeConstraintSpecClosed M := by
  exact And.intro E.multiplicativeRelationClosed
    (And.intro E.factorStructureClosed
      (And.intro E.closureUnderMultiplicationClosed E.distributivityConditionClosed))

end DistributionIntegersSpecifiedMultiplicativeConstraintsCanonicalLaneLean
end HautevilleHouse