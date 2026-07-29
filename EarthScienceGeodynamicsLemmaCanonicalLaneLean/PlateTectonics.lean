import EarthScienceGeodynamicsLemmaCanonicalLaneLean.MantleConvection

/-!
# Plate Tectonics Package
-/

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure PlateTectonicsPackage {L : LithosphereDynamicsPackage} {M : MantleConvectionPackage L} where
  subductionModel : Prop
  seafloorSpreading : Prop
  orogenyDynamics : Prop
  tripleJunctionEvolution : Prop

structure PlateTectonicsEvidence {L : LithosphereDynamicsPackage} {M : MantleConvectionPackage L} (P : PlateTectonicsPackage L M) where
  subductionModelClosed : P.subductionModel
  seafloorSpreadingClosed : P.seafloorSpreading
  orogenyDynamicsClosed : P.orogenyDynamics
  tripleJunctionEvolutionClosed : P.tripleJunctionEvolution

def PlateTectonicsClosed {L : LithosphereDynamicsPackage} {M : MantleConvectionPackage L} (P : PlateTectonicsPackage L M) : Prop :=
  P.subductionModel ∧ P.seafloorSpreading ∧ P.orogenyDynamics ∧ P.tripleJunctionEvolution

theorem plate_tectonics_closed_from_evidence {L : LithosphereDynamicsPackage} {M : MantleConvectionPackage L} (P : PlateTectonicsPackage L M) (E : PlateTectonicsEvidence P) :
    PlateTectonicsClosed P := by
  exact And.intro E.subductionModelClosed (And.intro E.seafloorSpreadingClosed (And.intro E.orogenyDynamicsClosed E.tripleJunctionEvolutionClosed))

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse