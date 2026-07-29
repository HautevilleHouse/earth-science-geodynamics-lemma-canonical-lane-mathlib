import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure PlateKinematicsPackage where
  plateVelocityField : Type u
  rotationPoles : Type v
  plateBoundaryTypes : Type w
  eulerPoleConsistency : Prop
  divergenceRate : Prop
  slabPullForce : Prop

structure PlateKinematicsEvidence (P : PlateKinematicsPackage) where
  eulerPoleConsistencyClosed : P.eulerPoleConsistency
  divergenceRateClosed : P.divergenceRate
  slabPullForceClosed : P.slabPullForce

def PlateKinematicsClosed (P : PlateKinematicsPackage) : Prop :=
  P.eulerPoleConsistency ∧ P.divergenceRate ∧ P.slabPullForce

theorem plate_kinematics_closed_from_evidence (P : PlateKinematicsPackage)
    (E : PlateKinematicsEvidence P) : PlateKinematicsClosed P := by
  exact And.intro E.eulerPoleConsistencyClosed
    (And.intro E.divergenceRateClosed E.slabPullForceClosed)

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse