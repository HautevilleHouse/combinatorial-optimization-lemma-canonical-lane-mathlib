import canonicalLaneMathlib.AdmissibleClass
import CombinatorialOptimizationLemmaCanonicalLaneLean.MatchingStructure
import CombinatorialOptimizationLemmaCanonicalLaneLean.PolyhedralStructure

/-!
# Final Theorem Closure

This module defines the constrained combinatorial optimization lemma closure.
The closure combines matching optimization and polyhedral duality into a
single admissible-class bridge.
-/

namespace HautevilleHouse
namespace CombinatorialOptimizationLemmaCanonicalLaneLean

def ConstrainedOptimizationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_optimization_endgame (A : AdmissibleClass) :
    ConstrainedOptimizationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialOptimizationLemmaCanonicalLaneLean
end HautevilleHouse