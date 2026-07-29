import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationLemmaCanonicalLaneLean

structure SimplexMethod where
  pivotRule : Prop
  tableauUpdate : Prop
  enteringVariable : Prop
  leavingVariable : Prop
  terminationCondition : Prop
  optimalityCertificate : Prop

structure SimplexEvidence (S : SimplexMethod) where
  pivotRuleClosed : S.pivotRule
  tableauUpdateClosed : S.tableauUpdate
  enteringVariableClosed : S.enteringVariable
  leavingVariableClosed : S.leavingVariable
  terminationConditionClosed : S.terminationCondition
  optimalityCertificateClosed : S.optimalityCertificate

def SimplexMethodClosed (S : SimplexMethod) : Prop :=
  S.pivotRule ∧ S.tableauUpdate ∧ S.enteringVariable ∧
  S.leavingVariable ∧ S.terminationCondition ∧ S.optimalityCertificate

theorem simplex_method_closed_from_evidence
    (S : SimplexMethod) (E : SimplexEvidence S) :
    SimplexMethodClosed S := by
  exact And.intro E.pivotRuleClosed
    (And.intro E.tableauUpdateClosed
      (And.intro E.enteringVariableClosed
        (And.intro E.leavingVariableClosed
          (And.intro E.terminationConditionClosed E.optimalityCertificateClosed))))

end CombinatorialOptimizationLemmaCanonicalLaneLean
end HautevilleHouse