import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure MantleConvectionPDEPackage (G : GeodynamicsModelPackage) where
  timeParameter : Type u
  velocityField : timeParameter -> Type v
  stokesEquation : Prop
  energyEquation : Prop
  incompressibilityCondition : Prop
  boundaryConditions : Prop

structure MantleConvectionPDEEvidence {G : GeodynamicsModelPackage}
    (F : MantleConvectionPDEPackage G) where
  stokesEquationClosed : F.stokesEquation
  energyEquationClosed : F.energyEquation
  incompressibilityConditionClosed : F.incompressibilityCondition
  boundaryConditionsClosed : F.boundaryConditions

def MantleConvectionPDEClosed {G : GeodynamicsModelPackage}
    (F : MantleConvectionPDEPackage G) : Prop :=
  F.stokesEquation ∧ F.energyEquation ∧
  F.incompressibilityCondition ∧ F.boundaryConditions

theorem mantle_convection_pde_closed_from_evidence
    {G : GeodynamicsModelPackage} (F : MantleConvectionPDEPackage G)
    (E : MantleConvectionPDEEvidence F) : MantleConvectionPDEClosed F := by
  exact And.intro E.stokesEquationClosed
    (And.intro E.energyEquationClosed
      (And.intro E.incompressibilityConditionClosed E.boundaryConditionsClosed))

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse