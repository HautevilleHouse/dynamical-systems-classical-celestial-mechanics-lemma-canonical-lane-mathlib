import DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean.NBodyProblems

/-!
# Kepler Problem Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean

structure KeplerProblemPackage where
  primaryMass : ℝ
  secondaryMass : ℝ
  eccentricity : ℝ

def KeplerProblemClosed (K : KeplerProblemPackage) : Prop :=
  K.eccentricity >= 0 ∧ K.eccentricity < 1

end DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse