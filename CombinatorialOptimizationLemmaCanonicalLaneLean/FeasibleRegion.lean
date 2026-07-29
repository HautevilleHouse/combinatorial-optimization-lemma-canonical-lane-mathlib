import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationLemmaCanonicalLaneLean

structure FeasibleRegionPackage where
  variableSet : Type u
  constraints : List (variableSet → Prop)
  convexPolyhedron : Prop
  polyhedralStructure : Prop
  compactnessProperty : Prop

def FeasibleRegionClosed (F : FeasibleRegionPackage) : Prop :=
  F.convexPolyhedron ∧ F.polyhedralStructure ∧ F.compactnessProperty

end CombinatorialOptimizationLemmaCanonicalLaneLean
end HautevilleHouse