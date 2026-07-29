import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationLemmaCanonicalLaneLean

structure PolymatroidGreedyPackage where
  groundSet : Type u
  polymatroidRankFunction : (Set groundSet) → ℕ
  weightFunction : groundSet → ℚ
  greedyAlgorithmResult : groundSet → ℕ
  greedyOptimality : Prop
  polymatroidAxioms : Prop

structure PolymatroidGreedyEvidence (P : PolymatroidGreedyPackage) where
  greedyOptimalityClosed : P.greedyOptimality
  polymatroidAxiomsClosed : P.polymatroidAxioms

def PolymatroidGreedyClosed (P : PolymatroidGreedyPackage) : Prop :=
  P.greedyOptimality ∧ P.polymatroidAxioms

theorem polymatroid_greedy_closed_from_evidence
    (P : PolymatroidGreedyPackage) (E : PolymatroidGreedyEvidence P) :
    PolymatroidGreedyClosed P := by
  exact And.intro E.greedyOptimalityClosed E.polymatroidAxiomsClosed

end CombinatorialOptimizationLemmaCanonicalLaneLean
end HautevilleHouse