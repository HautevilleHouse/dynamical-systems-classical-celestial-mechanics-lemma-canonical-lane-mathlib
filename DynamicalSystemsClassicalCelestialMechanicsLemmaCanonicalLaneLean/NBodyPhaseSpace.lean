import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean

structure PhaseSpace where
  positions : Type u
  momenta : Type v
  dimension : ℕ
  positionsVectorSpace : Prop
  momentaVectorSpace : Prop
  symplecticForm : Prop

structure NBodyConfiguration where
  massValues : ℕ → ℝ
  positionFunction : ℝ → ℕ → positions
  momentumFunction : ℝ → ℕ → momenta
  totalMass : ℝ
  centerOfMass : ℝ → positions
  totalEnergy : ℝ → ℝ
  angularMomentum : ℝ → ℝ

structure PhaseSpaceEvidence (P : PhaseSpace) where
  positionsVectorSpaceClosed : P.positionsVectorSpace
  momentaVectorSpaceClosed : P.momentaVectorSpace
  symplecticFormClosed : P.symplecticForm

def PhaseSpaceClosed (P : PhaseSpace) : Prop :=
  P.positionsVectorSpace ∧ P.momentaVectorSpace ∧ P.symplecticForm

theorem phase_space_closed_from_evidence (P : PhaseSpace) (E : PhaseSpaceEvidence P) :
    PhaseSpaceClosed P := by
  exact And.intro E.positionsVectorSpaceClosed (And.intro E.momentaVectorSpaceClosed E.symplecticFormClosed)

end DynamicalSystemsClassicalCelestialMechanicsLemmaCanonicalLaneLean
end HautevilleHouse
