import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationLemmaCanonicalLaneLean

structure CombinatorialSpace where
  carrier : Type
  structure : Prop

structure CombinatorialAdmittedObject where
  space : CombinatorialSpace
  feasibleSet : Prop
  optimalValue : Prop
  optimumAchieved : Prop
  conclusion : optimumAchieved

def CombinatorialWitnessClosed (O : CombinatorialAdmittedObject) : Prop :=
  O.optimumAchieved

end CombinatorialOptimizationLemmaCanonicalLaneLean
end HautevilleHouse