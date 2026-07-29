import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean

structure FirstIntegralsPackage where
  hamiltonEquations : HamiltonEquationsPackage
  totalEnergy : ℝ → ℝ → ℝ
  linearMomentum : ℝ → ℝ
  angularMomentum : ℝ → ℝ
  laplaceRungeLenz : ℝ → ℝ
  integralsOfMotion : Prop
  commutationRelations : Prop
  integrabilityCondition : Prop

structure FirstIntegralsEvidence (I : FirstIntegralsPackage) where
  integralsOfMotionClosed : I.integralsOfMotion
  commutationRelationsClosed : I.commutationRelations
  integrabilityConditionClosed : I.integrabilityCondition

def FirstIntegralsClosed (I : FirstIntegralsPackage) : Prop :=
  I.integralsOfMotion ∧ I.commutationRelations ∧ I.integrabilityCondition

theorem first_integrals_closed_from_evidence (I : FirstIntegralsPackage)
    (E : FirstIntegralsEvidence I) : FirstIntegralsClosed I := by
  exact And.intro E.integralsOfMotionClosed (And.intro E.commutationRelationsClosed E.integrabilityConditionClosed)

end DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
