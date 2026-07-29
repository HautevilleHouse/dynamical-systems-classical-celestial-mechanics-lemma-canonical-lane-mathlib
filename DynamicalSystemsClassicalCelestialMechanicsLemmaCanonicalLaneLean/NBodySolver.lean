import DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean.CelestialObjects
import DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean.HamiltonianMechanics

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean

structure NBodySolver where
  n : ℕ
  system : CelestialSystem
  integratorType : String
  timeStep : ℝ
  accuracy : ℝ

def NBodySolverClosed (S : NBodySolver) : Prop :=
  S.n ≥ 2 ∧ S.timeStep > 0 ∧ S.accuracy > 0

end DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse