import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

structure ConvexitySheafCohomologyPackage where
  domain : Type u
  pluriSubharmonic : Prop
  sheafCohomologyGroup : Type v
  vanishingCondition : Prop
  convexityType : String
  domainHolomorphyEquivalent : Prop

def ConvexitySheafCohomologyClosed (C : ConvexitySheafCohomologyPackage) : Prop :=
  C.vanishingCondition ∧ C.domainHolomorphyEquivalent

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse