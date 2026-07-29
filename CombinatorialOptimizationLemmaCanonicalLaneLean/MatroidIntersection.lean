import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationLemmaCanonicalLaneLean

structure MatroidIntersectionPackage where
  groundSet : Type u
  matroid1 : PolyhedralMatroidDualPackage
  matroid2 : PolyhedralMatroidDualPackage
  commonIndependentSets : Set (Set (groundSet))
  rankFunctionCommon : groundSet → ℕ
  intersectionTheorem : Prop
  commonIndependentNonempty : Prop

structure MatroidIntersectionEvidence (M : MatroidIntersectionPackage) where
  intersectionTheoremClosed : M.intersectionTheorem
  commonIndependentNonemptyClosed : M.commonIndependentNonempty

def MatroidIntersectionClosed (M : MatroidIntersectionPackage) : Prop :=
  M.intersectionTheorem ∧ M.commonIndependentNonempty

theorem matroid_intersection_closed_from_evidence
    (M : MatroidIntersectionPackage) (E : MatroidIntersectionEvidence M) :
    MatroidIntersectionClosed M := by
  exact And.intro E.intersectionTheoremClosed E.commonIndependentNonemptyClosed

end CombinatorialOptimizationLemmaCanonicalLaneLean
end HautevilleHouse