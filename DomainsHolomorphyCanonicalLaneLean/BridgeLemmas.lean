import DomainsHolomorphyCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HolomorphyDomainClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse
