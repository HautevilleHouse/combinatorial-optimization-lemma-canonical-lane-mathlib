import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationLemmaCanonicalLaneLean

structure EdmondsStableSetPackage where
  groundSet : Type u
  matroid : PolyhedralMatroidDualPackage
  independentSet : Set (Set (groundSet))
  rankFunction : groundSet → ℕ
  stableSetPolyhedron : Type v
  matroidPolymatroidBridge : Prop

structure EdmondsStableSetEvidence (E : EdmondsStableSetPackage) where
  matroidPolymatroidBridgeClosed : E.matroidPolymatroidBridge

def EdmondsStableSetClosed (E : EdmondsStableSetPackage) : Prop :=
  E.matroidPolymatroidBridge

theorem edmonds_stable_set_closed_from_evidence
    (E : EdmondsStableSetPackage) (Ev : EdmondsStableSetEvidence E) :
    EdmondsStableSetClosed E := by
  exact Ev.matroidPolymatroidBridgeClosed

end CombinatorialOptimizationLemmaCanonicalLaneLean
end HautevilleHouse