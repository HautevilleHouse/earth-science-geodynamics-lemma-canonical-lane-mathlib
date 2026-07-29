import EarthScienceGeodynamicsLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

def geodynamicsProjection : Projection GeodynamicEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem geodynamics_projection_idempotent (x : GeodynamicEndgameState) :
    geodynamicsProjection.toFun (geodynamicsProjection.toFun x) = geodynamicsProjection.toFun x := by
  exact geodynamicsProjection.idempotent x

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse