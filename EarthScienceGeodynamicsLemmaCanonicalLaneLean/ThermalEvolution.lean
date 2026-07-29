import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure ThermalEvolution where
  mantleTemperature : Type u
  coreCooling : Prop
  radiogenicHeating : Prop
  secularCooling : Prop
  thermalBoundaryLayer : Prop
  plumeDynamics : Prop

def ThermalEvolutionClosed (T : ThermalEvolution) : Prop :=
  T.coreCooling ∧ T.radiogenicHeating ∧ T.secularCooling ∧
  T.thermalBoundaryLayer ∧ T.plumeDynamics

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse
