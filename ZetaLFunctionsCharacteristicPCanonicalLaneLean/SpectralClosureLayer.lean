import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ZetaLFunctionsCharacteristicPCanonicalLaneLean

structure SpectralClosureCertificate where
  rhAnalogLayer : RHAnalogCertificate
  projectionLayer : ProjectionCertificate
  gateCheck : Bool
  boundaryCarried : Bool

def primitiveSpectralClosureCertificate : SpectralClosureCertificate := {
  rhAnalogLayer := primitiveRHAnalogCertificate,
  projectionLayer := primitiveProjectionCertificate,
  gateCheck := true,
  boundaryCarried := true
}

def SpectralClosureClosed (C : SpectralClosureCertificate) : Prop :=
  RHAnalogLayerClosed C.rhAnalogLayer ∧ ProjectionLayerClosed C.projectionLayer ∧ C.gateCheck = true ∧ C.boundaryCarried = true

theorem spectral_closure_closed_checked :
    SpectralClosureClosed primitiveSpectralClosureCertificate := by
  exact And.intro rh_analog_layer_closed_checked
    (And.intro projection_layer_closed_checked (And.intro rfl rfl))

end ZetaLFunctionsCharacteristicPCanonicalLaneLean
end HautevilleHouse