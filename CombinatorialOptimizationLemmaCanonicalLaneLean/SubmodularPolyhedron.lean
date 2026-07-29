import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationLemmaCanonicalLaneLean

structure SubmodularPolyhedronPackage where
  groundSet : Type u
  submodularFunction : (Set groundSet) → ℚ
  polyhedron : Type v
  submodularInequalities : Prop
  basePolyhedronNonempty : Prop
  submodularFunctionSubmodular : Prop

structure SubmodularPolyhedronEvidence (S : SubmodularPolyhedronPackage) where
  submodularInequalitiesClosed : S.submodularInequalities
  basePolyhedronNonemptyClosed : S.basePolyhedronNonempty
  submodularFunctionSubmodularClosed : S.submodularFunctionSubmodular

def SubmodularPolyhedronClosed (S : SubmodularPolyhedronPackage) : Prop :=
  S.submodularInequalities ∧ S.basePolyhedronNonempty ∧ S.submodularFunctionSubmodular

theorem submodular_polyhedron_closed_from_evidence
    (S : SubmodularPolyhedronPackage) (E : SubmodularPolyhedronEvidence S) :
    SubmodularPolyhedronClosed S := by
  exact And.intro E.submodularInequalitiesClosed
    (And.intro E.basePolyhedronNonemptyClosed E.submodularFunctionSubmodularClosed)

end CombinatorialOptimizationLemmaCanonicalLaneLean
end HautevilleHouse