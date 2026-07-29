import DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean.CelestialObjects

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean

structure PhaseSpace where
  coordinates : Type
  momenta : Type
  symplecticForm : Type

structure HamiltonianSystem where
  phaseSpace : PhaseSpace
  hamiltonian : ℝ → Type
  hamiltonianEquations : Prop
  energyConservation : Prop
  flow : ℝ → Type → Type
  integrability : Prop

def HamiltonianSystemClosed (H : HamiltonianSystem) : Prop :=
  H.hamiltonianEquations ∧ H.energyConservation ∧ H.integrability

end DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse