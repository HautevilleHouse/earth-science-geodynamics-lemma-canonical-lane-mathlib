import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure MantleConvectionPDEPackage where
  temperatureField : Type u
  velocityField : Type v
  viscosityField : Type w
  rayleighNumber : ℝ
  momentumEquation : Prop
  energyEquation : Prop
  boundaryConditions : Prop

structure MantleConvectionPDEEvidence (M : MantleConvectionPDEPackage) where
  momentumEquationClosed : M.momentumEquation
  energyEquationClosed : M.energyEquation
  boundaryConditionsClosed : M.boundaryConditions

def MantleConvectionPDEClosed (M : MantleConvectionPDEPackage) : Prop :=
  M.momentumEquation ∧ M.energyEquation ∧ M.boundaryConditions

theorem mantle_convection_pde_closed_from_evidence (M : MantleConvectionPDEPackage)
    (E : MantleConvectionPDEEvidence M) : MantleConvectionPDEClosed M := by
  exact And.intro E.momentumEquationClosed
    (And.intro E.energyEquationClosed E.boundaryConditionsClosed)

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse