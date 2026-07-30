import canonicalLaneMathlib.AdmissibleClass
import ZetaLFunctionsCharacteristicPCanonicalLaneLean.CharacteristicPGlobalFieldLayer
import ZetaLFunctionsCharacteristicPCanonicalLaneLean.RiemannRochBridgeLayer
import ZetaLFunctionsCharacteristicPCanonicalLaneLean.WeilConjecturesAdmissibleLayer

namespace HautevilleHouse
namespace ZetaLFunctionsCharacteristicPCanonicalLaneLean

def ZetaLFunctionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem zeta_l_function_closure_endgame (A : AdmissibleClass) :
    ZetaLFunctionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

theorem all_layers_closed :
    ZetaFunctionLayerClosed default_certificate ∧
    RiemannRochLayerClosed default_riemann_roch_cert ∧
    WeilConjecturesLayerClosed default_weil_cert := by
  exact And.intro zeta_function_layer_closed_checked
    (And.intro riemann_roch_layer_closed_checked
      weil_conjectures_layer_closed_checked)

end ZetaLFunctionsCharacteristicPCanonicalLaneLean
end HautevilleHouse
