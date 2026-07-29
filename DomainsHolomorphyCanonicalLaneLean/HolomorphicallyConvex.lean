import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DomainsHolomorphyCanonicalLaneLean.DomainHolomorphyDefinition

/-!
# Holomorphic Convexity

A domain Ω is holomorphically convex if for every compact K ⊂ Ω,
the holomorphically convex hull ̂K_Ω = {z∈Ω : |f(z)| ≤ sup_K |f| ∀ f∈𝒪(Ω)}
is compactly contained in Ω.
-/

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

structure HolomorphicallyConvexPackage where
  domain : DomainHolomorphySpace
  holomorphicallyConvex : Prop
  hullCompact : Prop
  pluriSubharmonicExhaustion : Prop

structure HolomorphicallyConvexEvidence (H : HolomorphicallyConvexPackage) where
  holomorphicallyConvexClosed : H.holomorphicallyConvex
  hullCompactClosed : H.hullCompact
  pluriSubharmonicExhaustionClosed : H.pluriSubharmonicExhaustion

def HolomorphicallyConvexClosed (H : HolomorphicallyConvexPackage) : Prop :=
  H.holomorphicallyConvex ∧ H.hullCompact ∧ H.pluriSubharmonicExhaustion

theorem holomorphically_convex_closed_from_evidence
    (H : HolomorphicallyConvexPackage) (E : HolomorphicallyConvexEvidence H) :
    HolomorphicallyConvexClosed H := by
  exact And.intro E.holomorphicallyConvexClosed
    (And.intro E.hullCompactClosed E.pluriSubharmonicExhaustionClosed)

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse