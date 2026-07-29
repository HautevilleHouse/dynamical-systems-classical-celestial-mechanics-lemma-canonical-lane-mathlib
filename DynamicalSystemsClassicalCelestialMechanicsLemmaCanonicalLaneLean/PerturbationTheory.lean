import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean

structure PerturbationPackage where
  integrableSystem : FirstIntegralsPackage
  perturbationParameter : ℝ
  perturbedHamiltonian : ℝ → PhaseSpace → ℝ
  averagingMethod : Prop
  secularTerms : Prop
  stabilityEstimate : Prop

structure PerturbationEvidence (P : PerturbationPackage) where
  averagingMethodClosed : P.averagingMethod
  secularTermsClosed : P.secularTerms
  stabilityEstimateClosed : P.stabilityEstimate

def PerturbationClosed (P : PerturbationPackage) : Prop :=
  P.averagingMethod ∧ P.secularTerms ∧ P.stabilityEstimate

theorem perturbation_closed_from_evidence (P : PerturbationPackage)
    (E : PerturbationEvidence P) : PerturbationClosed P := by
  exact And.intro E.averagingMethodClosed (And.intro E.secularTermsClosed E.stabilityEstimateClosed)

end DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
