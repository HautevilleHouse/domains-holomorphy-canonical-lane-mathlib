import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

structure CartanThullenPackage where
  domainHolomorphyCondition : Prop
  envelopeOfHolomorphyExists : Prop
  convexityCondition : Prop
  characterizationComplete : Prop

structure CartanThullenEvidence (C : CartanThullenPackage) where
  domainHolomorphyConditionClosed : C.domainHolomorphyCondition
  envelopeOfHolomorphyExistsClosed : C.envelopeOfHolomorphyExists
  convexityConditionClosed : C.convexityCondition
  characterizationCompleteClosed : C.characterizationComplete

def CartanThullenClosed (C : CartanThullenPackage) : Prop :=
  C.domainHolomorphyCondition ∧ C.envelopeOfHolomorphyExists ∧
  C.convexityCondition ∧ C.characterizationComplete

theorem cartan_thullen_closed_from_evidence (C : CartanThullenPackage)
    (E : CartanThullenEvidence C) : CartanThullenClosed C := by
  exact And.intro E.domainHolomorphyConditionClosed
    (And.intro E.envelopeOfHolomorphyExistsClosed
      (And.intro E.convexityConditionClosed E.characterizationCompleteClosed))

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse