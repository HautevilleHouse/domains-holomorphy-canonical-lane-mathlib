import DomainsHolomorphyCanonicalLaneLean.EnvelopeOfHolomorphy

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

structure AutomorphismGroupPackage {D : DomainSpace} {P : DomainFunctionPackage D} {E : EnvelopeOfHolomorphyPackage P} where
  automorphismGroup : Type
  groupOperation : automorphismGroup → automorphismGroup → automorphismGroup
  identityElement : automorphismGroup
  inverseOperation : automorphismGroup → automorphismGroup
  groupAxioms : Prop
  actsOnDomain : Prop
  transitiveOnDomain : Prop

structure AutomorphismGroupEvidence {D : DomainSpace} {P : DomainFunctionPackage D} {E : EnvelopeOfHolomorphyPackage P} (G : AutomorphismGroupPackage E) where
  groupAxiomsClosed : G.groupAxioms
  actsOnDomainClosed : G.actsOnDomain
  transitiveOnDomainClosed : G.transitiveOnDomain

def AutomorphismGroupClosed {D : DomainSpace} {P : DomainFunctionPackage D} {E : EnvelopeOfHolomorphyPackage P} (G : AutomorphismGroupPackage E) : Prop :=
  G.groupAxioms ∧ G.actsOnDomain ∧ G.transitiveOnDomain

theorem automorphism_group_closed_from_evidence {D : DomainSpace} {P : DomainFunctionPackage D} {E : EnvelopeOfHolomorphyPackage P} (G : AutomorphismGroupPackage E) (Ev : AutomorphismGroupEvidence G) : AutomorphismGroupClosed G := by
  exact And.intro Ev.groupAxiomsClosed (And.intro Ev.actsOnDomainClosed Ev.transitiveOnDomainClosed)

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse