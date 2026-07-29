import EarthScienceGeodynamicsLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : GeodynamicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeodynamicWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse