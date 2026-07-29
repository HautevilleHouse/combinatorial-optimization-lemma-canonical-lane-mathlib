import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationLemmaCanonicalLaneLean

structure PolyhedralMatroidDualPackage where
  groundSet : Type u
  baseFamily : Set (Set (groundSet))
  rankFunction : groundSet → ℕ
  dualRankFunction : groundSet → ℕ
  polyhedralCone : Type v
  integralityCondition : Prop
  baseFamilyMatroidAxioms : Prop
  dualRankConsistency : Prop

structure PolyhedralMatroidDualEvidence (P : PolyhedralMatroidDualPackage) where
  integralityConditionClosed : P.integralityCondition
  baseFamilyMatroidAxiomsClosed : P.baseFamilyMatroidAxioms
  dualRankConsistencyClosed : P.dualRankConsistency

def PolyhedralMatroidDualClosed (P : PolyhedralMatroidDualPackage) : Prop :=
  P.integralityCondition ∧ P.baseFamilyMatroidAxioms ∧ P.dualRankConsistency

theorem polyhedral_matroid_dual_closed_from_evidence
    (P : PolyhedralMatroidDualPackage) (E : PolyhedralMatroidDualEvidence P) :
    PolyhedralMatroidDualClosed P := by
  exact And.intro E.integralityConditionClosed
    (And.intro E.baseFamilyMatroidAxiomsClosed E.dualRankConsistencyClosed)

end CombinatorialOptimizationLemmaCanonicalLaneLean
end HautevilleHouse