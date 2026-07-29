import EarthScienceGeodynamicsLemmaCanonicalLaneLean.RheologyStructure

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure ThermalCoupledSystemPackage (R : RheologyStructurePackage) where
  thermalDiffusivity : Prop
  internalHeating : Prop
  adiabaticHeating : Prop
  temperatureBoundaryConditions : Prop

theorem thermal_coupled_system_closure (P : ThermalCoupledSystemPackage R) : Prop :=
  P.thermalDiffusivity ∧ P.internalHeating ∧ P.adiabaticHeating ∧ P.temperatureBoundaryConditions

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse