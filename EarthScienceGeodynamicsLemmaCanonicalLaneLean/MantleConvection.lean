import EarthScienceGeodynamicsLemmaCanonicalLaneLean.LithosphereDynamics

/-!
# Mantle Convection Package
-/

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure MantleConvectionPackage {L : LithosphereDynamicsPackage} where
  thermalConvectionModel : Prop
  viscosityStructure : Prop
  plumeDynamics : Prop
  boundaryLayerBehavior : Prop

structure MantleConvectionEvidence {L : LithosphereDynamicsPackage} (M : MantleConvectionPackage L) where
  thermalConvectionModelClosed : M.thermalConvectionModel
  viscosityStructureClosed : M.viscosityStructure
  plumeDynamicsClosed : M.plumeDynamics
  boundaryLayerBehaviorClosed : M.boundaryLayerBehavior

def MantleConvectionClosed {L : LithosphereDynamicsPackage} (M : MantleConvectionPackage L) : Prop :=
  M.thermalConvectionModel ∧ M.viscosityStructure ∧ M.plumeDynamics ∧ M.boundaryLayerBehavior

theorem mantle_convection_closed_from_evidence {L : LithosphereDynamicsPackage} (M : MantleConvectionPackage L) (E : MantleConvectionEvidence M) :
    MantleConvectionClosed M := by
  exact And.intro E.thermalConvectionModelClosed (And.intro E.viscosityStructureClosed (And.intro E.plumeDynamicsClosed E.boundaryLayerBehaviorClosed))

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse