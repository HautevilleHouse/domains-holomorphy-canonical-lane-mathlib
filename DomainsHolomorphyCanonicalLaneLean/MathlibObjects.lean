import DomainsHolomorphyCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure HolomorphySpace where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : ComplexStructure carrier

structure HolomorphyAdmittedObject where
  domain : HolomorphySpace
  openSubset : Prop
  connected : Prop
  holomorphyDomain : Type
  holomorphyTopology : TopologicalSpace holomorphyDomain
  homeomorphicToHolomorphyDomain : Prop
  conclusion : homeomorphicToHolomorphyDomain

structure HolomorphyEndgameState where
  object : HolomorphyAdmittedObject

def HolomorphyDomainClosed (O : HolomorphyAdmittedObject) : Prop :=
  O.homeomorphicToHolomorphyDomain

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse
