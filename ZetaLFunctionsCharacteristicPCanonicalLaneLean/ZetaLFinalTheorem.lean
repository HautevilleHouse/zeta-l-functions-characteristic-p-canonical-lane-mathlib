import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZetaLFunctionsCharacteristicPCanonicalLaneLean

def ConstrainedZetaLClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A ∧ ClassicalSourceBoundaryCarried

theorem constrained_zeta_l_endgame (A : AdmissibleClass) :
    ConstrainedZetaLClosure A := by
  have hBridge : bridgeClosed A := bridge_from_admissible_class A
  have hGate : gateClosed A := gate_from_admissible_class A
  have hClassical : ClassicalSourceBoundaryCarried := classical_source_boundary_carried_checked
  exact And.intro hBridge (And.intro hGate hClassical)

end ZetaLFunctionsCharacteristicPCanonicalLaneLean
end HautevilleHouse