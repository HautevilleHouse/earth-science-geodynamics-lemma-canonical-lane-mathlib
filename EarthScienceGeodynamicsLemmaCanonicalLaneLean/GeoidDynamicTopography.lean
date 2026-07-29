import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure GeoidTopographyPackage where
  geoidUndulationField : Type u
  dynamicTopographyField : Type v
  crustalDensityModel : Type w
  geoidForwardModel : Prop
  topographyGravityAdmittance : Prop
  isostaticCorrection : Prop

structure GeoidTopographyEvidence (G : GeoidTopographyPackage) where
  geoidForwardModelClosed : G.geoidForwardModel
  topographyGravityAdmittanceClosed : G.topographyGravityAdmittance
  isostaticCorrectionClosed : G.isostaticCorrection

def GeoidTopographyClosed (G : GeoidTopographyPackage) : Prop :=
  G.geoidForwardModel ∧ G.topographyGravityAdmittance ∧ G.isostaticCorrection

theorem geoid_topography_closed_from_evidence (G : GeoidTopographyPackage)
    (E : GeoidTopographyEvidence G) : GeoidTopographyClosed G := by
  exact And.intro E.geoidForwardModelClosed
    (And.intro E.topographyGravityAdmittanceClosed E.isostaticCorrectionClosed)

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse