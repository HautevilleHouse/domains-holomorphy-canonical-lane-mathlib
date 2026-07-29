import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

structure HolomorphicFunctionPackage where
  domain : Type u
  codomain : Type v
  topologyDomain : TopologicalSpace domain
  topologyCodomain : TopologicalSpace codomain
  complexStructureDomain : ComplexStructure domain
  complexStructureCodomain : ComplexStructure codomain
  functionMap : domain → codomain
  holomorphicCondition : Prop
  cauchyRiemannEquations : Prop

structure HolomorphicFunctionEvidence (F : HolomorphicFunctionPackage) where
  holomorphicConditionClosed : F.holomorphicCondition
  cauchyRiemannEquationsClosed : F.cauchyRiemannEquations

def HolomorphicFunctionClosed (F : HolomorphicFunctionPackage) : Prop :=
  F.holomorphicCondition ∧ F.cauchyRiemannEquations

theorem holomorphic_function_closed_from_evidence (F : HolomorphicFunctionPackage)
    (E : HolomorphicFunctionEvidence F) : HolomorphicFunctionClosed F := by
  exact And.intro E.holomorphicConditionClosed E.cauchyRiemannEquationsClosed

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse