import EarthScienceGeodynamicsLemmaCanonicalLaneLean.MantleConvectionPDE

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure GeodynamicAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  mantleConvectionModel : MantleConvectionPDEPackage
  thermalModel : ThermalCoupledSystemPackage
  rheologyModel : RheologyStructurePackage
  mantleConvectionClosed : MantleConvectionPDEClosed mantleConvectionModel
  thermalClosed : Prop
  rheologyClosed : RheologyStructureClosed rheologyModel
  conclusion : mantleConvectionClosed ∧ thermalClosed ∧ rheologyClosed

def GeodynamicWitnessClosed (O : GeodynamicAdmittedObject) : Prop :=
  O.conclusion

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse