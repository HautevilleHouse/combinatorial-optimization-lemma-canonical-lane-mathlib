import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationLemmaCanonicalLaneLean

structure LocalOptimalityPackage where
  feasibleRegion : FeasibleRegionPackage
  localDefinition : Prop
  gradientNecessaryCondition : Prop
  secondOrderSufficientCondition : Prop
  linearProgrammingCase : Prop

def LocalOptimalityClosed (L : LocalOptimalityPackage) : Prop :=
  L.localDefinition ∧ L.gradientNecessaryCondition ∧ L.secondOrderSufficientCondition ∧ L.linearProgrammingCase

end CombinatorialOptimizationLemmaCanonicalLaneLean
end HautevilleHouse