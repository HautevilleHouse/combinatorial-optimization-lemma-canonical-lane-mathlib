import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialOptimizationLemmaCanonicalLaneLean

structure OptimizationFramework where
  objectiveFunction : Type
  constraints : Prop
  feasibleRegion : Prop
  optimalityCondition : Prop
  dualityGap : Prop

structure OptimizationEvidence (F : OptimizationFramework) where
  objectiveFunctionClosed : F.objectiveFunction
  constraintsClosed : F.constraints
  feasibleRegionClosed : F.feasibleRegion
  optimalityConditionClosed : F.optimalityCondition
  dualityGapClosed : F.dualityGap

def OptimizationFrameworkClosed (F : OptimizationFramework) : Prop :=
  F.objectiveFunction ∧ F.constraints ∧ F.feasibleRegion ∧
  F.optimalityCondition ∧ F.dualityGap

theorem optimization_framework_closed_from_evidence
    (F : OptimizationFramework) (E : OptimizationEvidence F) :
    OptimizationFrameworkClosed F := by
  exact And.intro E.objectiveFunctionClosed
    (And.intro E.constraintsClosed
      (And.intro E.feasibleRegionClosed
        (And.intro E.optimalityConditionClosed E.dualityGapClosed)))

end CombinatorialOptimizationLemmaCanonicalLaneLean
end HautevilleHouse