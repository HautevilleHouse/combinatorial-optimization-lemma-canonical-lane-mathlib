import combinatorialOptimizationLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CombinatorialOptimizationLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure OptimSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure OptimAdmittedObject where
  space : OptimSpace
  feasibleSet : Set (carrier → ℝ)
  objective : (carrier → ℝ) → ℝ
  optimalValue : ℝ
  attainsOptimum : Prop
  conclusion : attainsOptimum

structure OptimEndgameState where
  object : OptimAdmittedObject

def OptimWitnessClosed (O : OptimAdmittedObject) : Prop :=
  O.attainsOptimum

end CombinatorialOptimizationLemmaCanonicalLaneLean
end HautevilleHouse