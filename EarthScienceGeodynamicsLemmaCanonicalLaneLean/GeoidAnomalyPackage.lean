import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure GeoidAnomalyPackage {G : GeodynamicsModelPackage}
    (F : MantleConvectionPDEPackage G) where
  geoidUndulation : Type u
  gravityAnomaly : Type v
  dynamicTopography : Prop
  geoidGreenFunction : Prop
  surfaceDeformation : Prop

structure GeoidAnomalyEvidence {G : GeodynamicsModelPackage}
    {F : MantleConvectionPDEPackage G} (A : GeoidAnomalyPackage F) where
  dynamicTopographyClosed : A.dynamicTopography
  geoidGreenFunctionClosed : A.geoidGreenFunction
  surfaceDeformationClosed : A.surfaceDeformation

def GeoidAnomalyClosed {G : GeodynamicsModelPackage}
    {F : MantleConvectionPDEPackage G} (A : GeoidAnomalyPackage F) : Prop :=
  A.dynamicTopography ∧ A.geoidGreenFunction ∧ A.surfaceDeformation

theorem geoid_anomaly_closed_from_evidence
    {G : GeodynamicsModelPackage} {F : MantleConvectionPDEPackage G}
    (A : GeoidAnomalyPackage F) (E : GeoidAnomalyEvidence A) :
    GeoidAnomalyClosed A := by
  exact And.intro E.dynamicTopographyClosed
    (And.intro E.geoidGreenFunctionClosed E.surfaceDeformationClosed)

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse