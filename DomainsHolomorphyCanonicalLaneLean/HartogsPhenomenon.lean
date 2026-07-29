import DomainsHolomorphyCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

structure HartogsPhenomenonPackage where
  compactSupport : Prop
  extensionProperty : Prop
  separationOfSingularities : Prop

def HartogsPhenomenonClosed (H : HartogsPhenomenonPackage) : Prop :=
  H.compactSupport ∧ H.extensionProperty ∧ H.separationOfSingularities

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse
