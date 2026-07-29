import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

structure DomainsHolomorphyPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  holomorphicFunctions : (domain → ℂ) → Prop
  extensionProperty : Prop
  maximalDomain : Prop

structure DomainsHolomorphyEvidence (D : DomainsHolomorphyPackage) where
  extensionPropertyClosed : D.extensionProperty
  maximalDomainClosed : D.maximalDomain

def DomainsHolomorphyClosed (D : DomainsHolomorphyPackage) : Prop :=
  D.extensionProperty ∧ D.maximalDomain

theorem domains_holomorphy_closed_from_evidence (D : DomainsHolomorphyPackage)
    (E : DomainsHolomorphyEvidence D) : DomainsHolomorphyClosed D := by
  exact And.intro E.extensionPropertyClosed E.maximalDomainClosed

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse