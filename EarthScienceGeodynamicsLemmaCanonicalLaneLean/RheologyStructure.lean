import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure RheologyStructurePackage {G : GeodynamicsModelPackage}
    (F : MantleConvectionPDEPackage G) where
  viscosityModel : Type u
  activationEnergy : Prop
  stressExponent : Prop
  creepMechanism : Prop
  yieldingCriterion : Prop

structure RheologyStructureEvidence {G : GeodynamicsModelPackage}
    {F : MantleConvectionPDEPackage G} (R : RheologyStructurePackage F) where
  activationEnergyClosed : R.activationEnergy
  stressExponentClosed : R.stressExponent
  creepMechanismClosed : R.creepMechanism
  yieldingCriterionClosed : R.yieldingCriterion

def RheologyStructureClosed {G : GeodynamicsModelPackage}
    {F : MantleConvectionPDEPackage G} (R : RheologyStructurePackage F) : Prop :=
  R.activationEnergy ∧ R.stressExponent ∧
  R.creepMechanism ∧ R.yieldingCriterion

theorem rheology_structure_closed_from_evidence
    {G : GeodynamicsModelPackage} {F : MantleConvectionPDEPackage G}
    (R : RheologyStructurePackage F) (E : RheologyStructureEvidence R) :
    RheologyStructureClosed R := by
  exact And.intro E.activationEnergyClosed
    (And.intro E.stressExponentClosed
      (And.intro E.creepMechanismClosed E.yieldingCriterionClosed))

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse