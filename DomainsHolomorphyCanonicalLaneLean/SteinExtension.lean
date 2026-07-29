import DomainsHolomorphyCanonicalLaneLean.AutomorphismGroup

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

structure SteinExtensionPackage {D : DomainSpace} {P : DomainFunctionPackage D} {E : EnvelopeOfHolomorphyPackage P} {G : AutomorphismGroupPackage E} where
  steinManifold : DomainSpace
  embeddingMap : D.carrier → steinManifold.carrier
  isStein : Prop
  denseHolomorphicImage : Prop
  extensionOfBoundedHolomorphicFunctions : Prop

structure SteinExtensionEvidence {D : DomainSpace} {P : DomainFunctionPackage D} {E : EnvelopeOfHolomorphyPackage P} {G : AutomorphismGroupPackage E} (S : SteinExtensionPackage G) where
  isSteinClosed : S.isStein
  denseHolomorphicImageClosed : S.denseHolomorphicImage
  extensionOfBoundedHolomorphicFunctionsClosed : S.extensionOfBoundedHolomorphicFunctions

def SteinExtensionClosed {D : DomainSpace} {P : DomainFunctionPackage D} {E : EnvelopeOfHolomorphyPackage P} {G : AutomorphismGroupPackage E} (S : SteinExtensionPackage G) : Prop :=
  S.isStein ∧ S.denseHolomorphicImage ∧ S.extensionOfBoundedHolomorphicFunctions

theorem stein_extension_closed_from_evidence {D : DomainSpace} {P : DomainFunctionPackage D} {E : EnvelopeOfHolomorphyPackage P} {G : AutomorphismGroupPackage E} (S : SteinExtensionPackage G) (Ev : SteinExtensionEvidence S) : SteinExtensionClosed S := by
  exact And.intro Ev.isSteinClosed (And.intro Ev.denseHolomorphicImageClosed Ev.extensionOfBoundedHolomorphicFunctionsClosed)

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse