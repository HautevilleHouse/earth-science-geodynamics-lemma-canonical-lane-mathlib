import EarthScienceGeodynamicsLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Lithosphere Dynamics Package
-/

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure LithosphereDynamicsPackage where
  plateMotionModel : Prop
  stressDistribution : Prop
  rheologicalLayering : Prop
  thermalStructure : Prop

structure LithosphereDynamicsEvidence (L : LithosphereDynamicsPackage) where
  plateMotionModelClosed : L.plateMotionModel
  stressDistributionClosed : L.stressDistribution
  rheologicalLayeringClosed : L.rheologicalLayering
  thermalStructureClosed : L.thermalStructure

def LithosphereDynamicsClosed (L : LithosphereDynamicsPackage) : Prop :=
  L.plateMotionModel ∧ L.stressDistribution ∧ L.rheologicalLayering ∧ L.thermalStructure

theorem lithosphere_dynamics_closed_from_evidence (L : LithosphereDynamicsPackage) (E : LithosphereDynamicsEvidence L) :
    LithosphereDynamicsClosed L := by
  exact And.intro E.plateMotionModelClosed (And.intro E.stressDistributionClosed (And.intro E.rheologicalLayeringClosed E.thermalStructureClosed))

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse