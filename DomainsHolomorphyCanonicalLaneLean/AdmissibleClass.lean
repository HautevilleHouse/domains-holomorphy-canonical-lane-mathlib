import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

structure AdmissibleClass where
  object : HolomorphyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  HolomorphyDomainClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse
