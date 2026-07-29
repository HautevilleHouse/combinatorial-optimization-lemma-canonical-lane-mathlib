import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationLemmaCanonicalLaneLean

structure LovászExtensionPackage where
  groundSet : Type u
  setFunction : (Set groundSet) → ℝ
  extensionDomain : Type v
  extensionMap : (Set groundSet) → ℝ → ℝ
  convexityCondition : Prop
  continuousCondition : Prop
  positivelyHomogeneousCondition : Prop
  extensionAgreesOnVectors : Prop

structure LovászExtensionEvidence (L : LovászExtensionPackage) where
  convexityConditionClosed : L.convexityCondition
  continuousConditionClosed : L.continuousCondition
  positivelyHomogeneousConditionClosed : L.positivelyHomogeneousCondition
  extensionAgreesOnVectorsClosed : L.extensionAgreesOnVectors

def LovászExtensionClosed (L : LovászExtensionPackage) : Prop :=
  L.convexityCondition ∧ L.continuousCondition ∧
  L.positivelyHomogeneousCondition ∧ L.extensionAgreesOnVectors

theorem lovász_extension_closed_from_evidence
    (L : LovászExtensionPackage) (E : LovászExtensionEvidence L) :
    LovászExtensionClosed L := by
  exact And.intro E.convexityConditionClosed
    (And.intro E.continuousConditionClosed
      (And.intro E.positivelyHomogeneousConditionClosed
        E.extensionAgreesOnVectorsClosed))

end CombinatorialOptimizationLemmaCanonicalLaneLean
end HautevilleHouse