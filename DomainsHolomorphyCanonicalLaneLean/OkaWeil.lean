import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

structure OkaWeilPackage where
  compactHolomorphicallyConvex : Prop
  approximationProperty : Prop
  exhaustionFunction : Prop
  domainExhausted : Prop

structure OkaWeilEvidence (P : OkaWeilPackage) where
  compactHolomorphicallyConvexClosed : P.compactHolomorphicallyConvex
  approximationPropertyClosed : P.approximationProperty
  exhaustionFunctionClosed : P.exhaustionFunction
  domainExhaustedClosed : P.domainExhausted

def OkaWeilClosed (P : OkaWeilPackage) : Prop :=
  P.compactHolomorphicallyConvex ∧ P.approximationProperty ∧
  P.exhaustionFunction ∧ P.domainExhausted

theorem oka_weil_closed_from_evidence (P : OkaWeilPackage)
    (E : OkaWeilEvidence P) : OkaWeilClosed P := by
  exact And.intro E.compactHolomorphicallyConvexClosed
    (And.intro E.approximationPropertyClosed
      (And.intro E.exhaustionFunctionClosed E.domainExhaustedClosed))

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse