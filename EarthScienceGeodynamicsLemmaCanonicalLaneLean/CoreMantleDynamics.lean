import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure DynamoModel where
  magneticFieldStrength : ℝ
  coreFlowVelocity : ℝ → ℝ → ℝ
  geodynamoAlpha : ℝ

structure ThermalEvolution where
  coreHeatCapacity : ℝ
  mantleHeatFlow : ℝ
  secularCoolingRate : ℝ

structure CoreMantleDynamicsPackage where
  dynamo : DynamoModel
  thermal : ThermalEvolution
  coreMantleBoundaryShape : ℝ × ℝ

structure CoreMantleDynamicsEvidence (P : CoreMantleDynamicsPackage) where
  magneticFieldValid : Prop
  thermalBalance : Prop
  boundaryConsistent : Prop
  magneticFieldValidClosed : P.dynamo.magneticFieldStrength > 0
  thermalBalanceClosed : P.thermal.mantleHeatFlow > 0
  boundaryConsistentClosed : (P.coreMantleBoundaryShape.1) ≠ 0

def CoreMantleDynamicsClosed (P : CoreMantleDynamicsPackage) : Prop :=
  P.dynamo.magneticFieldStrength > 0 ∧ P.thermal.mantleHeatFlow > 0 ∧ (P.coreMantleBoundaryShape.1) ≠ 0

theorem core_mantle_dynamics_closed_from_evidence
    (P : CoreMantleDynamicsPackage) (E : CoreMantleDynamicsEvidence P) :
    CoreMantleDynamicsClosed P := by
  exact And.intro E.magneticFieldValidClosed (And.intro E.thermalBalanceClosed E.boundaryConsistentClosed)

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse
