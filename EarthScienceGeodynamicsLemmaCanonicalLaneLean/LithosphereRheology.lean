import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure ElasticBrittleLayer where
  YoungModulus : ℝ
  yieldStress : ℝ
  frictionCoeff : ℝ

structure DuctileViscousLayer where
  viscosity : ℝ
  stressExponent : ℕ
  activationEnergy : ℝ

structure LithosphereRheologyPackage where
  elasticLayer : ElasticBrittleLayer
  ductileLayer : DuctileViscousLayer
  temperatureProfile : ℝ → ℝ
  strainRateProfile : ℝ → ℝ

structure LithosphereRheologyEvidence (P : LithosphereRheologyPackage) where
  elasticConsistent : Prop
  ductileConsistent : Prop
  strainCompatibility : Prop
  elasticConsistentClosed : P.elasticLayer.YoungModulus > 0
  ductileConsistentClosed : P.ductileLayer.viscosity > 0
  strainCompatibilityClosed : P.strainRateProfile 0 ≠ 0

def LithosphereRheologyClosed (P : LithosphereRheologyPackage) : Prop :=
  P.elasticLayer.YoungModulus > 0 ∧ P.ductileLayer.viscosity > 0 ∧ P.strainRateProfile 0 ≠ 0

theorem lithosphere_rheology_closed_from_evidence
    (P : LithosphereRheologyPackage) (E : LithosphereRheologyEvidence P) :
    LithosphereRheologyClosed P := by
  exact And.intro E.elasticConsistentClosed (And.intro E.ductileConsistentClosed E.strainCompatibilityClosed)

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse
