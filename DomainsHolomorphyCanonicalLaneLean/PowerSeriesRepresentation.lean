import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

structure PowerSeriesRepresentationPackage where
  basePoint : ℂ
  coefficients : ℕ → ℂ
  convergenceRadius : ℝ
  definesHolomorphicFunction : Prop
  taylorSeriesMatches : Prop

structure PowerSeriesRepresentationEvidence (P : PowerSeriesRepresentationPackage) where
  definesHolomorphicFunctionClosed : P.definesHolomorphicFunction
  taylorSeriesMatchesClosed : P.taylorSeriesMatches

def PowerSeriesRepresentationClosed (P : PowerSeriesRepresentationPackage) : Prop :=
  P.definesHolomorphicFunction ∧ P.taylorSeriesMatches

theorem power_series_representation_closed_from_evidence
    (P : PowerSeriesRepresentationPackage)
    (E : PowerSeriesRepresentationEvidence P) : PowerSeriesRepresentationClosed P := by
  exact And.intro E.definesHolomorphicFunctionClosed E.taylorSeriesMatchesClosed

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse