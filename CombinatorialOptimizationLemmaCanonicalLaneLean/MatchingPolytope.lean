import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationLemmaCanonicalLaneLean

structure MatchingPolytopePackage where
  graph : Type u
  edgeSet : graph → graph → Prop
  matchingSet : Type v
  polytopeDimension : Prop
  integralityCondition : Prop
  capacityConstraint : Prop

structure MatchingPolytopeEvidence (M : MatchingPolytopePackage) where
  integralityConditionClosed : M.integralityCondition
  capacityConstraintClosed : M.capacityConstraint

def MatchingPolytopeClosed (M : MatchingPolytopePackage) : Prop :=
  M.integralityCondition ∧ M.capacityConstraint

theorem matching_polytope_closed_from_evidence (M : MatchingPolytopePackage) (E : MatchingPolytopeEvidence M) :
    MatchingPolytopeClosed M := by
  exact And.intro E.integralityConditionClosed E.capacityConstraintClosed

end CombinatorialOptimizationLemmaCanonicalLaneLean
end HautevilleHouse