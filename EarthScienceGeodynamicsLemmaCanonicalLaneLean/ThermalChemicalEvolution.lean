import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure ThermalChemicalPackage where
  coreHeatFlux : Type u
  mantleTemperatureProfile : Type v
  compositionalHeterogeneity : Type w
  secularCoolingRate : Prop
  plumeFlux : Prop
  coreMantleBoundaryHeatFlow : Prop

structure ThermalChemicalEvidence (T : ThermalChemicalPackage) where
  secularCoolingRateClosed : T.secularCoolingRate
  plumeFluxClosed : T.plumeFlux
  coreMantleBoundaryHeatFlowClosed : T.coreMantleBoundaryHeatFlow

def ThermalChemicalClosed (T : ThermalChemicalPackage) : Prop :=
  T.secularCoolingRate ∧ T.plumeFlux ∧ T.coreMantleBoundaryHeatFlow

theorem thermal_chemical_closed_from_evidence (T : ThermalChemicalPackage)
    (E : ThermalChemicalEvidence T) : ThermalChemicalClosed T := by
  exact And.intro E.secularCoolingRateClosed
    (And.intro E.plumeFluxClosed E.coreMantleBoundaryHeatFlowClosed)

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse