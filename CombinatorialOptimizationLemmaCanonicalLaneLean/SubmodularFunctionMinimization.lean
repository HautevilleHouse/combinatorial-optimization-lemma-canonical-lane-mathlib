import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialOptimizationLemmaCanonicalLaneLean.MatroidRankFunction

namespace HautevilleHouse
namespace CombinatorialOptimizationLemmaCanonicalLaneLean

structure SubmodularFunctionMinimizationPackage (R : MatroidRankFunction) where
  groundSet : Type u
  functionF : Set (R.groundSet) → ℝ
  submodularityProof : Prop
  minimizerExists : Prop
  polymatroidDual : Prop

structure SubmodularFunctionMinimizationEvidence {R : MatroidRankFunction} (S : SubmodularFunctionMinimizationPackage R) where
  submodularityProofClosed : S.submodularityProof
  minimizerExistsClosed : S.minimizerExists
  polymatroidDualClosed : S.polymatroidDual

def SubmodularFunctionMinimizationClosed {R : MatroidRankFunction} (S : SubmodularFunctionMinimizationPackage R) : Prop :=
  S.submodularityProof ∧ S.minimizerExists ∧ S.polymatroidDual

theorem submodular_function_minimization_closed_from_evidence
    {R : MatroidRankFunction} (S : SubmodularFunctionMinimizationPackage R)
    (E : SubmodularFunctionMinimizationEvidence S) : SubmodularFunctionMinimizationClosed S := by
  exact And.intro E.submodularityProofClosed (And.intro E.minimizerExistsClosed E.polymatroidDualClosed)

end CombinatorialOptimizationLemmaCanonicalLaneLean
end HautevilleHouse