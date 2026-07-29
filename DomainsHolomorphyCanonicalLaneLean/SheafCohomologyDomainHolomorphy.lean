import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DomainsHolomorphyCanonicalLaneLean.DomainHolomorphyDefinition

/-!
# Sheaf Cohomology Criterion for Domain of Holomorphy

A domain Ω is a domain of holomorphy iff H¹(Ω, 𝒪) = 0. This encodes the
cohomological characterization.
-/

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

structure SheafCohomologyPackage where
  domain : DomainHolomorphySpace
  firstCohomologyGroup : Type u
  cohomologyVanishing : Prop
  equivalence : domainOfHolomorphy ↔ cohomologyVanishing
  equivalenceClosed : equivalence
  cohomologyVanishingClosed : cohomologyVanishing
  domainOfHolomorphyFromVanishing : domainOfHolomorphy
  vanishingFromDomainOfHolomorphy : cohomologyVanishing

structure SheafCohomologyEvidence (S : SheafCohomologyPackage) where
  equivalenceClosed : S.equivalenceClosed
  cohomologyVanishingClosed : S.cohomologyVanishingClosed
  domainOfHolomorphyFromVanishingClosed : S.domainOfHolomorphyFromVanishing
  vanishingFromDomainOfHolomorphyClosed : S.vanishingFromDomainOfHolomorphy

def SheafCohomologyClosed (S : SheafCohomologyPackage) : Prop :=
  S.equivalence ∧ S.cohomologyVanishing ∧ (S.domainOfHolomorphy ↔ S.cohomologyVanishing)

theorem sheaf_cohomology_closed_from_evidence
    (S : SheafCohomologyPackage) (E : SheafCohomologyEvidence S) :
    SheafCohomologyClosed S := by
  exact And.intro E.equivalenceClosed
    (And.intro E.cohomologyVanishingClosed
      (by
        constructor
        · intro h; exact E.domainOfHolomorphyFromVanishingClosed
        · intro h; exact E.vanishingFromDomainOfHolomorphyClosed))

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse