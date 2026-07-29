import EarthScienceGeodynamicsLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeodynamicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse