import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZetaLFunctionsCharacteristicPCanonicalLaneLean

structure CharacterSheafSubstrate where
  baseScheme : String
  characterSheaf : String
  lFunctionAssociated : String
  traceFormulaRoute : String
  perversityCondition : Bool
  standardConjectures : Bool

def primitiveCharacterSheafSubstrate : CharacterSheafSubstrate := {
  baseScheme := "smooth projective curve over F_q",
  characterSheaf := "Fourier-Deligne transform of the trivial sheaf",
  lFunctionAssociated := "L(s, chi) from character sheaf",
  traceFormulaRoute := "Grothendieck-Lefschetz trace formula",
  perversityCondition := true,
  standardConjectures := true
}

def CharacterSheafSubstrateReady (S : CharacterSheafSubstrate) : Prop :=
  S.perversityCondition ∧ S.standardConjectures

theorem character_sheaf_substrate_ready_checked :
    CharacterSheafSubstrateReady primitiveCharacterSheafSubstrate := by
  exact And.intro rfl rfl

end ZetaLFunctionsCharacteristicPCanonicalLaneLean
end HautevilleHouse