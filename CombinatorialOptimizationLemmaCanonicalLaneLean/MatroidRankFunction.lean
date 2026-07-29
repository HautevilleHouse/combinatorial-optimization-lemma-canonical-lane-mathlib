import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationLemmaCanonicalLaneLean

structure MatroidRankFunction where
  groundSet : Type u
  rank : Set (Set (groundSet)) → ℕ
  rankAxioms : Prop
  submodularity : Prop
  augmentation : Prop

structure MatroidRankFunctionEvidence (R : MatroidRankFunction) where
  rankAxiomsClosed : R.rankAxioms
  submodularityClosed : R.submodularity
  augmentationClosed : R.augmentation

def MatroidRankFunctionClosed (R : MatroidRankFunction) : Prop :=
  R.rankAxioms ∧ R.submodularity ∧ R.augmentation

theorem matroid_rank_function_closed_from_evidence (R : MatroidRankFunction) (E : MatroidRankFunctionEvidence R) :
    MatroidRankFunctionClosed R := by
  exact And.intro E.rankAxiomsClosed (And.intro E.submodularityClosed E.augmentationClosed)

end CombinatorialOptimizationLemmaCanonicalLaneLean
end HautevilleHouse