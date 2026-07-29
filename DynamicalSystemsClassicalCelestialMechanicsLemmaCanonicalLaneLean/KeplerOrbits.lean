import DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean.CelestialMechanicsObjects

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean

structure KeplerOrbitData where
  semiMajorAxis : ℝ
  eccentricity : ℝ
  period : ℝ
  orbitType : String

structure KeplerPackage (sys : CelestialSystem) where
  twoBodyProblem : sys.bodies.length = 2 → KeplerOrbitData
  ellipticalOrbitStable : Prop
  hohmannTransferFeasible : Prop

structure KeplerEvidence (P : KeplerPackage sys) where
  twoBodyProblemClosed : ∀ h : sys.bodies.length = 2, (P.twoBodyProblem h).orbitType = "ellipse"
  ellipticalOrbitStableClosed : P.ellipticalOrbitStable
  hohmannTransferFeasibleClosed : P.hohmannTransferFeasible

def KeplerClosed (P : KeplerPackage sys) : Prop :=
  (∀ h : sys.bodies.length = 2, (P.twoBodyProblem h).orbitType = "ellipse") ∧
  P.ellipticalOrbitStable ∧
  P.hohmannTransferFeasible

theorem kepler_closed_from_evidence (P : KeplerPackage sys) (E : KeplerEvidence P) :
    KeplerClosed P := by
  exact And.intro E.twoBodyProblemClosed (And.intro E.ellipticalOrbitStableClosed E.hohmannTransferFeasibleClosed)

end DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse