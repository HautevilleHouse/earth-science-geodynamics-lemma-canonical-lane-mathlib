import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure RheologyLaws where
  viscosityModel : Prop
  creepMechanism : Prop
  yieldStress : Prop
  damageAndHealing : Prop
  viscoelasticBehavior : Prop
  flowLaw : Prop

def RheologyLawsClosed (R : RheologyLaws) : Prop :=
  R.viscosityModel ∧ R.creepMechanism ∧ R.yieldStress ∧
  R.damageAndHealing ∧ R.viscoelasticBehavior ∧ R.flowLaw

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse
