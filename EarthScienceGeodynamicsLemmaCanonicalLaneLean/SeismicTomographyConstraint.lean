import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure SeismicTomographyPackage where
  pWaveVelocityField : Type u
  sWaveVelocityField : Type v
  densityAnomalyField : Type w
  velocityGradientCompatibility : Prop
  radialAnisotropy : Prop
  attenuationModel : Prop

structure SeismicTomographyEvidence (S : SeismicTomographyPackage) where
  velocityGradientCompatibilityClosed : S.velocityGradientCompatibility
  radialAnisotropyClosed : S.radialAnisotropy
  attenuationModelClosed : S.attenuationModel

def SeismicTomographyClosed (S : SeismicTomographyPackage) : Prop :=
  S.velocityGradientCompatibility ∧ S.radialAnisotropy ∧ S.attenuationModel

theorem seismic_tomography_closed_from_evidence (S : SeismicTomographyPackage)
    (E : SeismicTomographyEvidence S) : SeismicTomographyClosed S := by
  exact And.intro E.velocityGradientCompatibilityClosed
    (And.intro E.radialAnisotropyClosed E.attenuationModelClosed)

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse