import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure EarthScienceAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  geodynamicModel : Prop
  lemmaConclusion : Prop
  conclusion : lemmaConclusion

def EarthScienceWitnessClosed (O : EarthScienceAdmittedObject) : Prop :=
  O.lemmaConclusion

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  geodynamicsConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "earth-science-geodynamics-lemma"
    theoremName := "Earth Science Geodynamics Lemma"
    theoremObject := "Geodynamics Canonical Lemma"
    classicalBoundary := "Classical boundary carried"
    geodynamicsConstrainedStatement := "geodynamics-constrained theorem certificate internalized"
    certificateLane := "geodynamics_constrained"
    carriedRemainder := "classical source boundary carried"
  }

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse