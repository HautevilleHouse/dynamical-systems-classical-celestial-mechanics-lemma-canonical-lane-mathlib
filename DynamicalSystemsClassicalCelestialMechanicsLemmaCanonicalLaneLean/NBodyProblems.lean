import DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean.MathlibObjects

/-!
# N-Body Problems Package
-/

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean

structure NBodyProblemsPackage where
  n : ℕ
  centralForce : Bool
  perturbationModel : Prop

def NBodyProblemsClosed (P : NBodyProblemsPackage) : Prop :=
  P.centralForce

end DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse