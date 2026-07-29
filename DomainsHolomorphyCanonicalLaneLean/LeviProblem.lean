import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

structure LeviProblemPackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : ComplexStructure domain
  pseudoconvexCondition : Prop
  holomorphyConvexCondition : Prop
  leviConvexityEquivalence : Prop

structure LeviProblemEvidence (L : LeviProblemPackage) where
  pseudoconvexConditionClosed : L.pseudoconvexCondition
  holomorphyConvexConditionClosed : L.holomorphyConvexCondition
  leviConvexityEquivalenceClosed : L.leviConvexityEquivalence

def LeviProblemClosed (L : LeviProblemPackage) : Prop :=
  L.pseudoconvexCondition ∧ L.holomorphyConvexCondition ∧ L.leviConvexityEquivalence

theorem levi_problem_closed_from_evidence (L : LeviProblemPackage)
    (E : LeviProblemEvidence L) : LeviProblemClosed L := by
  exact And.intro E.pseudoconvexConditionClosed
    (And.intro E.holomorphyConvexConditionClosed E.leviConvexityEquivalenceClosed)

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse