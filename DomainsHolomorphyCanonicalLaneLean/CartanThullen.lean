import DomainsHolomorphyCanonicalLaneLean.SteinExtension

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

structure CartanThullenPackage {D : DomainSpace} {P : DomainFunctionPackage D} {E : EnvelopeOfHolomorphyPackage P} {G : AutomorphismGroupPackage E} {S : SteinExtensionPackage G} where
  domainHolomorphyCriteria : Prop
  envelopeOfHolomorphyEqualsDomain : Prop
  applicationToAutomorphisms : Prop
  classicalTheorem : Prop

structure CartanThullenEvidence {D : DomainSpace} {P : DomainFunctionPackage D} {E : EnvelopeOfHolomorphyPackage P} {G : AutomorphismGroupPackage E} {S : SteinExtensionPackage G} (CT : CartanThullenPackage S) where
  domainHolomorphyCriteriaClosed : CT.domainHolomorphyCriteria
  envelopeOfHolomorphyEqualsDomainClosed : CT.envelopeOfHolomorphyEqualsDomain
  applicationToAutomorphismsClosed : CT.applicationToAutomorphisms
  classicalTheoremClosed : CT.classicalTheorem

def CartanThullenClosed {D : DomainSpace} {P : DomainFunctionPackage D} {E : EnvelopeOfHolomorphyPackage P} {G : AutomorphismGroupPackage E} {S : SteinExtensionPackage G} (CT : CartanThullenPackage S) : Prop :=
  CT.domainHolomorphyCriteria ∧ CT.envelopeOfHolomorphyEqualsDomain ∧ CT.applicationToAutomorphisms ∧ CT.classicalTheorem

theorem cartan_thullen_closed_from_evidence {D : DomainSpace} {P : DomainFunctionPackage D} {E : EnvelopeOfHolomorphyPackage P} {G : AutomorphismGroupPackage E} {S : SteinExtensionPackage G} (CT : CartanThullenPackage S) (Ev : CartanThullenEvidence CT) : CartanThullenClosed CT := by
  exact And.intro Ev.domainHolomorphyCriteriaClosed (And.intro Ev.envelopeOfHolomorphyEqualsDomainClosed (And.intro Ev.applicationToAutomorphismsClosed Ev.classicalTheoremClosed))

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse