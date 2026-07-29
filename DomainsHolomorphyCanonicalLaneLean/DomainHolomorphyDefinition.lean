import canonicalLaneMathlib.AdmissibleClass

/-!
# Domain of Holomorphy Definition

A domain Ω in ℂⁿ is a domain of holomorphy if there do not exist nonempty
open sets U ⊂ Ω and V ⊂ ℂⁿ with V connected, V ⊄ Ω, and such that for
every holomorphic function f on Ω, there exists a holomorphic function g on V
with f = g on U ∩ Ω.
-/

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

structure DomainHolomorphySpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  complexStructure : Complex carrier
  dimension : ℕ
  openSet : Set carrier

structure HolomorphyAdmittedObject where
  space : DomainHolomorphySpace
  openDomain : space.openSet
  domainOfHolomorphy : Prop
  domainOfHolomorphyConclusion : domainOfHolomorphy

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse