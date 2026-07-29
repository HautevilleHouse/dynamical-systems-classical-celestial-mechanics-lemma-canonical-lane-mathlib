import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean

structure StabilityLemmaPackage where
  perturbationBound : ℝ
  lyapunovExponent : ℝ
  invariantTorus : Prop
  stabilityCondition : Prop

structure StabilityLemmaEvidence (P : StabilityLemmaPackage) where
  perturbationBoundClosed : P.perturbationBound > 0
  lyapunovExponentClosed : P.lyapunovExponent < 0
  invariantTorusClosed : P.invariantTorus
  stabilityConditionClosed : P.stabilityCondition

def StabilityLemmaClosed (P : StabilityLemmaPackage) : Prop :=
  P.perturbationBound > 0 ∧ P.lyapunovExponent < 0 ∧
  P.invariantTorus ∧ P.stabilityCondition

theorem stability_lemma_closed_from_evidence (P : StabilityLemmaPackage) (E : StabilityLemmaEvidence P) :
    StabilityLemmaClosed P := by
  exact And.intro E.perturbationBoundClosed (And.intro E.lyapunovExponentClosed (And.intro E.invariantTorusClosed E.stabilityConditionClosed))

end HautevilleHouse
end HautevilleHouse