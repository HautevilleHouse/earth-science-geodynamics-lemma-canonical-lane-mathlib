import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure SphericalHarmonicCoeff where
  degree : ℕ
  order : ℤ
  coefficient : ℝ

structure GravityFieldModel where
  referenceEllipsoid : ℝ
  freeAirAnomaly : ℝ × ℝ
  bouguerAnomaly : ℝ × ℝ

structure GeoidGravityAnomalyPackage where
  sphericalHarmonics : List SphericalHarmonicCoeff
  gravityField : GravityFieldModel
  crustalDensityModel : ℝ → ℝ

structure GeoidGravityAnomalyEvidence (P : GeoidGravityAnomalyPackage) where
  harmonicConvergence : Prop
  gravityFit : Prop
  densityConsistent : Prop
  harmonicConvergenceClosed : P.sphericalHarmonics.length ≥ 1
  gravityFitClosed : (P.gravityField.freeAirAnomaly.1) > 0
  densityConsistentClosed : P.crustalDensityModel 0 ≠ 0

def GeoidGravityAnomalyClosed (P : GeoidGravityAnomalyPackage) : Prop :=
  P.sphericalHarmonics.length ≥ 1 ∧ (P.gravityField.freeAirAnomaly.1) > 0 ∧ P.crustalDensityModel 0 ≠ 0

theorem geoid_gravity_anomaly_closed_from_evidence
    (P : GeoidGravityAnomalyPackage) (E : GeoidGravityAnomalyEvidence P) :
    GeoidGravityAnomalyClosed P := by
  exact And.intro E.harmonicConvergenceClosed (And.intro E.gravityFitClosed E.densityConsistentClosed)

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse
