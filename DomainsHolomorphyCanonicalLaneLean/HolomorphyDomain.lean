import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

structure HolomorphyDomain where
  domain : Type u
  topology : TopologicalSpace domain
  analyticStructure : String
  boundaryNonempty : Prop

def DomainHolomorphyClosed (D : HolomorphyDomain) : Prop :=
  D.boundaryNonempty

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse