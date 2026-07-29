import DomainsHolomorphyCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace DomainsHolomorphyCanonicalLaneLean

structure OkaCoherencePackage where
  coherentSheaf : Prop
  finitenessProperty : Prop
  vanishingTheorem : Prop

def OkaCoherenceClosed (O : OkaCoherencePackage) : Prop :=
  O.coherentSheaf ∧ O.finitenessProperty ∧ O.vanishingTheorem

end DomainsHolomorphyCanonicalLaneLean
end HautevilleHouse
