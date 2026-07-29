import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CombinatorialWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatorialOptimizationLemmaCanonicalLaneLean
end HautevilleHouse