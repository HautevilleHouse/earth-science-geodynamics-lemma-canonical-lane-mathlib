import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure GeoidAndGravity where
  geoidHeight : Type u
  gravityAnomaly : Type v
  isostaticCompensation : Prop
  dynamicTopography : Prop
  mantleDensityHeterogeneity : Prop

def GeoidAndGravityClosed (G : GeoidAndGravity) : Prop :=
  G.isostaticCompensation ∧ G.dynamicTopography ∧
  G.mantleDensityHeterogeneity

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse
