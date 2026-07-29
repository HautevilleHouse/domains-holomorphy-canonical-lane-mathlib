import DomainsHolomorphyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

def ConstrainedHolomorphyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_holomorphy_endgame (A : AdmissibleClass) :
    ConstrainedHolomorphyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse
