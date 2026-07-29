import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialOptimizationLemmaCanonicalLaneLean.MatchingPolytope

namespace HautevilleHouse
namespace CombinatorialOptimizationLemmaCanonicalLaneLean

structure PolyhedralCombinatoricsPackage (M : MatchingPolytopePackage) where
  vertexPolar : Prop
  facetDescription : Prop
  separationOracle : Prop

structure PolyhedralCombinatoricsEvidence {M : MatchingPolytopePackage} (P : PolyhedralCombinatoricsPackage M) where
  vertexPolarClosed : P.vertexPolar
  facetDescriptionClosed : P.facetDescription
  separationOracleClosed : P.separationOracle

def PolyhedralCombinatoricsClosed {M : MatchingPolytopePackage} (P : PolyhedralCombinatoricsPackage M) : Prop :=
  P.vertexPolar ∧ P.facetDescription ∧ P.separationOracle

theorem polyhedral_combinatorics_closed_from_evidence
    {M : MatchingPolytopePackage} (P : PolyhedralCombinatoricsPackage M)
    (E : PolyhedralCombinatoricsEvidence P) : PolyhedralCombinatoricsClosed P := by
  exact And.intro E.vertexPolarClosed (And.intro E.facetDescriptionClosed E.separationOracleClosed)

end CombinatorialOptimizationLemmaCanonicalLaneLean
end HautevilleHouse