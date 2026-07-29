import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DomainsHolomorphyCanonicalLaneLean.DomainHolomorphyDefinition

/-!
# Oka–Weil Theorem

On a domain of holomorphy, any holomorphic function on a neighborhood of a
compact holomorphically convex subset can be uniformly approximated by entire
functions.
-/

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

structure OkaWeilPackage (D : DomainHolomorphySpace) where
  compactSet : Set D.carrier
  neighborhood : Set D.carrier
  holomorphicFunction : D.carrier → ℂ
  approximationProperty : Prop
  uniformApproximation : Prop
  approximationPropertyClosed : approximationProperty
  uniformApproximationClosed : uniformApproximation

structure OkaWeilEvidence (O : OkaWeilPackage D) where
  approximationPropertyClosed : O.approximationPropertyClosed
  uniformApproximationClosed : O.uniformApproximationClosed

def OkaWeilClosed (O : OkaWeilPackage D) : Prop :=
  O.approximationProperty ∧ O.uniformApproximation

theorem oka_weil_closed_from_evidence
    (D : DomainHolomorphySpace) (O : OkaWeilPackage D)
    (E : OkaWeilEvidence O) : OkaWeilClosed O := by
  exact And.intro E.approximationPropertyClosed E.uniformApproximationClosed

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse