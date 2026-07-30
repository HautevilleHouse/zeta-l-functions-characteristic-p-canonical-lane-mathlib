import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZetaLFunctionsCharacteristicPCanonicalLaneLean

structure ZetaLFunctionCharacteristicP where
  field : String
  character : String
  lFunction : String
  functionalEquation : Bool
  analyticContinuation : Bool

def primitiveZetaLFunction : ZetaLFunctionCharacteristicP := {
  field := "F_q(t)",
  character := "primitive character of A",
  lFunction := "L(s, chi)",
  functionalEquation := true,
  analyticContinuation := true
}

end ZetaLFunctionsCharacteristicPCanonicalLaneLean
end HautevilleHouse