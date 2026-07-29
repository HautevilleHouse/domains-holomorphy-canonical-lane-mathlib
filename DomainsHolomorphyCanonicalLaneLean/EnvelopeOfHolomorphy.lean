import DomainsHolomorphyCanonicalLaneLean.DomainFunctionPackage

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

structure EnvelopeOfHolomorphyPackage {D : DomainSpace} (P : DomainFunctionPackage D) where
  targetSpace : DomainSpace
  extensionMap : D.carrier → targetSpace.carrier
  isHolomorphicEmbedding : Prop
  universalProperty : Prop

structure EnvelopeOfHolomorphyEvidence {D : DomainSpace} {P : DomainFunctionPackage D} (E : EnvelopeOfHolomorphyPackage P) where
  extensionMapClosed : E.isHolomorphicEmbedding
  universalPropertyClosed : E.universalProperty

def EnvelopeOfHolomorphyClosed {D : DomainSpace} {P : DomainFunctionPackage D} (E : EnvelopeOfHolomorphyPackage P) : Prop :=
  E.isHolomorphicEmbedding ∧ E.universalProperty

theorem envelope_of_holomorphy_closed_from_evidence {D : DomainSpace} {P : DomainFunctionPackage D} (E : EnvelopeOfHolomorphyPackage P) (Ev : EnvelopeOfHolomorphyEvidence E) : EnvelopeOfHolomorphyClosed E := by
  exact And.intro Ev.extensionMapClosed Ev.universalPropertyClosed

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse