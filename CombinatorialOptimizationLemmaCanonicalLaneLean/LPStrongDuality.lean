import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialOptimizationLemmaCanonicalLaneLean.PolyhedralCombinatorics

namespace HautevilleHouse
namespace CombinatorialOptimizationLemmaCanonicalLaneLean

structure LPStrongDualityPackage (P : PolyhedralCombinatoricsPackage M) (M : MatchingPolytopePackage) where
  primalOptimal : Prop
  dualOptimal : Prop
  strongDualityGap : Prop
  complementarySlackness : Prop

structure LPStrongDualityEvidence {P : PolyhedralCombinatoricsPackage M} {M : MatchingPolytopePackage} (L : LPStrongDualityPackage P M) where
  primalOptimalClosed : L.primalOptimal
  dualOptimalClosed : L.dualOptimal
  strongDualityGapClosed : L.strongDualityGap
  complementarySlacknessClosed : L.complementarySlackness

def LPStrongDualityClosed {P : PolyhedralCombinatoricsPackage M} {M : MatchingPolytopePackage} (L : LPStrongDualityPackage P M) : Prop :=
  L.primalOptimal ∧ L.dualOptimal ∧ L.strongDualityGap ∧ L.complementarySlackness

theorem lp_strong_duality_closed_from_evidence
    {P : PolyhedralCombinatoricsPackage M} {M : MatchingPolytopePackage}
    (L : LPStrongDualityPackage P M) (E : LPStrongDualityEvidence L) : LPStrongDualityClosed L := by
  exact And.intro E.primalOptimalClosed (And.intro E.dualOptimalClosed (And.intro E.strongDualityGapClosed E.complementarySlacknessClosed))

end CombinatorialOptimizationLemmaCanonicalLaneLean
end HautevilleHouse