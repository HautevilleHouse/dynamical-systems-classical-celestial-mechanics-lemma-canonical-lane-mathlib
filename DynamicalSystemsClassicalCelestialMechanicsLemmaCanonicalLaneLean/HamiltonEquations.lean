import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean

structure HamiltonEquationsPackage where
  phaseSpace : PhaseSpace
  hamiltonian : ℝ → PhaseSpace → ℝ
  equationsOfMotion : Prop
  existenceOfSolutions : Prop
  energyConservation : Prop
  symplecticFlow : Prop

structure HamiltonEquationsEvidence (H : HamiltonEquationsPackage) where
  equationsOfMotionClosed : H.equationsOfMotion
  existenceOfSolutionsClosed : H.existenceOfSolutions
  energyConservationClosed : H.energyConservation
  symplecticFlowClosed : H.symplecticFlow

def HamiltonEquationsClosed (H : HamiltonEquationsPackage) : Prop :=
  H.equationsOfMotion ∧ H.existenceOfSolutions ∧ H.energyConservation ∧ H.symplecticFlow

theorem hamilton_equations_closed_from_evidence (H : HamiltonEquationsPackage)
    (E : HamiltonEquationsEvidence H) : HamiltonEquationsClosed H := by
  exact And.intro E.equationsOfMotionClosed (And.intro E.existenceOfSolutionsClosed
    (And.intro E.energyConservationClosed E.symplecticFlowClosed))

end DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
