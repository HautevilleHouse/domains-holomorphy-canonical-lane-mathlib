import DomainsHolomorphyCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

structure CauchyIntegralFormulaPackage where
  cycle : Type u
  integrationDomain : Type v
  kernelContinuity : Prop
  homotopyInvariance : Prop

def CauchyIntegralFormulaClosed (C : CauchyIntegralFormulaPackage) : Prop :=
  C.kernelContinuity ∧ C.homotopyInvariance

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse
