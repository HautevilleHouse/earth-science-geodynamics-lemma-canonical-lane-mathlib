import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure GravitationalAnomalySignature where
  geoidUndulation : ℝ
  gravityGradient : ℝ
  isostaticComponent : ℝ

structure ThermalConvectionCell where
  RayleighNumber : ℝ
  viscosityStratification : ℝ → ℝ
  heatFluxBoundary : ℝ

structure MantleConvectionPackage where
  anomalySig : GravitationalAnomalySignature
  convectionCell : ThermalConvectionCell
  plateVelocityField : ℝ → ℝ → ℝ
  subductionZoneGeometry : ℝ × ℝ

structure MantleConvectionEvidence (P : MantleConvectionPackage) where
  anomalyFit : Prop
  convectionConsistency : Prop
  plateKinematicsValid : Prop
  anomalyFitClosed : P.anomalySig.geoidUndulation > 0
  convectionConsistencyClosed : P.convectionCell.RayleighNumber > 0
  plateKinematicsValidClosed : P.plateVelocityField 0 0 ≠ 0

def MantleConvectionClosed (P : MantleConvectionPackage) : Prop :=
  P.anomalySig.geoidUndulation > 0 ∧ P.convectionCell.RayleighNumber > 0 ∧ P.plateVelocityField 0 0 ≠ 0

theorem mantle_convection_closed_from_evidence
    (P : MantleConvectionPackage) (E : MantleConvectionEvidence P) :
    MantleConvectionClosed P := by
  exact And.intro E.anomalyFitClosed (And.intro E.convectionConsistencyClosed E.plateKinematicsValidClosed)

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse
