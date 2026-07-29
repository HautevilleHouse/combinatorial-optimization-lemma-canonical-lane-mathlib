import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationLemmaCanonicalLaneLean

structure GlobalOptimalityPackage where
  localOptimalityPackage : LocalOptimalityPackage
  convexStructure : Prop
  globalMinViaConvexity : Prop
  integerConstraints : Prop
  branchAndBoundCertificate : Prop

def GlobalOptimalityClosed (G : GlobalOptimalityPackage) : Prop :=
  G.convexStructure ∧ G.globalMinViaConvexity ∧ G.integerConstraints ∧ G.branchAndBoundCertificate

end CombinatorialOptimizationLemmaCanonicalLaneLean
end HautevilleHouse