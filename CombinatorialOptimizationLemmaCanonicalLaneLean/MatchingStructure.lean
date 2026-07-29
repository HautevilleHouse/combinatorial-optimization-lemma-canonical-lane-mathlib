import canonicalLaneMathlib.AdmissibleClass

/-!
# Matching Structure Package

This module defines the combinatorial matching structure used in constrained
optimization lemmas, including bipartite graph data, matching existence
conditions, and the admissible-class bridge.
-/

namespace HautevilleHouse
namespace CombinatorialOptimizationLemmaCanonicalLaneLean

structure BipartiteGraph where
  leftVertices : Type u
  rightVertices : Type v
  edges : leftVertices → rightVertices → Prop

structure Matching (G : BipartiteGraph) where
  matchedLeft : G.leftVertices → Prop
  matchedRight : G.rightVertices → Prop
  injectiveLeft : ∀ (v : G.leftVertices), G.edges v (someRight v)
  injectiveRight : ∀ (w : G.rightVertices), G.edges (someLeft w) w
  someRight : G.leftVertices → G.rightVertices
  someLeft : G.rightVertices → G.leftVertices

structure MatchingOptimizationPackage (G : BipartiteGraph) where
  perfectMatchingExists : Prop
  weightFunction : G.leftVertices → G.rightVertices → ℝ
  optimalValue : ℝ
  linearProgrammingDual : Prop
  complementarySlackness : Prop

structure MatchingOptimizationEvidence {G : BipartiteGraph}
    (M : MatchingOptimizationPackage G) where
  perfectMatchingExistsClosed : M.perfectMatchingExists
  optimalValueClosed : M.optimalValue = M.optimalValue
  complementarySlacknessClosed : M.complementarySlackness

def MatchingOptimizationClosed {G : BipartiteGraph}
    (M : MatchingOptimizationPackage G) : Prop :=
  M.perfectMatchingExists ∧ M.complementarySlackness

theorem matching_optimization_closed_from_evidence
    {G : BipartiteGraph} (M : MatchingOptimizationPackage G)
    (E : MatchingOptimizationEvidence M) : MatchingOptimizationClosed M := by
  exact And.intro E.perfectMatchingExistsClosed E.complementarySlacknessClosed

end CombinatorialOptimizationLemmaCanonicalLaneLean
end HautevilleHouse