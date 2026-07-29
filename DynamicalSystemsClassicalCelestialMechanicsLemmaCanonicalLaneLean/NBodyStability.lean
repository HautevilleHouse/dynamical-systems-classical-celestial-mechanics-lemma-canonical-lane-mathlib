import DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean.CelestialMechanicsObjects

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean

structure StabilityRegion where
  epsilon : ℝ
  timeScale : ℝ
  boundedMotion : Prop

structure NBodyStabilityPackage (sys : CelestialSystem) where
  numBodies : ℕ
  stabilityRegion : StabilityRegion
  lyapunovTime : ℝ
  kolmogorovArnoldMoser : Prop

structure NBodyStabilityEvidence (P : NBodyStabilityPackage sys) where
  boundedMotionClosed : P.stabilityRegion.boundedMotion
  lyapunovTimePositive : P.lyapunovTime > 0
  kolmogorovArnoldMoserClosed : P.kolmogorovArnoldMoser

def NBodyStabilityClosed (P : NBodyStabilityPackage sys) : Prop :=
  P.stabilityRegion.boundedMotion ∧ P.lyapunovTime > 0 ∧ P.kolmogorovArnoldMoser

theorem n_body_stability_closed_from_evidence (P : NBodyStabilityPackage sys) (E : NBodyStabilityEvidence P) :
    NBodyStabilityClosed P := by
  exact And.intro E.boundedMotionClosed (And.intro E.lyapunovTimePositive E.kolmogorovArnoldMoserClosed)

end DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse