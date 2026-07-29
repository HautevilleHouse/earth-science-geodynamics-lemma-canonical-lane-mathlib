import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure PlateTectonicsKinematics where
  plateVelocities : Type u
  rotationPoles : Type v
  deformationRates : Prop
  strainRatePartitioning : Prop
  slabPullForce : Prop
  ridgePushForce : Prop

def PlateTectonicsKinematicsClosed (P : PlateTectonicsKinematics) : Prop :=
  P.deformationRates ∧ P.strainRatePartitioning ∧
  P.slabPullForce ∧ P.ridgePushForce

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse
