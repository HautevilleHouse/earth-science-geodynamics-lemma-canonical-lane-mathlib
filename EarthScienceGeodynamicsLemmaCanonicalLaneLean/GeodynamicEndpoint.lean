import EarthScienceGeodynamicsLemmaCanonicalLaneLean.PlateTectonics

/-!
# Geodynamic Endpoint Package
-/

namespace HautevilleHouse
namespace EarthScienceGeodynamicsLemmaCanonicalLaneLean

structure GeodynamicEndpointPackage {L : LithosphereDynamicsPackage} {M : MantleConvectionPackage L} {P : PlateTectonicsPackage L M} where
  globalMarginBudget : Prop
  dynamicTopographyConsistency : Prop
  secularCooling : Prop
  endpointMatchesGeodynamicsLemma : Prop

structure GeodynamicEndpointEvidence {L : LithosphereDynamicsPackage} {M : MantleConvectionPackage L} {P : PlateTectonicsPackage L M} (E : GeodynamicEndpointPackage L M P) where
  globalMarginBudgetClosed : E.globalMarginBudget
  dynamicTopographyConsistencyClosed : E.dynamicTopographyConsistency
  secularCoolingClosed : E.secularCooling
  endpointMatchesGeodynamicsLemmaClosed : E.endpointMatchesGeodynamicsLemma

def GeodynamicEndpointClosed {L : LithosphereDynamicsPackage} {M : MantleConvectionPackage L} {P : PlateTectonicsPackage L M} (E : GeodynamicEndpointPackage L M P) : Prop :=
  E.globalMarginBudget ∧ E.dynamicTopographyConsistency ∧ E.secularCooling ∧ E.endpointMatchesGeodynamicsLemma

theorem geodynamic_endpoint_closed_from_evidence {L : LithosphereDynamicsPackage} {M : MantleConvectionPackage L} {P : PlateTectonicsPackage L M} (Epkg : GeodynamicEndpointPackage L M P) (E : GeodynamicEndpointEvidence Epkg) :
    GeodynamicEndpointClosed Epkg := by
  exact And.intro E.globalMarginBudgetClosed (And.intro E.dynamicTopographyConsistencyClosed (And.intro E.secularCoolingClosed E.endpointMatchesGeodynamicsLemmaClosed))

end EarthScienceGeodynamicsLemmaCanonicalLaneLean
end HautevilleHouse