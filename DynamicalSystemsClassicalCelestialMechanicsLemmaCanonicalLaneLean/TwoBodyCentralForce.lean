import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean

structure TwoBodyCentralForcePackage where
  reducedMass : ℝ
  centralPotential : ℝ → ℝ
  angularMomentum : ℝ
  effectivePotential : ℝ → ℝ
  orbitalEquation : ℝ → ℝ

structure TwoBodyCentralForceEvidence (P : TwoBodyCentralForcePackage) where
  reducedMassClosed : P.reducedMass = 1.0
  angularMomentumClosed : P.angularMomentum = 1.0
  effectivePotentialClosed : ∀ r, P.effectivePotential r = P.centralPotential r + (P.angularMomentum^2)/(2*P.reducedMass*r^2)
  orbitalEquationClosed : ∀ r, P.orbitalEquation r = 0

def TwoBodyCentralForceClosed (P : TwoBodyCentralForcePackage) : Prop :=
  P.reducedMass = 1.0 ∧ P.angularMomentum = 1.0 ∧
  (∀ r, P.effectivePotential r = P.centralPotential r + (P.angularMomentum^2)/(2*P.reducedMass*r^2)) ∧
  (∀ r, P.orbitalEquation r = 0)

theorem two_body_central_force_closed_from_evidence
    (P : TwoBodyCentralForcePackage) (E : TwoBodyCentralForceEvidence P) :
    TwoBodyCentralForceClosed P := by
  exact And.intro E.reducedMassClosed (And.intro E.angularMomentumClosed (And.intro E.effectivePotentialClosed E.orbitalEquationClosed))

end HautevilleHouse
end HautevilleHouse