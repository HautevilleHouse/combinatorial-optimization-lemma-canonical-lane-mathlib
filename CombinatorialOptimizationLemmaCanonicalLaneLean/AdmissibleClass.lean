import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : CombinatorialAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CombinatorialWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatorialOptimizationLemmaCanonicalLaneLean
end HautevilleHouse