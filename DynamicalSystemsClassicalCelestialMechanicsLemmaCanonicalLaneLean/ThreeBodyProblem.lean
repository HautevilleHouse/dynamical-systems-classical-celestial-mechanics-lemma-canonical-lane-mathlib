import DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean.KeplerProblem

/-!
# Three-Body Problem Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean

structure ThreeBodyProblemPackage where
  mass1 : ℝ
  mass2 : ℝ
  mass3 : ℝ
  initialPositions : (ℝ×ℝ×ℝ)×(ℝ×ℝ×ℝ)×(ℝ×ℝ×ℝ)
  chaoticBehavior : Prop

def ThreeBodyProblemClosed (T : ThreeBodyProblemPackage) : Prop :=
  T.chaoticBehavior

end DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse