import DomainsHolomorphyCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

structure DomainFunctionPackage {D : DomainSpace} where
  holomorphicFunctions : Set (D.carrier → ℂ)
  locallyBounded : Subset property
  admitsExtension : Prop
  boundaryBehavior : Prop

structure DomainFunctionEvidence {D : DomainSpace} (P : DomainFunctionPackage D) where
  holomorphicFunctionsClosed : P.holomorphicFunctions ≠ ∅
  locallyBoundedClosed : P.locallyBounded
  admitsExtensionClosed : P.admitsExtension
  boundaryBehaviorClosed : P.boundaryBehavior

def DomainFunctionClosed {D : DomainSpace} (P : DomainFunctionPackage D) : Prop :=
  P.holomorphicFunctions ≠ ∅ ∧ P.locallyBounded ∧ P.admitsExtension ∧ P.boundaryBehavior

theorem domain_function_closed_from_evidence {D : DomainSpace} (P : DomainFunctionPackage D) (E : DomainFunctionEvidence P) : DomainFunctionClosed P := by
  exact And.intro E.holomorphicFunctionsClosed (And.intro E.locallyBoundedClosed (And.intro E.admitsExtensionClosed E.boundaryBehaviorClosed))

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse