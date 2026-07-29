import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

structure HolomorphicExtensionPackage where
  sourceDomain : Type u
  targetDomain : Type v
  analyticFunction : sourceDomain → ℂ
  extensionExists : Prop
  extensionUnique : Prop
  domainMaximal : Prop

def HolomorphicExtensionClosed (H : HolomorphicExtensionPackage) : Prop :=
  H.extensionExists ∧ H.extensionUnique ∧ H.domainMaximal

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse