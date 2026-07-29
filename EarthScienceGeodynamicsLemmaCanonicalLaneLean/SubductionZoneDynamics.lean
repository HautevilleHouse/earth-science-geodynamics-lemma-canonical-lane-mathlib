import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure SubductionZoneDynamics where
  slabGeometry : Type u
  slabAge : Prop
  slabDip : Prop
  slabStagnation : Prop
  backArcBasin : Prop
  volcanicArc : Prop

def SubductionZoneDynamicsClosed (S : SubductionZoneDynamics) : Prop :=
  S.slabAge ∧ S.slabDip ∧ S.slabStagnation ∧
  S.backArcBasin ∧ S.volcanicArc

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse
